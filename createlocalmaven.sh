mvn org.apache.maven.plugins:maven-install-plugin:2.5.2:install-file -Dfile=./sctp-api/target/sctp-api-3.0.0.jar -DgroupId=org.mobicents.protocols.sctp -DartifactId=sctp-api -Dversion=3.0.0 -Dpackaging=jar -DlocalRepositoryPath=/tmp/local-maven-repo -DcreateChecksum=true
mvn org.apache.maven.plugins:maven-install-plugin:2.5.2:install-file -Dfile=./sctp-impl/target/sctp-impl-3.0.0.jar -DgroupId=org.mobicents.protocols.sctp -DartifactId=sctp-impl -Dversion=3.0.0 -Dpackaging=jar -DlocalRepositoryPath=/tmp/local-maven-repo -DcreateChecksum=true
