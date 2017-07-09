FROM frolvlad/alpine-glibc:alpine-3.6
LABEL maintainer "tsub <tsubasatakayama511@gmail.com>"

ENV MRUBY_CLI_VERSION="0.0.4"

RUN apk add --update --no-cache --virtual build-dependencies \
        curl && \
    curl -fSL -o mruby-cli.tar.gz "https://github.com/hone/mruby-cli/releases/download/v${MRUBY_CLI_VERSION}/mruby-cli-${MRUBY_CLI_VERSION}-x86_64-pc-linux-gnu.tgz" && \
    tar -xvzf mruby-cli.tar.gz -C /usr/local/bin && \
    rm mruby-cli.tar.gz && \
    apk del --purge build-dependencies

ENTRYPOINT ["mruby-cli"]
