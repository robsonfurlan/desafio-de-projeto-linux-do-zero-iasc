#!/bin/bash
# Criado por Robson Furlan Pereira para o curso "Linux do Zero" da DIO

echo "Criando diretórios....."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos....."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários....."

echo "Criando usuários do grupo GRP_ADM...."

useradd carlos -m -c "Carlos" -G GRP_ADM -s /bin/bash -p $(openssl passwd Senha123) 
useradd maria -m -c "Maria" -G GRP_ADM -s /bin/bash -p $(openssl passwd Senha123)
useradd joao -m -c "João" -G GRP_ADM -s /bin/bash -p $(openssl passwd Senha123)

echo "Criando usuários do grupo GRP_VEN...."

useradd debora -m -c "Débora" -G GRP_VEN -s /bin/bash -p $(openssl passwd Senha123)
useradd sebastiana -m -c "Sebastiana" -G GRP_VEN -s /bin/bash -p $(openssl passwd Senha123)
useradd roberto -m -c "Roberto" -G GRP_VEN -s /bin/bash -p $(openssl passwd Senha123)

echo "Criando usuários do grupo GRP_SEC...."

useradd josefina -m -c "Josefina" -G GRP_SEC -s /bin/bash -p $(openssl passwd Senha123)
useradd amanda -m -c "Amanda" -G GRP_SEC -s /bin/bash -p $(openssl passwd Senha123)
useradd rogerio -m -c "Rogério" -G GRP_SEC -s /bin/bash -p $(openssl passwd Senha123)


echo "Atribuindo Donos e Grupos dos diretórios...."

chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/
chown root:root /publico/

echo "Atribuindo permissões...."

chmod 777 /publico/
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/

echo "Script finalizado!!!"
