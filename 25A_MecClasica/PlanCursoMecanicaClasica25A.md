# Mecánica Clásica Semestre A 2025
## Metodología
Tendremos cuatro ahora de teoría (martes y jueves) y una de problemas el viernes. La hora del viernes será para desarrollar una evaluación contínua. Cada viernes tendrán que presentar problemas que han quedado de los contenidos que hemos desarrollado en la semanas

## Evaluación
Nos organizaremos en grupos de dos estudiantes y cada grupo debe crear un git y según el modelo que se muestra [aquí](https://github.com/nunezluis/TareasCursos20B). Esto es, se debe clonar este repositorio y compartirlos para poder revisar las tareas, asignaciones y proyectos que desarrollemos durante el curso..  
+ **Evaluación continua 30%** Los problemas de los viernes. Deben ser cargados en un Git para evaluarlos y serán sustentados al azar cada viernes.
+ **Tres parciales, 20% c/u** Dos exámenes presenciales estándares (Tienen que aprobar dos)
+ **Una asignaciones 10% c/u** A definir

### Las asignaciones
La asignación es parte fundamental del desarrollo del curso.  Algunas asignaciones será de aplicación de los conceptos y otras de discusión de artículos relacionados con los tópicos que estemos desarrollando.  Las asignaciones de aplicación buscan reforzar los conceptos del curso en la solución de un problema particular, muchas veces con visos de realidad. La discusión de artículos relacionan los conceptos del curso con su utilización específica reportada en la literatura.  Las asignaciones de aplicación serán presentadas de dos maneras: un reporte tipo artículo y una presentación de máximo 6 láminas expuestas en 12m. Para presentar el reporte se podrá utilizar [un modelo](https://www.overleaf.com/read/hfqvjnjwngnp) que hemos utilizado en otras ocasiones.

## Bibliografía
### Libro texto
Seguiremos como libro texto: [Mecánica Clásica (2016)](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/LibrosCapitulos/Cosenza2016PrePrint.pdf) preprint de mi gran amigo [Mario Cosenza](https://scholar.google.co.ve/citations?hl=es&user=wmSC_7EAAAAJ)   


### Referencias adicionales
Como apoyo bibliográfico tendremos
+ Thornton, S. T., & Marion, J. (2019). Classical dynamics of particles and systems Thomson Book/Cole Singapur
+ Gregory, R. D. (2006). Classical mechanics. Cambridge University Press.
+ Las clases de [Leonard Susskind](https://www.youtube.com/watch?v=ApUFtLCrU90&list=PL47F408D36D4CF129) de la universidad de Stanford
+ Las clases de [Guillermo Abramson](https://youtube.com/playlist?list=PLv0-vSkgrxj_Uv65oZV9ilrWZ2xUNbaw8&si=D_6PXE9xoIJEzW2Q) del instituto Balseiro de Argentina
## Programa del Curso

### Semana 1 C1/C2 Leyes de Newton
#### Antes de clase
+ **Estudie**
  + Leyes de Newton y mecánica de una partícula
  + Mecánica de Sistemas de Partículas
+ **Rehaga** los ejemplos 1. (p13), 3.(p14) y 4. (p17)

#### Problemas S1
Los problemas para discutir en clase los pueden encontrar [aquí](https://www.overleaf.com/read/qfmyrjrznngf#e945e4)

#### Materiales
+ [Presentación Semana 1](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Presentaciones/MC_S1DinamicaNewtonia.pdf)

#### Al finalizar
Al finalizar esta semana habremos repasado algunos conceptos de Mecánica que vimos en otros curso:
1. **Las Tres Leyes de Newton**
   + **1ª ley (Inercia):** una partícula sin fuerzas permanece en reposo o MRU.  
   + **2ª ley:** $\vec{F} = \frac{d\vec{p}}{dt} = m\vec{a}$.  
   + **3ª ley:** $\vec{F}{i j} = -\vec{F}_{ji}$ (acción y reacción).

2. **Sistema de Referencia Inercial**
   + Marcos donde una partícula libre sigue una línea recta.  
   + Transformaciones del grupo de Galileo: traslaciones, rotaciones, boosts.

3. **Conceptos Básicos**
   + $\vec{v} = \dot{\vec{r}}, \quad \vec{a} = \dot{\vec{v}}, \quad \vec{p} = m\vec{v}$
   + $\vec{L} = \vec{r} \times \vec{p}, \quad T = \frac{1}{2}mv^2$
   + Trabajo: $W = \int \vec{F} \cdot d\vec{r}$

4. **Fuerzas Conservativas y Energía**
   + Fuerza conservativa: $\vec{F} = -\nabla V(\vec{r})$
   + Conservación de energía: $E = T + V = \text{cte}$ si$ \partial V/\partial t = 0$

5. **Sistemas de Partículas**
   + Centro de masa:$ \vec{R} = \frac{1}{M}\sum_i m_i\vec{r}_i$
   + $\vec{P}_T = M\vec{v}_{cm}, \quad \vec{L}_T = \sum_i \vec{r}_i \times \vec{p}_i$
   + Energía total: $E = T_{cm} + T_{rel} + V_{ext} + V_{int}$


### Semana 2 C3/C4 Coordenadas generalizadas
Esta semana nos toca empezar el curso y comenzamos por definir el espacio de configuraciones. Arrancamos discutiendo el concepto de coordenadas generalizadas y vínculos de un sistema.
#### Antes de clase
+ **Estudie**
  + Coordenadas generalizadas
  + Principios variacionales y ecuaciones de Euler-Lagrange
  + Principios de minima acción
  + Propiedades de las ecuaciones de Euler-Lagrange
  + Ecuaciones de Euler-Lagrange para varios Sistemas
+ **Rehaga** los ejemplos 1. (p35), 3. (p37), 4. (p39), 1. (p49), 3. (p41), 5. (p52), 6. (p54)

#### Problemas S2
<! -->
--Desarrolle los problemas del [240816](https://www.overleaf.com/read/qfmyrjrznngf#e945e4)

#### Materiales
+ Presentaciones
  + [Coordenadas Generalizadas](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Presentaciones/MC_S2CoordGeneralizadas.pdf)
  + [Cálculo Variacional](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Presentaciones/MC_S2T2Variacional.pdf)
  + [Tiempo mínimo: la Braquistocrona y el principio de Fermat](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Presentaciones/MC_S2T3Braquistocrona.pdf)
  + [Principio de Mínima Acción y las ecuaciones de Lagrange](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Presentaciones/MC_S3T4EcLagrange.pdf)
+ Lecturas adicionales
  + Ray, J. R. (1966). Nonholonomic constraints. American Journal of Physics, 34(5), 406-408.
  + Grabowski, J., De León, M., Marrero, J. C., & Martín de Diego, D. (2009). Nonholonomic constraints: a new viewpoint. Journal of mathematical physics, 50(1).
  + Atanackovic, T. M. (1978). The brachistochrone for a material point with an arbitrary initial velocity. American Journal of Physics, 46(12), 1274-1275.
  + Vratanar, B., & Saje, M. (1998). On the analytical solution of the brachistochrone problem in a non-conservative field. International Journal of Non-Linear Mechanics, 33(3), 489–505. doi:10.1016/s0020-7462(97)00026-7
  + Existen algunos sitios web donde se muestran aplicaciones del [cálculo en variaciones](http://www.sc.ehu.es/sbweb/fisica3/dinamica/variaciones/variaciones.html) y varios ejemplos de [Braquistocrona](http://www.sc.ehu.es/sbweb/fisica3/dinamica/variaciones/variaciones_2.html)
  + Igualmente algunos [videos](https://www.youtube.com/watch?v=Cld0p3a43fU)
+ Hay videos interesantes
  + [Lagrangian and Hamiltonian Mechanics](Lagrangian and Hamiltonian Mechanics)
  + [Newtonian/Lagrangian/Hamiltonian mechanics are not equivalent](https://www.youtube.com/watch?v=9VNW7NHwnuM)
  + [La historia bien bonita del principio de mínima acción](https://youtu.be/Q10_srZ-pbs?si=eZM-zbC1_tUHcuz4)

#### Al finalizar la semana
Al finalizar esta semana habremos cubierto los siguientes puntos

* **Sistema Mecánico:** Un sistema con $N$ partículas con $3N$ coordenadas cartesianas $\{ {\bf r}_i = (x_i, y_i, z_i) \}$.
* **Restricciones (Vínculos):** $k$ restricciones independientes $\Rightarrow$ $s = 3N - k$ grados de libertad.

  * **Holónomos:** Relaciones algebraicas $f_j({\bf r}_1, ..., t) = 0$.
  * **Anholónomos:** Involucran velocidades, son no integrables. Ejemplo: rodar sin deslizar.
* **Coordenadas Generalizadas:**

  * Conjunto mínimo $\{q_1(t), ..., q_s(t)\}$ que describe el sistema.
  * Velocidades generalizadas: $\{\dot{q}_1, ..., \dot{q}_s\}$.
* **Transformaciones:** ${\bf r}_i = {\bf r}_i(q_1, ..., q_s, t) \Leftrightarrow q_j = q_j({\bf r}_1, ..., {\bf r}_N, t)$.
* **Objetivo:** Encontrar la función $y(x)$ que hace extremo un funcional
  $I[y] = \int_{x_1}^{x_2} f(y, y', x) \, dx$.
* **Condición de Extremo:** Se introduce una variación $y(x,\alpha) = y(x) + \alpha \eta(x)$ con $\eta(x_1) = \eta(x_2) = 0$, y se impone
  $\left. \frac{dI}{d\alpha} \right|_{\alpha = 0} = 0$.
* **Ecuación de Euler:**
  $\frac{d}{dx} \left( \frac{\partial f}{\partial y'} \right) - \frac{\partial f}{\partial y} = 0$.
* **Con Restricciones:** Se usa el método de multiplicadores de Lagrange para restricciones holónomas $g(x, y) = 0$, modificando el funcional:
  $\tilde{I}[y, \lambda] = \int_{x_1}^{x_2} \left( f + \lambda g \right) dx$.
* **Ejemplos:**
  * Partícula libre sobre una esfera.
  * Péndulo simple como sistema con vínculo circular.
* **La Braquistocrona:** Encontrar la trayectoria $y(x)$ de una partícula, en movimiento sin fricción desde el reposo bajo la acción de la gravedad, que emplea el menor tiempo para ir de $(x_1, y_1)$ a $(x_2, y_2)$.
  * La distancia más corta no siempre es la más rápida; *los principios variacionales* determinan los caminos óptimos.
  * La integral del tiempo es $t_{1 \to 2} = \int_{y_1}^{y_2} \frac{\sqrt{1+(x')^2}}{\sqrt{2gy}} \, dy$.
  * El problema se resuelve mediante la *ecuación de Euler-Lagrange*, que genera una primera integral que relaciona la pendiente con la energía.
  * La trayectoria resultante es un *segmento de una cicloide*, parametrizada por
    $x = R(\theta - \sen \theta), \quad y = R(1 - \cos \theta)$, donde $R$ se determina con las condiciones de frontera.
  * El *principio de Fermat* establece que la luz sigue el *camino del menor tiempo*, lo que lleva a la *ley de Snell* de la refracción:
    $n_1 sen \theta_1 = n_2 \sen \theta_2$.
* **Fundamentos del formalismo lagrangiano:**
  * La acción de un sistema está dada por
    $S = \int_{t_1}^{t_2} L(q_j, \dot{q}_j, t) \, dt$.
  * La trayectoria entre dos estados es aquella que hace *estacionaria* la acción ($\delta S = 0$).
  * El lagrangiano se define como $\mathcal{L} = T - V$, con $T$ energía cinética y $V$ potencial.
  * La *ecuación de Euler-Lagrange*
    $\frac{d}{dt} \left( \frac{\partial \mathcal{L}}{\partial \dot{q}_j} \right) - \frac{\partial \mathcal{L}}{\partial q_j} = 0$ se obtiene considerando variaciones pequeñas.
  * Esta ecuación proporciona las ecuaciones de movimiento:
    * Generalizan las leyes de Newton para *cualquier sistema de coordenadas*.
    * Incorporan restricciones de forma natural.
    * Aplicables a cualquier sistema mecánico: más versátiles que la mecánica newtoniana.



### Clase S3-C5/C6  Leyes de conservación y simetrías
#### En esta semana cubriremos los siguientes temas

## 1. Variables Conjugadas y Coordenadas Cíclicas
- Definición del **momento conjugado** como $p_j = \frac{\partial L}{\partial \dot{q}_j}$.
- Concepto de **coordenada cíclica** (o ignorable): si una coordenada no aparece explícitamente en el lagrangiano, su momento conjugado es una **cantidad conservada**.
- Ejemplos:
  - Partícula sobre un **cono invertido**: conservación del momento angular.
  - Partícula en un **medio viscoso**: cómo el momento conjugado difiere del momento físico.

## 2. Teorema de Noether
- Introducción a las **transformaciones continuas** y su relación con las **leyes de conservación**.
- Ejemplos:
  - Coordenada cíclica y conservación del momento conjugado.
  - Partícula en un **campo gravitatorio** y conservación de una cantidad asociada.

## 3. Simetrías Fundamentales y Cantidades Conservadas
- **Homogeneidad del espacio** → **Conservación del momento lineal**.
- **Isotropía del espacio** → **Conservación del momento angular**.
  - Ejemplo: oscilador armónico bidimensional.
- **Homogeneidad del tiempo** → **Conservación de la energía**.

## 4. Energía y Potenciales Dependientes de las Velocidades
- Consideración de sistemas donde la energía potencial depende de las coordenadas y las velocidades generalizadas.
- Definición del lagrangiano con potenciales dependientes de la velocidad.
- Relación entre la función de energía y la energía mecánica total.

## 5. Fuerza de Lorentz como una Fuerza Generalizada
- Ecuación de la Fuerza de Lorentz:  
  $\mathbf{F} = q \left( \mathbf{E} + \frac{\mathbf{v}}{c} \times \mathbf{B} \right)$
- Reformulación en términos de la función de energía y del lagrangiano.
- Tratamiento de la fuerza de Lorentz dentro del formalismo lagrangiano.

## 6. El Potencial Vector
- Relación con las ecuaciones de Maxwell.
- Expresión de los campos eléctrico y magnético en términos de los potenciales escalar y vectorial:  
  $\mathbf{E} = -\nabla \phi - \frac{1}{c} \frac{\partial \mathbf{A}}{\partial t}$  
  $\mathbf{B} = \nabla \times \mathbf{A}$
- Explicación de cómo la fuerza de Lorentz puede derivarse del potencial vector.

## 7. Simetría de Calibre (Gauge)
- La invariancia de las ecuaciones bajo transformaciones de calibre.
- Cómo el potencial escalar y el potencial vector pueden modificarse sin cambiar los campos eléctricos y magnéticos.
- Importancia en teorías más avanzadas de electrodinámica.

## 8. Teorema de Helmholtz
- Descomposición de campos vectoriales en términos de sus componentes irrotacionales y solenoidales.
- Aplicación del teorema a la formulación del campo electromagnético en términos de los potenciales escalar y vectorial.

+ **Rehaga** los ejemplos 2., 3  (p76), 1. (p79), 1. (p81)

#### Materiales
+ Presentación [El teorema de Noether y leyes de conservación](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Presentaciones/MC_S3T1Noether.pdf
)

+ Presentación [Fuerzas generalizadas y descripción de una partícula moviéndose en un campo electromagnético](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Presentaciones/MC_S3T2ParticulaCampoElectromagnetico.pdf)
+ Sitio web de [Lagrangian Mechanics for beginners](https://profoundphysics.com/lagrangian-mechanics-for-beginners/)
+ Videos
  + [Emmy Noether CSIC](https://www.youtube.com/watch?v=N4to1dp6_lo)
  + [Emmy Noether Fermilab](https://www.youtube.com/watch?v=Rqfj7n5aSwY)



#### Problemas S3
<!-- Desarrolle los problemas del [240823](https://www.overleaf.com/read/qfmyrjrznngf#e945e4)-->

#### **Resumen de Conceptos Clave**  

| **Concepto** | **Explicación** | **Ejemplo** |  
|-------------|-----------------|------------|  
| **Momento Conjugado** | Definido como$p_j = \frac{\partial L}{\partial \dot{q}_j}$| Usado en mecánica Hamiltoniana |  
| **Coordenadas Cíclicas** | Una coordenada$q_i$es cíclica si$\frac{\partial L}{\partial q_i} = 0$, lo que implica conservación de$p_i$. | Coordenada angular$\phi$en problemas de fuerza central |  
| **Teorema de Noether** | Cada simetría corresponde a una cantidad conservada. | Energía, momento lineal, momento angular |  
| **Homogeneidad del Espacio** | Conservación del momento lineal | Partícula libre en el espacio |  
| **Isotropía del Espacio** | Conservación del momento angular | Órbitas planetarias |  
| **Homogeneidad del Tiempo** | Conservación de la energía | Oscilador armónico simple |  



### Clase S4-C7/C8 Sistemas Integrables y el problema de dos cuerpos
#### En esta semana cubriremos los siguientes temas
Primero exploraemos los conceptos de **sistemas integrables**, **superintegrables**, **no integrables** y sus implicaciones en la dinámica de sistemas físicos.  Los **Sistemas integrables** permiten una evolución predecible con soluciones exactas. Los **Sistemas no integrables** pueden mostrar **caos dinámico** y la **superintegrabilidad** es una propiedad especial de ciertos sistemas con más constantes de movimiento que grados de libertad.

En segundo lugar analizaremos el **problema de dos cuerpos** que permite la reducción del problema a una forma equivalente unidimensional más simple y que facilita la resolución de las ecuaciones de movimiento. El problema de dos cuerpos se **reduce** a un problema de **una partícula** de **masa reducida**$\mu$en un potencial central$V(r)$. Se conservan la **energía** y el **momento angular**, permitiendo la resolución completa del problema.  Este análisis es clave en **mecánica celeste**, describiendo órbitas planetarias y otros sistemas gravitacionales.

##### **1. Integrales del Movimiento**
   - Definición de **cantidades conservadas**:$I_k(q_j, \dot{q}_j) = C_k$, con$C_k$constante.
   - Un sistema con$s$grados de libertad es **integrable** si tiene$s$cantidades conservadas ($n = s$).
   - Si un sistema posee **más** cantidades conservadas que grados de libertad ($n > s$), se denomina **superintegrable**.
   - Si un sistema tiene **menos** de$s$cantidades conservadas ($n < s$), es **no integrable**.

##### **2. Sistemas Integrables**
   - Ejemplos de **sistemas integrables**:
     - **Oscilador armónico simple** ($s = 1, n = 1$).
     - **Péndulo simple** ($s = 1, n = 1$).
     - **Partícula sobre un cono** ($s = 2, n = 2$, conserva momento angular y energía).
   - Ejemplos de **sistemas no integrables**:
     - **Péndulo doble** ($s = 2, n = 1$).
     - **Péndulo de resorte** ($s = 2, n = 1$).
     - **Péndulo paramétrico con longitud variable** ($s = 1, n = 0$).
   - **Ejemplo de sistema superintegrable**: **Partícula libre** ($s = 3, n = 4$, conserva energía y momentos lineales en cada dirección).

##### **3. Integrabilidad**
   - Un sistema unidimensional con coordenada$q$tiene un Lagrangiano:
   $L = T - V_{\text{ef}} = \frac{1}{2} a \dot{q}^2 - V_{\text{ef}}(q)$
   - Se conserva la **energía total**$E$.
   - El tiempo puede expresarse como una integral:
   $$t(q) = \sqrt{\frac{a}{2}} \int \frac{dq}{\sqrt{E - V_{\text{ef}}(q)}}$$
   - **Condición de integrabilidad**: permite calcular períodos de oscilación en sistemas oscilatorios.

##### **4. Ejemplo: Movimiento en un Potencial$V(x)$**
   - Un sistema con Lagrangiano: $L=\frac{1}{2}m\dot{x}^2 - V(x)$
   - La ecuación de movimiento: $m \ddot{x} = -\frac{dV}{dx}$
   - **Puntos de equilibrio**: Se encuentran en$x_0$cuando$\frac{dV}{dx} = 0$.
      - **Estables**: Si $\frac{d^2V}{dx^2} > 0$.
      - **Inestables**: Si $\frac{d^2V}{dx^2} < 0$.
   - **Cálculo del período**:$\tau_p(E) = 2 \sqrt{\frac{m}{2}} \int_{x_1}^{x_2} \frac{dx}{\sqrt{E - V(x)}}$

##### **5. El Problema de Dos Cuerpos**
   - Considera dos partículas$m_1$y$m_2$en posiciones$\mathbf{r}_1$y$\mathbf{r}_2$, interactuando mediante un potencial dependiente de la posición relativa:$V(\mathbf{r}_1, \mathbf{r}_2) = V(\mathbf{r}_2 - \mathbf{r}_1)$
   - El sistema tiene **seis grados de libertad**: tres para cada partícula.
        - Definición del **centro de masa**:$\mathbf{R} = \frac{m_1 \mathbf{r}_1 + m_2 \mathbf{r}_2}{m_1 + m_2}$
        - Definición de la **posición relativa**: $\mathbf{r} = \mathbf{r}_2 - \mathbf{r}_1$

##### **6. Grados de Libertad y Reducción del Problema**
  - Se expresa la **energía cinética** en términos del movimiento del centro de masa y el movimiento relativo: $T = \frac{1}{2} (m_1 + m_2) \dot{\mathbf{R}}^2 + \frac{1}{2} \mu \dot{\mathbf{r}}^2$
  - Se define la **masa reducida** del sistema:$\mu = \frac{m_1 m_2}{m_1 + m_2}$
    - El problema se divide en dos partes:
      1. Movimiento del **centro de masa**, que se mueve con velocidad constante.
      2. Movimiento relativo, equivalente al de una partícula de **masa reducida** $\mu$en un **potencial efectivo** $V(r)$.

##### **7. La Equivalencia Unidimensional**
  - Se demuestra que el problema de dos cuerpos se reduce a una **partícula ficticia** de masa$ \mu$ que se mueve en un **potencial central** $V(r)$.
  - La conservación del **momento lineal** implica que el centro de masa se mueve con velocidad constante, permitiendo ignorar esta parte en el análisis del movimiento relativo.

##### **8. Potenciales Centrales y Conservación del Momento Angular**
  - Para un **potencial central** $V(r)$, la fuerza es:$\mathbf{F} = -\nabla V(r) = -\frac{dV}{dr} \hat{\mathbf{r}}$
  - Se conserva el **momento angular**: $\mathbf{L} = \mathbf{r} \times \mathbf{p} = \text{cte}$
  - Esto implica que el movimiento es **bidimensional**, restringido a un **plano** perpendicular al vector $\mathbf{L}$.

##### **9. Resolución en Coordenadas Polares**
  - Se describen las ecuaciones de movimiento en **coordenadas polares** $(r, \theta)$:$L = \frac{1}{2} \mu (\dot{r}^2 + r^2 \dot{\theta}^2) - V(r)$
  - Como $\theta$ es **cíclica**, el momento angular se conserva:$L = \mu r^2 \dot{\theta} = \text{cte}$
  - La energía total también se conserva: $E = \frac{1}{2} \mu (\dot{r}^2 + r^2 \dot{\theta}^2) + V(r) = \text{cte}$

##### **10. El Sistema es Integrable**
  - Existen **seis cantidades conservadas**, lo que demuestra que el sistema es **integrable**:
    1. Las **tres componentes** de la velocidad del centro de masa.
    2. La **dirección del momento angular** $\mathbf{L}$.
    3. La **magnitud del momento angular** $L = \mu r^2 \dot{\theta}$.
    4. La **energía total** $E$.
      - La conservación de $E$ y $L$ permite reducir el problema a una **ecuación diferencial unidimensional** en términos de $r$.

##### **11. Integración del Sistema**
  - La ecuación de la energía se reescribe en términos de $r$: $\dot{r} = \sqrt{\frac{2}{\mu} \left( E - V(r) - \frac{L^2}{2\mu r^2} \right)}$
  - Integrando, se obtiene el tiempo en función del radio: $t(r) = \sqrt{\frac{\mu}{2}} \int_{r_0}^{r} \frac{dr'}{\sqrt{E - V(r') - \frac{L^2}{2\mu r'^2}}}$
  - La ecuación para la trayectoria angular $\theta(r)$ es: $\theta(r) = L \sqrt{\frac{2}{\mu}} \int_{r_0}^{r} \frac{dr'}{r'^2 \sqrt{E - V(r') - \frac{L^2}{2\mu r'^2}}} + \theta_0$
  - Las **constantes de integración** ( $E, L, r_0, \theta_0$ ) definen completamente la trayectoria.


+ **Rehaga** los ejemplos 1. (p97), 2. (p98), 3. (p99)

#### Problemas S3
<!--Desarrolle los problemas del [240823](https://www.overleaf.com/read/qfmyrjrznngf#e945e4)-->


#### Materiales
+ Presentación de [Sistemas integrables](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Presentaciones/MC_S4T1Integrables.pdf)
+ Presentación del [problema de dos cuerpos](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Presentaciones/MC_S4T2Problema2Cuerpos.pdf)

### Clase S5-C9/C10 Fuerzas Centrales
####Antes de clase
+ **Estudie**
  + Problema de dos cuerpos
  + Potencial efectivo

#### Materiales
+ Presentación del [Potencial efectivo](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Presentaciones/MC_S5T2PotencialEfectivo.pdf)
+ Presentación [Ecuaciones diferenciales generalidades](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Presentaciones/MC_S5EcDifOrd.pdf)
+ Presentación [Solución numérica de ecuaciones diferenciales ordinarias](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Presentaciones/MC_S5EcDifNumericas.pdf)
+ [Diez clases de soluciones computacionales](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/LibrosCapitulos/DiezClasesComputacionales.pdf)


### Clase S6-C11/C12  
+ **Estudie**
  + Ecuación diferencial de la órbita
  + Fuerza gravitacional y problema de Kepler
  + Leyes de Kepler
  + Transferencia de Hohmann y Asistencia gravitacional
  + Estabilidad y precesion de órbitas
+ **Rehaga** los ejemplos 1. pg 114; 1. pg 131; 2. pg 132; 1. y 2. pg 137

#### Materiales
+ [Presentación del Problema de Kepler](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Presentaciones/MC_S6T1ProbKepler.pdf)
+ [Presentación del Leyes de Kepler](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Presentaciones/MC_S6T2LeyesKepler.pdf)
+ [Presentación de Transferencia de Hohmann y asistencia gravitacional](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Presentaciones/MC_S6T3Hollman.pdf) Adicionalmente consultar [Transferencia Hohmann](https://en.wikipedia.org/wiki/Hohmann_transfer_orbit) y [Asistencia Gravitacional](https://en.wikipedia.org/wiki/Gravity_assist) en wikipedia. En este tema hay un par de buenas referencias
  + Van Allen, J. A. (2003). Gravitational assist in celestial mechanics—a tutorial. American Journal of Physics, 71(5), 448-451.
  + Berg, P. (2023). The fundamental concepts of the gravity-assist manoeuvre. European Journal of Physics, 44(2), 025002.
+ [Presentación de perturbaciones y precesión de órbitas](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Presentaciones/MC_S6T4Perturbaciones.pdf)

### Clase S7-C13/C14
+ **Estudie**
+ El vector de Laplace-Runge-Lenz
+ Dispersión en campo de fuerza central
+ Sección eficaz de dispersión

#### Materiales
##### Presentaciones
+ [Vector Laplace-Runge-Lenz](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Presentaciones/MC_S7T1LAPLACERungeLenz.pdf)
+ [Dispersión](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Presentaciones/MC_S7T2Scatering.pdf)

##### Videos
+ [dispersion hiperbolica](https://www.youtube.com/watch?v=HjIarTx5itY)
+ [Oumuamua](https://science.nasa.gov/solar-system/comets/oumuamua/)
+ [Borisov](https://science.nasa.gov/solar-system/comets/2i-borisov/)

### Contenidos de esta semana
En esta semana cubrimos

- Para un potencial central $V(r) = -\frac{k}{r}$, cuyas órbitas son secciones cónicas (elipses, parábolas, hipérbolas), se define el **vector de Laplace-Runge-Lenz** como  
  $\mathbf{A} = \mathbf{p} \times \mathbf{L} - \mu k \hat{\mathbf{r}}$.

- Se demostró que para fuerzas del tipo $\mathbf{f}(r) = \frac{k}{r^2}\hat{\mathbf{r}}$, $\mathbf{A}$ es una cantidad conservada dinámica, es decir,  
  $\frac{d\mathbf{A}}{dt} = 0$, no derivada de una simetría Noetheriana.

- $\mathbf{A}$ apunta en la dirección del perihelio y su magnitud está relacionada con la energía $\mathcal{E}$, la excentricidad $e$, y el momento angular $L$:  
  $|\mathbf{A}| = \sqrt{2mE L^2 + m^2 k^2} = m k e$.

- Estudiamos las trayectorias abiertas para energías $E > 0$ en potenciales centrales $V(r)$.

- Definimos el **ángulo de dispersión**, $\chi$, como la diferencia angular entre las direcciones de entrada y salida de la partícula.

- El **parámetro de impacto** $b$ (distancia perpendicular desde la línea de movimiento inicial al centro del potencial) y la energía $\mathcal{E}$ definen completamente la trayectoria en la dispersión clásica.

- Consideramos la **dispersión hiperbólica** en potenciales atractivos y repulsivos:
  - Para $V(r) = -\frac{k}{r}$, la trayectoria con $E > 0$ es una **hipérbola**:  
    $r(\theta) = \frac{q}{1 + e \cos \theta}$ con $e > 1$.  
    El ángulo de dispersión está dado por $\sin\left(\frac{\chi}{2}\right) = \frac{1}{e}$.  
    Ejemplo: asteroides como *Oumuamua* y *Borisov*.
  - Para $V(r) = +\frac{k}{r}$ (potencial **repulsivo**),  
    $\chi = \pi - 2\theta_{\text{max}}$ y también $\sin\left(\frac{\chi}{2}\right) = \frac{1}{e}$.

- Determinamos $\chi$ por el **método geométrico**, a partir de la integral sobre el movimiento radial:  
  $\theta_{\text{max}} = b \int_0^{u_m} \frac{du}{\sqrt{1 - \frac{V(u)}{E} - b^2 u^2}} \,, \quad u = 1/r$.

- El **problema de Kepler** es **superintegrable**, tiene más constantes de movimiento que grados de libertad:  
  $\mathcal{E}$, $\mathbf{L}$, $\mathbf{A}$. Esto garantiza órbitas cerradas (teorema de Bertrand).

- Los **Paréntesis de Poisson** del problema de Kepler cumplen:  
  $\{L_i, L_j\} = \varepsilon_{ijk} L_k$,  
  $\{L_i, A_j\} = \varepsilon_{ijk} A_k$,  
  $\{A_i, A_j\} = -2m\mathcal{E} \varepsilon_{ijk} L_k$  
  lo cual define una estructura de álgebras tipo $SO(4)$ (cuando $\mathcal{E} < 0$).

- Definimos la **sección eficaz de dispersión**, $\sigma(\chi) d\Omega$, como la fracción de partículas dispersadas dentro de un ángulo sólido diferencial:  
  $d\Omega = 2\pi \sin \chi \, d\chi$,  
  $\sigma(\chi) = \frac{b}{\sin \chi} \left| \frac{db}{d\chi} \right|$.

- Recordamos el **experimento de Rutherford**:
  - Dispersión de partículas $\alpha$ en un potencial repulsivo $V(r) = \frac{2Ze^2}{r}$.
  - Se obtiene:  
    $\cot\left(\frac{\chi}{2}\right) = \frac{2bE}{k}$
  - Y la sección eficaz:  
    $\sigma(\chi) = \left( \frac{k}{4E} \right)^2 \frac{1}{\sin^4(\chi/2)}$

- En general, los **procesos de dispersión**:
  - Revelan información sobre la **naturaleza del potencial**.
  - Su tratamiento **geométrico** permite conectar la trayectoria con magnitudes medibles como $\chi$ y $\sigma(\chi)$.
  - Su formulación se **generaliza a colisiones relativistas y cuánticas**.

### Clase S8-C15/C16

[Pequeñas oscilaciones](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Presentaciones/MC_S8T1Oscilaciones.pdf)

### Resumen de Contenidos
Esta semana cubrimos estos Contenidos
- **Oscilaciones en 1D:**
  - Desarrollamos $V_\text{ef}(q)$ en serie de Taylor alrededor del punto $q_0$.
  - Despreciando órdenes superiores:  
    $V_\text{ef}(q) \approx V(q_0) + \frac{1}{2} K \eta^2$, con $\eta = q - q_0$
  - Ecuación de movimiento:  
    $\ddot{\eta} + \omega^2 \eta = 0$, con  
    $\omega^2 = \frac{K}{c} = \frac{1}{c} \left. \frac{d^2 V}{d q^2} \right|_{q_0}$

- **Péndulo Simple:**
  - Para ángulos pequeños: $\cos \theta \approx 1 - \theta^2/2$ y  
    $\mathcal{L} \approx \frac{1}{2} m\ell^2 \dot{\theta}^2 - \frac{1}{2} mg\ell \theta^2$
  - Frecuencia: $\omega = \sqrt{g/\ell}$

- **Oscilaciones con Varios Grados de Libertad:**
  - Expandir el potencial y la energía cinética cerca del equilibrio:  
    $V \approx \frac{1}{2} \sum_{ij} V_{ij} \eta_i \eta_j$,  
    $T \approx \frac{1}{2} \sum_{ij} T_{ij} \dot{\eta}_i \dot{\eta}_j$
  - Lagrangiano linealizado:  
    $\mathcal{L} = \frac{1}{2} \sum_{ij} (T_{ij} \dot{\eta}_i \dot{\eta}_j - V_{ij} \eta_i \eta_j)$
  - Ecuación de movimiento para $\eta_k$:  
    $\sum_j \left( T_{k j} \ddot{\eta}_j + V_{k j} \eta_j \right) = 0$
  - Para solución del tipo $\eta_j(t) = a_j e^{i \omega t}$:  
    $\sum_n \left( V_{mn} - \omega^2 T_{mn} \right) a_n = 0$
  - Existe solución no trivial $\eta_j(t) \neq 0$ si $a_j \neq 0 \ \forall j$ cuando  
    $\det \left| V_{ij} - \omega^2 T_{ij} \right| = 0$
  - Las frecuencias $\omega_i$ deben ser reales y están asociadas con las amplitudes $a^j_i$

- **Péndulo Doble:**  
  Sistema con dos coordenadas generalizadas $\theta_1, \theta_2$
- Formulación general de pequeñas oscilaciones:  
  $\sum_j (T_{ij} \ddot{\eta}_j + V_{ij} \eta_j) = 0$
- Para soluciones $\eta_j(t) = a_j e^{i\omega t}$:  
  $\sum_j (V_{ij} - \omega^2 T_{ij}) a_j = 0$
- Soluciones no triviales cuando  
  $\det |V_{ij} - \omega^2 T_{ij}| = 0$
- Se obtienen los autovalores $\omega_n$ y autovectores $a_j(\omega_n)$
- Las soluciones generales son:  
  $\eta_j(t) = \sum_n a_j(\omega_n) \xi_n(t), \quad \ddot{\xi}_n + \omega_n^2 \xi_n = 0$

- **Dos Osciladores Acoplados:**
  - $T = \frac{1}{2}m(\dot{\eta}_1^2 + \dot{\eta}_2^2)$,  
    $V = \frac{1}{2}k[\eta_1^2 + (\eta_2 - \eta_1)^2 + \eta_2^2]$
  - Frecuencias normales:  
    $\omega_1 = \sqrt{\frac{k}{m}}, \quad \omega_2 = \sqrt{\frac{3k}{m}}$

- **La molécula de CO\(_2\):**
  - Sistema lineal O–C–O: 3 masas, 2 resortes.
  - Tres modos normales:
    - $\omega_1 = 0$: traslación
    - $\omega_2 = \sqrt{\frac{k}{m}}$: O–C en oposición de fase
    - $\omega_3 = \sqrt{\frac{k}{m}(1 + 2m/M)}$: O–C en fase. 


### Clase S9-C17/C18

### Clase S10-C19/C20  
+ **Estudie**
  + Oscilaciones pequeñas en una dimensión
  + Oscilaciones con varios grados de libertad
  + Modos normales

+ **Rehaga los ejemplos resueltos**
  + Oscilaciones con varios grados de libertad
  + Modos normales

#### Materiales
##### Presentaciones
+ [Pequeñas oscilaciones](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Presentaciones/MC_S8T1Oscilaciones.pdf)
+ [Modos normales de oscilación](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Presentaciones/MC_S8T2ModosNormales.pdf)

##### Videos
+ [Modos normales de oscilación y neutrinos](https://www.youtube.com/watch?v=YqVF3NSc5xg)
+ [Oscilación de la molécula CO2](https://www.youtube.com/watch?v=K6dSM_nDee8)

### Clase S11-C21/C22

La semana 11 del sólido rígido
+ [generalidades del sólido rígido, ángulos y velocidades de Euler](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Presentaciones/MC_S11T1SolidoDef.pdf)
+ [La energía cinética y el tensor de inercia](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Presentaciones/MC_S11T2SolidoEnergCin.pdf)
+ [Momento angular de un cuerpo rígido](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Presentaciones/MC_S11T3SolidoMomAngular.pdf)

### Clase S12-C23/C24  

+ [El Trompo de Lagrange](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Presentaciones/MC_S11T4ElTrompo.pdf)
+ [Dos Monedas que rotan sin deslizar](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Presentaciones/MC_S12T1LaMoneda.pdf)
+ [Las ecuaciones de Euler](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Preparar/MecanicaClasica/MecClasSem12/MC_S12T2EcEuler.pdf)
+ [Navegación Inercial y Efecto Coriolis](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Preparar/MecanicaClasica/MecClasSem12/MC_S12T3Coriolis.pdf)

### Clase S13-C25/C26

+ [Dinamica Hamiltoniana](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Presentaciones/MC_S13T1EcHamilton.pdf)
+ [Transformaciones Canónicas](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Presentaciones/MC_S13T2TransfCanonicas.pdf)
+ [Paréntesis de Poisson](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Presentaciones/MC_S13T3ParentesisPoisson.pdf)
### Clase S14-C27/C28
[Simetrías y Cantidades Conservadas](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Presentaciones/MC_S14T1AplicCanonicas.pdf)

### Clase S15-C29/30

### Clase S16-C31/32

## La evaluación
[Aquí la lista del curso](https://github.com/nunezluis/MisCursos/blob/main/25A_MecClasica/CalificaMecClas25A.md) avanza la evaluación de este curso
[Aquí los grupos del curso](https://github.com/nunezluis/MisCursos/blob/main/25A_MecClasica/GruposMecClasica25A.md) avanza la evaluación de este curso
