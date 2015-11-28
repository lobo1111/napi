from centos:6

RUN yum install -y wget git samba-client cifs-utils
RUN cd /opt; git clone https://github.com/dagon666/napi.git
RUN cd napi; ./install.sh

ENV SMB_ENABLE true
ENV SMB_PATH URL
ENV SMB_USER smb_user
ENV SMB_PWD smb_pwd

ENV SLEEP 300

VOLUME /mnt/storage