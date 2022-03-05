#!/bin/bash
#Description: How to configure Sonarqube on Centos7
#Author:Afolabi Sofela
#Date: March,2022

echo
echo "Server update"
sleep 2
echo
yum update -yum
echo
sleep 2
echo "Installation of java application"
sleep 2
yum install java-11-openjdk-devel -yum
echo
yum install java-11-openjdk -yum
sleep 2
echo
echo "Download sonarqube"
sleep 2
yum install wget -y
sleep 2
sudo wget http://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip
echo
sudo unzip /opt/sonarqube-9.3.0.51899.zip
sleep 2
echo "Change ownership to user"
sudo chown -R vagrant /opt/sonarqube-9.3.0.51899
echo
sleep 2
cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64
echo
echo "Complete installation"