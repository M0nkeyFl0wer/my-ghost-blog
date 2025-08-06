FROM ghost:5

# Set up SQLite database path
ENV database__client=sqlite3
ENV database__connection__filename=/var/lib/ghost/content/data/ghost.db

# Declare content volume
VOLUME /var/lib/ghost/content

# Expose the default Ghost port
EXPOSE 2368

# Copy your cleaned config into Ghost's expected location
COPY config.production.json /var/lib/ghost/config.production.json

# Start Ghost
CMD ["node", "current/index.js"]

