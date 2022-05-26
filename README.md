
# Overview
This is a fork of [Restcomm SCTP](https://github.com/RestComm/sctp). The fork was created in order to fix a threading issue where only one thread was used to process all socket connections. This was a scaling bottleneck. The code has been updated to enable a thread per socket connection for both client and server applications. Number of threads are determined automatically based on the available CPU cores. This works for bare metal and VMs (including EC2) but does not work in container environments (e.g. ECS). For container environments you must specify the following JVM parameter on startup: 
> -XX:ActiveProcessorCount=<number of CPU cores> 

# Build
Build using 'mvn install'. You will need to install the libsctp package if not already installed (Devspaces will install automatically).
> sudo apt-get update -y,  sudo apt-get install -y libsctp-dev<br>
> mvn install

The two output artifacts are the .jars located under sctp-api/target and sctp-impl/target. These need to be pushed to a DevFactory repo manager (e.g. Nexus) if we maintain this fork going forward. In the meantime, a 'createlocalmaven.sh' script allows you to install the jars in a  maven repo under /tmp on your local drive. This works but requires other repos such as jss7 and the sigtran-stack PoC to be built on the same machine (e.g. no Devspaces support).