# startup.sh
Simple startup script to initialize my dev environment

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

## Extras

You may consider installing the following tools:

https://github.com/unixorn/fzf-zsh-plugin

https://github.com/zsh-users/zsh-autosuggestions

https://github.com/zsh-users/zsh-syntax-highlighting

https://github.com/romkatv/powerlevel10k
