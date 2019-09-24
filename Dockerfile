FROM node:12-alpine

RUN apk add git docker bash --no-cache && rm -rf /var/cache/apk/*

RUN npm install -g semantic-release@^15.13.24 @semantic-release/npm@^5.1.15 @semantic-release/git@^7.0.16 @semantic-release/github@^5.4.3 @semantic-release/changelog@^3.0.4

COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
