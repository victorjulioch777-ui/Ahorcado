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
        
mensajeVictoriaFinal DB 0Dh, 0Ah
                     DB "================================", 0Dh, 0Ah
                     DB "          HAS GANADO!           ", 0Dh, 0Ah
                     DB "================================", 0Dh, 0Ah, "$"

mensajeDerrotaFinal DB 0Dh, 0Ah
                    DB "================================", 0Dh, 0Ah
                    DB "          HAS PERDIDO!          ", 0Dh, 0Ah
                    DB "================================", 0Dh, 0Ah, "$"

mensajeLeyenda DB 0Dh, 0Ah
               DB "Verde: Correcta | Rojo: Incorrecta", "$"
               
mensajeMenu DB 0Dh, 0Ah
            DB "Seleccione la modalidad:", 0Dh, 0Ah
            DB "1. Maquina vs Jugador", 0Dh, 0Ah
            DB "2. Jugador vs Jugador", 0Dh, 0Ah
            DB "3. Salir", 0Dh, 0Ah
            DB "Opcion: $"

mensajeNickname1 DB 0Dh, 0Ah
                 DB "Nickname del jugador 1: $"

mensajeNickname2 DB 0Dh, 0Ah
                 DB "Nickname del jugador 2: $"

mensajeErrorNickname DB 0Dh, 0Ah
                     DB "Debe ingresar entre 3 y 10 caracteres.$"

mensajeOpcionInvalida DB 0Dh, 0Ah
                      DB "Opcion invalida.$"

mensajeDificultad DB 0Dh, 0Ah
                  DB "Seleccione la dificultad:", 0Dh, 0Ah
                  DB "1. Facil", 0Dh, 0Ah
                  DB "2. Intermedio", 0Dh, 0Ah
                  DB "3. Dificil", 0Dh, 0Ah
                  DB "Opcion: $"

mensajeRondas DB 0Dh, 0Ah
              DB "Cantidad de rondas (2 o 4): $"

mensajeJugadorActual DB 0Dh, 0Ah
                     DB "Jugador: $"

mensajeNivelActual DB 0Dh, 0Ah
                   DB "Dificultad: $"

textoFacil DB "Facil$"
textoIntermedio DB "Intermedio$"
textoDificil DB "Dificil$"

mensajeConfirmacion DB 0Dh, 0Ah
                    DB "Configuracion guardada.$"

mensajeContinuar DB 0Dh, 0Ah
                 DB "Presione una tecla para continuar...$"

mensajeCategorias DB 0Dh, 0Ah
                  DB "Seleccione una categoria:", 0Dh, 0Ah
                  DB "1. Animales", 0Dh, 0Ah
                  DB "2. Paises", 0Dh, 0Ah
                  DB "3. Computacion", 0Dh, 0Ah
                  DB "Opcion: $"

mensajeCategoriaActual DB 0Dh, 0Ah
                       DB "Categoria: $"

textoAnimales DB "Animales$"
textoPaises DB "Paises$"
textoComputacion DB "Computacion$"

mensajeOtraPartida DB 0Dh, 0Ah
                   DB "Desea jugar otra partida?", 0Dh, 0Ah
                   DB "1. Si", 0Dh, 0Ah
                   DB "2. No", 0Dh, 0Ah
                   DB "Opcion: $"

mensajeSinPalabras DB 0Dh, 0Ah
                   DB "No quedan palabras disponibles", 0Dh, 0Ah
                   DB "en esta categoria y dificultad.", 0Dh, 0Ah
                   DB "Seleccione otra combinacion.$"

mensajeBancoAgotado DB 0Dh, 0Ah
                    DB "Ha utilizado todas las palabras", 0Dh, 0Ah
                    DB "del banco de palabras.$"

;-----------------------------                     
;2. Variables de los jugadores
;-----------------------------

letraJugador DB 0

nickname1 DB 12, 0, 12 DUP(0)
nickname2 DB 12, 0, 12 DUP(0)

modalidad DB 0
dificultad DB 0
categoria DB 0

jugadorActual DB 1

cantidadRondas DB 1
rondaActual DB 1

;------------------------
;3. Palabras y categorias
;------------------------

