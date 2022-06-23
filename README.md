# java-spring-boot

#### Export environment configuration (don't do in a Production environment!)
```
# replace sample values with correct values
export SERVER_PORT=8080
export DB_HOST=localhost
export DB_PORT=5432
export DB_NAME=stew
export DB_USER=postgres
export DB_PASSWORD=postgres
```

#### Create image
```
sudo docker build -t app-name \
    --build-arg SERVER_PORT=$SERVER_PORT \
    --build-arg DB_HOST=$DB_HOST \
    --build-arg DB_PORT=$DB_PORT \
    --build-arg DB_NAME=$DB_NAME \
    --build-arg DB_USER=$DB_USER \
    --build-arg DB_PASSWORD=$DB_PASSWORD \
    .
```

#### Run container (assuming environment variables defined)
```
sudo docker run -dp $SERVER_PORT:$SERVER_PORT \
    -e SERVER_PORT=$SERVER_PORT \
    -e DB_HOST=$DB_HOST \
    -e DB_PORT=$DB_PORT \
    -e DB_NAME=$DB_NAME \
    -e DB_USER=$DB_USER \
    -e DB_PASSWORD=$DB_PASSWORD \
    app-name
```
