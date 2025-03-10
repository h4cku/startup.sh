# startup.sh
Simple startup script to initialize my dev environment

## Alpine
```sh
docker run -it --name my-alpine -p 3000:3000 -p 5000:5000 -p 8888:8888 alpine
```

```sh
docker exec -it my-alpine sh
```

## Ubuntu
```sh
docker run -it --name my-ubuntu -p 3000:3000 -p 5000:5000 -p 8888:8888 ubuntu
```

```sh
docker exec -it my-ubuntu bash
```

