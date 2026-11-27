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
                    
;================================
; MENSAJES DE MULTIJUGADOR
;================================

mensajeTurnoSecreto DB 0Dh, 0Ah
                    DB "Jugador que escribe: $"

mensajeIngresarSecreta DB 0Dh, 0Ah
                       DB "Ingrese la palabra secreta: $"

mensajeNoMirar DB 0Dh, 0Ah
               DB "El otro jugador no debe mirar.", 0Dh, 0Ah, "$"

mensajeSecretaGuardada DB 0Dh, 0Ah
                       DB "Palabra secreta guardada.$"

mensajeSecretaInvalida DB 0Dh, 0Ah
                       DB "Palabra invalida.", 0Dh, 0Ah
                       DB "Use solo letras y respete la longitud.$"

mensajeLongitudFacil DB 0Dh, 0Ah
                     DB "Longitud: 4 a 5 letras.$"

mensajeLongitudIntermedio DB 0Dh, 0Ah
                          DB "Longitud: 6 a 8 letras.$"

mensajeLongitudDificil DB 0Dh, 0Ah
                       DB "Longitud: 9 a 12 letras.$"

mensajeTurnoAdivinar DB 0Dh, 0Ah
                     DB "Turno para adivinar: $"

mensajeRondaActual DB 0Dh, 0Ah
                   DB "Ronda: $"

mensajeFinRondas DB 0Dh, 0Ah
                 DB "================================", 0Dh, 0Ah
                 DB "      PARTIDA FINALIZADA        ", 0Dh, 0Ah
                 DB "================================", 0Dh, 0Ah, "$"
                 
;================================
; MENSAJES DE PUNTUACION
;================================

mensajePuntaje DB 0Dh, 0Ah
               DB "Puntaje acumulado: $"

mensajePuntosRonda DB 0Dh, 0Ah
                   DB "Puntos obtenidos: $"

mensajePalabrasAdivinadas DB 0Dh, 0Ah
                         DB "Palabras adivinadas: $"

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
jugadorSecreto DB 1

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
; Palabra ingresada por un jugador
palabraSecreta DB 21 DUP(0)                                                                                                                                                         

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

; Control del ingreso de palabra secreta
longitudSecreta DB 0
entradaSecretaInvalida DB 0 

;----------------------------
;5. Puntuacion y estadisticas
;---------------------------- 

; Puntajes acumulados
puntajeJugador1 DW 0
puntajeJugador2 DW 0

; Puntos obtenidos en la ronda actual
puntosRonda DW 0

; Palabras adivinadas correctamente
palabrasAdivinadas1 DB 0
palabrasAdivinadas2 DB 0

; Cantidad de rondas jugadas
rondasJugadas1 DB 0
rondasJugadas2 DB 0

; Total de errores cometidos
erroresTotales1 DW 0
erroresTotales2 DW 0

; Resultado de la ronda
victoriaRonda DB 0

; Historial de errores por ronda
historialErrores1 DB 27 DUP(0)
historialErrores2 DB 27 DUP(0)

.code

