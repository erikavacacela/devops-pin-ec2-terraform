# Welcome devops-pin-ec2-terraform

## Crear EC2 and recursos


### Conexión de máquina local a AWS
Para ejecutar terraform se configuro un usuario con la política de permiso `AdministratorAccess`.
Se creo *access key* para la conexión remota.

Se utiliza el método [Environment Variables](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#environment-variables)
para establecer las credenciales de acceso.


### Crear y configurar máquina EC2

**Características**

* Region: us-west-1
* Sistema Operativo : Ubuntu Server 20.04
* Family (Tipo): t2.micro


**1. Reemplazar campo public_key**

Generar clave para conexion a ssh

```
ssh-keygen -t rsa -b 2048
cat generated_key.pub
```
Copiar el contenido y pegar en `aws-key-pair-setup.tf >> key_name`


**2. Crear instancia EC2 y recursos**

```
cd setup_cluster_terraform

terraform init
terraform plan
terraform apply
```

En donde:
- `terraform init` Descarga los proveedores
- `terraform apply` Instala el proveedor de AWS EKS, vpc, security groups entre otros y luego despliega el cluster.

Verificar en la consola AWS que la instancia EC2 ha sido creada.

*Desde EC2* > *EC2 Dashboard*

Se mostra la cantidad de recursos que tiene creado: instances, security groups, key pairs.

**Nota** Para eliminar los recursos creados, usar el comando:
```
terraform destroy
```


### Conectarse a una máquina EC2

* Clic en el Link del instance ID , esto abre las configuraciones.
* Connect
![ScreenShot](/assets/images/1-ec2-connect.png)

* Seguir las instrucciones para asignar los permisos correspondientes al archivo .PEM y conectarse a la instancia EC2 (usar la clave generada en el paso 1).

Nota: Es posible que si están utilizando WSL en Windows (Ubuntu desde Windows), incluso luego de cambiar los permisos arroje un error:
![ScreenShot](/assets/images/2-ec2-connect-issue.png)
Se soluciona corriendo la conexión SSH con `sudo`

