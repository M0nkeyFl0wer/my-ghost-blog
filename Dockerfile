FROM ghost:5

# Set up SQLite database path
ENV database__client=sqlite3
ENV database__connection__filename=/var/lib/ghost/content/data/ghost.db

# Copy config and init script
COPY config.production.json /var/lib/ghost/config.production.json
COPY init-content.sh /usr/local/bin/init-content.sh
RUN chmod +x /usr/local/bin/init-content.sh

# Expose Ghost's default port
EXPOSE 2368

# Define the content volume (Render mounts a disk here)
VOLUME /var/lib/ghost/content

# Initialize content and start Ghost
CMD ["/bin/bash", "-c", "/usr/local/bin/init-content.sh && node current/index.js"]
