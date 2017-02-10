FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.9.9

RUN gem install ec2ctl --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["ec2ctl"]
CMD ["--help"]
