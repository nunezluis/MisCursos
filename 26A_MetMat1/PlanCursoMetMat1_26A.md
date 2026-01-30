# Plan del Curso de Métodos Matemáticos de la Física 1 (Semestre A26)
1. [La metodología](#metodologia)
   1. [Clases](#clases)
   2. [Computación](#colaboracion)
2. [La evaluación](#evaluacion)
3. [Materiales del curso](#MaterialesCurso)
4. [Plan detallado del curso](#PlanDetallado)
5. [Evolución de la evaluación](#Avanzaevaluacion)

<a name="metodologia"></a>
## La metodología
**Antes de las clases** deberán revisar los materiales de apoyo (videos/textos) y recorrer los ejemplos resueltos de autoevaluación. Así podrán llevar dudas a la discusión que haremos en la clase. La realización de esos ejemplos resueltos será tomada en cuenta durante el desarrollo de la clase.

<a name="clases"></a>
### Las clases
**En cada clase** tendremos dos partes: una de ~30m-40m para presentar los conceptos, seguida por otra de ~60m-50m para la discusión en los ejemplos resueltos. Los conceptos habrán sido previamente expuestos en videos e indicados en los materiales de estudio.

En cada clase se propondrán ejercicios que deben resolver, consignar y sustentar **cada tercera clase**, es decir  **n +3**.  Tendremos una hora de consulta para dilucidar las dudas que se les presenten tanto en la solución de los ejercicios y las asignaciones propuestas.


<a name="colaboracion"></a>
### La computación
**Las herramientas computacionales** son una parte escencial de la actividad científica actual. Utilizaremos  dos tipos herramientas computacionales: una de manipulación simbólica o álgebra computacional ([SymPy](https://www.sympy.org/en/index.html) para trabajar en un ambiente de Jupyter notebooks) y otra un repositorio ([Git](https://en.wikipedia.org/wiki/GitHub)) para la preservación de documentos, datos y códigos computacionales. Adicionalmente, como homenaje al gran [Aaron Swartz](https://en.wikipedia.org/wiki/Aaron_Swartz) deberán documentar en el git la solución de los ejercicios y asignaciones utilizando [markdown](https://en.wikipedia.org/wiki/Markdown).

+ Pueden registrarse en github [aquí](https://github.com/)

<a name="evaluacion"></a>
## La evaluación
+ **Cada tercera clase (C3C)** se hará una evaluación sustentada de los *ejercicios asignados* como tarea.  Se tomarán en cuenta diez de estas evaluaciones y sumarán el 20\%. Las solución a los ejercicios C3C se compartirán desde el repositorio *git*

+ Se realizará cuatro evaluaciones orales (o escritas según el caso) de temas cubiertos hasta esas fechas. Estas conversaciones evaluadas acopiarán el 80% restante.

+ **Para consignar las tareas** deberan "clonar" el [repositorio de tareas](https://github.com/nunezluis/TareasCursos20B) y depositar allí las tareas que desarrollemos durante el curso.

<a name="MaterialesCurso"></a>
## Materiales del curso

### Libros textos
Los materiales que utilizaremos en este curso son unas notas de clase
+ **Temas seleccionados** del libro [Matematicas Avanzadas Vol 1](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/LibrosCapitulos/VolumenUNO.pdf)
+ El **capítulo de Variable Compleja** del libro [Matematicas Avanzadas Vol 2](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/LibrosCapitulos/VolumenDOS.pdf)

Hay que enfatizar que ambos volúmenes son obras en evolución y siempre presentaremos la última versión que puede haber variado. Con eso estamos diciendo que **NO LOS IMPRIMAN**. Consulten la última versión en formato electrónico que les presentamos en los enlaces antes mencionados.

También utilizaremos capítulos de la siguiente  bibliografía de textos clásicos en el tema  
+ Svozil, Karl.(2020) [Mathematical methods of theoretical physics](https://arxiv.org/abs/1203.4558). World Scientific.
+ Tang, K. T. (2007). Mathematical methods for engineers and scientists (Vols. 1, 2, y 3). New York: Springer. [Disponible en la Biblioteca UIS](https://biblioteca.uis.edu.co/)
+ Chow, T. L. (2001). Mathematical Methods for Physicists: A concise introduction. Cambridge, Cambridge Uniersity Press. [Disponible en la Biblioteca UIS](https://biblioteca.uis.edu.co/)
+ Riley, K. F., Hobson, M. P., & Bence, S. J. (1999). Mathematical methods for physics and engineering.[Disponible en la Biblioteca UIS](https://biblioteca.uis.edu.co/)
+ Landau, R. H., Páez, M. J., & Bordeianu, C. C. (2015). Computational physics: Problem solving with SymPy. John Wiley & Sons.

<a name="PlanDetallado"></a>
## Plan detallado del curso: Clases, talleres y asignaciones

### Temas y tiempos en un vistazo

| Temas    | Tiempo (semanas) |
| :------- | :-------:        |
| [Los vectores de siempre](#VectoresSiempre) | 1.0  |
| [Espacios Vectoriales lineales](#EspaciosVectoriales) | 3.0  |
| [Espacios duales y tensoriales](#EspaciosDuales) |  2.0  |
| [Operadores Lineales](#OperadoresLineales) | 3.0 |
| [Análisis vectorial](#AnalisisVectorial)| 2.0  |
| [Variable compleja](#VariableCompleja) |3.0|
| Exámenes y ajustes |3.0|


### Los vectores de siempre (1 Semana)
<a name="VectoresSiempre"></a>
+ [Clase 1: Los vectores de siempre](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Clases/V1_C1_1LosVectoresdeSiempre.md) **S1C1 = 4feb**

+ [Clase 2: Análisis vectorial express y número complejos](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Clases/V1_C1_2AnalisisVectExpress.md). **S1C2 = 6feb**

### Espacios Vectoriales lineales. (3.0 Semanas)
<a name="EspaciosVectoriales"></a>
+ [Clase 3: Grupos y espacios lineales abstractos](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Clases/V1_C2_1GrupoEspVectorial.md) **S2C1 = 11feb**
Además tendremos un **taller evaluado de los vectores de siempre** (clases 1 y 2).
    1. Código en SymPy que ejercicio 5 Sección 1.1.6.
    2. Código en SymPy que reproduzca el ejercicio 6 de la Sección 1.2.7
    3. De la sección 1.5.7 resuelva los ejercicios 2a, 2d y 2f y con  SymPy el 13;
    4. De la sección 1.6.6 resuelva los ejercicios 2, 5 y 6.

+ [Clase 4: Espacios Métricos, Normados y Euclideanos](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Clases/V1_C2_2EspMetricNorm.md). **S2C2 = 13feb**

+ [Clase 5: Dependencia e independencia líneal y bases ortogonales](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Clases/V1_C2_3IndepLineal.md) **S3C1 = 18feb**

+ [Clase 6: Aproximación de funciones y bases ortogonales](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Clases/V1_C2_4AproxFun.md) **S3C2 = 20feb**
    1. Desarrollar los ejercicios 5 y 6 de la sección 2.3.6
    2. Utilizando SymPy desarrollar el ejercicio 3 de la sección 2.4.51

+ **Ajuste 25feb**

+ **Primera evaluación**  **27 feb**

### Espacios vectoriales duales y tensoriales. (2 Semanas)
<a name="EspaciosDuales"></a>
+ [Clase 7: Funcionales Lineales y Espacios Vectoriales Duales](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Clases/V1_C3_1EspDuales.md) **S5C1 4mar**

+ [Clase 8: Tensores y espacios tensoriales abstractos](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Clases/V1_C3_2EspTensoriales.md). **S5C2 6mar**

+ [Clase 9: Tensores y sus aplicaciones en Física](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Clases/V1_C3_3AplicaTensores.md). **S6C1 11mar**

+ [Clase 10: Vectores y tensores en espacios pseudoeuclideanos](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Clases/V1_C3_4EspPseudoEuclid.md). **S6C2 13mar**
Evaluación de los ejercicios asignados clases 6, 7, 8 y 9.    
 1. los ejercicios 5 y 6 de la sección 2.3.6
 2.  SymPy desarrollar el ejercicio 3 de la sección 2.4.5
 3. ejercicios 6 y 7 de la Sección 3.1.4 .
 4. Hacer un código  SymPy que resuelva el problema 2 sección 3.3.5.
 5. Desarrolle los problemas 7 y 8 de esa misma sección 3.3.00


### Operadores Lineales (3 Semanas)
<a name="OperadoresLineales"></a>

+ [Clase 11: Operadores lineales](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Clases/V1_C4_1OperLineales.md)  **S7C1 18mar**

+ [Clase 12: Fauna de operadores lineales](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Clases/V1_C4_2FaunaOperLineales.md)  **S7C2 20mar**
    + Evaluación
        + Ejercicio 2 y 8 sección 3.3.5
        + Ejercicio 6 sección 3.4.3



+ [Clase 14: Matrices y Operadores Lineales, parte 1](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Clases/V1_C4_3MatOperLineales.md) **S8C1 25mar**

+ [Clase 15: Matrices y Operadores Lineales, parte 2](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Clases/V1_C4_3MatOperLineales.md). **S8C2 27mar**

+ [Clase 16: Autovalores, autovectores y conjunto completo de observables que conmutan](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Clases/V1_C4_4AutovalAutovec.md). **S9C1 8abr**
Evaluación de los ejercicios asignados clases 12, 13 14 y 15
    + Evaluación
        + Ejercicios 4 y 5 de la sección 4.1.4
        + Ejercicio 1 de la sección 4.2.9
        + Ejercicio 2 de la sección 4.3.8

+ **Segunda Evaluación 10abr**

### Análisis vectorial. (2 Semanas)
<a name="AnalisisVectorial"></a>

+ [Clase 17: Coordenadas curvilíneas generalizadas y campos tensoriales](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Clases/V1_C5_1CoordCurviCamposTensor.md) **S10C1 15abr**

+ [Clase 18: La fauna de los operadores vectoriales](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Clases/V1_C5_2DerivadasVectoriales.md) **S10C2 17abr**

+ [Clase 19: Integrales de campos vectoriales y teoremas integrales](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Clases/V1_C5_3TeoremasIntegrales.md) **S11C1 22abr**

+ [Clase 20: Teoría de Potencial](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Presentaciones/5_40TeoriaPotencial.pdf). **S11C2 24abr**

+ **Tercera Evaluación 29abr**

### Variable Compleja (3 Semanas)
<a name="VariableCompleja"></a>
+ [Clase 21: Funciones y Números Complejos](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Clases/V2_C3_1VarCompleja.md). **S12C1 6may**

+ [Clase 22: Puntos, líneas y transformaciones en al plano complejo](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Clases/V2_C3_2TransfConformes.md). **S12C2 8may**

+ [Clase 23: Integrales Complejas](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Clases/V2_C3_3IntegralesComplejas.md). **S13C1 13may**

+ [Clase 24: Series de Taylor y Laurent](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Clases/V2_C3_4Laurent.md). **S13C2 15may**

+ [Clase 25: Teorema del Residuo y sus Aplicaciones](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Clases/V2_C3_5ResiduosIntegrales.md). **S14C1 20may**

+ Ajuste   **22may**

+ **Cuarta evaluación 27may**

<a name="Avanzaevaluacion"></a>
## La evaluación
