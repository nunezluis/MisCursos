
# Diecisiete retos de Mecánica Clásica para equipos de estudiantes

## Resolución de problemas complejos con asistencia de IA

### Propósito
Los retos de esta actividad no son ejercicios convencionales con una única respuesta conocida. Cada problema representa una situación física suficientemente compleja para que sea necesario:
* formular un modelo;
* decidir qué efectos incluir y cuáles despreciar;
* realizar aproximaciones;
* obtener o producir datos;
* resolver analítica y/o numéricamente las ecuaciones;
* contrastar resultados con observaciones, experimentos, invariantes o casos límite;
* y analizar críticamente las respuestas proporcionadas por asistentes de inteligencia artificial.

**Dos equipos pueden obtener resultados diferentes y ambos estar correctos**, siempre que sus hipótesis estén claramente establecidas, sus métodos sean consistentes y sus conclusiones estén respaldadas por verificaciones independientes.

**El objetivo del reto no es conseguir que la IA resuelva un problema difícil. El objetivo es utilizar la IA para investigar un sistema físico cuya respuesta depende de las hipótesis, y demostrar mediante Mecánica Clásica qué partes de la solución pueden ser confiables.**

## 1. Organización del trabajo

Los retos serán desarrollados por equipos de **dos o tres estudiantes**.

Se recomienda distribuir inicialmente tres funciones:

1. **Modelado y análisis:** formulación física, coordenadas generalizadas, lagrangiano/hamiltoniano, aproximaciones, simetrías y cantidades conservadas.
2. **Cálculo, simulación y datos:** integración numérica, análisis de datos, visualización y control de errores.
3. **Validación y auditoría de IA:** comprobación independiente de resultados, análisis dimensional, límites, comparación con experimentos o datos no utilizados y revisión crítica de las respuestas de IA.

En equipos de dos personas, la tercera función será compartida. Los roles deberán intercambiarse durante el desarrollo del proyecto.


## 2. Uso del asistente de IA

El uso de asistentes de IA está **permitido y esperado**. Pueden emplearse para:

* explorar formulaciones alternativas;
* revisar derivaciones;
* realizar álgebra intermedia;
* proponer aproximaciones;
* generar o depurar código;
* localizar posibles fuentes de datos;
* interpretar resultados;
* sugerir pruebas de consistencia.

Sin embargo, **una respuesta de IA no constituye una verificación**.

Toda conclusión importante debe estar respaldada por al menos uno de los siguientes mecanismos:

* derivación independiente;
* conservación de energía, momento u otro invariante;
* análisis dimensional;
* comportamiento en un límite conocido;
* convergencia numérica;
* comparación con datos no utilizados en el ajuste;
* experimento propio;
* comparación entre dos métodos independientes.

El equipo deberá mantener una **bitácora de IA** y seguir [la metodología 4D](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/Presentaciones/MC_S01_InteraccionHumanoIA.pdf) que se discutió al comienzo del curso.


# I. Ecuaciones de movimiento, vínculos y sistemas de masa variable

Estos problemas se relacionan principalmente con ecuaciones de Newton y Lagrange, coordenadas generalizadas, vínculos, sistemas con masa variable y balance de energía y momento.

---

## Reto I.1 — El péndulo que se vacía

**Tema del curso:** sistemas de masa variable; péndulo simple y físico; coordenadas generalizadas; aproximaciones adiabáticas.

### Problema

Una botella parcialmente llena de agua está suspendida mediante una cuerda y oscila como un péndulo mientras pierde agua a través de un orificio.

La pregunta central es:

> **¿Cómo evolucionan el período y la amplitud de las oscilaciones mientras la botella se vacía?**

El equipo deberá construir un modelo que permita comparar sus predicciones con mediciones realizadas sobre una botella real.

### Posibles rutas de trabajo

El equipo deberá decidir, entre otras posibilidades:

* modelar la botella como masa puntual o como péndulo físico;
* considerar o no el desplazamiento del centro de masa durante el vaciado;
* representar el gasto como constante o utilizar una ley tipo Torricelli;
* considerar que el agua sale con o sin velocidad relativa respecto de la botella;
* incluir o ignorar el movimiento interno del líquido;
* estudiar un vaciado lento como proceso adiabático;
* explorar qué ocurre cuando el tiempo de vaciado se hace comparable con el período;
* analizar si la modulación del vaciado puede producir efectos paramétricos.

