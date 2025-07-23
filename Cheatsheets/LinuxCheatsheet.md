# Listar ficheros

```bash
ls
ls -l
ls -a
ls -lah
```

# Cambiar de carpeta

```bash
cd Documents
cd ..
cd /home/kali/Downloads
```

# Imprimir el directorio actual

```bash
pwd
```

# Mostrar ficheros

```bash
cat /etc/passwd
more /etc/passwd
less /etc/passwd
head /etc/passwd
tail /etc/passwd
```

# Ver la ruta o el tipo de comando

```bash
which cat
type cat
```

# Ver el tipo de fichero

```bash
file /etc/passwd
```

# Buscar ficheros

```bash
find . -type f -name file_name
find . -type d -name directory_name
```

# Copiar ficheros

```bash
cp file1 file2
```

# Mover ficheros

```bash
mv file1 file2
```

# Borrar ficheros

```bash
rm file1
rm -rf ~/Downloads/directorio
```

# Busqueda de palabras clave en un fichero

```bash
grep root /etc/passwd
```

# Filtrado

```bash
awk -F':' '{print $1}' /etc/passwd
sed 's/kali/root' /etc/passwd
```

# Descargar ficheros de una web

```bash
curl -sSLO https://example.com/file.txt
wget https://example.com/file.txt
```

# Ayuda o manual de los comandos

```bash
curl --help
man curl
```

# Combinacion de comandos

```bash
cat /etc/passwd | grep -i kali | awk -F':' '{print $1}'
```

# Actualizar Kali

```bash
sudo apt update && sudo apt upgrade -y
```

# Instalacion de herramientas

## Golang

```bash
go install github.com/tomnomnom/meg@latest
```

## Python

```bash
git clone https://github.com/m8sec/pymeta.git && cd pymeta
python -m venv venv
. venv/bin/activate # Para salir del entorno `deactivate`
python setup.py install
```

## Pipx

```bash
sudo apt install pipx
pipx install pymeta
```

# Cheatsheets online

- https://www.geeksforgeeks.org/linux-unix/linux-commands-cheat-sheet/
- https://phoenixnap.com/kb/linux-commands-cheat-sheet
- https://cheatography.com/davechild/cheat-sheets/linux-command-line/
