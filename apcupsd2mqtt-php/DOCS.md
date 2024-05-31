## UPS config example

```yaml
  devices:
    - name: ups_test
      host: 192.168.1.100
      port: 3551
      useFriendlyName: true
    - name: ups_test2
      host: 192.168.1.101
      port: 3551
      useFriendlyName: true
```
* `name`: name of the device in Home Assistant
* `useFriendlyName`: generate YAML `customize:` section for device (see `customize-apcupsd2mqtt-php.yaml` in Home Assistant config folder)


## List of available properties (from apcupsd)

* `APC`: Header record indicating the `STATUS` format revision level, the number of records that follow the APC statement, and the number of bytes that follow the record.
* `DATE`: The date and time that the information was last obtained from the UPS.
* `HOSTNAME`: The name of the machine that collected the UPS data.
* `UPSNAME`: The name of the UPS as stored in the EEPROM or in the `UPSNAME` directive in the configuration file.
* `VERSION`: The apcupsd release number, build date, and platform.
* `CABLE`: The cable as specified in the configuration file (`UPSCABLE`).
* `MODEL`: The UPS model as derived from information from the UPS.
* `UPSMODE`: The mode in which apcupsd is operating as specified in the configuration file (`UPSMODE`).
* `STARTTIME`: The time/date that apcupsd was started.
* `STATUS`: The current status of the UPS (`ONLINE`, `ONBATT`, etc.).
* `LINEV`: The current line voltage as returned by the UPS.
* `LOADPCT`: The percentage of load capacity as estimated by the UPS.
* `BCHARGE`: The percentage charge on the batteries.
* `TIMELEFT`: The remaining runtime left on batteries as estimated by the UPS.
* `MBATTCHG`: If the battery charge percentage (`BCHARGE`) drops below this value, apcupsd will shutdown your system. Value is set in the configuration file (`BATTERYLEVEL`).
* `MINTIMEL`: apcupsd will shutdown your system if the remaining runtime equals or is below this point. Value is set in the configuration file (`MINUTES`).
* `MAXTIME`: apcupsd will shutdown your system if the time on batteries exceeds this value. A value of zero disables the feature. Value is set in the configuration file (`TIMEOUT`).
* `MAXLINEV`: The maximum line voltage since the UPS was started, as reported by the UPS.
* `MINLINEV`: The minimum line voltage since the UPS was started, as returned by the UPS.
* `OUTPUTV`: The voltage the UPS is supplying to your equipment.
* `SENSE`: The sensitivity level of the UPS to line voltage fluctuations.
* `DWAKE`: The amount of time the UPS will wait before restoring power to your equipment after a power off condition when the power is restored.
* `DSHUTD`: The grace delay that the UPS gives after receiving a power down command from apcupsd before it powers off your equipment.
* `DLOWBATT`: The remaining runtime below which the UPS sends the low battery signal. At this point apcupsd will force an immediate emergency shutdown.
* `LOTRANS`: The line voltage below which the UPS will switch to batteries.
* `HITRANS`: The line voltage above which the UPS will switch to batteries.
* `RETPCT`: The percentage charge that the batteries must have after a power off condition before the UPS will restore power to your equipment.
* `ITEMP`: Internal UPS temperature as supplied by the UPS.
* `ALARMDEL`: The delay period for the UPS alarm.
* `BATTV`: Battery voltage as supplied by the UPS.
* `LINEFREQ`: Line frequency in hertz as given by the UPS.
* `LASTXFER`: The reason for the last transfer to batteries.
* `NUMXFERS`: The number of transfers to batteries since apcupsd startup.
* `XONBATT`: Time and date of last transfer to batteries, or N/A.
* `TONBATT`: Time in seconds currently on batteries, or 0.
* `CUMONBATT`: Total (cumulative) time on batteries in seconds since apcupsd startup.
* `XOFFBATT`: Time and date of last transfer from batteries, or N/A.
* `SELFTEST`: The results of the last self test, and may have the following values:.
* `STESTI`: The interval in hours between automatic self tests.
* `STATFLAG`: Status flag. English version is given by `STATUS`.
* `DIPSW`: The current dip switch settings on UPSes that have them.
* `REG1`: The value from the UPS fault register 1.
* `REG2`: The value from the UPS fault register 2.
* `REG3`: The value from the UPS fault register 3.
* `MANDATE`: The date the UPS was manufactured.
* `SERIALNO`: The UPS serial number.
* `BATTDATE`: The date that batteries were last replaced.
* `NOMOUTV`: The output voltage that the UPS will attempt to supply when on battery power.
* `NOMINV`: The input voltage that the UPS is configured to expect.
* `NOMBATTV`: The nominal battery voltage.
* `NOMPOWER`: The maximum power in Watts that the UPS is designed to supply.
* `HUMIDITY`: The humidity as measured by the UPS.
* `AMBTEMP`: The ambient temperature as measured by the UPS.
* `EXTBATTS`: The number of external batteries as defined by the user. A correct number here helps the UPS compute the remaining runtime more accurately.
* `BADBATTS`: The number of bad battery packs.
* `FIRMWARE`: The firmware revision number as reported by the UPS.
* `APCMODEL`: The old APC model identification code.
* `END APC`: The time and date that the `STATUS` record was written.