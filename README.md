# phpmyadmin_docker

Simple phpmyadmin for docker. I use it for development purposes together with fig. No authentication is required.

Example fig.yml:
```
mysql:
  image: mysql:5.6
  environment:
    MYSQL_DATABASE: discreteer
    MYSQL_ROOT_PASSWORD: my_secret_password
  ports:
    - "127.0.0.1:3306:3306"
phpmyadmin:
  image: odaniait/phpmyadmin-docker:latest
  ports:
    - "127.0.0.1:8081:80"
  links:
    - mysql
```

Afterwords you can access phpmyadmin with your browser via http://127.0.0.1:8081
