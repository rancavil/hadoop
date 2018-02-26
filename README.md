Hadoop Single Node Cluster on Docker.
=====================================

Following this steps you can build and use the image to create Hadoop Single Node Cluster containers.

Create Hadoop image.
--------------------

     $ git clone https://gitlab.com/rancavil/hadoop.git
     $ cd hadoop
     $ docker build -t hadoop:2.9.0 .

After build the image.
----------------------

To run and create a container execute the next command:

     $ docker run -it --name container-name -p 50070:50070 -p 50075:50075 -p 8088:8088 --hostname your-hostname hadoop:2.9.0 bash

Make sure change **container-name** by your favorite name and set **your-hostname** with by your ip or name machine.

Inside container you can start with the configuration and services.

Format the namenode:

     $ bin/hdfs namenode -format

Now you can start the services:

     $ sbin/start-dfs.sh
     $ sbin/start-yarn.sh

To check if hadoop container is working go to the url in your browser.

     http://localhost:50070

**Notice:** the hdfs-site.xml configure has the property.

     <property>
         <name>dfs.permissions</name>
         <value>false</value>
     </property>

This allow you can create directories and upload files throught web ui without authentication. 
Beware, this is not for production environment.

