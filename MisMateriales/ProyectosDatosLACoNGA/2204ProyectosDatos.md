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

## El clima en Pampa Amarilla a través de los datos del Observatorio Pierre auger

Los efectos de la variación de las variables atmosféricas en el desarrollo de las cascadas de rayos cósmicos pueden entenderse en términos de cambios locales en los parámetros atmosféricos. Los cambios en la presión atmosférica provocan cambios en las tasas de las cascadas registradas. Cuando la presión aumenta, hay más material a traves del cual fluyen los rayos cósmicos, por lo que la tasa detectada disminuye. A presión constante, si la temperatura aumenta, las partículas de la cascada se dispersan más al aumentar la distancia recorrida entre cada choque. 

Las condiciones atmosféricas en el Observatorio Pierre Auger registran continuamente en cinco estaciones meteorológicas situadas en la Instalación Láser Central (CLF) (centro del arreglo de detectores de de superficie) y en cuatro puntos de la periferia del arreglo. Las estaciones meteorológicas están equipadas con sensores de temperatura, presión, humedad y velocidad del viento que registran datos cada 5 o 10 minutos. Las incertidumbres estadísticas de estos datos son de 0,2C para la temperatura, 2% para la humedad relativa, 0,1 m/s para la velocidad del viento y 0,2 hPa para la presión.  