; Facil
animal1 DB "GATO", 0
animal2 DB "LOBO", 0
animal3 DB "TIGRE", 0

; Intermedio
animal4 DB "JIRAFA", 0
animal5 DB "CONEJO", 0
animal6 DB "ELEFANTE", 0

; Dificil
animal7 DB "COCODRILO", 0
animal8 DB "RINOCERONTE", 0
animal9 DB "HIPOPOTAMO", 0


;================================
; CATEGORIA 2: PAISES
;================================

; Facil
pais1 DB "PERU", 0
pais2 DB "CUBA", 0
pais3 DB "CHILE", 0

; Intermedio
pais4 DB "MEXICO", 0
pais5 DB "CANADA", 0
pais6 DB "COLOMBIA", 0

; Dificil
pais7 DB "ARGENTINA", 0
pais8 DB "VENEZUELA", 0
pais9 DB "MADAGASCAR", 0


;================================
; CATEGORIA 3: COMPUTACION
;================================

; Facil
computacion1 DB "BYTE", 0
computacion2 DB "CHIP", 0
computacion3 DB "RATON", 0

; Intermedio
computacion4 DB "TECLADO", 0
computacion5 DB "MEMORIA", 0
computacion6 DB "PROCESO", 0

; Dificil
computacion7 DB "COMPUTADORA", 0
computacion8 DB "PROCESADOR", 0
computacion9 DB "PROGRAMACION", 0

tablaPalabras DW OFFSET animal1
              DW OFFSET animal2
              DW OFFSET animal3
              DW OFFSET animal4
              DW OFFSET animal5
              DW OFFSET animal6
              DW OFFSET animal7
              DW OFFSET animal8
              DW OFFSET animal9

              DW OFFSET pais1
              DW OFFSET pais2
              DW OFFSET pais3
              DW OFFSET pais4
              DW OFFSET pais5
              DW OFFSET pais6
              DW OFFSET pais7
              DW OFFSET pais8
              DW OFFSET pais9

              DW OFFSET computacion1
              DW OFFSET computacion2
              DW OFFSET computacion3
              DW OFFSET computacion4
              DW OFFSET computacion5
              DW OFFSET computacion6
              DW OFFSET computacion7
              DW OFFSET computacion8
              DW OFFSET computacion9

; Palabra que observa el jugador
palabraVisible DB 20 DUP('_'), '$'                                                                                                                                                         

;----------------------
;4. Variables del juego   
;----------------------  

encontro db 0       ;0 = no encontrado y 1 = encontrado
errores db 0 ;Cantidad de errores del jugador
letrasUsadas db 26 dup(0)
cantidadUsadas db 0
longitudPalabra db 0
palabraActual dw 0
numeroPalabra db 0
estadoTurno db 0

; Control de palabras utilizadas
palabrasUtilizadas DB 27 DUP(0)
totalPalabrasUsadas DB 0

; Control de nuevas partidas
continuarPartida DB 0 

;----------------------------
;5. Puntuacion y estadisticas
;----------------------------

.code

