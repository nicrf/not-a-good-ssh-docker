# not-a-good-ssh-docker

Simple tunnel ssh script build for a docker, it's not good and safe. You will be able to tunnel an another docker[SOURCE] to the web (with a proxy server[TARGET]). It 's like ngrok but cheap without a great security (password usage).

Exemple where "web" is the docker service I want to share on web.

```dockercompose
  tunnel:
    build: https://github.com/nicrf/not-a-good-ssh-docker.git
    environment:
      - TARGET_USER=USER
      - TARGET_PASSWORD=PASSWORD
      - TARGET_HOST=URL.COM
      - TARGET_PORT=80
      - SOURCE_HOST=web
      - SOURCE_PORT=8080     
    depends_on: 
      - web
    links:
      - web:web
  web:
    image:.....
    
```

[TARGET] NGINX Example file

Use this tutorial for setup the proxy server https://blog.seriesci.com/unlimited-tunnels-to-localhost-for-little-money/

But for the location, add these parameter (proxy_*):
```
     location / {
                # First attempt to serve request as file, then
                # as directory, then fall back to displaying a 404.
#               try_files $uri $uri/ =404;
#               proxy_set_header X-Forwarded-Proto https;
                proxy_pass http://localhost:8080;
                proxy_set_header X-Real-IP $remote_addr;
                proxy_set_header Host $host;
                proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
                proxy_set_header X-Forwarded-Proto https;
                proxy_redirect off;
        }
```

Note if you  tunel a HTTPS port, like Nextcloud, change the "proxy_pass http://localhost:PORT;" for "proxy_pass https://localhost:PORT;".

I use lunanode.com(cheap) as virtual machine for the proxy server[TARGET] for my personnal use.
