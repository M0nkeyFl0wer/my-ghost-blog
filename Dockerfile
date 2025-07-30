FROM ghost:5

ENV url=https://benwest.blog
ENV database__client=sqlite3
ENV database__connection__filename=/var/lib/ghost/content/data/ghost.db

VOLUME /var/lib/ghost/content

EXPOSE 2368

CMD ["node", "current/index.js"]

FROM ghost:5

# Copy your config into the expected path inside Ghost
COPY config.production.json /var/lib/ghost/config.production.json


# At end of Dockerfiles

