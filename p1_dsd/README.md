## Práctica 1: Divisor de Frecuencia para Dos Salidas (1Hz y 4Hz)

**Objetivo**

Diseñar e implementar un divisor de frecuencia en VHDL que genere dos señales de salida: una con una frecuencia de 1Hz y otra con una frecuencia de 4Hz. El objetivo principal es aprender a utilizar el cristal oscilador integrado en la FPGA y comprender el concepto de flanco de subida del reloj.

**Solución Implementada**

La solución se basa en el uso de contadores y la detección del flanco de subida del reloj principal de la FPGA (50MHz). Se implementaron dos contadores:

* **Contador para 1Hz:** Este contador se incrementa en cada flanco de subida del reloj y se reinicia cuando alcanza un valor específico, generando así una señal de salida que cambia de estado cada segundo (1Hz).
* **Contador para 4Hz:** Similar al contador de 1Hz, pero con un valor de reinicio diferente, lo que produce una señal de salida que cambia de estado cuatro veces por segundo (4Hz).

**Consideraciones**

* **Frecuencia del reloj:** La frecuencia del cristal oscilador de la FPGA (50MHz en este caso) se utiliza para calcular los valores de reinicio de los contadores, asegurando así las frecuencias de salida deseadas.
* **Flanco de subida:** La función `rising_edge` se utiliza para detectar el flanco de subida del reloj, garantizando que las operaciones de los contadores y las asignaciones a las salidas se realicen de manera sincronizada y eviten problemas de glitches o metaestabilidad.

**Conclusión**

Esta práctica permitió comprender el funcionamiento del cristal oscilador de la FPGA, el concepto de flanco de subida del reloj y la implementación de divisores de frecuencia utilizando contadores en VHDL. La solución propuesta demuestra cómo generar señales de diferentes frecuencias a partir de un reloj principal, lo cual es fundamental en el diseño de sistemas digitales. 
