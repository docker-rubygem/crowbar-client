FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=3.2.0

RUN gem install crowbar-client --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["crowbarctl"]
CMD ["--help"]
