FROM ubuntu:focal

RUN apt-get update && apt-get install --no-install-recommends --yes software-properties-common curl gnupg

RUN curl https://apt.repos.intel.com/openvino/2021/GPG-PUB-KEY-INTEL-OPENVINO-2021 | apt-key add -

RUN add-apt-repository "deb https://apt.repos.intel.com/openvino/2021 all main"
RUN apt-get install --no-install-recommends --yes intel-openvino-runtime-ubuntu20-2021.1.110
RUN apt-get install --no-install-recommends --yes libpython3.8 python3-pip usbutils
RUN pip3 install numpy

COPY entrypoint.sh /

ENTRYPOINT [ "/entrypoint.sh" ]
