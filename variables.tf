variable "region" {
    type = string
    description = "region de despliegue"
}

variable "prefix_name" {
    type = string
    description = "prefijo para nombres de recursos"
}

variable "user" {
    type = string
    description = "usuario ssh"
}

variable "password" {
    type = string
    description = "password ssh"
}

variable "servers" {
    type = set(string)
    description = "nombre de los servidores que se van a desplegar"
}
variable "size_servers" {
    type = string
    default = "Standard_B1s"
    description = "tamaño de instancia por defecto"
}

variable "size_by_server" {
    type = map(string)
    default = {}
    description = "tamaño de instancia por servidor"
}

variable "ssh_public_key_path" {
    type = string
    default = "~/.ssh/id_rsa.pub"
    description = "ruta de la llave publica ssh"
}
