<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [Some Changes  In My Linux](#some-changes--in-my-linux)
  - [manager-projects](#manager-projects)
  - [Actions](#actions)
      - [Documentacio](#documentacio)
      - [OPEN material consulta (mc) / Planificacio (pl) / Projectes (p)](#open-material-consulta-mc--planificacio-pl--projectes-p)
  - [Comandes](#comandes)
      - [Utils](#utils)
      - [JetBrains](#jetbrains)
  - [others](#others)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# Some Changes  In My Linux
El principal objectiu és el de tenir en algun lloc les meves coses :)

## manager-projects
Projecte que preten gestionar tots els projectes / estat / rutes / configuracions / funcionament ... ja veurem com.

## Actions

#### Documentacio

Util per a crear documents per a documentar projectes. 

Documentació:

```shell
# create and open a file my_file.odt
cdoc my_file.odt

# open file my_file.odt
odoc my_file.odt

```

Altres:
```shell
# Archivar projectes 
pendent definir

```

Implementacions:
APPEND IN subl ~/.bash_aliases or **subl ~/.bashrc**


```shell
#alias doc
alias cdoc='_cdoc(){ touch "$1"; libreoffice "$1";}; _cdoc';
alias odoc='_odoc(){ libreoffice "$1";}; _odoc';

#other alias
alias mkcd='_mkcd(){ mkdir "$1"; cd "$1";}; _mkcd';

```

#### OPEN material consulta (mc) / Planificacio (pl) / Projectes (p)

Util per a obrir les carpetes en el path desitjat sense perdre el temps.

```shell
#alias Open Material Consulta / Planificacio / Projectes
alias omc='_omc(){ cd "/home/manolo/MEGA/MEGA/MATERIAL_DE_CONSULTA/"; xdg-open .;}; _omc';
alias opl='_opl(){ cd "/home/manolo/MEGA/MEGA/PLANIFICACIO/"; xdg-open .;}; _opl';
alias op='_op(){ cd "/home/manolo/MEGA/MEGA/PROJECTES/"; xdg-open .;}; _op';

```




## Comandes

#### Utils
```shell
# Obtenir imatges d'internet i renombrar el document
wget URL -O FILENAME

```

```shell
# Obrir el gestor de fitxers desde terminal
xdg-open PATH 

```

```shell
# Obrir server markdown dins de sublime text
ctrl + k, m

```

```shell
# Rename all files
mmv \* b\#1

```

#### JetBrains

```shell
# Go Line
ctrl + G

# Find
ctrl + N

# Navegacio entre metodes
Alt + Down

# Eliminar linea 
Mayus + supr
```










## others


"""

myfunction() {
    #do things with parameters like $1 such as
    mv "$1" "$1.bak"
    cp "$2" "$1"
}

myfunction old.conf new.conf #calls `myfunction
"""