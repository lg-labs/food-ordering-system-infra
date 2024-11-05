# You need to specify host as parameter
# E.g: $1 as gke-confluent-kafka-cp-zookeeper-headless

# delete
kafka-topics --zookeeper $1:2181 --topic customer --delete --if-exists
kafka-topics --zookeeper $1:2181 --topic payment-request --delete --if-exists
kafka-topics --zookeeper $1:2181 --topic payment-response --delete --if-exists
kafka-topics --zookeeper $1:2181 --topic restaurant-approval-request --delete --if-exists
kafka-topics --zookeeper $1:2181 --topic restaurant-approval-response --delete --if-exists

#create
kafka-topics --zookeeper $1:2181 --topic customer --create --replication-factor 3 --partitions 3 --if-not-exists
kafka-topics --zookeeper $1:2181 --topic payment-request --create --replication-factor 3 --partitions 3 --if-not-exists
kafka-topics --zookeeper $1:2181 --topic payment-response --create --replication-factor 3 --partitions 3 --if-not-exists
kafka-topics --zookeeper $1:2181 --topic restaurant-approval-request --create --replication-factor 3 --partitions 3 --if-not-exists
kafka-topics --zookeeper $1:2181 --topic restaurant-approval-response --create --replication-factor 3 --partitions 3 --if-not-exists
