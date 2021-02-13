#Eejercicios 1 y 2 de la tarea de scokets
# 1) Echo server y client con 2 consolas 
# OjO: Se debe instalar instalar netcat para que esa 100% funcional, para ello se utiliza el codigo siguiente: sudo apt-get install netcat

#En la primera consola(server) se inserta el siguiente comando

nc -l -p 5353

#el puerto 5353 es uno de lo que tiene mi ordenador, debe asegurarse de utilizar uno de los de su ordenador 

# En la segunda consola(client) se introduce el siguiente comando


nc localhost 5353

#Despues de establecer estos 2 pasos ya sera posible entablar una comunciacion entre el servidor y el cliente


#2) Leer una url de una pagina publica
#en este caso utilizamos tcp
exec 3<>/dev/tcp/youtube.com/80
echo -e "GET / HTTP/1.1\nHost: youtube.com\n\n" >&3
cat <&3