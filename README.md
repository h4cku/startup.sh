# startup.sh
Simple startup script to initialize my dev environment

## Alpine

Using docker
```sh
docker run -it --name my-alpine -p 3000:3000 -p 5000:5000 -p 8888:8888 -v .:/root/startup.sh -v /var/run/docker.sock:/var/run/docker.sock --cap-add NET_ADMIN alpine
```

```sh
docker exec -it my-alpine sh
```

Using docker compose 
```sh
docker compose up alpine-dev-env
```

```sh
docker exec -it alpine-dev-env sh
```


## Ubuntu

Using docker
```sh
docker run -it --name my-ubuntu -p 3000:3000 -p 5000:5000 -p 8888:8888 v .:/root/startup.sh -v /var/run/docker.sock:/var/run/docker.sock --cap-add NET_ADMIN ubuntu
```

```sh
docker exec -it my-ubuntu bash
```

Using docker compose 
```sh
docker compose up ubuntu-dev-env
```

```sh
docker exec -it ubuntu-dev-env bash
```
