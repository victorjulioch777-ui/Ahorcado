.model small
.stack 100h

.data

;--------------------
;1. Mensajes y textos
;--------------------                     

mensajeAcierto DB 0Dh, 0Ah, "Letra correcta!$"
mensajeError DB 0Dh, 0Ah, "Letra incorrecta!$"
mensajeIngresar DB 0Dh, 0Ah, "Ingrese una letra: $"
mensajeDerrota DB 0Dh, 0Ah, "Has perdido!$"
mensajeVictoria DB 0Dh, 0Ah, "Has ganado!$"
mensajeRepetida DB 0Dh, 0Ah, "Ya ingresaste esa letra!$"
mensajeInvalido DB 0Dh, 0Ah, "Ingrese solo letras de A a Z!$"
mensajePalabra DB 0Dh, 0Ah, "Palabra: $"
mensajeIntentos DB 0Dh, 0Ah, "Intentos restantes: $"
mensajeLetrasUsadas DB 0Dh, 0Ah, "Letras utilizadas: $"
mensajeNinguna DB "Ninguna$"
mensajeRevelar DB 0Dh, 0Ah, "La palabra era: $"

mensajeTitulo DB 0Dh, 0Ah
              DB "================================", 0Dh, 0Ah
              DB "           AHORCADO             ", 0Dh, 0Ah
              DB "================================", 0Dh, 0Ah, "$"
              
dibujo0 DB 0Dh, 0Ah
        DB "    +-------+", 0Dh, 0Ah
        DB "    |       |", 0Dh, 0Ah
        DB "            |", 0Dh, 0Ah
        DB "            |", 0Dh, 0Ah
        DB "            |", 0Dh, 0Ah
        DB "            |", 0Dh, 0Ah
        DB "=============", 0Dh, 0Ah, "$"
        
dibujo1 DB 0Dh, 0Ah
        DB "    +-------+", 0Dh, 0Ah
        DB "    |       |", 0Dh, 0Ah
        DB "    O       |", 0Dh, 0Ah
        DB "            |", 0Dh, 0Ah
        DB "            |", 0Dh, 0Ah
        DB "            |", 0Dh, 0Ah
        DB "=============", 0Dh, 0Ah, "$"
        
dibujo2 DB 0Dh, 0Ah
        DB "    +-------+", 0Dh, 0Ah
        DB "    |       |", 0Dh, 0Ah
        DB "    O       |", 0Dh, 0Ah
        DB "    |       |", 0Dh, 0Ah
        DB "            |", 0Dh, 0Ah
        DB "            |", 0Dh, 0Ah
        DB "=============", 0Dh, 0Ah, "$"
        
dibujo3 DB 0Dh, 0Ah
        DB "    +-------+", 0Dh, 0Ah
        DB "    |       |", 0Dh, 0Ah
        DB "    O       |", 0Dh, 0Ah
        DB "   /|       |", 0Dh, 0Ah
        DB "            |", 0Dh, 0Ah
        DB "            |", 0Dh, 0Ah
        DB "=============", 0Dh, 0Ah, "$"
        
dibujo4 DB 0Dh, 0Ah
        DB "    +-------+", 0Dh, 0Ah
        DB "    |       |", 0Dh, 0Ah
        DB "    O       |", 0Dh, 0Ah
        DB "   /|\      |", 0Dh, 0Ah
        DB "            |", 0Dh, 0Ah
        DB "            |", 0Dh, 0Ah
        DB "=============", 0Dh, 0Ah, "$"
        
dibujo5 DB 0Dh, 0Ah
        DB "    +-------+", 0Dh, 0Ah
        DB "    |       |", 0Dh, 0Ah
        DB "    O       |", 0Dh, 0Ah
        DB "   /|\      |", 0Dh, 0Ah
        DB "   /        |", 0Dh, 0Ah
        DB "            |", 0Dh, 0Ah
        DB "=============", 0Dh, 0Ah, "$"
        