main proc
    ;Inicializar el segmento de datos                                                                                                                                              
    mov ax, @data
    mov ds, ax
    
    call configurarJuego

    iniciarPartida:

        ; Determinar modalidad de juego
        cmp modalidad, 2
        je iniciarRondaMultijugador
    
        ; Modalidad maquina vs jugador
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
    
    iniciarRondaMultijugador:
    
        call ingresarPalabraSecreta
    
        call reiniciarPartida
    
        call entregarTurno
    
        jmp nuevoIntento
    
    nuevoIntento:
    
        call limpiarPantalla
        call mostrarTitulo
    
        call mostrarJugador
        call mostrarNivel
        call mostrarCategoria
        call mostrarRonda
        call mostrarPuntaje
    
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

        ; Registrar victoria
        mov victoriaRonda, 1
    
        call registrarResultado
    
        ; Mostrar pantalla final
        call limpiarPantalla
        call mostrarTitulo
    
        call mostrarJugador
        call mostrarNivel
        call mostrarCategoria
        call mostrarRonda
        call mostrarPuntaje
    
        call mostrarDibujo
        call mostrarPalabra
        call mostrarIntentos
        call mostrarHistorial
    
        lea dx, mensajeVictoriaFinal
        mov ah, 09h
        int 21h
    
        ; Mostrar puntos obtenidos
        call mostrarPuntosRonda
    
        jmp terminarPartida
        
    finalizar:
        ;Comprobar si acumulo 6 errores
        cmp errores, 6
        je finPartida
         
        ;Si quedan intentos, repite el juego
        jmp nuevoIntento
         
    finPartida:
        ; Registrar derrota
        mov victoriaRonda, 0
    
        call registrarResultado
    
        ; Mostrar pantalla final
        call limpiarPantalla
        call mostrarTitulo
    
        call mostrarJugador
        call mostrarNivel
        call mostrarCategoria
        call mostrarRonda
        call mostrarPuntaje
    
        call mostrarDibujo
        call mostrarPalabra
        call mostrarIntentos
        call mostrarHistorial
    
        lea dx, mensajeDerrotaFinal
        mov ah, 09h
        int 21h
    
        ; Mostrar puntos obtenidos
        call mostrarPuntosRonda
    
        ; Mostrar palabra correcta
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

        ; Determinar modalidad
        cmp modalidad, 2
        je terminarRondaMultijugador
    
        ;================================
        ; MAQUINA VS JUGADOR
        ;================================
    
        cmp totalPalabrasUsadas, 27
        je bancoAgotado
    
        call preguntarOtraPartida
    
        cmp continuarPartida, 1
        jne salirJuego
    
        jmp iniciarPartida
    
        ;================================
        ; JUGADOR VS JUGADOR
        ;================================
    
    terminarRondaMultijugador:
    
        ; Mantener visible el resultado
        call esperarTecla
    
        ; Comprobar si era la ultima ronda
        mov al, rondaActual
        cmp al, cantidadRondas
    
        jae finalizarMultijugador
    
        ; Avanzar a la siguiente ronda
        inc rondaActual
    
        ; Intercambiar los roles
        call intercambiarJugadores
    
        jmp iniciarPartida
    
    finalizarMultijugador:
    
        call limpiarPantalla
        call mostrarTitulo
    
        lea dx, mensajeFinRondas
        mov ah, 09h
        int 21h
    
        call esperarTecla
    
        jmp salirJuego
    
    bancoAgotado:
    
        lea dx, mensajeBancoAgotado
        mov ah, 09h
        int 21h
    
        call esperarTecla
    
        jmp salirJuego
    
    salirJuego:
    
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
    mov jugadorSecreto, 1

    cmp modalidad, 2
    jne terminarRegistro

    ; En multijugador comienza adivinando
    ; el jugador 2
    mov jugadorActual, 2

terminarRegistro:

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

    mov errores, 0
    mov encontro, 0
    mov cantidadUsadas, 0
    mov estadoTurno, 0
    mov letraJugador, 0
    
    ; Reiniciar puntuacion de la ronda
    mov puntosRonda, 0
    mov victoriaRonda, 0

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

mostrarJugadorSecreto PROC

    push ax
    push dx

    lea dx, mensajeTurnoSecreto
    mov ah, 09h
    int 21h

    cmp jugadorSecreto, 1
    je secretoJugador1

    lea dx, nickname2
    jmp imprimirJugadorSecreto

secretoJugador1:

    lea dx, nickname1

imprimirJugadorSecreto:

    call imprimirNickname

    pop dx
    pop ax

    ret

mostrarJugadorSecreto ENDP

mostrarRonda PROC

    push ax
    push dx

    ; Solo mostrar rondas en multijugador
    cmp modalidad, 2
    jne finMostrarRonda

    lea dx, mensajeRondaActual
    mov ah, 09h
    int 21h

    ; Mostrar ronda actual
    mov dl, rondaActual
    add dl, 30h
    mov ah, 02h
    int 21h

    ; Mostrar separador
    mov dl, '/'
    mov ah, 02h
    int 21h

    ; Mostrar cantidad total de rondas
    mov dl, cantidadRondas
    add dl, 30h
    mov ah, 02h
    int 21h

finMostrarRonda:

    pop dx
    pop ax

    ret

mostrarRonda ENDP

mostrarLongitudPermitida PROC

    push ax
    push dx

    cmp dificultad, 1
    je longitudNivelFacil

    cmp dificultad, 2
    je longitudNivelIntermedio

    jmp longitudNivelDificil

longitudNivelFacil:

    lea dx, mensajeLongitudFacil
    jmp imprimirLongitudPermitida

