

## Microserviços - Projeto Prático

### Laravel Imagem Docker

- https://cloud.docker.com/repository/docker/soarescbm/laravel


```
docker run -d --name laravel-5.8-docker -p 8000:8000 soarescbm/laraval:5.8-env-docker
docker exec -it laravel-5.8-docker bash
php artisan serve --host=0.0.0.0
```

##### - Navegador http://localhost:8000



### Docker Compose 

```
docker-compose up -d 
docker exec -it laravel-5.8-docker bash
php artisan serve --host=0.0.0.0
```

#####  Navegador http://localhost:8000