main proc
    ;Inicializar el segmento de datos                                                                                                                                              
    mov ax, @data
    mov ds, ax
    
    call configurarJuego

    iniciarPartida:

        cmp totalPalabrasUsadas, 27
        jne buscarNuevaPalabra

        jmp bancoAgotado

    buscarNuevaPalabra:
    
        call seleccionarPalabra
        jc grupoAgotado
    
        call reiniciarPartida
    
        jmp nuevoIntento
    
    grupoAgotado:
    
        call limpiarPantalla
        call mostrarTitulo
    
        lea dx, mensajeSinPalabras
        mov ah, 09h
        int 21h
    
        call esperarTecla
    
        call seleccionarDificultad
        call seleccionarCategoria
    
        jmp iniciarPartida

    nuevoIntento:
    
        call limpiarPantalla
        call mostrarTitulo
    
        call mostrarJugador
        call mostrarNivel
        call mostrarCategoria
    
        call mostrarDibujo
        call mostrarPalabra
        call mostrarIntentos
        call mostrarHistorial
    
        mov si, 0
        mov encontro, 0
    
        jmp mostrarEstadoTurno  
    
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
        lea dx, mensajeRepetida
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
        call limpiarPantalla
    
        call mostrarTitulo
        
        call mostrarJugador
        call mostrarNivel
        call mostrarCategoria
    
        call mostrarDibujo
    
        call mostrarPalabra
    
        call mostrarIntentos
    
        call mostrarHistorial
    
        lea dx, mensajeVictoriaFinal
        mov ah, 09h
        int 21h
    
        jmp terminarPartida
        
    finalizar:
        ;Comprobar si acumulo 6 errores
        cmp errores, 6
        je finPartida
         
        ;Si quedan intentos, repite el juego
        jmp nuevoIntento
         
    finPartida:
        call limpiarPantalla
    
        call mostrarTitulo
        
        call mostrarJugador
        call mostrarNivel
        call mostrarCategoria
        
        call mostrarDibujo
    
        call mostrarPalabra
    
        call mostrarIntentos
    
        call mostrarHistorial
    
        lea dx, mensajeDerrotaFinal
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
        je terminarPartida
    
        mov ah, 02h
        int 21h
    
        inc si
        jmp revelarPalabra
        
    terminarPartida:

        ; El multijugador se implementara
        ; en el siguiente modulo
        cmp modalidad, 1
        jne salirJuego
    
        ; Comprobar si quedan palabras
        cmp totalPalabrasUsadas, 27
        je bancoAgotado
    
        ; Preguntar si desea continuar
        call preguntarOtraPartida
    
        cmp continuarPartida, 1
        jne salirJuego
    
        ; Iniciar otra partida
        jmp iniciarPartida
    
    bancoAgotado:
    
        lea dx, mensajeBancoAgotado
        mov ah, 09h
        int 21h
    
        call esperarTecla
    
        jmp salirJuego
            
    salirJuego:
        ;Se encarga de terminar la ejecucion del juego
        .exit
    
main endp
;--------------------------
;6. Procedimientos de menus
;--------------------------

seleccionarModalidad PROC

repetirModalidad:

    call limpiarPantalla
    call mostrarTitulo

    lea dx, mensajeMenu
    mov ah, 09h
    int 21h

    mov ah, 01h
    int 21h

    cmp al, '1'
    je guardarModalidad

    cmp al, '2'
    je guardarModalidad

    cmp al, '3'
    je cerrarProgramaMenu

    call mostrarErrorOpcion
    jmp repetirModalidad

guardarModalidad:

    sub al, 30h
    mov modalidad, al

    ret

cerrarProgramaMenu:

    mov ax, 4C00h
    int 21h

seleccionarModalidad ENDP

mostrarErrorOpcion PROC

    lea dx, mensajeOpcionInvalida
    mov ah, 09h
    int 21h

    call esperarTecla

    ret

mostrarErrorOpcion ENDP

esperarTecla PROC

    push ax
    push dx

    lea dx, mensajeContinuar
    mov ah, 09h
    int 21h

    mov ah, 08h
    int 21h

    pop dx
    pop ax

    ret

esperarTecla ENDP

leerNickname PROC

    push ax
    push bx
    push dx
    push si

    mov bx, dx

repetirNickname:

    mov byte ptr [bx+1], 0

    mov dx, bx
    mov ah, 0Ah
    int 21h

    mov al, [bx+1]

    cmp al, 3
    jb nicknameInvalido

    cmp al, 10
    ja nicknameInvalido

    jmp nicknameValido

nicknameInvalido:

    lea dx, mensajeErrorNickname
    mov ah, 09h
    int 21h

    mov ah, 02h
    mov dl, 0Dh
    int 21h

    mov dl, 0Ah
    int 21h

    jmp repetirNickname

nicknameValido:

    pop si
    pop dx
    pop bx
    pop ax

    ret

leerNickname ENDP

registrarJugadores PROC

    call limpiarPantalla
    call mostrarTitulo

    lea dx, mensajeNickname1
    mov ah, 09h
    int 21h

    lea dx, nickname1
    call leerNickname

    cmp modalidad, 2
    jne finRegistroJugadores

    lea dx, mensajeNickname2
    mov ah, 09h
    int 21h

    lea dx, nickname2
    call leerNickname

