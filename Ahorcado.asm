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

;-----------------------------                     
;2. Variables de los jugadores
;-----------------------------

;Almacena el caracter ingresado por el teclado
letraJugador db 0

;------------------------
;3. Palabras y categorias
;------------------------

palabra db "CASA" ;Palabra secreta
palabraVisible db "____$"  ;Letras descubiertas y fin de cadena                                                                                                                                                         

;----------------------
;4. Variables del juego   
;----------------------  

encontro db 0       ;0 = no encontrado y 1 = encontrado
errores db 0 ;Cantidad de errores del jugador
letrasUsadas db 26 dup(0)
cantidadUsadas db 0 

;----------------------------
;5. Puntuacion y estadisticas
;----------------------------

.code

main proc
    ;Inicializar el segmento de datos                                                                                                                                              
    mov ax, @data
    mov ds, ax
    
    nuevoIntento:
        ;Reinicia lo valores de busqueda
        mov si, 0
        mov encontro, 0
        
        ;Se encarga de solicitar una letra al jugador
        lea dx, mensajeIngresar
        mov ah, 09h
        int 21h
        
        ;Leer la letra del jugador
        mov ah, 01h
        int 21h
        mov letraJugador, AL
        
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
        lea dx, mensajeRepetida
        mov ah, 09h
        int 21h
        
        jmp nuevoIntento
        
    recorrer:
        ;Leer una letra de la palabra secreta
        mov al, palabra[si]
        
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
        
        ;Registrar mientras SI sea menor que 4
        cmp si, 4
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
        
        ; Si no hubo concidiencias
        lea dx, mensajeError
        mov ah, 09h
        int 21h
        
        jmp finalizar
        
        mostrarAcierto:
            ;Se encarga de mostrar el mensaje de acierto
            lea dx, mensajeAcierto
            mov ah, 09h
            int 21h
        
            mov si, 0
        
        verificarVictoria:
            ;Se encarga de mostrar el mensaje de acierto
            cmp palabraVisible[si], '_'
            je faltanLetras
            
            ; Continua revisando las posiciones
            add si, 1
            cmp si, 4
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
            ;Informas que se agotaron los intentos
            lea dx, mensajeDerrota
            mov ah,09h 
            int 21h
            
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