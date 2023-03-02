echo "Adivina el numerodel uno al 10"
num=$(($RANDOM%10))
while [ true ]

do
    echo "Ingrese tu numero: "
    read numero

    if [[ "$numero" == "$num" ]]; then
    break
    fi
    echo "Numero erroneo, prueba con otro... "
done

echo "Adivinaste!!! "
