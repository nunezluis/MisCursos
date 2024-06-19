# Proyectos Ciencia de Datos

A continuación enumeramos algunos proyectos para el cursos de ciencia de Datos de la cohorte 2022

## Rocas navegantes del Valle de la Muerte (Propuesto L.A. Núñez)
 La pregunta de cuáles son los efectos que mueven las rocas de este valle desértico se viene repitiendo por décadas[1] y las primeras medidas que registran el movimiento de las rocas han sido tomadas por Norris y colaboradores [2]. Estos autores colocaron módulos de geoposicionamiento satelital (GPS) en varias rocas y estudiaron su desplazamiento y muestran que, aparentemente, las rocas se mueven sobre láminas de hielo que se quiebran y deslizan.

### Objetivos:
- Interpretar gráficas: velocidad vs tiempo y posición vs tiempo y, a partir de éstas obtener información sobre la dinámica del moviendo de las rocas.
- Discutir los conceptos fuerzas de fricción en fluidos y entre materiales, haciendo énfasis en el significado de la fricción estática y dinámica y, como pueden ser calculadas a partir de los datos.


### Actividades a desarrollar:
+ Algunas de las medidas surgidas en estos años han estimado que el coeficiente de fricción estático es mu_{e} approx 0.15. Estime la fuerza (¿máxima?) necesaria para iniciar y luego mantener en movimiento algunas de las rocas "instrumentadas" que aparecen en la tabla 2 del artículo de Norris y colaboradores.

+ El módulo de la fuerza de fricción en un fluido sobre un cuerpo que desplaza con una velocidad v puede modelarse como F_{f} = C rho A v^{2} / 2, donde C es un coeficiente de resistencia que depende de la forma del cuerpo, rho la densidad del fluido (rho 1.21 kg m^{-3} en el Valle de la Muerte), y A el área de la sección transversal que el cuerpo ofrece al fluido.
    + A partir de los datos de las figuras 5 y 9 (y los datos en el cuadro suplementario 1) del artículo de Norris y colaboradores estime el producto de constantes C y A. Discuta sobre los posibles errores de esta estimación.
    + Con los estimados anteriores haga un gráfico de la variación en el tiempo del coeficiente de fricción cinético para las rocas A3 y A6 del experimento de Norris y colaboradores. ¿cuál es el coeficiente cinético medio en intervalos de 1h, 4h y 8h.

[1] Shelton, J. S. (1953). Can wind move rocks on racetrack playa?. Science, 117(3042), 438-439.

[2] Norris, R. D., Norris, J. M., Lorenz, R. D., Ray, J., & Jackson, B. (2014). Sliding rocks on Racetrack Playa, Death Valley National Park: first observation of rocks in motion. PloS one, 9(8), e105948.

## Decrecimiento Forbush en los datos de los detectores de superficie del Observatorio Pierre Auger (propuesto por L.A. Núñez)