finRegistroJugadores:

    mov jugadorActual, 1

    ret

registrarJugadores ENDP

seleccionarDificultad PROC

repetirDificultad:

    call limpiarPantalla
    call mostrarTitulo

    lea dx, mensajeDificultad
    mov ah, 09h
    int 21h

    mov ah, 01h
    int 21h

    cmp al, '1'
    jb dificultadInvalida

    cmp al, '3'
    ja dificultadInvalida

    sub al, 30h
    mov dificultad, al

    ret

dificultadInvalida:

    call mostrarErrorOpcion
    jmp repetirDificultad

seleccionarDificultad ENDP

seleccionarCategoria PROC

repetirCategoria:

    call limpiarPantalla
    call mostrarTitulo

    lea dx, mensajeCategorias
    mov ah, 09h
    int 21h

    mov ah, 01h
    int 21h

    cmp al, '1'
    jb categoriaInvalida

    cmp al, '3'
    ja categoriaInvalida

    sub al, 30h
    mov categoria, al

    ret

categoriaInvalida:

    call mostrarErrorOpcion
    jmp repetirCategoria

seleccionarCategoria ENDP

seleccionarRondas PROC

    mov cantidadRondas, 1
    mov rondaActual, 1

    cmp modalidad, 2
    jne finSeleccionRondas

repetirRondas:

    call limpiarPantalla
    call mostrarTitulo

    lea dx, mensajeRondas
    mov ah, 09h
    int 21h

    mov ah, 01h
    int 21h

    cmp al, '2'
    je guardarRondas

    cmp al, '4'
    je guardarRondas

    call mostrarErrorOpcion
    jmp repetirRondas

guardarRondas:

    sub al, 30h
    mov cantidadRondas, al

finSeleccionRondas:

    ret

seleccionarRondas ENDP

configurarJuego PROC

    call seleccionarModalidad

    call registrarJugadores

    call seleccionarDificultad

    call seleccionarCategoria

    call seleccionarRondas

    lea dx, mensajeConfirmacion
    mov ah, 09h
    int 21h

    call esperarTecla

    ret

configurarJuego ENDP

preguntarOtraPartida PROC

repetirOtraPartida:

    lea dx, mensajeOtraPartida
    mov ah, 09h
    int 21h

    mov ah, 01h
    int 21h

    cmp al, '1'
    je continuarJuego

    cmp al, '2'
    je terminarJuego

    call mostrarErrorOpcion
    jmp repetirOtraPartida

continuarJuego:

    mov continuarPartida, 1
    ret

terminarJuego:

    mov continuarPartida, 0
    ret

preguntarOtraPartida ENDP

;---------------------------
;7. Procedimientos del juego 
;---------------------------

limpiarPantalla PROC

    push ax

    mov ah, 00h
    mov al, 03h
    int 10h

    pop ax

    ret

limpiarPantalla ENDP

mostrarTitulo PROC

    push ax
    push dx

    lea dx, mensajeTitulo
    mov ah, 09h
    int 21h

    pop dx
    pop ax

    ret

mostrarTitulo ENDP

mostrarDibujo PROC

    push ax
    push dx

    cmp errores, 0
    je grafico0

    cmp errores, 1
    je grafico1

    cmp errores, 2
    je grafico2

    cmp errores, 3
    je grafico3

    cmp errores, 4
    je grafico4

    cmp errores, 5
    je grafico5

    jmp grafico6

grafico0:
    lea dx, dibujo0
    jmp imprimirGrafico

grafico1:
    lea dx, dibujo1
    jmp imprimirGrafico

grafico2:
    lea dx, dibujo2
    jmp imprimirGrafico

grafico3:
    lea dx, dibujo3
    jmp imprimirGrafico

grafico4:
    lea dx, dibujo4
    jmp imprimirGrafico

grafico5:
    lea dx, dibujo5
    jmp imprimirGrafico

grafico6:
    lea dx, dibujo6

imprimirGrafico:

    mov ah, 09h
    int 21h

    pop dx
    pop ax

    ret

mostrarDibujo ENDP

