FROM ghost:5

# Set up SQLite database path
ENV database__client=sqlite3
ENV database__connection__filename=/var/lib/ghost/content/data/ghost.db

# Copy just the config file
COPY config.production.json /var/lib/ghost/config.production.json

# Expose Ghost's default port
EXPOSE 2368

# Start Ghost (Render persistent disk will mount at /var/lib/ghost/content)
CMD ["node", "current/index.js"]
