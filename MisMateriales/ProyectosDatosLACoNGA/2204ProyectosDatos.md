# Proyectos Ciencia de Datos

A continuación enumeramos algunos proyectos para el cursos de ciencia de Datos de la cohorte 2022

## Rocas navegantes del Valle de la Muerte (Propuesto L. Núñez)
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