mostrarPalabra PROC

    push ax
    push dx
    push si

    lea dx, mensajePalabra
    mov ah, 09h
    int 21h

    mov si, 0

cicloMostrarPalabra:

    mov dl, palabraVisible[si]

    cmp dl, '$'
    je terminarMostrarPalabra

    mov ah, 02h
    int 21h

    mov dl, ' '
    mov ah, 02h
    int 21h

    inc si
    jmp cicloMostrarPalabra

terminarMostrarPalabra:

    pop si
    pop dx
    pop ax

    ret

mostrarPalabra ENDP

mostrarIntentos PROC

    push ax
    push dx

    lea dx, mensajeIntentos
    mov ah, 09h
    int 21h

    mov al, 6
    sub al, errores
    add al, 30h

    mov dl, al
    mov ah, 02h
    int 21h

    pop dx
    pop ax

    ret

mostrarIntentos ENDP

imprimirColor PROC

    push ax
    push bx
    push cx
    push dx

    mov ah, 09h
    mov bh, 0
    mov cx, 1
    int 10h

    ; Obtener posicion del cursor
    mov ah, 03h
    mov bh, 0
    int 10h

    ; Avanzar el cursor
    inc dl

    mov ah, 02h
    mov bh, 0
    int 10h

    pop dx
    pop cx
    pop bx
    pop ax

    ret

imprimirColor ENDP

mostrarHistorial PROC

    push ax
    push bx
    push cx
    push dx
    push si
    push di

    lea dx, mensajeLetrasUsadas
    mov ah, 09h
    int 21h

    cmp cantidadUsadas, 0
    jne iniciarHistorial

    lea dx, mensajeNinguna
    mov ah, 09h
    int 21h

    jmp terminarHistorial

iniciarHistorial:

    mov di, 0

cicloHistorial:

    mov al, cantidadUsadas
    mov ah, 0

    cmp di, ax
    jae mostrarLeyenda

    mov al, letrasUsadas[di]

    mov bx, palabraActual
    mov si, 0

buscarColor:

    mov dl, [bx+si]

    cmp dl, 0
    je colorIncorrecto

    cmp dl, al
    je colorCorrecto

    inc si
    jmp buscarColor

colorCorrecto:

    mov bl, 0Ah
    jmp imprimirLetraColor

colorIncorrecto:

    mov bl, 0Ch

imprimirLetraColor:

    call imprimirColor

    mov al, ' '
    mov bl, 07h
    call imprimirColor

    inc di
    jmp cicloHistorial

mostrarLeyenda:

    lea dx, mensajeLeyenda
    mov ah, 09h
    int 21h

terminarHistorial:

    pop di
    pop si
    pop dx
    pop cx
    pop bx
    pop ax

    ret

mostrarHistorial ENDP

imprimirNickname PROC

    push ax
    push bx
    push cx
    push dx
    push si

    mov bx, dx

    mov cl, [bx+1]
    mov ch, 0

    mov si, 2

cicloNickname:

    cmp cx, 0
    je finImprimirNickname

    mov dl, [bx+si]

    mov ah, 02h
    int 21h

    inc si
    dec cx

    jmp cicloNickname

finImprimirNickname:

    pop si
    pop dx
    pop cx
    pop bx
    pop ax

    ret

imprimirNickname ENDP

mostrarJugador PROC

    push ax
    push dx

    lea dx, mensajeJugadorActual
    mov ah, 09h
    int 21h

    cmp jugadorActual, 1
    je mostrarJugador1

    lea dx, nickname2
    jmp imprimirJugadorActual

mostrarJugador1:

    lea dx, nickname1

imprimirJugadorActual:

    call imprimirNickname

    pop dx
    pop ax

    ret

mostrarJugador ENDP

mostrarNivel PROC

    push ax
    push dx

    lea dx, mensajeNivelActual
    mov ah, 09h
    int 21h

    cmp dificultad, 1
    je nivelFacil

    cmp dificultad, 2
    je nivelIntermedio

    jmp nivelDificil

nivelFacil:

    lea dx, textoFacil
    jmp imprimirNivel

nivelIntermedio:

    lea dx, textoIntermedio
    jmp imprimirNivel

nivelDificil:

    lea dx, textoDificil

