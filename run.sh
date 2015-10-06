#!/bin/bash
echo "upstream php-upstream { server $PHP_FPM_SOCKET; }" > /etc/nginx/conf.d/upstream.conf && \
sed -i "s|DOCUMENT_ROOT|$DOCUMENT_ROOT|g" /etc/nginx/sites-enabled/default.conf && \
sed -i "s|SERVER_NAME|$SERVER_NAME|g" /etc/nginx/sites-enabled/default.conf && \
nginx
