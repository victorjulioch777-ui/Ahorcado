.model small
.stack 100h

.data

;--------------------
;1. Mensajes y textos
;--------------------                     

;-----------------------------                     
;2. Variables de los jugadores
;-----------------------------

;------------------------
;3. Palabras y categorias
;------------------------

palabra db "CASA" ;Palabra secreta
letraJugador db "A" ;Letra que se dease buscar (valor quemado)
encontro db 0       ;0 = no encontrado y 1 = encontrado
palabraVisible db "____$"  ;Letras descubiertas y fin de cadena                                                                                                                                                         

;----------------------
;4. Variables del juego 
;----------------------

;----------------------------
;5. Puntuacion y estadisticas
;----------------------------

.code

main proc
    ;Inicializar el segmento de datos
    mov ax, @data
    mov ds, ax
    
    ;Preparar el recorrido de la palabra
    mov si, 0
    mov encontro, 0
              
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
        
        ;Mostrar las letras descubiertas
        lea dx, palabraVisible
        mov ah, 09h
        int 21h
        
        ;Finalizar el programa
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