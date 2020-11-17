#!/bin/bash

cmd=$@

source /opt/intel/openvino_2021/bin/setupvars.sh > /dev/null 2>&1

$cmd