### Trabajo experimental sugerido

Medir simultáneamente:

* nivel de agua;
* período;
* amplitud;
* tiempo de vaciado.

Repetir el experimento utilizando diferentes diámetros del orificio.

---

## Reto I.2 — ¿Energía o momento? Dos cadenas, dos problemas

**Tema del curso:** masa variable; conservación de energía; balance de momento; procesos disipativos.

### Problema

Considere dos experimentos.

**A. Cadena plegada.** Una cadena cuelga doblada por la mitad. Un extremo permanece sujeto y el otro se libera.

**B. Cadena sobre una balanza.** Una cadena cae verticalmente y se deposita progresivamente sobre el plato de una balanza.

La pregunta es:

> **¿Qué principio debe utilizarse para cerrar correctamente las ecuaciones de movimiento en cada proceso?**

### Posibles rutas de trabajo

Para **cada configuración**, construir al menos dos modelos:

* un modelo basado principalmente en conservación de energía;
* un modelo basado en flujo de momento;
* una versión que incluya disipación durante la transferencia de eslabones;
* una versión que incorpore radio de curvatura finito, rigidez o fricción interna.

Comparar las predicciones cualitativas y cuantitativas.

### Experimentos sugeridos

Para la cadena plegada:

* registrar el movimiento con video;
* comparar la punta de la cadena con un objeto en caída libre liberado simultáneamente.

Para la cadena sobre una balanza:

* medir la fuerza durante el depósito;
* caracterizar previamente la respuesta temporal de la balanza.

El objetivo no es simplemente escoger una ecuación, sino explicar **qué ocurre físicamente en la región donde la masa entra o sale de la parte del sistema que se está modelando**.

---

## Reto I.3 — La fuente de cadena

**Tema del curso:** cuerdas y cadenas móviles; flujo estacionario de masa; tensión; balance de momento.

### Problema

Una cadena de bolas colocada en un recipiente elevado comienza a caer cuando uno de sus extremos se deja salir por el borde. Bajo determinadas condiciones, la cadena forma un arco que puede elevarse sobre el borde del recipiente.

> **¿Qué determina la altura del arco y qué mecanismo produce el fenómeno?**

### Posibles rutas de trabajo

Contrastar diferentes hipótesis:

* efectos asociados con la inercia y la curvatura de una cadena en movimiento;
* reacción mecánica del montón de cadena;
* efectos debidos a la rigidez discreta de los eslabones;
* influencia del borde del recipiente;
* disipación durante la extracción de la cadena.

Variar experimentalmente:

* tipo de cadena;
* altura de caída;
* geometría del recipiente;
* material sobre el cual reposa la cadena;
* tamaño y rigidez de los eslabones.

### Pregunta clave

Diseñar **un experimento capaz de distinguir entre dos explicaciones rivales**, en lugar de limitarse a comprobar que el efecto existe.

---

# II. Conservación, movimiento unidimensional, estabilidad y bifurcaciones

---

## Reto II.1 — El aro desbalanceado

**Tema del curso:** movimiento unidimensional; energía; vínculos holónomos; estabilidad; potencial efectivo; bifurcaciones.

### Problema

Un aro de masa \(M\) y radio \(R\) contiene una masa adicional fija en una posición de su borde. Cuando rueda, su velocidad puede presentar fuertes variaciones durante cada revolución.

Investigar:

1. ¿qué produce esas variaciones?
2. ¿cómo dependen de la distribución de masa?
3. ¿qué cambia si el aro rueda sobre un plano inclinado?

### Posibles rutas de trabajo

Explorar separadamente:

* modulación continua de la velocidad debido a la posición del centro de masa;
* pérdida de contacto con el suelo;
* transición entre rodadura y deslizamiento;
* diferentes distribuciones de masa con el mismo centro de masa;
* diferentes momentos de inercia;
* movimiento sobre un plano horizontal;
* movimiento sobre pendientes de diferentes ángulos.

### Preguntas adicionales

