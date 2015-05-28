echo Medidas de los muestreos en el lago de Atitlan > resultados.txt
for archivo in $(find ../Documents/Agua* | sort)
do
echo $archivo >> resultados.txt
echo $(cat $archivo | head -1 | cu -d , -f 2-) >> resultados.txt
echo $(bash med.sh $archivo) >> resultados.txt
done
echo termine
