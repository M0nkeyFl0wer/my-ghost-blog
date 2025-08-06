FROM ghost:5

# Set up SQLite database path
ENV database__client=sqlite3
ENV database__connection__filename=/var/lib/ghost/content/data/ghost.db

# Copy config and content (includes ghost.db)
COPY config.production.json /var/lib/ghost/config.production.json
COPY content /var/lib/ghost/content

# Expose port and declare volume
EXPOSE 2368
VOLUME /var/lib/ghost/content

# Start Ghost
CMD ["node", "current/index.js"]
