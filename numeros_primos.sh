exec 2> /dev/null
trap 'echo "Se espera un numero"' ERR
rep=1
while ((rep == 1))
do
    echo "Ingrese un número entero positivo: "
    read num
    # Compobamos si se agrego un valor numerico
     [ "$num" -eq "$num" ]
     status=$?
     
    if(($status == "0"));then

    esPrimo=true

    # Comprobamos si es un número primo
    for ((i=2; i<=num/2; i++))
    do
        if [ $((num%i)) -eq 0 ]; then
            esPrimo=false
            break
        fi

    done
    #Imprimir respuesta
    if [ $esPrimo = true ]; then

        echo "$num es un número primo"
        
    else
        echo "$num no es un número primo"
    fi
    fi
    #estado
    echo "Tu programa tubo un total de $status errores"
    #siclo para repetir el programa
    echo "Desea volver a intentar (1)si (otro)no" 
    read rep
done