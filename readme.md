

## Microserviços - Desafio Prático

### 1 - Template NGINX

Configuração 
```
...
ngix:
        build: .docker/nginx
        container_name: nginx
        environment:
          - PHP_FPM_HOST=app
          - PHP_FPM_PORT=9000
        entrypoint:  dockerize -template ./.docker/nginx/nginx.conf:/etc/nginx/conf.d/nginx.conf -wait tcp://app:9000 nginx -g "daemon off;"
...
```

Docker Compose

```
docker-compose up -d 
```

### 2 e 3 -  Imagem Go Lang Otimizada

Otimizada

```
docker run soarescbm/codeeducation
```



