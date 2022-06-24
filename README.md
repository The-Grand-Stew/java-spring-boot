# java-spring-boot

#### Export environment configuration (don't do in a Production environment!)
```
# replace sample values with correct values
export SERVER_PORT=8080
export DB_HOST=database
export DB_PORT=5432
export DB_NAME=stew
export DB_USER=postgres
export DB_PASSWORD=postgres
```

#### Create image (don't miss copying the final ".")
```
sudo docker build -t stew-java-springboot \
    --build-arg SERVER_PORT=$SERVER_PORT \
    --build-arg DB_HOST=$DB_HOST \
    --build-arg DB_PORT=$DB_PORT \
    --build-arg DB_NAME=$DB_NAME \
    --build-arg DB_USER=$DB_USER \
    --build-arg DB_PASSWORD=$DB_PASSWORD \
    .
```

#### Run dbms and service
```
sudo -E docker compose up
```

#### Create database
```
psql -h $DB_HOST -p $DB_PORT -U $DB_USER -c "create database $DB_NAME;"

```

#### Check that a service is up & running at _localhost:$SERVER_PORT/$SERVICE_NAME_ 
##### (please substitute $SERVER_PORT and $SERVICE_NAME with the correct values)
