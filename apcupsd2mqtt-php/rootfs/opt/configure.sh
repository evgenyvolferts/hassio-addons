#!/usr/bin/with-contenv bashio

MQTT_HOST=$(bashio::services mqtt "host")
MQTT_PORT=$(bashio::services mqtt "port")
MQTT_USER=$(bashio::services mqtt "username")
MQTT_PASSWORD=$(bashio::services mqtt "password")

jq -n --arg mqttHost "$MQTT_HOST" --arg mqttPort "$MQTT_PORT" \
  --arg mqttUser "$MQTT_USER" --arg mqttPassword "$MQTT_PASSWORD" \
  --arg errorLog "" '$ARGS.named' > /opt/mqtt.json

MQTT_DISCOVERY_PREFIX=$(jq '.mqttDiscoveryPrefix' /data/options.json)

jq --arg mqttPrefix "$MQTT_DISCOVERY_PREFIX" \
  '.devices[] |= (.haTopic = $mqttPrefix + "/sensor/\(.name)")' /data/options.json | \
  jq 'del(.mqttDiscoveryPrefix)' > /opt/options.json

jq '. * input' /opt/mqtt.json /opt/options.json > /opt/apcupsd2mqtt-php/config/config.json

php /opt/apcupsd2mqtt-php/generate-customization-yaml.php without-prefix > /homeassistant/customize-apcupsd2mqtt-php.yaml