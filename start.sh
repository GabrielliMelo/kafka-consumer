#!/bin/bash
export KAFKA_HOST="192.168.1.21:9092"
export KAFKA_TOPIC="TOPICO_1"
export KAFKA_GROUP_ID_READER="consomer_1"

export CLASSPATH=target/kafka_consumer-1.0-SNAPSHOT.jar
export className=App
echo "## Running $className..."
shift
mvn exec:java -Dexec.mainClass="br.com.kafka_consumer.$className"