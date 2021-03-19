# Espacios Vectoriales Lineales
+ [Clase 1. Grupos y espacios lineales abstractos](#Clase1)
+ [Clase 2. Espacios Métricos, Normados y Euclideanos](#Clase2)
+ [Clase 3. Dependencia e independencia líneal y bases ortogonales](#Clase3)
+ [Clase 4. Aproximación de funciones y bases ortogonales](#Clase4)
+ [Clase 5. Taller de Funciones](#Clase5)

<a name="Clase1"></a>
### Clase 1. Grupos y espacios lineales abstractos (210305)
+ **Objetivos de la clase.** Esta clase tiene por objetivo, en primer lugar, presentar los conceptos fundamentales de grupo, la construcción de la tabla de multiplicación  y la identificación de isomorfismos entre grupos. En segundo lugar se presenta el concepto de espacio vectorial abstracto y se ejemplifica con distintos casos: números, vectores n-dimensionales, polinomios, funciones, matrices, entre otros.

+ **Actividad antes de clase**
   1. Estudiar puntos de las [notas de clase](https://github.com/nunezluis/MisCursos/blob/main/MetMat1S20B/Materiales/LibrosArticulos/VolumenUNO.pdf) 2.1.1, 2.1.2, 2.1.3 y 2.1.4.
   2. Rehacer los ejemplos resueltos: 2.1.6 ejemplos 1 y 2

+ **Taller de problemas 1 (evaluación en la clase 5):** Sección 2.1.8 ejercicios 3 y 10
+ **Materiales de apoyo:** [Video](https://youtu.be/aiv3E_Nofko) y [presentación del concepto de espacio vectorial](https://github.com/nunezluis/MisCursos/blob/main/MetMat1S20B/Materiales/Presentaciones/2_1GruposEspaciosVectoriales.pdf)

+ **Al finalizar estos contenidos** El estudiantes deberá estar en capacidad de:
   1. Indentificar (a partir de la tabla de multiplicación) si un conjunto de elementos con una operación definida constituye un grupo.
   2. Identificar subgrupos dentro de los Grupos
   3. Identificar isomorfismos entre Grupos
   4. Identificar espacios vectoriales a partir de su definición
   5. Identificar subespacios vectoriales

<a name="Clase2"></a>
### Clase 2. Espacios Métricos, Normados y Euclideanos (210309)
+ **Objetivos de la clase.** Esta clase tiene por objetivo explorar la estructura de los espacios vectoriales al equiparlos con la idea de distancia entres sus elementos (la función métrica); la idea de tamaño de sus elementos (Norma) y finalmente, como generar geometría en un espacio vectorial a partir de la definición de producto interno y con ello el ángulo entre los elementos del espacio.

+ **Actividad antes de clase**
   1. Estudiar el punto 2.2 de las [notas de clase](https://github.com/nunezluis/MisCursos/blob/main/MetMat1S20B/Materiales/LibrosArticulos/VolumenUNO.pdf)
   2. Rehacer con MAXIMA el ejemplos resuelto 2 sección 2.2.4.
+ **Taller de problemas 1 (evaluación en la clase 5)** Los problemas 2 y 3 problema 7 sección 2.2.6
+ **Materiales de apoyo**
   1. [Video](https://youtu.be/la9Gnhc0uFg) y [presentación de espacios métricos y normados](https://github.com/nunezluis/MisCursos/blob/main/MetMat1S20B/Materiales/Presentaciones/2_2EspaciosMetricos.pdf)
   2. [Video](https://youtu.be/rQ59n-wr9X8) y [presentación de espacios euclideanos](https://github.com/nunezluis/MisCursos/blob/main/MetMat1S20B/Materiales/Presentaciones/2_23EspaciosEuclideanos.pdf)

   + **Al finalizar estos contenidos** El estudiantes deberá estar en capacidad de:
      1. Utilizar el concepto de métrica para determinar la distancia entre elementos de un espacio vectoriales y aplicarlo a varios espacios vectoriales (números, n-uplas, funciones, matrices)
      2. Comprender que un espacio vectorial puede tener varias definiciones de métricas y por lo tanto la idea de distancia es variable
      3. Utilizar el concepto de norma generar la métrica. Comprender la asociación del concepto de norma con la idea de tamaño de un vector
      4. Comprender la definición de producto interno y su relación con el producto escalar en R^3
      5. A partir de la definición de producto interno deducir los conceptos de norma y métrica en un espacio vectorial
      6. Comprender cómo se deduce la noción de ángulo a partir del producto interno. Comprender la deducción de las versiones del Teorema del Coseno y de Pitágoras a partir de la definición del producto interno.


<a name="Clase3"></a>
### Clase 3. Dependencia e independencia líneal y bases ortogonales (210312)
+ **Objetivos de la clase.** Esta clase tiene por objetivo, en primer lugar, introducir el concepto de independencia lineal y, a partir de éste, generar la idea de base para un espacio vectorial. Seguidamente, presentamos la expansión de los vectores de un espacio vectorial como combinación lineal de la base. Se enfatiza en asociar las componentes de los vectores con las distintas bases del espacio vectorial. Finalmente, si el espacio tiene definido un producto interno, se construye una base ortogonal a partir de las bases oblicuas que existan.
+ **Actividad antes de clase**
   1. Estudiar el punto 2.3 de las [notas de clase](https://github.com/nunezluis/MisCursos/blob/main/MetMat1S20B/Materiales/LibrosArticulos/VolumenUNO.pdf)
   2. Rehacer el ejemplo resuelto: 2.3.6
+ **Evaluación taller de problemas 1**
+ **Taller de problemas 2 (evaluación en la clase )**
   1. Desarrollar los problemas 5 y 6 del punto 2.3.8
+ **Materiales de apoyo**
    1. [Video](https://youtu.be/TVwa7wJ0N9I) y [presentación de variedades lineales](https://github.com/nunezluis/MisCursos/blob/main/MetMat1S20B/Materiales/Presentaciones/2_3IndependeLineal.pdf)
    2. [Ejemplos de ortogonalización de monomios y aproximación de funciones](https://htmlpreview.github.io/?https://github.com/nunezluis/MisCursos/blob/main/MetMat1S20B/Materiales/ScriptMetMat1/BasesFuncionales/BasesFuncionales.html)

+ **Asignación 1 (Fecha de entrega 210406).** Esta asignación tiene por objeto mostrar que la acción de calibrar un sensor está íntimamente ligada a la idea de métrica en un espacio vectorial de datos. El problema que planteamos es cuantificar el error de medición del sensor de bajo costo y, como calibrarlo para establecer nuevas lecturas que sean mas precisas. [Aquí](https://github.com/nunezluis/MisCursos/blob/main/MetMat1S20B/Asignaciones/TallerDistancias.pdf) podrán encontrar el planteamiento y el alcance del problema. [Aquí](https://github.com/nunezluis/MisCursos/tree/main/MetMat1S20B/Asignaciones/Datos) podrán encontrar los datos para desarrollar los algoritmos de calibración inteligente.
El problema deberá ser entregado por equipos en forma de artículo y podrían seguir el [modelo](https://www.overleaf.com/read/hfqvjnjwngnp) que presentamos en la descripción del curso.  


+ **Al finalizar estos contenidos** El estudiantes deberá estar en capacidad de:
   1. Construir una base para un espacio vectorial y identificar las componentes de un vector en esa base
   2. Construir una base ortogonal a partir de la definición del producto interno y de una base oblicua previamente identificada.
   3. Comprender la diferencia de expresar un vector en

<a name="Clase4"></a>
### Clase 4. Aproximación de funciones y bases ortogonales (210316)
+ **Objetivos de la clase.** Esta clase tiene por objetivos comprender la aplicación de los conceptos de base y expansión de vectores en término de una base para aproximar funciones. Al aplicar estos conceptos a un espacio vectorial de funciones hablamos de aproximación de una función en término de una base de vectores (ortogonales o no). También entender la aplicación del concepto de distancia --derivado de la definición de producto interno-- para estimar el error en la aproximación.
+ **Actividad antes de clase**
   1. Estudiar el punto 2.4 de las [notas de clase](https://github.com/nunezluis/MisCursos/blob/main/MetMat1S20B/Materiales/LibrosArticulos/VolumenUNO.pdf)
   2. Rehacer los ejemplos resueltos: Mínimos Cuadrados y Aproximación Polinomial

+ **Taller de problemas 2 (evaluación en la clase 5).** Utilizando MAXIMA desarrollar el problema 3 de la sección 2.4.7

+ **Materiales de apoyo:** [Video](https://youtu.be/3f6HkYM3sQM) y [presentación de Aproximación de Funciones](https://github.com/nunezluis/MisCursos/blob/main/MetMat1S20B/Materiales/Presentaciones/2_4AproximacionFunciones.pdf)
+ **Al finalizar estos contenidos** El estudiantes deberá
   + La aplicación de los conceptos de espacios vectoriales abstractos al métodos aproximación de mínimos cuadrados
   + Aplicación de los conceptos de espacios vectoriales abstractos a la aproximación de funciones en término de bases funcionales del espacio
   + Estimación del error al aproximar una función con bases ortogonales o no.

<a name="Clase5"></a>
### Clase 5. Taller (210319)
En esta clase haremos una revisión de los ejercicios propuestos en las clases anteriores   
