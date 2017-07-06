# hive-client

Hive client from Horton Works to connect to hadoop cluster outside docker swarm

to run it put the conf from hadoop,hive and tez on file system from docker node and mount it 

create the service < offcourse you can also only run the docker container >

docker service create --name hive --hostname hivenode --constraint 'node.hostname == < put here the dockernode> ' --replicas 1 --network spark-network --mount type=bind,source=< directory>/hadoop_conf,destination=/etc/hadoop/conf,ro --mount type=bind,source=< directory>/hive_conf,destination=/etc/hive/conf,ro --mount type=bind,source=< directory>/tez_conf,destination=/etc/tez/conf,ro --host < put here the namenode and ip > --host  < put here the sec namenode and ip >  < url from dtr >/hive-client:latest  
