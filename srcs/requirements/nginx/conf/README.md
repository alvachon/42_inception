## Testing NGINX
#LOCAL
* sudo update
* sudo apt-get install nginx
* setup BASIC config file:
``
server {
    listen 80 default_server;
    listen [::]:80 default_server;
    
    root /usr/share/nginx/html;
    index index.html index.htm;

    server_name _;
    location / {
        try_files $uri $uri/ =404;
    }
}
``
* sudo systemctl start nginx
* sudo service start nginx
* sudo systemctl enable nginx

Now go to localhost, you will see:
``
Welcome to nginx!
If you see this page, the nginx web server is successfully installed and working. Further configuration is required.

For online documentation and support please refer to nginx.org.
Commercial support is available at nginx.com.

Thank you for using nginx.
``
To stop you will need : 
sudo systemctl stop nginx
