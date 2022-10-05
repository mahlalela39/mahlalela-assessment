#/bin/bash
rpm -qa  | grep docker

if [ $? !=0 ];then
	dnf install docker -y;
else
	echo "Docker is already installed"
fi

#Build docker file 
docker build --rm=true --secret id=secret,src=secret -t alfred:latest .


#Run pod
docker run  -v "secret:/run/secrets/secret:ro" -v "/var/lib/mysql:/var/lib/mysql" -e mysqld  --name ALFRED -d alfred:latest
