#!/bin/bash

dnf install -y nginx

systemctl enable nginx
systemctl start nginx

cat > /usr/share/nginx/html/index.html <<'HTML'
<!DOCTYPE html>
<html>
  <head>
    <title>Aaron Terraform Project</title>
  </head>
  <body>
    <h1>Deployed with Terraform</h1>
    <p>This web server was created automatically on AWS.</p>
  </body>
</html>
HTML