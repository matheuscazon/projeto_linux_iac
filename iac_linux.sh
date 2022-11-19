#!/bin/bash

echo "Criando Diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos de Usuários"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuários"

useradd carlos -m -s /bin/bash -c "Carlos" -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -c "Maria" -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -c "João" -p $(openssl passwd -1 Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -c "Débora" -p $(openssl passwd -1 Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -c "Sebastiana" -p $(openssl passwd -1 Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -c "Roberto" -p $(openssl passwd -1 Senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -c "Josefina" -p $(openssl passwd -1 Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -c "Amanda" -p $(openssl passwd -1 Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -c "Rogério" -p $(openssl passwd -1 Senha123) -G GRP_SEC

echo "Especificando Pemissões dos Diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim"
