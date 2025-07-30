FROM ghost:5

ENV database__client=sqlite3
ENV database__connection__filename=/var/lib/ghost/content/data/ghost.db

VOLUME /var/lib/ghost/content

EXPOSE 2368

CMD ["node", "current/index.js"]

# Copy your config into the expected path inside Ghost
COPY config.production.json /var/lib/ghost/config.production.json
COPY content/images /var/lib/ghost/content/images

# knex-migrator init removed — not needed in production builds
# At end of Dockerfile