Los datos abiertos del Auger Scaler consisten en más de 10^{15} eventos detectados desde marzo de 2005 hasta diciembre de 2020. Se presentan en modo "conteo de partículas", esto es, se registran partículas que impactan cada uno de los 1600 detectores de agua Cherenkov en un segundo. Mayores detalles sobre este modo *scaler* pueden conseguirlo [aquí](https://opendata.auger.org/data.php). También [aqui](https://opendata.auger.org/analysis.php)  ver algunos códigos python para interactuar y visualizar los datos.

El observatorio Pierre Auger viene haciendo un seguimiento de las variaciones del flujo de partículas en superficie asociados a la dinámica solar[1].

Los [decrecimientos Forbush](https://en.wikipedia.org/wiki/Forbush_decrease#:~:text=A%20Forbush%20decrease%20is%20a,cosmic%20rays%20away%20from%20Earth) son disminuciones transitorias del flujo de partículas en tierra producto del paso de una eyección de masa coronal.


### Objetivos
+ Identificar las variaciones estacionales de largo plazo del flujo de partículas asociadas al ciclo solar
+ Identificar las variaciones transitorias del flujo de partículas asociadas a decrecimientos Forbush.

### Actividades
A partir del artículo de M. Schimassek
+ reproducir las variaciones asociadas al ciclo solar
+ comprobar el decrecimiento Forbush que él reporta puede ser reproducido
+ verificar si ese decrecimiento ocurre en un máximo de actividad solar  

[1] Schimassek, M. (2019, July). Analysis of Data from the Low-Energy Modes of the Surface Detector of the Pierre Auger Observatory. In 36th International Cosmic Ray Conference (ICRC2019) (Vol. 36, p. 1147).

## El clima en Pampa Amarilla a través de los datos del Observatorio Pierre Auger (Propuesto por L.A. Núñez)

Los efectos de la variación de las variables atmosféricas en el desarrollo de las cascadas de rayos cósmicos pueden entenderse en términos de cambios locales en los parámetros atmosféricos. Los cambios en la presión atmosférica provocan cambios en las tasas de las cascadas registradas. Cuando la presión aumenta, hay más material a traves del cual fluyen los rayos cósmicos, por lo que la tasa detectada disminuye. A presión constante, si la temperatura aumenta, las partículas de la cascada se dispersan más al aumentar la distancia recorrida entre cada choque.

Las condiciones atmosféricas en el Observatorio Pierre Auger registran continuamente en cinco estaciones meteorológicas situadas en la Instalación Láser Central (CLF) (centro del arreglo de detectores de de superficie) y en cuatro puntos de la periferia del arreglo. Las estaciones meteorológicas están equipadas con sensores de temperatura, presión, humedad y velocidad del viento que registran datos cada 5 o 10 minutos. Las incertidumbres estadísticas de estos datos son de 0,2C para la temperatura, 2% para la humedad relativa, 0,1 m/s para la velocidad del viento y 0,2 hPa para la presión.

### Objetivos
Identificar fenómenos meteorológicos a partir de los [datos climáticos del observatorio Pierre Auger](https://opendata.auger.org/data.php) recolectados por las estaciones situadas en varios puntos del arreglo de detectores. Esto es: se pueden ver ondas de calor, presión o vientos que crucen los 70km del arreglo  


## Estudio de factores sociales que influyen en las pruebas icfes usando analítica de datos (Propuesto por F. Martínez)
En Colombia, hay un instituto estatal de carácter social que vela por la educación superior que se llama [ICFES](https://icfescolombia.co) (Instituto Colombiano para el Fomento de la Educación Superior). Este organismo se creó con el objetivo de evaluar alumnos que se encontraban cursando el último año de bachillerato; sin embargo, ahora se encarga de ofrecer servicios para evaluar la educación en los distintos niveles que tiene Colombia. De esta forma, se analiza la información para poder mejorar la situación educativa del país.

ICFES realiza diferentes pruebas para monitorear el desarrollo de los estudiantes para evaluar la calidad educativa en Colombia.

Para el ingreso a la universidad se presentan a escala nacional la prueba saberpro 11. Esta prueba se le aplica a estudiantes que están culminando el grado undécimo de la educación media. Son dos sesiones en las que se realizan cinco pruebas (lectura crítica, matemáticas, sociales y ciudadanas, ciencias naturales e inglés).

### Objetivos
Analizar los factores sociales que influyen en los puntajes del icfes. Para ello se debe analizar [Dataset](https://drive.google.com/file/d/1dHWqLxinhEdfGSKp2bWCbWRTLXdgkIwE/view?usp=sharing): Más de 490000 registros de pruebas de estudiantes con caracteristicas como: estrato, situación económica, tv, dtpto, otros.

## Simulación del modelo de Ising con el método de Monte Carlo (Propuesto por P. Pujol)
El modelo de Ising es el modelo más sencillo de la física estadística para entender la transiciones de fase. Este permite de estudiar una transición que se puede asociar a la del ferromagnetismo.

### Objetivos
Utilizar el método de simulación de Monte Carlo [1, 2] para estudiar un modelo de Ising bi-dimensional y obtener su temperature critica, así como algunos exponentes críticos.

### Actividades a desarrollar:  
+ Familiarizarle con e algoritmos de Metropolis para el método de Monte Calo
+ Estudiar los resultados analíticos del modelo de Ising con interacción a primeros vecinos en la red cuadrada
+ Confirmar con el método de Monte Calo los resultados analíticos de la red cuadrada.

[1] Krauth, W. (1998). [Introduction to monte carlo algorithms](https://doi.org/10.48550/arXiv.cond-mat/9612186). In Advances in Computer Simulation (pp. 1-35). Springer, Berlin, Heidelberg.
[2] Walter, J. C., & Barkema, G. T. (2015). [An introduction to Monte Carlo methods](https://doi.org/10.48550/arXiv.1404.0209). Physica A: Statistical Mechanics and its Applications, 418, 78-87.

## Simulation de un modelo de percolación (Propuesto por P. Pujol)
El modelo geométrico de percolación [1] tiene muchas aplicaciones en diversas ramas de la física. Este modelo sencillo e intuitivo permite de acceder a la física de los fenómenos críticos y los fractales fácilmente.

### Objetivos:
Estudiar numericamente el fenómeno de percolación, estudiar el punto de concentración critica, y el « cluster » fractal de percolación que se forma en ese punto. Obtener su dimension fractal.

### Actividades a desarrollar:
+ Familiarizarle con el estudio numérico de la percolación
+ Estudiar los resultados analíticos del modelo en la red cuadrada
+ Confirmar con el método numérico los resultados analíticos de la red cuadrada

[1] Stauffer, D., & Aharony, A. (2018). Introduction to percolation theory. Taylor & Francis.



## Medición del Xmax usando los datos del telescopio de fluorescencia del Observatorio Pierre Auger (Propuesto por C. Sarmiento)

La profundidad atmosférica máxima, Xmax, es uno de los parámetros más importantes de las lluvias de partículas generadas por
rayos cósmicos. Su importancia recae en la relación que existe entre el Xmax y la composición química de la partícula o
núcleo que inicia la cascada de secundarios. Con el objetivo de medir este parámetro el Observatorio Pierre Auger construyó
cuatro telescopios de fluorescencia (FD) que captura la la interacción entre las partículas cargadas con las atmósfera y así reconstruye
la distribución de la distribución longitudinal.

### Objetivo
Estudiar la relación entre el Xmax y la composición química de los rayos cósmicos primarios usando los datos de los
telescopios de fluorescencia del Observatorio Pierre Auger.

### Actividades
+ Estudiar en los conceptos relacionados con los rayos cósmicos y las cascadas de partículas,
+ Comprender el funcionamiento de los telescopios de fluorescencia,
+ Reproducir los resultados publicados por Auger.


[1] Página web del observatorio: https://visitantes.auger.org.ar/

[2] Analysis of Xmax Measurements from the Fluorescence Detector of the Pierre Auger Observatory (https://arxiv.org/pdf/1409.4809v3.pdf)

## Análisis de datos públicos del experimento ATLAS (guiado por J. Ocariz + otros colegas ATLAS)

### Objetivos
The general aim of the ATLAS Open Data and tools released is to provide a straightforward interface to replicate the procedures used by high-energy-physics researchers and enable users to experience the analysis of particle physics data in educational environments. Therefore, it is of significant interest to check the correct modelling of several SM process by the 13 TeV ATLAS Open Data MC simulation.

Both simulated events, and events from real data collected in 2016 at 13 TeV center-of-mass proton-proton collision energy are available. More details on the available datasets can be found here:

http://opendata.atlas.cern/release/2020/documentation/datasets/files.html

In particular, the "GamGam" sample can be used to study properties of the Higgs boson in its decay in two photons, and the "2lep" sample can be used to study properties of the Z boson in its decay in pairs of leptons (electrons or muons). Other samples can also be considered.

### Actividades

Develop a complete analysis chain for the selected physics process:

- identify the variables to be used
- define the parameters of interest (POI) to be measured, and their relations with the set of variables from the previous step
- establish a statistical protocol to extract confidence intervals these PIO
- use control samples to validate the protocol
- perform the measurement on the signal samples



## Análisis de datos públicos del experimento CMS (a ser confirmado)

(TBC)

## Implementar el método de recocido simulado (simulated annealing) para obtener el mínimo de clusters de Lennard-Jones (Propuesto por Luis Rincon/Ernesto Medina)

Simulated annealing, también llamado recocido simulado, es un algoritmo metahuristico de optimización que emplea el algoritmo de Monte-Carlo de Metropolis. En pocas palabras, el metodo de recocido simulado consiste en mover al caminante usando el algoritmo de Metropolis y disminuir la temperatura paulatinamente a medida que la simulación avanza; en otras palabras, el sistema no mantiene la temperatura constante.

### Objetivos

Utilizar el método de optimización de recosido simulado (simulated annealing)[1] para obtener la configuración de menor energía de un cluster de 13 átomos que interaccionan vía el potencial de Lennard-Jones.

### Actividades

Los detalles de la simulación, como por ejemplo el programa de temperaturas, se encuentran en los artículos de Wille. [2] - [3]

La simulación no emplea condiciones periódicas y la inicialización debe ser un cluster de N átomos colocados al azar dentro de una esfera (o un cubo).

Para llegar al mínimo el algoritmo requiere usar al final de la simulación de Monte-Carlo un método de minimización local como por ejemplo L-BFGS el cual se encuentra ya implementado en muchas librerías de optimización como la de scipy de Python (scipy.optimize.minimize).

La energía y geometrías de mínima energía están publicadas en la base de datos “The Cambridge Energy Landscape Database” (http://doye.chem.ox.ac.uk/jon/structures/LJ.html). Esta base de datos servira para corroborar que los resultados de la simulación coinciden con los publicados (especialmente la energía).

[1] S. Kirkpatrick; C.D. Gelatt; M.P. Vecchi (1983) “Optimization by Simulated Annealing” Science 220, 671-680.

[2] L.T. Wille (1987) “Minimum-energy configurations of atomic clusters: new results obtained by simulated annealing” Chem. Phys. Lett. 133, 405-410.

[3] L.T. Wille (2000) “Simulated annealing and the topology of the potential energy surface of Lennard-Jones clusters” Comp. Mat. Sci. 17, 551-554.

## Metadinámica en Dinamica Molecular (Propuesto por Luis Rincon/Ernesto Medina)

Metadinámica es un algoritmo de dinámica molecular introducido en el 2002 por Liao y Parinello para el estudio de superficies complejas de energía potencial donde se tiene varios mínimos separados por barreras de energía que no son accesibles termicamente[1]. Metadinámica es posiblemente el método de simulación mas usado hoy en día en biofísica de proteinas. Este proyecto consiste en codificar el algoritmo de metadinámica para muestrear un potencial en 1 dimensión de dos mínimos separados por una barrera.

### Objetivos

-Implementar un algoritmo de dinámica molecular en 1-dimensión, usando por ejemplo el algoritmo de Verlet, y probarlo con el potencial V(q). Determinar la probabilidad de saltar de un mínimo del potencial al otro.

-Incluir un término Vbias para promover transiciones entre minimos del potencial y recalcular la din ́amica. Estudiar como cambia la probabilidad de saltar entre los mínimos.

### Actividades

-Familiarizarse con el método de dinámica molecular (explorar la inclusión de un termostato). Este ejemplo puede ser aplicado a los diferentes termostatos usados en dinámica molecular.

-Cuantificar el aumento de la probabilidad de pasar de un mínimo a otro superando la barrera al incluir el término Vbias en el potencial.

-Graficar como cambia el Vbias y el potencial total con el tiempo.

[1] Laio, A.; Parrinello, M. (2002). ”Escaping free-energy minima”. PNAS 99, 12562–12566.

## Algoritmo de Wang-Landau Modelo de Ising 2D propiedades espectrales (Propuesto por Luis Rincon/Ernesto Medina)

El algoritmo Wang-Landau es un algoritmo de Monte Carlo que permite calcu- lar la densidad de estados de un potencial sin tener ningu ́n conocimiento sobre ella. En este proyecto se empleara el algoritmo de Wang-Landau para obtener la densidad de estados de un modelo de Ising en 2D, este fue el problema orig- inalmente tratado por Wang y Landau[1], por lo que se puede comparar los resultados obtenidos con los resultados analiticos.

### Objetivos

-Implementar el algoritmo de Monte-Carlo de Wang-Landau para un potencial de Ising en 2D y obtener la densidad de estados del sistema.

### Actividades

-Familiarizarse con el m ́etodo de Monte Carlo de muestreo de importancia.

- Calcular la densidad de estados para un potencial de Ising en 2D y comparar con los resultados analiticos.

-A partir de la densidad de estados calcular algunas propiedades del sistema.



[1] F. Wang, D.P. Landau,”Efficient, Multiple-Range Random Walk Algorithm to Calculate the Density of States” Phys. Rev. Lett. 86, 2050 (2001)
