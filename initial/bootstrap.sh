###
###	Essential while setting up Virtual machine
###

yum update -y
yum install epel-release -y
yum install -y unzip.x86_64 python-devel python-pip openssl-devel libffi-devel


pip install pip --upgrade
pip install setuptools --upgrade
#pip install -r /home/vagrant/src/requirements.txt

chmod 750 /home/vagrant
setenforce 0

service network restart
service sshd 	restart