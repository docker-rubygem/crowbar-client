FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=3.1.9

RUN gem install crowbar-client --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["crowbarctl"]
CMD ["--help"]
