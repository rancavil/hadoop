After build the image.
----------------------

To run a container execute the next command:

     $ docker run -it --name <container-name> -p 50070:50070 -p 50075:50075 -p 8088:8088 --hostname codek-io.com hadoop-container:2.9.0 bash

Make sure change **container-name** by your favorite name.

Inside container you can start with the configuration.

Format the namenode:

     $ bin/hdfs namenode -format

Now you can start the services:

     $ sbin/start-dfs.sh
     $ sbin/start-yarn.sh
