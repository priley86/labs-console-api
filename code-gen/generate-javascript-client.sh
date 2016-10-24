#! /bin/bash

if [ -e "swagger-codegen-cli.jar" ]
then
    echo 'swagger client is present, let us use it.'
else
    echo 'swagger client is not present, let us download it.'
    wget http://repo1.maven.org/maven2/io/swagger/swagger-codegen-cli/2.2.1/swagger-codegen-cli-2.2.1.jar -O swagger-codegen-cli.jar
fi

rm -rf target/javascript/
java -jar swagger-codegen-cli.jar generate -l javascript -i ../swagger.yaml  -o target/javascript/