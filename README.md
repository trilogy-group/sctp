
# Overview
This is a fork of [Restcomm SCTP](https://github.com/RestComm/sctp). The fork was created in order to fix a threading issue where only one thread was used to process all socket connections. This was a scaling bottleneck. The code has been updated to enable a thread per socket connection for both client and server applications. Number of threads are determined automatically based on the available CPU cores. This works for bare metal and VMs (including EC2) but does not work in container environments (e.g. ECS). For container environments you must specify the following JVM parameter on startup: 
> -XX:ActiveProcessorCount=<number of CPU cores> 

# Build
Build using 'mvn install'. You will need to install the libsctp package if not already installed.
> sudo apt-get update -y,  sudo apt-get install -y libsctp-dev<br>
> mvn install