FROM adaptant/minideb

RUN install_packages software-properties-common curl gnupg

RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -

RUN add-apt-repository "deb https://packages.cloud.google.com/apt coral-edgetpu-stable main"
RUN apt-get update

RUN echo libedgetpu1-max libedgetpu/accepted-eula boolean true | debconf-set-selections
RUN install_packages python3-edgetpu libedgetpu1-max libedgetpu-dev
