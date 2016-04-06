server {
    listen 80
    listen 443 default_server ssl;
    server_name mjgil.com;
    ssl on;
    ssl_certificate /etc/nginx/ssl/mjgil.com/server.crt;
    ssl_certificate_key /etc/nginx/ssl/mjgil.com/server.key;

    ssl_protocols       TLSv1 TLSv1.1 TLSv1.2;
    ssl_ciphers         HIGH:!aNULL:!MD5;
}