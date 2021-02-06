
server {
	listen 80;
	listen [::]:80;

	root /home/webdev/hw02-build;

	index index.html;

	server_name hw03.vevey-web-dev.com;

	location / {

		try_files $uri $uri/ =404;
	}
}
