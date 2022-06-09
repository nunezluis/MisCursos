## Polinomios Ortogonales: Polinomios de Legendre y alguna de sus aplicaciones

### Objetivos de la clase
El objetivo de esta clase es presentar de form los polinomios ortogonales de Legendre y algunas aplicaciones que ilustren la importancia del tema. En las próximas clases completaremos con otros polinomios ortogonales que generan importantes funciones de la Física Matemática, como son los Armónicos esféricos. Completaremos el tema con los polinomios de Hermite y una presentación general para todos los polinomios ortogonales.

De los polinomos de Legendre presentaremos:
  + Su definición y dominio;
  + Su independencia lineal que los hace base del espacio de funciones contínuas
  + Sus relaciones de ortogonalidad a partir de los productos internos que los generan a partir de una base de monomios
  + Las ecuaciones diferenciales de las cuales son soluciones
  + Sus relaciones de recurrencia y funciones generatices
  + Sus raíces y algunas propiedades de simetría
Luego presentaremos algunas de las aplicaciones como los son
    + Interpolación y ajuste de los datos experimentales
    + El uso de la función generatriz para obtener soluciones analíticas para el potencial generado por un dipolo, luego por un cuadrupolo y finalmente generalizaremos a una expansión multipolar
    + Cerramos la clase con la utilización de los polinomios de Legendre para integrar numéricamente muy eficazmente. Para ello primero discutimos la lógica de la integración numérica mediante la [regla de Simpson](https://pythonnumericalmethods.berkeley.edu/notebooks/chapter21.04-Simpsons-Rule.html), en la cual utilizamos incrementos constantes. Luego mostramos como se puede mejorar mediante la cuadratura de Gauss Legendre

### Actividades *antes* de clase
 1. Presentamos las propiedades de los polinomios de Legendre en los puntos 4.2.1 a 4.2.5 de [las notas de clase Vol 2](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/LibrosCapitulos/VolumenDOS.pdf).
 2. La expansión multipolar la discutimos en el ejemplo 4.2.7 [las mismas notas de clase Vol 2](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/LibrosCapitulos/VolumenDOS.pdf).
 3. En la [Hoja MAPLE bases funcionales otra vez](https://htmlpreview.github.io/?https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/ProgramasScripts/BasesFuncionales/BasesFuncionales.html) pueden repasar como surgen los polinomios de Legendre a partir de la ortogonalización de la base de monomios.
 4. La utilización de polinomios de Legendre para integrar funciones por cuadratura la discutimos en el punto 4.6.2  [las notas de clase Vol 2](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/LibrosCapitulos/VolumenDOS.pdf).
 5. La impresionante eficacia de la cuadratura de Gauss-Legendre la pueden apreciar en [esta hoja de MAPLE](https://htmlpreview.github.io/?https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/ProgramasScripts/FuncionesEspeciales/CuadraturaGauss/CuadraturaGaussLegendre1.html). En esta hoja comparamos la precisión de la integral numérica respecto a los resultados de su integración analítica. Este tipo de integraciones numéricas por cuadratura, está implementada en [la mayor parte de los ambientes de cálculo](https://rosettacode.org/wiki/Numerical_integration/Gauss-Legendre_Quadrature). En [numpy la encuentran](https://numpy.org/doc/stable/reference/generated/numpy.polynomial.legendre.leggauss.html).  

### Actividad *después* de clase
Para fijar conceptos de los métodos de integración numérica por cuadratura recomendamos hacer el ejercicio 1 de la sección 4.6.6 [las notas de clase Vol 2](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/LibrosCapitulos/VolumenDOS.pdf). En la [hoja de MAPLE funciones de Fresnel](https://htmlpreview.github.io/?https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/ProgramasScripts/FuncionesEspeciales/Fresnel/Fresnel.html) codificamos en Python y Matlab la solución exacta de la integral.

### Materiales de apoyo
  1. [Presentación Polinomios de Legendre](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Presentaciones/M2_22Legendre.pdf)
  2. [Presentacion de Aplicaciones de Polinomios de Legendre](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Presentaciones/M2_25LegendreApp.pdf)
  3. [Hoja MAPLE bases funcionales otra vez](https://htmlpreview.github.io/?https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/ProgramasScripts/BasesFuncionales/BasesFuncionales.html)
  4. [Hoja MAPLE de cuadratura de Gauss Legendre](https://htmlpreview.github.io/?https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/ProgramasScripts/FuncionesEspeciales/CuadraturaGauss/CuadraturaGaussLegendre1.html)
  5. [Hoja de MAPLE funciones de Fresnel](https://htmlpreview.github.io/?https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/ProgramasScripts/FuncionesEspeciales/Fresnel/Fresnel.html)

### Al finalizar estos contenidos
Al finalizar estos contenidos el estudiantes deberá:

    1.
