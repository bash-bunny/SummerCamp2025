# Busqueda por palabras exactas

```
"Tricia Jones"
"security"
```

# Busqueda por varias palabras

## Ambas palabras

```
"Tricia" "Jones"
```
## Una u otra palabra

```
"Tricia"|"Jones"
```

# Quitar palabras de los resultados

```
"front door" -wood
```

# Buscar que aparezca en la URL

```
inurl:"osintcurio.us/admin"
```

# Buscar que aparezca en el titulo de la pagina

```
intitle:"login"
```

# Buscar que aparezca en el texto de la pagina

```
intext:"camera monitoring system"
```

# Buscar por todos los dominios y subdominios de un dominio

```
"login" site:osintcurio.us
```

# Buscar por tipo de fichero

```
"passwords" filetype:xls
```

# Busqueda por contenido relacionado

```
related:inteltechniques.com
```

# Busqueda por 2 palabras clave y cualquier palabra o palabras en medio

```
"osint * training"
```

# Combinacion

## Busqueda de ficheros con contraseñas

```
password|passwords|pass filetype:xls
```

## Busqueda en un dominio determinado

```
site:blackarch.org "install"
```

## Busqueda de urls con ftp y tipo de fichero pdf

```
inurl:ftp -inurl:(http|https) filetype:pdf "osint"
```

## Busqueda de Google Drive abiertos

```
site:docs.google.com inurl:/document/d/ "recurso"
site:docs.google.com "/spreadsheets/d/" "* funcionarios *"
```

# Operadores Avanzados

```
intitle, allintitle
inurl, allinurl
filetype
allintext
site
link
inanchor
daterange
cache
info
related
phonebook
rphonebook
bphonebook
author
group
msgid
insubject
stocks
define
```

# Cheatsheets Online

- https://www.exploit-db.com/google-hacking-database
- https://dorksearch.com/
- https://afsh4ck.gitbook.io/ethical-hacking-cheatsheet/recopilacion-de-informacion/google-hacking/google-dorks
- https://www.stationx.net/google-dorks-cheat-sheet/
- https://github.com/chr3st5an/Google-Dorking
