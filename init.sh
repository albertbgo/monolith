sudo apt-get update -y
sudo apt install default-jdk -y
java -version


sudo echo 'JAVA_HOME="/usr/lib/jvm/java-1.11.0-openjdk-amd64/bin"'  | sudo tee -a /etc/environment 
source /etc/environment
echo $JAVA_HOME

wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.69/bin/apache-tomcat-9.0.69.tar.gz
sudo tar xzvf apache-tomcat-9.0.69.tar.gz
sudo mv apache-tomcat-9.0.69 /opt/tomcat/
sudo chown -R www-data:www-data /opt/tomcat/
sudo chmod -R 777 /opt/tomcat/

sudo apt-get install git -y
git clone https://github.com/albertbgo/monolith.git
cd monolith

./mvnw clean install -Dmaven.test.skip=true

cd /home/ubuntu/monolith/target
sudo cp monolith.war /opt/tomcat/webapps/

sudo apt install mysql-server -y
sudo systemctl start mysql.service


cd /home/ubuntu/monolith/src/main/resources
sudo mysql < db-config.sql 

sudo mv tomcat-configuration.txt /etc/systemd/system/tomcat.service
sudo systemctl daemon-reload
sudo systemctl start tomcat
sudo systemctl enable tomcat
sudo systemctl status tomcat


