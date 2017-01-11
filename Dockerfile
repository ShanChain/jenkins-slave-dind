FROM registry.aliyuncs.com/acs-sample/jenkins-slave-dind:0.1

ENV PATH /root/bin:$PATH

RUN set -x \
    && apt-get -qq update \
    && apt-get install -qqy apt-utils \
    && apt-get -qq upgrade \
    && apt-get -qq dist-upgrade \
    && apt-get install -qqy \
        sudo \
        wget

CMD ["/usr/sbin/sshd", "-D"]