longitudNivelIntermedio:

    lea dx, mensajeLongitudIntermedio
    jmp imprimirLongitudPermitida

longitudNivelDificil:

    lea dx, mensajeLongitudDificil

imprimirLongitudPermitida:

    mov ah, 09h
    int 21h

    pop dx
    pop ax

    ret

mostrarLongitudPermitida ENDP

ingresarPalabraSecreta PROC

    push ax
    push bx
    push dx
    push si

repetirPalabraSecreta:

    call limpiarPantalla
    call mostrarTitulo
    call mostrarRonda
    call mostrarJugadorSecreto
    call mostrarNivel
    call mostrarCategoria
    call mostrarLongitudPermitida

    lea dx, mensajeNoMirar
    mov ah, 09h
    int 21h

    lea dx, mensajeIngresarSecreta
    mov ah, 09h
    int 21h

    mov si, 0
    mov longitudSecreta, 0
    mov entradaSecretaInvalida, 0

leerCaracterSecreto:

    ; Leer caracter sin mostrarlo
    mov ah, 08h
    int 21h

    ; Enter termina el ingreso
    cmp al, 0Dh
    je validarPalabraSecreta

    ; Ignorar teclas extendidas
    cmp al, 0
    jne comprobarRetroceso

    mov ah, 08h
    int 21h

    jmp leerCaracterSecreto

comprobarRetroceso:

    ; Permitir borrar la ultima letra
    cmp al, 08h
    je borrarCaracterSecreto

    ; Convertir minusculas a mayusculas
    cmp al, 'a'
    jb validarCaracterSecreto

    cmp al, 'z'
    ja validarCaracterSecreto

    sub al, 20h

validarCaracterSecreto:

    cmp al, 'A'
    jb marcarEntradaInvalida

    cmp al, 'Z'
    ja marcarEntradaInvalida

    ; Evitar desbordamiento del arreglo
    cmp si, 20
    jae marcarEntradaInvalida

    ; Guardar caracter sin imprimirlo
    mov palabraSecreta[si], al

    inc si

    jmp leerCaracterSecreto

borrarCaracterSecreto:

    cmp si, 0
    je leerCaracterSecreto

    dec si

    mov palabraSecreta[si], 0

    jmp leerCaracterSecreto

marcarEntradaInvalida:

    mov entradaSecretaInvalida, 1

    jmp leerCaracterSecreto

validarPalabraSecreta:

    ; Comprobar caracteres invalidos
    cmp entradaSecretaInvalida, 1
    je rechazarPalabraSecreta

    mov ax, si
    mov longitudSecreta, al

    cmp dificultad, 1
    je validarSecretaFacil

    cmp dificultad, 2
    je validarSecretaIntermedia

    jmp validarSecretaDificil

validarSecretaFacil:

    cmp si, 4
    jb rechazarPalabraSecreta

    cmp si, 5
    ja rechazarPalabraSecreta

    jmp aceptarPalabraSecreta

validarSecretaIntermedia:

    cmp si, 6
    jb rechazarPalabraSecreta

    cmp si, 8
    ja rechazarPalabraSecreta

    jmp aceptarPalabraSecreta

validarSecretaDificil:

    cmp si, 9
    jb rechazarPalabraSecreta

    cmp si, 12
    ja rechazarPalabraSecreta

    jmp aceptarPalabraSecreta

rechazarPalabraSecreta:

    lea dx, mensajeSecretaInvalida
    mov ah, 09h
    int 21h

    call esperarTecla

    jmp repetirPalabraSecreta

aceptarPalabraSecreta:

    ; Agregar terminador de cadena
    mov palabraSecreta[si], 0

    ; Guardar direccion de la palabra
    lea ax, palabraSecreta
    mov palabraActual, ax

    lea dx, mensajeSecretaGuardada
    mov ah, 09h
    int 21h

    call esperarTecla

    pop si
    pop dx
    pop bx
    pop ax

    ret

ingresarPalabraSecreta ENDP

entregarTurno PROC

    push ax
    push dx

    call limpiarPantalla
    call mostrarTitulo
    call mostrarRonda

    lea dx, mensajeTurnoAdivinar
    mov ah, 09h
    int 21h

    cmp jugadorActual, 1
    je entregarJugador1

    lea dx, nickname2
    jmp imprimirEntregaTurno

