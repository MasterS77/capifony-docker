FROM debian:jessie

MAINTAINER Master_S

RUN apt-get update && apt-get install -y rubygems git
RUN gem install capifony -v 2.8.3
RUN useradd -r -u 1000 appuser
USER appuser
ENV SSH_AUTH_SOCK /home/appuser/ssh-agent

WORKDIR /home/appuser/workdir

ENTRYPOINT ["cap"]
