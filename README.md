# sensu-docker

This is an all in one Sensu 1.x Docker environment intended for development/learning purposes.

## Build Images
Build the images with the following commands:
```
docker build -t sensu-server:latest sensu-server/.
docker build -t sensu-client:latest sensu-client/.
docker build -t sensu-client:latest sensu-client/.
```

## Start the environment
Launch the environment using the `docker-compose` command:
```
[sensu-docker]$ docker-compose up -d
Creating network "sensudocker_sensu" with driver "bridge"
Creating sensudocker_redis_1 ...
Creating sensudocker_rabbitmq_1 ...
Creating sensudocker_redis_1
Creating sensudocker_rabbitmq_1 ... done
Creating sensudocker_sensu-server_1 ...
Creating sensudocker_sensu-server_1 ... done
Creating sensudocker_uchiwa_1 ...
Creating sensudocker_sensu-client_1 ...
Creating sensudocker_sensu-client_1
Creating sensudocker_uchiwa_1 ... done
```

See the status of the environment with `docker-compose ps`:
```
           Name                         Command               State                    Ports
-------------------------------------------------------------------------------------------------------------
sensudocker_rabbitmq_1       docker-entrypoint.sh rabbi ...   Up      25672/tcp, 4369/tcp, 5671/tcp, 5672/tcp
sensudocker_redis_1          docker-entrypoint.sh redis ...   Up      6379/tcp
sensudocker_sensu-client_1   docker-entrypoint.sh             Up
sensudocker_sensu-server_1   docker-entrypoint.sh             Up      0.0.0.0:4567->4567/tcp
sensudocker_uchiwa_1         docker-entrypoint.sh             Up      0.0.0.0:3000->3000/tcp
```

See service logs using `docker-compose logs sensu-server`:
```
[sensu-docker]$ docker-compose logs sensu-server
Attaching to sensudocker_sensu-server_1
sensu-server_1  | Sensu Configuration:
sensu-server_1  | {
sensu-server_1  |   "rabbitmq": {
sensu-server_1  |     "host": "rabbitmq",
sensu-server_1  |     "vhost": "/sensu",
sensu-server_1  |     "user": "sensu",
sensu-server_1  |     "password": "sensu"
sensu-server_1  |   },
sensu-server_1  |   "redis": {
sensu-server_1  |     "host": "redis",
sensu-server_1  |     "port": 6379
sensu-server_1  |   }
sensu-server_1  | }
sensu-server_1  | {"timestamp":"2018-01-01T01:23:00.940028+0000","level":"warn","message":"loading config file","file":"/etc/sensu/config.json"}
sensu-server_1  | {"timestamp":"2018-01-01T01:23:00.940102+0000","level":"warn","message":"loading config files from directory","directory":"/etc/sensu/conf.d"}
sensu-server_1  | {"timestamp":"2018-01-01T01:23:00.946936+0000","level":"warn","message":"loading config file","file":"/etc/sensu/config.json"}
sensu-server_1  | {"timestamp":"2018-01-01T01:23:00.947053+0000","level":"warn","message":"loading config files from directory","directory":"/etc/sensu/conf.d"}
sensu-server_1  | {"timestamp":"2018-01-01T01:23:00.956977+0000","level":"warn","message":"loading extension files from directory","directory":"/etc/sensu/extensions"}
```
