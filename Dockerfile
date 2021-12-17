FROM ruby:2.7.5-alpine3.15

RUN apk add --update --no-cache build-base git jq

COPY entrypoint.sh /entrypoint.sh
COPY bin/reviewdog /bin/reviewdog

ENTRYPOINT ["/entrypoint.sh"]
