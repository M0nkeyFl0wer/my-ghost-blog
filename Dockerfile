FROM ghost:5

ENV url=https://my-ghost-blog.onrender.com
ENV database__client=sqlite3
ENV database__connection__filename=/var/lib/ghost/content/data/ghost.db

VOLUME /var/lib/ghost/content

EXPOSE 2368

CMD ["node", "current/index.js"]
