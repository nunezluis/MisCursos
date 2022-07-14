# Solución de Ecuaciones diferenciales por métodos numericos

## Objetivos de la clase
Esta clase tiene por objetivo presentar las estrategias de solución de ecuaciones diferenciales ordinarias lineales y no lineales, mediante métodos numéricos. Primero, discutiremos las ideas generales de como convertir una ecuación diferencial de cualquier orden a un sistema de ecuaciones diferenciales lineales o no lineales. Seguidamente, abordaremos la aproximación mas ingenua: la de Taylor.  A continuaremos con la idea general de la aproximación numérica, mostrando las particularidades de los métodos de Euler, sus mejoras en la aproximación de Simpson y terminaremos con los métodos de Runge-Kutta. Luego definiremos los métodos implícitos y explícitos.

## Actividades ANTES DE CLASE
   + Algunos métodos de solución numérica de las ecuaciones diferenciales de primer orden lo pueden consultar en las sección 6.2 de [las notas de clase Vol 2](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/LibrosCapitulos/VolumenDOS.pdf)
   + En el capítulo 8 del libro de Boyce, W. E. & DiPrima, R. C. *Elementary Differential Equations and boundary value problems*. (Jhon Wiley Sons, 2001), pueden encontrar un resumen muy bueno de los métodos numéricos mas elementales.
   + El libro de cabecera clásico y profesional para los métodos numéricos es Press, W. H., Teukolsky, S. A., W.T.Vetterling & Flannery, B. P. *Numerical recipes The art of scientific computing*. (Cambridge University Press, 2007). En particular el capítulo 17 es realmente bueno, con un especial énfasis en la presentación del control del paso y los métodos predictor corrector.
   + Si se dan una vuelta por la documentación de la [biblioteca Scipy](https://docs.scipy.org/doc/scipy/tutorial/index.html) en el [capítulo de integración](https://docs.scipy.org/doc/scipy/reference/integrate.html), podran apreciar algunas herramientas para integrar numéricamente ecuaciones diferenciales ordinarias, además de realizar integraciones numericas de funciones. Si utilizan [solve_ivp](https://docs.scipy.org/doc/scipy/reference/generated/scipy.integrate.solve_ivp.html#scipy.integrate.solve_ivp) podrán integrar ecuaciones diferenciales ordinarias, dadas las condiciones iniciales.


## Actividad DESPUES DE CLASES
En el esta [hoja MAPLE](https://htmlpreview.github.io/?https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/ProgramasScripts/EcDifOrdinarias/EcDifNumericas/EcDifNumeric1.html) encontrarán una ecuación diferencial y su solución analítica.

La idea es que
1. Integren numéricamente esa ecuación diferencial utilizando varios métodos disponibles en  la [biblioteca Scipy](https://docs.scipy.org/doc/scipy/reference/generated/scipy.integrate.solve_ivp.html#scipy.integrate.solve_ivp), suponiendo la condición inicial y(0)=3.
2. Compare la solución numérica con la solución analítica que se le plantea en ese script MAPLE

## Materiales de apoyo
   1. Presentación [Solución numéricas de ecuaciones diferenciales](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Presentaciones/M2_3_3EcDifNumericas.pdf)
   2. [Hoja MAPLE con la integración y análisis del péndulo físico](https://htmlpreview.github.io/?https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/ProgramasScripts/Pendulo/EjemPenduloFisico1.html)
   3. [Hoja MAPLE](https://htmlpreview.github.io/?https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/ProgramasScripts/EcDifOrdinarias/EcDifNumericas/EcDifNumeric1.html) con una ecuación diferencial y su solución analítica que deberá integrar numéricamente.


## Al finalizar estos contenidos
El estudiantes deberá:
  + Ser capaz de transformar una ecuación diferencial (lineal o nolineal) de cualquier orden en un sistema de ecuaciones diferenciales.
  + Comprender la idea de la integración numérica y sus casos particulares: Euler, Euler modificado, Runge-Kutta
  + Comprender la diferencia entre las diferencias entre los métodos explícitos e implícitos
  + Comprender la diferenica entre los métodos monopaso, multipaso y los criterios para asignar paso Variable
  + Estimar el error en la integración numérica
