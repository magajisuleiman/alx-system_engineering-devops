# Install Nginx package
package { 'nginx':
  ensure => installed,
}

# Define the Nginx service
service { 'nginx':
  ensure => running,
  enable => true,
}

# Configure Nginx to listen on port 80
file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => "
    server {
        listen 80;
        server_name _;

        location / {
            root /var/www/html;
            index index.html;
            try_files \$uri \$uri/ =404;
        }

        location /redirect_me {
            return 301 http://\$host/;
        }
    }
  ",
  require => Package['nginx'],
  notify  => Service['nginx'],
}

# Create the root HTML file
file { '/var/www/html/index.html':
  ensure  => file,
  content => "Hello World!\n",
  require => Package['nginx'],
}