* ¿Puede existir un equilibrio sobre un plano inclinado?
* ¿Existe un ángulo crítico?
* ¿Qué ocurre con los equilibrios al variar continuamente la inclinación?
* ¿Pueden dos ruedas con distribuciones de masa muy diferentes presentar la misma dinámica?

Construir un diagrama de regímenes en función de los parámetros escogidos.

---

# III. Fuerzas centrales y dinámica orbital

Este bloque aplica el problema de dos cuerpos, el potencial efectivo, el problema de Kepler, dispersión, perturbaciones gravitacionales y sistemas de varios cuerpos a datos astronómicos reales.

---

## Reto III.2 — Los troyanos de Júpiter

**Tema del curso:** problema restringido de tres cuerpos; sistemas rotantes; puntos de equilibrio; estabilidad; pequeñas oscilaciones.

### Problema

Los puntos \(L_4\) y \(L_5\) del problema restringido circular de tres cuerpos pueden estudiarse mediante pequeñas perturbaciones alrededor del equilibrio.

Sin embargo, los asteroides troyanos reales no permanecen infinitesimalmente cerca de esos puntos.

> **¿Hasta dónde puede utilizarse el análisis lineal para describir los troyanos reales?**

### Posibles rutas de trabajo

Construir sucesivamente modelos de complejidad creciente:

* problema circular plano;
* problema elíptico;
* movimiento tridimensional;
* inclusión de Saturno;
* inclusión de otros planetas.

Utilizar condiciones iniciales correspondientes a troyanos reales y estudiar:

* amplitud de libración;
* período de libración;
* estabilidad;
* tiempo de permanencia en la región resonante.

### Datos

Utilizar una muestra de elementos orbitales reales de asteroides troyanos.

Comparar las propiedades de la población simulada con las de la población observada.

---

## Reto III.2 — Mercurio 3:2 e Hiperión caótico

**Tema del curso:** movimiento orbital; resonancias; dinámica no lineal; disipación.

### Problema

Mercurio rota aproximadamente tres veces por cada dos revoluciones alrededor del Sol, mientras que Hiperión presenta una rotación mucho más irregular.

> **¿Qué determina si un cuerpo queda atrapado en una resonancia espín–órbita o evoluciona hacia un régimen caótico?**

### Posibles rutas de trabajo

Comparar:

* diferentes modelos de disipación mareal;
* órbita con excentricidad constante o variable;
* distintas velocidades iniciales de rotación;
* diferentes grados de asfericidad.

Construir un modelo del ángulo resonante y localizar diferentes resonancias.

Para estudiar caos pueden emplearse:

* integración directa;
* secciones de Poincaré;
* exponentes de Lyapunov;
* criterio de solapamiento de resonancias.

Comparar al menos tres cuerpos con propiedades distintas, por ejemplo:

* Mercurio;
* Luna;
* Hiperión.

---

## Reto III.3 — Diseñar una asistencia gravitacional

**Tema del curso:** problema de dos cuerpos; dispersión por una fuerza central; energía y momento angular; aproximaciones.

### Problema

Diseñar un encuentro cercano con Júpiter que modifique la órbita heliocéntrica de una sonda de manera que pueda continuar hacia Saturno.

Resolver el problema mediante dos aproximaciones diferentes y determinar cuándo ambas dejan de ser equivalentes.

### Posibles rutas de trabajo

**Modelo 1: cónicas empalmadas**

Decidir:

* cómo definir la esfera de influencia;
* dónde cambiar del sistema heliocéntrico al jovicéntrico;
* cómo efectuar el empalme de posiciones y velocidades.

**Modelo 2: integración gravitacional**

Elegir entre:

* Sol + Júpiter + sonda;
* inclusión de Saturno;
* sistema planetario más completo.

### Datos

Utilizar efemérides reales.

Como caso de comparación se puede reconstruir un sobrevuelo histórico, por ejemplo el de **Voyager 2 por Júpiter**.

### Pregunta central

> ¿Qué cantidad debe conservarse durante el encuentro en cada sistema de referencia y cuál es el error introducido por la aproximación de cónicas empalmadas?

---

# IV. Pequeñas oscilaciones, modos normales y resonancias

---

## Reto IV-1 — Modos normales como problema inverso

