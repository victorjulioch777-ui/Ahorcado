# 🎮 Ahorcado (Hangman) - Versión Ensamblador

## 📖 Descripción del proyecto

Este proyecto consiste en el desarrollo del clásico juego **Ahorcado (Hangman)** utilizando lenguaje ensamblador de 16 bits para el procesador Intel 8086, mediante el entorno de desarrollo **Emu8086**.

El proyecto se realiza como parte del curso **IC-1400 Fundamentos de Organización de Computadoras**, de la carrera de Ingeniería en Computación del Tecnológico de Costa Rica (TEC).

Su objetivo es aplicar conocimientos sobre registros, manejo de memoria, instrucciones, saltos condicionales, ciclos e interrupciones del sistema mediante el desarrollo de un videojuego interactivo.

## 🎯 Objetivo

Desarrollar un juego funcional del Ahorcado en el que los jugadores deban descubrir una palabra secreta, proponiendo letras antes de agotar sus seis intentos disponibles.

El sistema incorporará modalidades de juego, categorías temáticas, niveles de dificultad, puntuaciones y estadísticas.

## 🕹️ Funcionalidades del proyecto

El juego está diseñado para incluir:

- **Máquina vs. Jugador:** el programa seleccionará aleatoriamente una palabra de un banco predefinido.
- **Jugador vs. Jugador:** dos jugadores alternarán roles para introducir y adivinar palabras secretas.
- **Categorías temáticas:** al menos tres categorías con palabras de distintas longitudes.
- **Niveles de dificultad:** Fácil (4–5 letras) e Intermedio (6–8 letras).
- **Sistema de intentos:** máximo de seis errores por ronda.
- **Validación de letras:** aceptación de letras A–Z, conversión a mayúsculas y prevención de letras repetidas.
- **Comodín de pista:** permitirá revelar letras ocultas con una penalización de puntos.
- **Temporizador:** limitará el tiempo para introducir una letra según la dificultad.
- **Selección de funcionalidad especial:** el jugador podrá elegir entre utilizar comodines o jugar con temporizador.
- **Sistema de puntuación y estadísticas:** registro y comparación de los resultados de los jugadores.
- **Menú de opciones:** funcionalidades para rendirse, reiniciar o salir del juego.

## 🛠️ Tecnologías utilizadas

- **Lenguaje:** Ensamblador (Assembly).
- **Arquitectura:** Intel 8086, 16 bits.
- **Emulador:** Emu8086.
- **Sistema de control de versiones:** Git y GitHub.
- **Entorno principal de desarrollo:** Linux.

El código se organiza en un único archivo `.asm`, utilizando el modelo de memoria `.MODEL SMALL`, las secciones `.DATA` y `.CODE`, procedimientos y comentarios descriptivos.

## 🚧 Estado del desarrollo

**Proyecto en desarrollo.**

Hasta el momento se ha implementado un prototipo que permite:

- Almacenar una palabra secreta en memoria.
- Recorrer sus caracteres mediante el registro `SI`.
- Comparar una letra con los caracteres de la palabra.
- Detectar coincidencias mediante saltos condicionales.
- Revelar las posiciones de las letras acertadas.
- Mostrar la palabra parcialmente descubierta mediante la interrupción `INT 21h`.

Actualmente se trabaja en la incorporación de la entrada de letras mediante el teclado y la integración progresiva de las demás funcionalidades.

## ▶️ Ejecución

1. Abrir el archivo `Ahorcado.asm` utilizando Emu8086.
2. Compilar el código.
3. Ejecutar el programa mediante el emulador.
4. Utilizar **Single Step** cuando sea necesario analizar el comportamiento de los registros y la memoria.

*Nota: la versión actual corresponde a un prototipo de la lógica de búsqueda de letras, no al juego completo.*

## 👨‍💻 Desarrollo académico

**Institución:** Tecnológico de Costa Rica

**Carrera:** Ingeniería en Computación

**Curso:** IC-1400 Fundamentos de Organización de Computadoras

**Proyecto:** Ahorcado (Hangman) — Versión Ensamblador

**Periodo:** II Semestre, 2026

---

*Proyecto desarrollado con fines académicos para fortalecer la comprensión del funcionamiento interno del procesador Intel 8086 y la programación de bajo nivel.*