entregarJugador1:

    lea dx, nickname1

imprimirEntregaTurno:

    call imprimirNickname

    call esperarTecla

    pop dx
    pop ax

    ret

entregarTurno ENDP

intercambiarJugadores PROC

    push ax

    mov al, jugadorActual

    xchg al, jugadorSecreto

    mov jugadorActual, al

    pop ax

    ret

intercambiarJugadores ENDP

;---------------------------
;8. Comodines y temporizador 
;---------------------------

;---------------
;9. Estadisticas
;--------------- 

imprimirNumero PROC

    push ax
    push bx
    push cx
    push dx

    ; Caso especial: numero cero
    cmp ax, 0
    jne convertirNumero

    mov dl, '0'
    mov ah, 02h
    int 21h

    jmp finImprimirNumero

convertirNumero:

    mov bx, 10
    mov cx, 0

extraerDigitos:

    ; Dividir DX:AX entre 10
    mov dx, 0
    div bx

    ; Guardar residuo en la pila
    push dx

    inc cx

    ; Repetir mientras exista cociente
    cmp ax, 0
    jne extraerDigitos

imprimirDigitos:

    ; Recuperar digito de la pila
    pop dx

    ; Convertir a ASCII
    add dl, 30h

    ; Imprimir caracter
    mov ah, 02h
    int 21h

    loop imprimirDigitos

finImprimirNumero:

    pop dx
    pop cx
    pop bx
    pop ax

    ret

imprimirNumero ENDP

calcularPuntos PROC

    push ax
    push bx

    ; Si perdio, obtiene cero puntos
    cmp victoriaRonda, 1
    jne calcularDerrota

    ; Multiplicar errores por 15
    mov al, errores
    mov bl, 15

    mul bl

    ; Aplicar formula: 100 - errores * 15
    mov bx, 100
    sub bx, ax

    mov puntosRonda, bx

    jmp finCalcularPuntos

calcularDerrota:

    mov puntosRonda, 0

finCalcularPuntos:

    pop bx
    pop ax

    ret

calcularPuntos ENDP

registrarResultado PROC

    push ax
    push bx

    ; Calcular puntos de la ronda
    call calcularPuntos

    ; Determinar jugador actual
    cmp jugadorActual, 1
    je registrarJugador1

    jmp registrarJugador2

registrarJugador1:

    ; Acumular puntos
    mov ax, puntosRonda
    add puntajeJugador1, ax

    ; Guardar errores de la ronda
    mov bx, 0
    mov bl, rondasJugadas1

    mov al, errores
    mov historialErrores1[bx], al

    ; Acumular errores
    mov ah, 0
    add erroresTotales1, ax

    ; Incrementar rondas jugadas
    inc rondasJugadas1

    ; Comprobar si gano
    cmp victoriaRonda, 1
    jne finRegistrarResultado

    inc palabrasAdivinadas1

    jmp finRegistrarResultado

registrarJugador2:

    ; Acumular puntos
    mov ax, puntosRonda
    add puntajeJugador2, ax

    ; Guardar errores de la ronda
    mov bx, 0
    mov bl, rondasJugadas2

    mov al, errores
    mov historialErrores2[bx], al

    ; Acumular errores
    mov ah, 0
    add erroresTotales2, ax

    ; Incrementar rondas jugadas
    inc rondasJugadas2

    ; Comprobar si gano
    cmp victoriaRonda, 1
    jne finRegistrarResultado

    inc palabrasAdivinadas2

finRegistrarResultado:

    pop bx
    pop ax

    ret

registrarResultado ENDP

mostrarPuntaje PROC

    push ax
    push dx

    lea dx, mensajePuntaje
    mov ah, 09h
    int 21h

    ; Determinar jugador actual
    cmp jugadorActual, 1
    je puntajeActualJugador1

    mov ax, puntajeJugador2
    jmp imprimirPuntajeActual

puntajeActualJugador1:

    mov ax, puntajeJugador1

imprimirPuntajeActual:

    call imprimirNumero

    pop dx
    pop ax

    ret

mostrarPuntaje ENDP

mostrarPuntosRonda PROC

    push ax
    push dx

    lea dx, mensajePuntosRonda
    mov ah, 09h
    int 21h

    mov ax, puntosRonda

    call imprimirNumero

    pop dx
    pop ax

    ret

mostrarPuntosRonda ENDP

end main