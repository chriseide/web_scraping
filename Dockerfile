FROM amazonlinux:2.0.20200406.0

ENV DISPLAY=:99

RUN yum update -y
RUN yum -y install procps python3 Xvfb


RUN unlink /etc/systemd/system/default.target 
RUN ln -sf /lib/systemd/system/graphical.target /etc/systemd/system/default.target

RUN pip3 install selenium==4.0.0a6.post1 Selenium-Screenshot
RUN curl https://intoli.com/install-google-chrome.sh | bash
ADD src /src
RUN chmod +x /src/run_xvfb.sh
# RUN chmod +x /src/install-google-chrome.sh
RUN cd src && ./install-google-chrome.sh
