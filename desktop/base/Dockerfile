FROM debian:jessie

MAINTAINER snowdream <yanghui1986527@gmail.com>

# Install
RUN DEBIAN_FRONTEND=noninteractive && \
    apt-key adv --recv-keys --keyserver keys.gnupg.net E1F958385BFE2B6E && \
    echo "deb http://packages.x2go.org/debian jessie main" >> /etc/apt/sources.list.d/x2go.list && \
    apt-get -qq update && \
    apt-get -qqy install --no-install-recommends \
       apt-utils \
       pwgen \
       mate-desktop-environment-core \
       x2goserver x2goserver-xsession x2gomatebindings \
       openssh-server && \       
       mkdir -p /var/run/sshd && \
       sed -i "s/UsePrivilegeSeparation.*/UsePrivilegeSeparation no/g" /etc/ssh/sshd_config && \
       sed -i "s/UsePAM.*/UsePAM no/g" /etc/ssh/sshd_config && \
       sed -i "s/PermitRootLogin.*/PermitRootLogin yes/g" /etc/ssh/sshd_config && \
       sed -i "s/#PasswordAuthentication/PasswordAuthentication/g" /etc/ssh/sshd_config && \
       mkdir -p /tmp/.X11-unix && chmod 1777 /tmp/.X11-unix && \
       mkdir /var/run/dbus && \
    apt-get clean && \
    apt-get autoremove && \
    rm -rf /var/lib/apt/lists/*

ADD set_root_pw.sh /set_root_pw.sh
ADD run.sh /run.sh
RUN chmod +x /*.sh

EXPOSE 22

CMD ["/run.sh"]
