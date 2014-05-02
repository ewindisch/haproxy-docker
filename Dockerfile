FROM ubuntu:14.04
MAINTAINER Johannes 'fish' Ziemke <fish@freigeist.org> @discordianfish

RUN apt-get -qy update && apt-get -qy install haproxy ucarp
ADD https://raw.github.com/jpetazzo/pipework/master/pipework /sbin/
RUN chmod a+x /sbin/pipework

ADD . /haproxy
WORKDIR    /haproxy
ENTRYPOINT [ "./scripts/run" ]