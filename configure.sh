#!/bin/bash

mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

useradd carlos -m -s /bi/bash -p $(openssl passwd -crypt 123456) -G GRP_ADM
useradd maria -m -s /bi/bash -p $(openssl passwd -crypt 123456) -G GRP_ADM
useradd joao -m -s /bi/bash -p $(openssl passwd -crypt 123456) -G GRP_ADM
useradd debora -m -s /bi/bash -p $(openssl passwd -crypt 123456) -G GRP_VEN
useradd sebastiana -m -s /bi/bash -p $(openssl passwd -crypt 123456) -G GRP_VEN
useradd roberto -m -s /bi/bash -p $(openssl passwd -crypt 123456) -G GRP_VEN
useradd josefina -m -s /bi/bash -p $(openssl passwd -crypt 123456) -G GRP_SEC
useradd amanda -m -s /bi/bash -p $(openssl passwd -crypt 123456) -G GRP_SEC
useradd rogerio -m -s /bi/bash -p $(openssl passwd -crypt 123456) -G GRP_SEC

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /public
