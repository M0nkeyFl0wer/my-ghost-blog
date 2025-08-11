#!/bin/bash

# Check if content directory is empty (first run)
if [ ! -f "/var/lib/ghost/content/data/ghost.db" ]; then
    echo "Initializing content directory with default data..."
    
    # Create necessary directories
    mkdir -p /var/lib/ghost/content/{data,images,themes,settings}
    
    # You'll need to manually upload your content via Render's file manager or SSH
    echo "Content directory initialized. Upload your data via SSH or Render dashboard."
else
    echo "Content directory already exists, skipping initialization."
fi