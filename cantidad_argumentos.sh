exec 2> /dev/null
trap 'echo "Se espera solo un argumento"' ERR

 
if (($# == 1));then
    echo "hola"
elif(($# != 1));then
    num =8;
status=$?
fi
echo "Tu programa tubo un total de $status errores"