**Tema del curso:** pequeñas oscilaciones; coordenadas normales; autovalores y autovectores; problema inverso.

### Problema

Las frecuencias vibracionales de una molécula pueden modelarse como modos normales de masas acopladas mediante fuerzas restauradoras.

Invertir el problema:

> **A partir de las frecuencias observadas del agua, ¿qué puede determinarse acerca de las constantes de fuerza moleculares?**

### Posibles rutas de trabajo

Comparar:

* campo de fuerzas de valencia simple;
* modelos con términos adicionales de interacción;
* coordenadas internas;
* coordenadas cartesianas ponderadas por masa;
* aproximación armónica;
* correcciones por anarmonicidad.

### Datos

Utilizar espectros experimentales de:

* \(H_2O\);
* \(D_2O\);
* opcionalmente \(HDO\).

### Estrategia

Ajustar los parámetros utilizando **un conjunto de datos** y reservar las frecuencias de otro isótopo para predicción.

Preguntas:

* ¿es única la solución inversa?
* ¿qué parámetros están realmente determinados por el espectro?
* ¿qué observaciones adicionales permitirían discriminar entre modelos?

---

## Reto IV-2 — La botella parcialmente llena que rueda

**Tema del curso:** modos de oscilación; rodadura; momento de inercia; resonancia; análisis dimensional.

### Problema

Una botella cilíndrica parcialmente llena de líquido puede presentar oscilaciones perceptibles de su velocidad mientras rueda.

Determinar:

1. qué produce las oscilaciones;
2. de qué depende su amplitud;
3. cómo dependen del nivel de llenado;
4. cómo interviene la viscosidad.

### Posibles rutas de trabajo

Contrastar al menos dos mecanismos:

* movimiento debido al desplazamiento del centro de masa;
* movimiento interno o *sloshing* del líquido.

Estudiar experimentalmente:

* distintos niveles de llenado;
* agua, mezclas agua–glicerina u otros líquidos;
* botellas de diferente masa;
* diferentes velocidades iniciales.

### Pregunta discriminante

Diseñar una magnitud observable —por ejemplo, la dependencia de la frecuencia de oscilación con la velocidad de rodadura— que permita separar los mecanismos sin depender únicamente de un ajuste de parámetros.

### Extensión

Investigar qué ocurre cuando una frecuencia asociada a la rodadura se aproxima a una frecuencia propia del líquido.

---

# V. Movimiento de cuerpos rígidos

Este bloque se concentra en tensor de inercia, ángulos de Euler, ecuaciones de Euler, rodadura, estabilidad y movimiento con contacto.

---

## Reto V.1 — El disco de Euler: ¿qué lo detiene?

**Tema del curso:** cuerpo rígido; rodadura; precesión; disipación; vínculos no holónomos.

### Problema

Un disco que gira inclinado sobre una superficie incrementa rápidamente la frecuencia de su movimiento antes de detenerse.

> **¿Qué mecanismo controla la fase final del movimiento?**

### Posibles rutas de trabajo

Construir y comparar modelos basados en:

* resistencia viscosa del aire;
* fricción de rodadura;
* deslizamiento en la región de contacto;
* deformaciones y vibraciones de la superficie;
* combinaciones de los mecanismos anteriores.

Cada hipótesis debe conducir a una predicción cuantitativa para alguna magnitud observable, como:

* ángulo de inclinación;
* frecuencia de precesión;
* energía;
* tiempo restante hasta el final del movimiento.

### Experimento

Grabar el sonido y/o video del disco y extraer la frecuencia en función del tiempo.

Repetir utilizando distintas superficies.

### Pregunta adicional

Determinar **cuándo deja de ser válido el modelo utilizado**, especialmente durante los instantes finales.

---

## Reto V.2 — El huevo que se levanta

**Tema del curso:** ángulos de Euler; ecuaciones de Euler; tensor de inercia; fricción; estabilidad.

### Problema

Un huevo duro que gira rápidamente sobre su costado puede elevar su eje mayor hasta terminar rotando cerca de una de sus puntas.

Investigar:

* condiciones necesarias para que se produzca el levantamiento;
* posible existencia de una velocidad angular crítica;
* tiempo característico del proceso.

### Posibles rutas de trabajo

Comparar modelos con:

* fricción de Coulomb;
* fricción viscosa;
* rodadura con deslizamiento parcial.

Comparar asimismo:

* esferoide prolato homogéneo;
* modelo geométrico obtenido de un huevo real;
* distribución homogénea frente a distribución de masa no uniforme.

### Verificación

Buscar cantidades exactamente o aproximadamente conservadas y determinar si continúan siéndolo cuando se modifica la geometría del cuerpo.

Complementar el análisis con video de huevos reales y diferentes superficies.

### Extensión

Comparar un huevo duro y uno crudo e identificar qué nuevo grado de libertad debe introducirse para representar el líquido interior.

---

## Reto V.3 — El Gömböc

**Tema del curso:** cuerpo rígido; equilibrio; estabilidad; pequeñas oscilaciones; energía potencial.

### Problema

Un Gömböc es un cuerpo convexo homogéneo diseñado para poseer un número excepcionalmente pequeño de posiciones de equilibrio.

El reto consiste en conectar:

**geometría → equilibrio → estabilidad → dinámica.**

### Posibles rutas de trabajo

**1. Geometría computacional**

Partiendo de una malla tridimensional:

* calcular centro de masa;
* determinar puntos de equilibrio;
* clasificarlos como estables, inestables o de silla.

**2. Diseño**

Construir familias de cuerpos casi esféricos y estudiar cómo cambia el número de equilibrios al modificar la forma.

**3. Dinámica**

Perturbar ligeramente el equilibrio estable y calcular las frecuencias de pequeñas oscilaciones.

**4. Experimento**

Utilizar:

* modelo comercial;
* cuerpo impreso en 3D;
* geometría diseñada por el equipo.

### Preguntas conceptuales

* ¿Qué información sobre los equilibrios puede obtenerse a partir de restricciones topológicas como Poincaré–Hopf?
* ¿Tener un único equilibrio estable implica necesariamente que el cuerpo regresará a él para cualquier condición inicial?
* ¿Cómo afectan las tolerancias de fabricación a la estructura de equilibrios?

---

## Reto V.4 — El *rattleback*

**Tema del curso:** cuerpo rígido; tensor de inercia; rodadura no holónoma; estabilidad; espacio de fases.

### Problema

Un *rattleback* gira fácilmente en una dirección, mientras que al hacerlo en la dirección contraria puede oscilar, detener su rotación e invertir el sentido.

> **¿Qué propiedades geométricas y dinámicas producen esta asimetría?**

### Posibles rutas de trabajo

Variar independientemente:

* distribución de masa;
* ejes principales de inercia;
* curvaturas de la superficie;
* alineamiento entre ejes geométricos y dinámicos;
* velocidad inicial;
* fricción;
* deslizamiento.

Comparar:

* modelo de rodadura ideal;
* modelo con fricción;
* contacto rígido;
* contacto deformable.

### Experimentos sugeridos

Construir varios ejemplares y medir:

* tiempo hasta la inversión;
* frecuencia de balanceo;
* dependencia con la velocidad inicial.

Construir además variantes geométricas que actúen como **experimentos de control**.

### Pregunta avanzada

Determinar qué propiedades del espacio de fases cambian cuando el vínculo de rodadura es no holónomo y discutir la relación con el teorema de Liouville.

---

# VI. Dinámica Hamiltoniana, acción–ángulo y caos

---

## Reto VI.1 — ¿Cuándo falla un invariante adiabático?

**Tema del curso:** formulación Hamiltoniana; variables acción–ángulo; sistemas integrables; invariantes adiabáticos.

### Problema

Considere un péndulo cuya longitud \(\ell(t)\) cambia lentamente.

En el régimen adiabático existe una cantidad aproximadamente conservada.

> **¿Qué tan bien se conserva y de qué propiedades del protocolo \(\ell(t)\) depende la desviación?**

### Posibles rutas de trabajo

Diseñar diferentes protocolos con:

* distintos valores de la tasa de variación;
* funciones suaves;
* funciones con cambios relativamente abruptos;
* diferentes fases iniciales;
* diferentes amplitudes de oscilación.

Para cada caso medir numéricamente la variación de la acción.

### Problema numérico

El efecto que se intenta medir puede ser comparable con el error del integrador.

