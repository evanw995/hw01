server {
        listen 80;
        listen [::]:80;

	server_name hw01.evanw-webdev.com;

        root /home/evan/www/hw01/;

        index hw01.html;

        location / {
                # First attempt to serve request as file, then
                # as directory, then fall back to displaying a 404.
                try_files $uri $uri/ =404;
        }
}