imprimirNivel:

    mov ah, 09h
    int 21h

    pop dx
    pop ax

    ret

mostrarNivel ENDP

seleccionarPalabra PROC

    push ax
    push bx
    push cx
    push dx
    push si
    push di

    ; Calcular posicion inicial de la categoria
    mov al, categoria
    dec al

    mov bl, 9
    mul bl

    mov cx, ax

    ; Calcular desplazamiento de dificultad
    mov al, dificultad
    dec al

    mov bl, 3
    mul bl

    add cx, ax

    ; Guardar indice inicial del grupo
    mov si, cx

    ; Obtener hora del sistema
    mov ah, 2Ch
    int 21h

    mov al, dl
    add al, dh

    ; Obtener residuo entre 0 y 2
    mov ah, 0
    mov bl, 3
    div bl

    mov al, ah
    mov ah, 0

    ; Guardar desplazamiento aleatorio
    mov di, ax

    ; Maximo de tres palabras por grupo
    mov cx, 3

buscarPalabraDisponible:

    ; Calcular indice de la palabra
    mov bx, si
    add bx, di

    ; Comprobar si ya fue utilizada
    cmp palabrasUtilizadas[bx], 0
    je palabraDisponible

    ; Probar la siguiente posicion
    inc di

    cmp di, 3
    jb continuarBusqueda

    mov di, 0

continuarBusqueda:

    loop buscarPalabraDisponible

    ; No quedan palabras en este grupo
    pop di
    pop si
    pop dx
    pop cx
    pop bx
    pop ax

    stc
    ret

palabraDisponible:

    ; Marcar palabra como utilizada
    mov palabrasUtilizadas[bx], 1

    inc totalPalabrasUsadas

    ; Guardar indice seleccionado
    mov ax, bx
    mov numeroPalabra, al

    ; Obtener direccion desde la tabla
    shl bx, 1

    mov ax, tablaPalabras[bx]
    mov palabraActual, ax

    pop di
    pop si
    pop dx
    pop cx
    pop bx
    pop ax

    clc
    ret

seleccionarPalabra ENDP

prepararPalabra PROC

    push ax
    push bx
    push si

    ; Restaurar todos los guiones
    mov si, 0

restaurarGuiones:

    mov palabraVisible[si], '_'

    inc si
    cmp si, 20
    jb restaurarGuiones

    mov palabraVisible[si], '$'

    ; Obtener direccion de la palabra
    mov bx, palabraActual
    mov si, 0

contarLongitud:

    mov al, [bx+si]

    cmp al, 0
    je guardarLongitud

    inc si
    jmp contarLongitud

guardarLongitud:

    mov ax, si
    mov longitudPalabra, al

    mov palabraVisible[si], '$'

    pop si
    pop bx
    pop ax

    ret

prepararPalabra ENDP

reiniciarPartida PROC

    push si

    ; Reiniciar variables de la partida
    mov errores, 0
    mov encontro, 0
    mov cantidadUsadas, 0
    mov estadoTurno, 0
    mov letraJugador, 0

    ; Limpiar historial de letras
    mov si, 0

limpiarLetrasUsadas:

    mov letrasUsadas[si], 0

    inc si
    cmp si, 26
    jb limpiarLetrasUsadas

    ; Preparar los guiones de la nueva palabra
    call prepararPalabra

    pop si

    ret

reiniciarPartida ENDP

mostrarCategoria PROC

    push ax
    push dx

    lea dx, mensajeCategoriaActual
    mov ah, 09h
    int 21h

    cmp categoria, 1
    je categoriaAnimales

    cmp categoria, 2
    je categoriaPaises

    jmp categoriaComputacion

categoriaAnimales:

    lea dx, textoAnimales
    jmp imprimirCategoria

categoriaPaises:

    lea dx, textoPaises
    jmp imprimirCategoria

categoriaComputacion:

    lea dx, textoComputacion

imprimirCategoria:

    mov ah, 09h
    int 21h

    pop dx
    pop ax

    ret

mostrarCategoria ENDP

;---------------------------
;8. Comodines y temporizador 
;---------------------------

;---------------
;9. Estadisticas
;---------------

end main