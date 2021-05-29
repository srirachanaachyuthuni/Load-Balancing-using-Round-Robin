# Starting up the apache containers:

```docker build -t myapache .```

For each container:
```docker run -d myapache```

# Finding the ips of the containers spun

```docker network inspect bridge```

Modify the IPs found in the nginx.conf file 


# Manually modifying each containers index.html file in /var/www/html

```docker exec -it <container-id> /bin/bash```

```apt-get update```

```apt-get install vim -y```

```cd /var/www/html```

```mv index.html index.html.bak```

```vi index.html```

Copy the enclosed index.html file after modifying the container ID

# Staring up the nginx container

```docker build -f DockerfileNginx -t nginx .```

```docker run -it --rm -d -p 8080:80 --name mynginx nginx```

# Testing

Go to 127.0.0.1:8080 in your browser

Every time we referesh the page, new index.html page from each of the apache containers will be rendered.