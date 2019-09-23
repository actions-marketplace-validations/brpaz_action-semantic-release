FROM node:12-alpine

RUN apk add git docker --no-cache && rm -rf /var/cache/apk/*

RUN npm install -g semantic-release @semantic-release/npm @semantic-release/git @semantic-release/changelog

COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
