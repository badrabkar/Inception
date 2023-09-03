#!/bin/bash

echo "
server
{
    listen 443 ssl;

    root /var/www/wordpress;

    index index.php;
    
    server_name $DOMAIN_NAME;
    
    ssl_certificate $CERTIFICATE;
    ssl_certificate_key $CERTIFICATE_KEY;
    ssl_protocols TLSv1.2 TLSv1.3;

    location /
    {
        try_files \$uri \$uri/ =404;
    }
    
    location ~ \.php$
    {
        include snippets/fastcgi-php.conf;
        fastcgi_pass wordpress:9000;
        fastcgi_param SCRIPT_FILENAME \$document_root\$fastcgi_script_name;
        include fastcgi_params;
    }
}
" > /etc/nginx/conf.d/nginx.conf

nginx -g "daemon off;"