dibujo6 DB 0Dh, 0Ah
        DB "    +-------+", 0Dh, 0Ah
        DB "    |       |", 0Dh, 0Ah
        DB "    O       |", 0Dh, 0Ah
        DB "   /|\      |", 0Dh, 0Ah
        DB "   / \      |", 0Dh, 0Ah
        DB "            |", 0Dh, 0Ah
        DB "=============", 0Dh, 0Ah, "$"

;-----------------------------                     
;2. Variables de los jugadores
;-----------------------------

;Almacena el caracter ingresado por el teclado
letraJugador db 0

;------------------------
;3. Palabras y categorias
;------------------------

palabra1 db "GATO", 0
palabra2 db "TECLADO", 0
Palabra3 db "COMPUTADORA", 0
palabraVisible db 20 dup('_'), '$'                                                                                                                                                         

;----------------------
;4. Variables del juego   
;----------------------  

encontro db 0       ;0 = no encontrado y 1 = encontrado
errores db 0 ;Cantidad de errores del jugador
letrasUsadas db 26 dup(0)
cantidadUsadas db 0
longitudPalabra db 0
palabraActual dw 0
numeroPalabra db 3
estadoTurno db 0 

;----------------------------
;5. Puntuacion y estadisticas
;----------------------------

.code

main proc
    ;Inicializar el segmento de datos                                                                                                                                              
    mov ax, @data
    mov ds, ax
    
    ; Se encarga de obtener la hora del sistema
    mov ah, 2Ch
    int 21h
    
    ;Se encarga de combinar segundos y centesimas
    mov al, dl
    add al, dh
    mov ah, 0
    
    ;Se encarga de dividir entre la cantidad de palabras
    mov bl, 3
    div bl
    
    ;Se encarga de obtener un numero entre 1 y 3
    inc ah
    mov numeroPalabra, ah
    
    ;Se encarga de seleccionar la palabra
    mov al, numeroPalabra 
    cmp al, 1
    je seleccionarGato    
    cmp al, 2
    je seleccionarTeclado    
    cmp al, 3
    je seleccionarComputadora    
    jmp seleccionarGato
    
    seleccionarGato:
        lea ax, palabra1
        jmp guardarSeleccion
        
    seleccionarTeclado:
        lea ax, palabra2
        jmp guardarSeleccion
        
    seleccionarComputadora:
        lea ax, palabra3
        jmp guardarSeleccion
        
    guardarSeleccion:
        mov palabraActual, ax
        
        mov bx, palabraActual
        mov si, 0
        
    contarLetras:
        ;Leer el caracter de la palabra seleccionado
        mov al, [bx+si]
        
        ;Comprobar si encontramos el terminador
        cmp al, 0
        je longitudCalculada
        
        ;Avanzar a la siguiente posicion
        inc si
        jmp contarLetras
            
    longitudCalculada:
        mov ax, si
        mov longitudPalabra, al
        
        mov bx, si
        mov palabraVisible[bx], '$'                
         
    nuevoIntento:
         mov ah, 00h
         mov al, 03h
         int 10h
         
         lea dx, mensajeTitulo
         mov ah, 09h
         int 21h
         
         cmp errores, 0
         je seleccionarDibujo0
         
         cmp errores, 1
         je seleccionarDibujo1
         
         cmp errores, 2
         je seleccionarDibujo2
         
         cmp errores, 3
         je seleccionarDibujo3
         
         cmp errores, 4
         je seleccionarDibujo4
         
         jmp seleccionarDibujo5
         
         seleccionarDibujo0:
            lea dx, dibujo0
            jmp imprimirDibujo
               
         seleccionarDibujo1:
            lea dx, dibujo1
            jmp imprimirDibujo
            
         seleccionarDibujo2:
            lea dx, dibujo2
            jmp imprimirDibujo
            
         seleccionarDibujo3:
            lea dx, dibujo3
            jmp imprimirDibujo
            
         seleccionarDibujo4:
            lea dx, dibujo4
            jmp imprimirDibujo
            
         seleccionarDibujo5:
            lea dx, dibujo5
            jmp imprimirDibujo
            
         imprimirDibujo:
            mov ah, 09h
            int 21h
         
            lea dx, mensajePalabra
            mov ah, 09h
            int 21h
            
            mov si, 0
         
         mostrarPalabraSeparada:
            mov dl, palabraVisible[si]
            
            cmp dl, '$'
            je finMostrarPalabra
            
            mov ah, 02h
            int 21h
            
            mov dl, 20h
            mov ah, 02h
            int 21h
            
            inc si
            jmp mostrarPalabraSeparada
            
         finMostrarPalabra:
            mov si, 0
            mov encontro, 0   
         
         mov si, 0
         mov encontro, 0
         
         lea dx, mensajeIntentos
         mov ah, 09h
         int 21h
         mov al, 6
         sub al, errores
         
         add al, 30h
         
         mov dl, al
         mov ah, 02h
         int 21h
         
         lea dx, mensajeLetrasUsadas
         mov ah, 09h
         int 21h
         
         cmp cantidadUsadas, 0
         jne iniciarRecorridoLetras
         
         lea dx, mensajeNinguna
         mov ah, 09h
         int 21h
         
         jmp mostrarEstadoTurno
    
    iniciarRecorridoLetras:
         mov bx, 0
    
    mostrarLetrasUsadas:
    
        ; Obtener la cantidad de letras utilizadas
        mov al, cantidadUsadas
        mov ah, 0
    
        ; Comprobar si termino el recorrido
        cmp bx, ax
        jae mostrarEstadoTurno
    
        ; Mostrar la letra almacenada
        mov dl, letrasUsadas[bx]
        mov ah, 02h
        int 21h
    
        ; Mostrar un espacio
        mov dl, ' '
        mov ah, 02h
        int 21h
    
        ; Avanzar a la siguiente posicion
        inc bx
        jmp mostrarLetrasUsadas
    
    mostrarEstadoTurno:
        cmp estadoTurno, 1
        je estadoAcierto
        
        cmp estadoTurno, 2
        je estadoError
        
        cmp estadoTurno, 3
        je estadoRepetida
        
        cmp estadoTurno, 4
        je estadoInvalido
        
        jmp solicitarLetra
        
    estadoAcierto:
        lea dx, mensajeAcierto
        jmp imprimirEstado 
       
    estadoError:
        lea dx, mensajeError
        jmp imprimirEstado
        
    estadoRepetida:
        lea dx, mensajeInvalido
        jmp imprimirEstado
        
    estadoInvalido:
        lea dx, mensajeInvalido
        jmp imprimirEstado
        
    imprimirEstado:
        mov ah, 09h
        int 21h
        
        jmp solicitarLetra
    
    solicitarLetra:
    
        ; Solicitar una letra al jugador
        lea dx, mensajeIngresar
        mov ah, 09h
        int 21h
    
        ; Leer la letra del jugador
        mov ah, 01h
        int 21h
    
        ; Convertir minusculas a mayusculas
        cmp al, 'a'
        jb guardarCaracter
    
        cmp al, 'z'
        ja guardarCaracter
    
        sub al, 20h
    
    guardarCaracter:
    
        ; Validar el caracter ingresado
        cmp al, 'A'
        jb caracterInvalido
    
        cmp al, 'Z'
        ja caracterInvalido
    
        ; Guardar la letra validada
        mov letraJugador, al
    
        mov bx, 0
        
    verificarRepetida:
        mov al, cantidadUsadas
        mov ah, 0
        cmp bx, ax
        jae guardarLetraNueva
        
        mov al, letrasUsadas[bx]
        cmp al, letraJugador
        je letraRepetida
        
        inc bx
        jmp verificarRepetida
        
    guardarLetraNueva:
        mov bx, 0
        mov bl, cantidadUsadas
        
        mov al, letraJugador
        
        mov letrasUsadas[bx], al
        
        inc cantidadUsadas
        
        jmp recorrer
        
    letraRepetida:
        
        mov estadoTurno, 3
        
        lea dx, mensajeRepetida
        mov ah, 09h
        int 21h
        
        jmp nuevoIntento
        
    caracterInvalido:
    
        mov estadoTurno, 4
        
        lea dx, mensajeInvalido
        mov ah, 09h
        int 21h
        
        jmp nuevoIntento
        
    recorrer:
        ;Obtener la direccion de la palabra seleccionada
        mov bx, palabraActual
        
        mov al, [bx+si]
        
        ;Compararla con la letra del jugador
        cmp al, letraJugador
        je encontrada
        
        ;Si no coincide, avanzar a la siguiente
        jmp siguiente 
        
    encontrada:
        ;Registrar el acierto y revelar la letra
        mov encontro, 1
        mov palabraVisible[si], al
        
    siguiente:
        ; Avanzar a la siguiente posicion
        add si, 1
        
        ; Se encarga de obtener la longitud de la palabra
        mov al, longitudPalabra
        mov ah, 0
        
        ; Se encarga de continuar si faltan posiciones
        cmp si, ax
        jb recorrer
        
        ;Primero mover el cursor al inicio
        mov ah, 02h
        mov dl, 0dh   ;dh es el retorno del carro
        int 21h
        
        ;Despues avanzar a la siguiente linea
        mov dl, 0ah   ;ah es el salto de linea
        int 21h
        
        ;Mostrar las letras descubiertas
        lea dx, palabraVisible
        mov ah, 09h
        int 21h
        
        ;Comprueba si se encontro la letra
        cmp encontro, 1
        je mostrarAcierto
        
        ; Registrar un intento correcto
        inc errores
        
        mov estadoTurno, 2
        
        ; Si no hubo concidiencias
        lea dx, mensajeError
        mov ah, 09h
        int 21h
        
        jmp finalizar
        
    mostrarAcierto:
        mov estadoTurno, 1
        
        ;Se encarga de mostrar el mensaje de acierto
        lea dx, mensajeAcierto
        mov ah, 09h
        int 21h
        
        mov si, 0
        
    verificarVictoria:
        ;Se encarga de mostrar el mensaje de acierto
        cmp palabraVisible[si], '_'
        je faltanLetras
            
        ; Avanzar a la siguiente posicion
        add si, 1
            
        ; Se encarga de obtener la longitud de la palabra
        mov al, longitudPalabra
        mov ah, 0
            
        ; Se encarga de comparar el indice con la longitud
        cmp si, ax 
        jb verificarVictoria
            
        ;Sino encontro ningun guion bajo en las cuatro posiciones, gana
        jmp mostrarVictoria
        
    faltanLetras:
        ;Se encarga de revisar si puede seguir jugando
        jmp finalizar
        
    mostrarVictoria:
        ;Informar que descubrio toda la palabra
        lea dx, mensajeVictoria
        mov ah, 09h
        int 21h
             
        ; Se encarga de salir sin solicitar otra letra
        jmp salirJuego
        
    finalizar:
        ;Comprobar si acumulo 6 errores
        cmp errores, 6
        je finPartida
         
        ;Si quedan intentos, repite el juego
        jmp nuevoIntento
         
    finPartida:
        mov ah, 00h
        mov al, 03h
        int 10h
        
        lea dx, mensajeTitulo
        mov ah, 09h
        int 21h
        
        lea dx, dibujo6
        mov ah, 09h
        int 21h
        
        lea dx, mensajeDerrota
        mov ah, 09h
        int 21h
        
        lea dx, mensajeRevelar
        mov ah, 09h
        int 21h
        
        mov bx, palabraActual
        mov si, 0
        
        revelarPalabra:
            mov dl, [bx+si]
            
            cmp dl, 0
            je salirJuego
            
            mov ah, 02h
            int 21h
            
            inc si
            jmp revelarPalabra
            
    salirJuego:
        ;Se encarga de terminar la ejecucion del juego
        .exit
    
main endp

;--------------------------
;6. Procedimientos de menus
;--------------------------

;---------------------------
;7. Procedimientos del juego 
;---------------------------

;---------------------------
;8. Comodines y temporizador 
;---------------------------

;---------------
;9. Estadisticas
;---------------

end main