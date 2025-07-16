# Filogenia de la proteina checkpoint quinasa 1 (Chk1) en mamíferos

------------------------------------------------------------------------

## Autor

Gianluca Mannella

## USO

Se va a trabajar con el gen Chk1 enfocándose en primates, para ver como ha evolucionado en los distintos grupos. Entendiendo que este es un gen altamente conservado, queremos evaluar si existe algún tipo de anomalía dentro de los primates que no haya sido descrito anteriormente.

![Modelado 3D de la proteina Chk1](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3miTq7axlz4fFv22eVAk9jFArA_5bBPwrHQ&s)

## REQUISITOS

Se va a utilizar la terminal GIT Bash para correr el programa, ATOM para curar las secuencias, Mesquite para alinear las secuencias, finalmente IQTREE para realizar el árbol filogenético y posiblemente otros programas por definir. Las secuencias van a ser extraidas de la base de datos del Centro Nacional para la Información Biotecnológica o [NCBI](https://www.ncbi.nlm.nih.gov/).

## COMO USAR EL PROGRAMA

Para poder utilizar el script se necesita primeramente tener acceso a la terminal Bash e instalar los programas mencionados en la sección REQUISITOS.

**NOTA** Para correr los comandos vamos a necesitar de acceso a la súpercomputadora así también como vamos a tener que trabajar en la computadora local. 

Adicionalmente para correr el script es necesario descargar la carpeta con archivos
Después de descargar la carpeta, es necesario correr el archivo getgenesNCBI.sh
```
bash getgenesNCBI.sh
```
Al correr esto tendremos el archivo primates_chk1.fna, este archivo necesita ser depurado por ATOM, por lo que debemos correr el siguiente comando en la computadora local, asegurándonos que estemos trabajando en Desktop.
```
scp dechavez@hoffman2.idre.ucla.edu:(carpeta donde estemos trabajando en hoffman)/primates_chk1.fna .
```

Hecho esto abrimos ATOM y depuramos los nombres del archivo primates_chk1.fna, para la primera parte de esto utilizaremos Regular expresions

Donde Find in
```
(>\w+.\w).\w*...\w*.(\w+).(\w+).\s.\w+.\w+.
```

Y para Replace with
```
$1_$2_$3
```
**NOTA** Algunas secuencias tienen nombres irregulares, por lo que tendremos que depurarlos manualmente.

Abrimos el archivo .treefile en FigTree e identificamos al grupo más basal como nuestro root, en este caso *Microcebus murinus*


Terminado esto lo volvemos a subir a Hoffman y corremos el script Header.sh
```
qsub Header.sh
```
**NOTA** Debido a los problemas que tuve con el programa de IQTREE, el modelo para esta filogenia es el GTR+F+R9

Finalmente descargamos el archivo primates_chk1.fna.treefile en la computadora local en Desktop
```
scp dechavez@hoffman2.idre.ucla.edu:(carpeta donde estemos trabajando en hoffman)/primates_chk1.fna.treefile .
```
Para visualizar la filogenia abrimos FigTree y el resultado debería ser lo que encontramos en el archivo Filogenia.pdf adjunto en este repositorio. 
