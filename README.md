# not-a-good-ssh-docker

Simple tunnel ssh script build for a docker, it's not good and safe.

```dockercompose
  tunnel:
    buils: https://github.com/nicrf/not-a-good-ssh-docker.git
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
```
