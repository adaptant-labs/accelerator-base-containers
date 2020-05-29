FROM raspbian/stretch:latest

ENV OPENVINO_RELEASE=2020.2
ENV OPENVINO_BUILD=120

# Fetch and install the OpenVINO toolkit
RUN wget https://download.01.org/opencv/2020/openvinotoolkit/${OPENVINO_RELEASE}/l_openvino_toolkit_runtime_raspbian_p_${OPENVINO_RELEASE}.${OPENVINO_BUILD}.tgz && \
    mkdir -p /opt/intel/openvino && \
    tar -xf l_openvino_toolkit_runtime_raspbian_p_${OPENVINO_RELEASE}.${OPENVINO_BUILD}.tgz --strip 1 -C /opt/intel/openvino && \
    rm l_openvino_toolkit_runtime_raspbian_p_${OPENVINO_RELEASE}.${OPENVINO_BUILD}.tgz

# Ensure that the OpenVINO environment is set up for subsequent commands
ENTRYPOINT ["sh", "-c", "source /opt/intel/openvino/bin/setupvars.sh && \"$@\"", "-s"]