El equipo deberá demostrar que puede distinguir:

$$
\text{efecto físico}
\qquad\text{de}\qquad
\text{error numérico}.
$$

Comparar distintos pasos temporales y, si es pertinente, diferentes tipos de integradores.

### Extensión

Estudiar qué ocurre cuando la evolución lenta aproxima la trayectoria a una separatriz.

---

## Reto VI.2 — ¿Cuánto caos hay?

**Tema del curso:** dinámica Hamiltoniana; espacio de fases; sistemas integrables y caóticos; teorema de Liouville.

### Problema

Seleccione uno de los sistemas no lineales estudiados en el curso, por ejemplo:

* péndulo doble;
* péndulo elástico.

Para una energía dada algunas condiciones iniciales pueden producir movimiento aparentemente regular y otras movimiento caótico.

> **¿Qué fracción del espacio de fases puede clasificarse como caótica y cómo cambia esa fracción con la energía?**

### Posibles rutas de trabajo

Utilizar uno o varios indicadores:

* secciones de Poincaré;
* exponente máximo de Lyapunov;
* espectro de Lyapunov;
* SALI;
* MEGNO;
* otros indicadores justificados por el equipo.

Decidir:

* cómo muestrear condiciones iniciales;
* cuánto tiempo integrar;
* qué criterio separará una trayectoria regular de una caótica;
* cómo tratar trayectorias cercanas a regiones de transición.

### Verificaciones

Controlar durante las simulaciones:

* conservación de energía;
* convergencia al aumentar el tiempo de integración;
* sensibilidad al paso temporal;
* propiedades del flujo Hamiltoniano.

Como control, aplicar el mismo procedimiento a un sistema integrable conocido.

---

# Estrategia general para resolver cualquier reto

Para todos los retos se recomienda seguir la misma secuencia.

### Etapa 1 — Definir el sistema

Identificar:

* grados de libertad;
* coordenadas;
* parámetros;
* vínculos;
* fuerzas;
* escalas características.

### Etapa 2 — Declarar las hipótesis

Construir una tabla como:

| Decisión     | Modelo elegido | Alternativa | ¿Por qué? | Impacto esperado |
| ------------ | -------------- | ----------- | --------- | ---------------- |
| Fricción     | ...            | ...         | ...       | ...              |
| Geometría    | ...            | ...         | ...       | ...              |
| Aproximación | ...            | ...         | ...       | ...              |

### Etapa 3 — Formular las ecuaciones

Utilizar, según corresponda:

* Newton;
* Lagrange;
* ecuaciones de Euler;
* Hamilton;
* conservación de energía o momento;
* aproximaciones perturbativas.

### Etapa 4 — Predecir antes de simular

Antes de ejecutar código, establecer:
* signos esperados;
* órdenes de magnitud;
* límites;
* leyes de escala;
* cantidades conservadas.

### Etapa 5 — Resolver

Combinar cuando sea posible:
* análisis;
* simulación;
* experimento;
* datos reales.

### Etapa 6 — Verificar

Toda solución deberá incluir una prueba independiente.

> **Una simulación que reproduce lo esperado no es, por sí sola, una verificación.**

### Etapa 7 — Comparar modelos

Modificar al menos **una hipótesis relevante** y cuantificar cuánto cambia el resultado.

### Etapa 8 — Auditar la IA

Seleccionar algunas afirmaciones o cálculos importantes sugeridos por el asistente y explicar explícitamente cómo fueron comprobados.

---

# Entregables

Cada equipo entregará:

1. **Reporte técnico**, máximo 8 páginas. Pueden utilizar [este modelito](https://github.com/nunezluis/MisCursos/blob/main/MisMateriales/ModeloReporte/ModeloReporteUIS.pdf)
2. **Repositorio Git reproducible** con código, datos y procedimiento para regenerar las figuras.
3. **Hoja de hipótesis y decisiones de modelado**.
4. **Bitácora de interacción con IA**, siguiendo la metodología de las 4D
5. **Presentación y defensa oral**.

La defensa podrá incluir preguntas sobre cualquier parte del análisis, el código o las decisiones tomadas, independientemente de cuál integrante haya trabajado inicialmente en esa parte.

---
