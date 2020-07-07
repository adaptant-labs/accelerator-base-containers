# example-edgetpu-devicequery

Query the version of the EdgeTPU device runtime and display any supported devices:

```
$ docker run --privileged acceleratorbase/example-edgetpu-devicequery
BuildLabel(COMPILER=5.4.0 20160609,DATE=redacted,TIME=redacted,CL_NUMBER=291256449), RuntimeVersion(13)
Available EdgeTPU Devices:
/sys/bus/usb/devices/1-9
```
