FROM ruby:2.6-alpine

ARG VERSION

LABEL Name=gistgem Version=$VERSION
LABEL Author="Sean Paul Campbell"

ENV GEM_HOME="/usr/local/bundle"
ENV PATH $GEM_HOME/bin:$GEM_HOME/gems/bin:$PATH

WORKDIR /root

COPY entrypoint.sh /root/entrypoint.sh

RUN gem install gist

VOLUME [ "/root/.gist" ]

ENTRYPOINT [ "gist" ]

CMD ["--help"]
