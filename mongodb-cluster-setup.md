Reference:
https://www.mongodb.com/compatibility/deploying-a-mongodb-cluster-with-docker

1. create a Docker network
```
docker network create mongoCluster
```

2. create mongo container
docker run -d --rm -p 27017:27017 --name mongo1 --network mongoCluster mongo:5 mongod --replSet myReplicaSet --bind_ip localhost,mongo1
docker run -d --rm -p 27018:27017 --name mongo2 --network mongoCluster mongo:5 mongod --replSet myReplicaSet --bind_ip localhost,mongo2
docker run -d --rm -p 27019:27017 --name mongo3 --network mongoCluster mongo:5 mongod --replSet myReplicaSet --bind_ip localhost,mongo3

3. create cluster
docker exec -it mongo1 mongosh --eval "rs.initiate({
 _id: \"myReplicaSet\",
 members: [
   {_id: 0, host: \"mongo1\"},
   {_id: 1, host: \"mongo2\"},
   {_id: 2, host: \"mongo3\"}
 ]
})"

4. check setatus
docker exec -it mongo1 mongosh --eval "rs.status()"


5. stop one of the container
docker stop mongo1


6. check status again
docker exec -it mongo1 mongosh --eval "rs.status()"

7. start container back and check status
