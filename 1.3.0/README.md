# Alien4Cloud v1.3.0

## To run

    docker run -i --rm --publish 8088:8088 --name alien4cloud \
           antillion/alien4cloud:1.3.0
           
Alien4Cloud should then be accessible on `http://[ip]:8088` (i.e. if on your local machine: [http://localhost:8088](http://localhost:8088)).
 
Username: `admin`

Password: `jKy?CMF3q$ycrqEKmZRQ`

You probably then want to follow the [Alien4Cloud Getting Started section](http://alien4cloud.github.io/premium/premium.html#configure-your-orchestrator-and-location).

Data is stored in the volume path `/opt/alien4cloud-data`

## Detailed configuration

The following configuration files are in volume path `/root/config`
 
 - Alien4Cloud's main: alien4cloud-config.yml
 - Alien4Cloud logging: log4j.properties
 - Elasticsearch: elasticsearch.yml
 
For details on the logging, check out the [Alien4Cloud configuration section](http://alien4cloud.github.io/premium/premium.html#alien-4-cloud-configuration).
