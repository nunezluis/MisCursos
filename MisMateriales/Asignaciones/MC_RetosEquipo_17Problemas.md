# Diecisiete retos de Mecánica Clásica para equipos de dos estudiantes
### Con asistente de investigación de IA — versión para el instructor

---

## Marco común

### Estructura del equipo

Cada uno de los diecisiete retos se asigna a **dos estudiantes** con roles nominalmente distintos que se **intercambian a mitad del proyecto**:

- **Rol A — Analítico:** formulación lagrangiana/hamiltoniana, aproximaciones, límites, cantidades conservadas.
- **Rol B — Computacional/Datos:** integración numérica, obtención y limpieza de datos, verificación de convergencia.

El intercambio a mitad de camino es deliberado: obliga a cada estudiante a auditar el trabajo del otro, y hace que la defensa oral no pueda repartirse por especialidad.

### Entregables (idénticos para todos los retos)

1. **Memoria técnica (máx. 8 páginas).** Formulación, supuestos declarados explícitamente, derivaciones, resultados, interpretación física.
2. **Repositorio reproducible.** Código documentado, datos crudos, semilla/versión, un script que regenere todas las figuras desde cero.
3. **Bitácora de IA.** Prompts, respuestas relevantes, y para cada una: *aceptado / rechazado / corregido*, con el método de verificación empleado. Debe incluir **al menos un error detectado** en la salida del asistente, con la evidencia que lo delató.
4. **Hoja de supuestos y bifurcaciones.** Tabla de las decisiones de modelado tomadas, la alternativa descartada, y la estimación del efecto de esa decisión sobre el resultado.
5. **Defensa oral (20 min).** Preguntas personalizadas sobre el código y las derivaciones propias del equipo.

### Política de IA

Todos los retos son de categoría **IA-requerida con análisis crítico** (§10 del diseño del curso). El asistente puede usarse libremente para explicación, álgebra intermedia, depuración y exploración. **No** puede usarse como fuente de resultados no verificados: toda afirmación cuantitativa debe llegar acompañada de su verificación independiente.

### Criterio de calificación ante respuestas divergentes

Estos retos **no tienen respuesta única**. La calificación no premia coincidir con un número, sino:

| Dimensión | Peso sugerido |
|---|---|
| Formulación física y elección de coordenadas | 15 % |
| Justificación de los supuestos y análisis de su impacto | 20 % |
| Corrección de la derivación | 15 % |
| Implementación computacional y control de error | 15 % |
| Verificación independiente (invariantes, datos no ajustados, límites) | 20 % |
| Uso crítico de la IA y errores detectados | 15 % |

Dos equipos pueden obtener resultados distintos y ambos la máxima nota, si ambos declaran, justifican y acotan sus supuestos. Un equipo con el "número correcto" y sin verificación no debe aprobar el reto.

---

# Reto 1 — El disco de Euler: ¿qué lo detiene?

**Tema del curso:** cuerpo rígido, rodadura sin deslizamiento (vínculo no holónomo), disipación.
**Nivel:** 4 (investigación).

### Planteamiento
Un disco que gira sobre una superficie plana termina con un aumento acelerado de la frecuencia de rodadura y un final abrupto. Determinar **cuál mecanismo disipativo domina** el último segundo del movimiento, y contrastar la predicción con una medición propia.

### La bifurcación
Existen al menos cuatro candidatos, cada uno con una ley de potencias distinta para el ángulo de inclinación $\alpha(t)$ y la frecuencia $\Omega(t)$ cerca del tiempo de colapso $t_0$:

1. Disipación viscosa en la capa de aire bajo el disco (modelo de Moffatt).
2. Fricción de rodadura.
3. Deslizamiento en el punto de contacto.
4. Excitación de vibraciones en la superficie de apoyo.

El equipo debe **derivar el exponente** $\Omega \propto (t_0-t)^{-n}$ para cada mecanismo a partir del balance de energía, no citarlo.

### Verificación independiente
El sonido del disco es directamente la frecuencia de rodadura. Con un teléfono, grabar el audio y extraer $\Omega(t)$ de un espectrograma. Ajustar $\log\Omega$ contra $\log(t_0-t)$, tratando $t_0$ como parámetro libre, y reportar el exponente **con su banda de incertidumbre**. Repetir variando: material de la superficie (vidrio, madera, acrílico), masa del disco, y — si es posible — con el disco cubierto por una campana para alterar la presión de aire.

### Dónde falla el asistente
Este es un problema **abierto en la literatura**, no un resultado establecido. Un asistente responderá con el mecanismo viscoso presentado como consenso. Además confunde con frecuencia la velocidad de precesión con la velocidad de espín, y produce un balance de energía con el signo del par disipativo invertido.

### Errores frecuentes de estudiantes
- Tratar la rodadura como vínculo holónomo.
- Ajustar la ley de potencias sin dejar $t_0$ libre (el exponente resultante es entonces arbitrario).
- Confundir el chirrido acústico final (que es contacto intermitente) con la señal de rodadura.

### Extensión
Determinar si el "tiempo de colapso" es realmente finito, o si el modelo se invalida antes de llegar a él — y cuál es el criterio físico para decidirlo.

---

# Reto 2 — El huevo que se levanta

**Tema del curso:** cuerpo rígido, ángulos de Euler, ecuaciones de Euler, fricción, invariantes aproximados.
**Nivel:** 4.

### Planteamiento
Un huevo duro girado suficientemente rápido sobre su costado se **levanta** hasta girar sobre su punta, elevando su centro de masa. Predecir la **velocidad angular crítica** $\omega_c$ por debajo de la cual el fenómeno no ocurre, y el **tiempo de subida** como función de $\omega_0$.

### La bifurcación
El resultado depende críticamente del modelo de fricción en el punto de contacto:

- Fricción de Coulomb deslizante (magnitud constante, dirección opuesta al deslizamiento).
- Fricción viscosa proporcional a la velocidad de deslizamiento.
- Fricción de rodadura combinada con deslizamiento parcial.

Cada modelo da un $\omega_c$ y un tiempo de subida distintos. Además, el equipo debe decidir si modela el huevo como **esferoide prolato homogéneo** o incorpora la distribución real de masa (la yema no está centrada).

### Verificación independiente
Para el trompo esférico con centro de masa desplazado, la **integral de Jellett** — la proyección del momento angular sobre la recta que une el centro de masa con el punto de contacto — es exactamente conservada cuando la fricción actúa en el contacto a lo largo de la dirección de deslizamiento. **La pregunta central del reto:** ¿sobrevive esta cantidad para un esferoide? El equipo debe determinarlo analíticamente y luego monitorearla a lo largo de la integración numérica. Su deriva mide simultáneamente el error numérico y la ruptura del invariante — y separarlos es parte del trabajo.

Medición: filmar huevos reales a alta velocidad de cuadro, variando $\omega_0$ y la superficie.

### Dónde falla el asistente
Aplica el resultado del trompo *tippe top* esférico al esferoide sin verificar que la derivación se transfiere. Suele afirmar que Jellett se conserva para el huevo, lo cual no es exacto.

### Errores frecuentes de estudiantes
- Suponer que el levantamiento viola la conservación de energía (no la viola: la energía de rotación alimenta la elevación del centro de masa).
- Usar el tensor de inercia en ejes de laboratorio en lugar de ejes cuerpo.

### Extensión
¿Por qué un huevo crudo no se levanta? Modelar el acoplamiento con el fluido interno como un grado de libertad adicional y estimar el umbral.

---

# Reto 3 — Determinación de una órbita a partir de tres observaciones reales

**Tema del curso:** fuerzas centrales, problema de Kepler, sensibilidad a condiciones iniciales.
**Nivel:** 3–4.

### Planteamiento
Dadas **tres observaciones angulares** (ascensión recta, declinación, tiempo) de un objeto del Sistema Solar, determinar sus seis elementos orbitales. Comparar con la solución publicada y **cuantificar la propagación del error observacional**.

### Datos
Observaciones reales de un objeto a elección del equipo: un asteroide cercano a la Tierra recién catalogado, un cometa, o un objeto interestelar (1I/ʻOumuamua, 2I/Borisov — órbitas hiperbólicas, especialmente instructivas). Fuentes: Minor Planet Center, JPL Horizons.

### La bifurcación
- **Método:** Gauss, Laplace, o Gooding. Dan resultados distintos con los mismos datos, y su robustez ante ruido difiere.
- **Correcciones:** ¿se incluye el tiempo de luz? ¿la aberración? ¿la paralaje topocéntrica del observatorio? Cada una desplaza los elementos en cantidades comparables al ruido observacional.
- **Espaciamiento temporal** de las tres observaciones: demasiado juntas y el problema está mal condicionado; demasiado separadas y la aproximación de la serie falla.

### Verificación independiente
Propagar la órbita determinada hasta una **cuarta observación no utilizada en el ajuste** y comparar la posición predicha con la observada. Este es el único test honesto.

### Dónde falla el asistente
El método de Gauss conduce a una **ecuación polinómica de octavo grado** (ecuación de Lagrange) que puede tener **varias raíces reales positivas**. Un asistente genera código que toma la primera raíz o la mayor, sin criterio físico, y falla silenciosamente: produce una órbita numéricamente válida y físicamente absurda. Detectar esto es el corazón del reto.

### Errores frecuentes de estudiantes
- No convertir a un marco inercial consistente (confundir coordenadas de época J2000 con las de la fecha).
- Reportar elementos sin barras de error.

### Extensión
Con $N > 3$ observaciones, plantear el problema como mínimos cuadrados y comparar la incertidumbre con la del caso de tres puntos.

---

# Reto 4 — El presupuesto de la precesión de Mercurio

**Tema del curso:** teoría de perturbaciones, potencial efectivo, precesión absidal.
**Nivel:** 4.

### Planteamiento
La precesión observada del perihelio de Mercurio es de unos 5600 segundos de arco por siglo. Construir el **presupuesto completo**: cuánto proviene de la precesión de los equinoccios, cuánto de cada planeta perturbador, cuánto del achatamiento solar, y cuánto queda como residuo.

### La bifurcación
- **Método:** perturbación analítica (ecuaciones planetarias de Gauss/Lagrange) frente a integración N-cuerpos con diferenciación respecto al caso de dos cuerpos. Ambos son legítimos y no dan lo mismo al nivel de precisión requerido.
- **$J_2$ solar:** el valor moderno es de orden $10^{-7}$ y contribuye una fracción de segundo de arco por siglo. Pero en los años 1960 se midieron valores mucho mayores, con los que el residuo relativista habría sido incompatible con la relatividad general. El equipo debe **reconstruir ese argumento** y determinar qué valor de $J_2$ haría desaparecer el acuerdo.
- **Marco de referencia:** el término dominante de 5000″ es un artefacto del marco, no dinámica de Mercurio. Restarlo correctamente es la mitad del problema.

### Verificación independiente
Aplicar el mismo cálculo a **Venus, la Tierra e Ícaro**, cuyos residuos relativistas también son conocidos, y verificar que el método reproduce la dependencia $\propto a^{-1}(1-e^2)^{-1}$.

### Dónde falla el asistente
Reproduce la cifra de 43″/siglo de memoria con total seguridad, y produce derivaciones del término $-k/r^3$ efectivo con factores numéricos incorrectos. Rara vez señala que la mayor parte de la precesión observada no es dinámica.

### Errores frecuentes de estudiantes
- Mezclar segundos de arco por órbita con segundos de arco por siglo.
- Integrar N-cuerpos con un método no simpléctico y confundir la deriva secular numérica con precesión física.

### Extensión
¿Cuánta precesión residual quedaría si el exponente de la ley de gravitación fuera $2+\epsilon$? Acotar $\epsilon$ con los datos.

---

# Reto 5 — Cuándo deja de funcionar un invariante adiabático

**Tema del curso:** variables acción-ángulo, invariantes adiabáticos, sistemas integrables.
**Nivel:** 4.

### Planteamiento
Un péndulo cuya longitud varía lentamente, $\ell(t)$, conserva aproximadamente la acción $J = E/\omega$. Determinar **cómo escala la violación** $\Delta J$ con el parámetro de adiabaticidad $\epsilon = \dot\ell/(\ell\omega)$.

### La bifurcación — y aquí está lo interesante
La respuesta **no depende sólo de la lentitud**, sino de la **suavidad** de $\ell(t)$:

- Si $\ell(t)$ es analítica, $\Delta J$ es **exponencialmente pequeña**: $\Delta J \sim e^{-c/\epsilon}$.
- Si $\ell(t)$ tiene una discontinuidad en su $n$-ésima derivada, $\Delta J \sim \epsilon^{n}$ — una ley de potencias, mucho mayor.

Es decir: dos protocolos igualmente "lentos" violan el invariante en órdenes de magnitud distintos. El equipo debe descubrir esto, no recibirlo.

### Verificación independiente
Detectar una cantidad exponencialmente pequeña exige que el **error del integrador sea menor que el efecto físico**. El equipo debe: usar un integrador simpléctico, demostrar convergencia respecto al paso, y establecer el piso de ruido numérico *antes* de afirmar haber medido $\Delta J$. Este control es la parte difícil y la más valiosa del reto.

### Dónde falla el asistente
Responde "el invariante adiabático se conserva para cambios lentos" y se detiene. Si se le insiste, produce una ley de potencias genérica sin distinguir por suavidad. Y el código que genera usa típicamente Runge–Kutta 4, cuya deriva de energía enmascara por completo el efecto buscado.

### Errores frecuentes de estudiantes
- Medir $\Delta J$ durante la variación en lugar de comparar los estados asintóticos inicial y final.
- No promediar sobre la fase inicial: $\Delta J$ depende de ella, y la envolvente es lo que sigue la ley de escala.

### Extensión
Cruce lento por la separatriz del péndulo: allí el invariante adiabático falla catastróficamente y el resultado se vuelve probabilístico. Estimar la probabilidad de captura en libración.

---

# Reto 6 — ¿Cuánto caos hay? Medir en lugar de afirmar

**Tema del curso:** dinámica no lineal, secciones de Poincaré, sensibilidad a condiciones iniciales.
**Nivel:** 4.

### Planteamiento
Para el **péndulo doble** o el **péndulo de resorte** (ambos tratados en el curso), determinar la **fracción del espacio de fases ocupada por trayectorias caóticas** como función de la energía, y localizar la transición de comportamiento mayoritariamente regular a mayoritariamente caótico.

### La bifurcación
- **Indicador de caos:** exponente de Lyapunov máximo, SALI, MEGNO, o inspección de secciones de Poincaré. Cada uno da un umbral distinto para clasificar una órbita como caótica.
- **Umbral de clasificación:** el exponente de Lyapunov de una órbita regular no es exactamente cero en tiempo finito. ¿Dónde se pone el corte? La fracción caótica reportada depende de esta elección, y el equipo debe **cuantificar esa dependencia** en lugar de ocultarla.
- **Muestreo:** uniforme en coordenadas, o uniforme en la medida de Liouville sobre la superficie de energía. No son lo mismo y dan fracciones distintas.

### Verificación independiente
La suma de los exponentes de Lyapunov de un sistema hamiltoniano debe anularse, y el espectro debe ser simétrico respecto a cero. Verificarlo. Comprobar además la conservación del volumen de fase y de la energía a lo largo de la integración.

### Dónde falla el asistente
Produce un número para "el exponente de Lyapunov del péndulo doble" como si fuera una constante del sistema, cuando depende de la energía, de la órbita y del tiempo de integración. El código generado suele omitir la renormalización periódica del vector de desviación, con lo que el resultado se satura y pierde sentido.

### Errores frecuentes de estudiantes
- No descartar el transitorio inicial.
- Confundir la divergencia exponencial genuina con el crecimiento del error de redondeo.

### Extensión
Contrastar con un sistema integrable no trivial del curso (la máquina de Atwood de dos grados de libertad en su valor de parámetro integrable) y verificar que el método efectivamente reporta caos nulo.

---

# Reto 7 — Los troyanos de Júpiter: cuando la estabilidad lineal no basta

**Tema del curso:** problema restringido de tres cuerpos, puntos de equilibrio, pequeñas oscilaciones, estabilidad.
**Nivel:** 3–4.

### Planteamiento
El análisis lineal del problema restringido circular de tres cuerpos predice que $L_4$ y $L_5$ son estables si la razón de masas cumple el criterio de Routh, $\mu \lesssim 0.0385$; para el sistema Sol–Júpiter, $\mu \approx 10^{-3}$, cómodamente estable. Sin embargo, **los troyanos reales tienen amplitudes de libración enormes y excentricidades apreciables**, muy fuera del régimen lineal. Determinar hasta dónde llega la validez del análisis lineal y qué la limita.

### Datos
Elementos orbitales reales de una muestra de troyanos jovianos (campos de Griegos y Troyanos) del Minor Planet Center. Distribución observada de amplitudes de libración e inclinaciones.

### La bifurcación
- **Circular frente a elíptico:** la excentricidad real de Júpiter ($e \approx 0.048$) introduce forzamiento periódico. ¿Cambia cualitativamente el resultado?
- **Plano frente a tridimensional:** muchos troyanos tienen inclinaciones altas.
- **Con o sin Saturno:** las resonancias seculares introducidas por Saturno son responsables de parte de la estructura observada.

### Verificación independiente
Integrar numéricamente partículas de prueba con las condiciones iniciales de troyanos reales y verificar que permanecen en libración durante el tiempo integrado. Comparar la **distribución de amplitudes** obtenida al poblar la región con partículas de prueba frente a la distribución observada — y explicar la discrepancia.

### Dónde falla el asistente
Cita el criterio de Routh como la respuesta completa. Con frecuencia confunde estabilidad lineal con estabilidad a largo plazo, y no menciona que la estabilidad de $L_4/L_5$ en el sistema real es una cuestión de tiempos de escape, no de un sí o un no.

### Errores frecuentes de estudiantes
- Trabajar en el marco inercial en lugar del corotante.
- Olvidar la fuerza de Coriolis, que es precisamente lo que estabiliza un máximo del potencial efectivo — resultado contraintuitivo que conviene que expliquen en la defensa oral.

### Extensión
Repetir para los troyanos de Neptuno o para el sistema Tierra–Luna. ¿Por qué la Tierra tiene tan pocos troyanos conocidos?

---

# Reto 8 — Por qué Mercurio gira 3:2 y por qué Hiperión no gira de ninguna manera

**Tema del curso:** resonancias, dinámica no lineal, potencial efectivo tipo péndulo, disipación.
**Nivel:** 4.

### Planteamiento
La rotación de un satélite no esférico en órbita excéntrica obedece una ecuación tipo péndulo con múltiples resonancias en razones semienteras entre espín y órbita. Determinar la **probabilidad de captura de Mercurio en la resonancia 3:2** en función de su excentricidad, y explicar por qué **Hiperión no está capturado en ninguna resonancia** sino que rota caóticamente.

### La bifurcación
- **Modelo de disipación mareal:** *constant-Q* frente a *constant time lag*. Dan probabilidades de captura distintas para la misma excentricidad.
- **Excentricidad:** ¿la actual, o una excentricidad variable a lo largo de la evolución secular? Mercurio no siempre tuvo $e = 0.206$.
- **Estado inicial:** captura desde rotación rápida frente a desde rotación lenta.

### Verificación independiente
Aplicar el criterio de solapamiento de resonancias de Chirikov con los parámetros reales de Hiperión (asfericidad grande, $e \approx 0.10$) y verificar que predice caos; luego confirmarlo por integración directa. El mismo criterio aplicado a Mercurio y a la Luna debe predecir zonas caóticas estrechas. Que el criterio distinga correctamente los tres casos es la validación.

### Dónde falla el asistente
Afirma que Mercurio está en 3:2 "porque su órbita es excéntrica" sin cuantificar, y presenta la probabilidad de captura como si fuera determinista. Confunde con frecuencia el ancho de la resonancia con su amplitud de libración.

### Errores frecuentes de estudiantes
- Trabajar con el ángulo de orientación en lugar del ángulo resonante $\gamma = \phi - \tfrac{3}{2}M$.
- Ignorar que la captura es un proceso probabilístico y reportar un resultado único.

### Extensión
¿Es la rotación caótica de Hiperión observable en su curva de luz? Simular la curva de luz y compararla con datos publicados.

---

# Reto 9 — El problema inverso de modos normales: fuerzas a partir de espectros

**Tema del curso:** pequeñas oscilaciones, modos normales, problema matricial de autovalores.
**Nivel:** 3–4.

### Planteamiento
Las frecuencias vibracionales de una molécula pequeña son los modos normales de un sistema de masas acopladas por resortes. **Invertir el problema:** a partir de las frecuencias medidas del H₂O en fase gaseosa (aproximadamente 3657, 1595 y 3756 cm⁻¹), determinar las constantes de fuerza del campo de fuerzas.

### La bifurcación — y por qué es un buen problema
Con tres frecuencias observadas y tres parámetros ajustables (constante de estiramiento, de flexión, y de acoplamiento estiramiento–estiramiento), **el ajuste es exacto y por tanto no verifica nada**. El equipo debe darse cuenta de esto por sí mismo.

La salida es **sustitución isotópica**: D₂O y HDO tienen las mismas constantes de fuerza pero masas distintas. Sus frecuencias son datos independientes que el modelo debe predecir sin reajuste. Ahí el problema pasa de determinado a sobredeterminado, y el modelo puede fallar — y falla.

- **Campo de fuerzas de valencia simple** frente a **campo de Urey–Bradley** (que añade un término de repulsión H···H): distinto número de parámetros, distinta calidad de predicción isotópica.
- **Coordenadas internas** frente a cartesianas ponderadas por masa.
- ¿Se corrige por anarmonicidad, o se ajusta a las frecuencias observadas directamente? Las constantes resultantes difieren apreciablemente.

### Datos
Frecuencias vibracionales de H₂O, D₂O y HDO de la base de datos del NIST. Geometría de equilibrio: $r \approx 0.958$ Å, ángulo $\approx 104.5°$.

### Verificación independiente
Ajustar sólo con H₂O; **predecir** D₂O; comparar. Reportar el error de predicción por modo. Un modelo que reproduce H₂O exactamente y falla en D₂O por un 5 % está diciendo algo físico, y el equipo debe decir qué.

### Dónde falla el asistente
Produce constantes de fuerza "de la literatura" sin especificar a qué campo de fuerzas pertenecen — y las constantes no son comparables entre modelos distintos. También plantea con frecuencia la matriz de energía cinética incorrectamente en coordenadas internas (el método GF de Wilson no es la inversa ingenua de la matriz de masas).

### Errores frecuentes de estudiantes
- Olvidar proyectar fuera los modos de traslación y rotación (aparecen tres o seis autovalores nulos; si no lo son, hay un error).
- Confundir número de onda con frecuencia angular.

### Extensión
Repetir para el CO₂ y explicar la degeneración de los modos de flexión mediante un argumento de simetría, conectando con el teorema de Noether visto en el curso.

---

# Reto 10 — Asistencia gravitacional: hasta dónde sirve la aproximación

**Tema del curso:** problema de dos cuerpos, dispersión, validez de aproximaciones.
**Nivel:** 3–4.

### Planteamiento
Diseñar una asistencia gravitacional en Júpiter que lleve una sonda desde una órbita de transferencia terrestre hasta Saturno. Resolverlo **dos veces**: con cónicas empalmadas (*patched conics*) y con integración N-cuerpos completa. **Cuantificar la discrepancia** y determinar el criterio bajo el cual la aproximación es aceptable.

### La bifurcación
- **Radio de la esfera de influencia:** la definición de Laplace ($r_{SOI} \propto a(m/M)^{2/5}$) frente a la esfera de Hill. Difieren en un factor apreciable, y el resultado de las cónicas empalmadas depende de cuál se use. Ésta es una decisión de modelado pura, sin respuesta correcta.
- **Instante del empalme:** la transición entre marcos es discontinua en el modelo; ¿dónde se coloca?
- **Perturbaciones incluidas** en la integración: sólo Sol y Júpiter, o el sistema completo.

### Datos
Efemérides reales de JPL Horizons. Para validación: la trayectoria real del Voyager 2 en su sobrevuelo de Júpiter en 1979.

### Verificación independiente
Dos canales. Primero: en el marco de Júpiter, la asistencia es una dispersión de fuerza central, de modo que $|\mathbf v_\infty|$ debe conservarse. Verificarlo mide el error del modelo. Segundo: reproducir el $\Delta v$ heliocéntrico real del Voyager 2, un número publicado que el equipo no ha ajustado.

### Dónde falla el asistente
Genera código de cónicas empalmadas que funciona pero con el vector velocidad del planeta restado en el marco equivocado — un error que produce trayectorias plausibles y respuestas erróneas en un factor de orden uno. Además suele afirmar que la asistencia gravitacional "roba energía al planeta" sin poder cuantificar cuánta, ni identificar en qué marco esa afirmación tiene sentido.

### Errores frecuentes de estudiantes
- Creer que la maniobra viola la conservación de la energía.
- No distinguir el marco heliocéntrico del planetocéntrico al reportar velocidades.

### Extensión
¿Cuál es el $\Delta v$ máximo obtenible de un sobrevuelo joviano, y qué lo limita? Comparar con la asistencia real del Voyager 2 y explicar por qué la misión no usó el óptimo.

---

# Reto 11 — El Gömböc: cuántos equilibrios puede tener un cuerpo, y por qué

**Tema del curso:** equilibrio y estabilidad, energía potencial, pequeñas oscilaciones, cuerpo rígido, vínculos no holónomos.
**Nivel:** 4.

### Planteamiento
Un cuerpo convexo y homogéneo apoyado sobre un plano tiene una energía potencial $V(\mathbf{u}) = MgR(\mathbf{u})$, donde $R$ es la distancia del centro de masa al punto de la superficie cuya normal pasa por él. Los equilibrios son los puntos críticos de $R$ sobre $S^2$. El **Gömböc** es un cuerpo de clase $(1,1)$: un solo equilibrio estable y uno solo inestable.

El reto tiene tres partes:

1. **Contar.** Escribir un algoritmo que, dada una malla de un cuerpo convexo homogéneo, calcule el centro de masa, localice todos los equilibrios y los clasifique en mínimos, máximos y puntos de silla.
2. **Buscar.** Parametrizar una familia de cuerpos casi esféricos, $R(\theta,\phi) = R_0\big[1 + \sum_{\ell m} c_{\ell m} Y_{\ell m}(\theta,\phi)\big]$ con $|c_{\ell m}| \ll 1$, y explorar el espacio de coeficientes buscando la clase $(1,1)$. Caracterizar **qué tan pequeña es la región del espacio de parámetros** donde aparece.
3. **Predecir y medir.** Calcular la frecuencia de las oscilaciones pequeñas alrededor del equilibrio estable y el tiempo característico de auto-enderezamiento. Contrastar con video de un ejemplar real o impreso en 3D.

### La verificación independiente: un teorema, no una medición

Ésta es la característica que distingue a este reto de todos los anteriores. Para una función de Morse sobre $S^2$, la fórmula de Poincaré–Hopf exige

$$S - H + U = \chi(S^2) = 2,$$

donde $S$ es el número de mínimos (equilibrios estables), $U$ el de máximos (inestables) y $H$ el de puntos de silla. Por lo tanto:

$$H = S + U - 2.$$

Para la clase $(1,1)$ se obtiene $H = 0$: **el Gömböc tiene exactamente dos equilibrios en total, sin puntos de silla.** Y para cualquier cuerpo que el equipo analice, la suma alternada debe dar 2. Si su algoritmo devuelve un conjunto que viola esta identidad, ha perdido equilibrios o ha producido espurios — sin necesidad de conocer la respuesta correcta.

Calibración obligatoria antes de tocar el Gömböc: un **elipsoide triaxial** debe dar $S=2$, $U=2$, $H=2$ (extremos de los ejes menor, mayor e intermedio respectivamente), que satisface $2-2+2=2$. Un cuerpo genérico con muchas facetas debe seguir satisfaciéndola.

### La bifurcación principal: ¿"siempre vuelve" es un enunciado dinámico?

La afirmación de que el Gömböc "siempre regresa a su equilibrio estable, sin importar cómo se le coloque" es un enunciado **cuasiestático**: describe el paisaje de energía potencial, no la dinámica. El equipo debe determinar si sobrevive al pasar a la dinámica real.

- **Régimen sobreamortiguado:** el movimiento es un flujo gradiente sobre $R(\mathbf{u})$, y el enunciado es correcto: sólo hay un mínimo y toda condición inicial converge a él.
- **Régimen con inercia:** el cuerpo rueda, tiene energía cinética, y puede pasar de largo. ¿Existen condiciones iniciales — un Gömböc lanzado con velocidad — para las cuales no se detiene en el equilibrio estable, o tarda arbitrariamente? ¿Existen órbitas rodantes periódicas?
- **Modelo de contacto:** rodadura sin deslizamiento (vínculo **no holónomo**, igual que en el Reto 1), deslizamiento puro, o régimen mixto. La rodadura sin deslizamiento sobre un cuerpo convexo general no es integrable, y el "camino" hasta el equilibrio depende de la historia.

Éste es el núcleo intelectual del reto: **distinguir un resultado topológico sobre puntos de equilibrio de un enunciado sobre cuencas de atracción dinámicas.** No son lo mismo, y la divulgación popular del Gömböc los confunde sistemáticamente.

### Segunda bifurcación: la tolerancia de fabricación como cantidad mecánica

Cerca del equilibrio estable, con $\rho$ el radio de curvatura en el punto de contacto, $h$ la altura del centro de masa sobre ese punto e $I_{cm}$ el momento de inercia respecto al centro de masa:

$$V(\theta) \simeq Mg\Big[h + \tfrac12(\rho - h)\theta^2\Big], \qquad \omega^2 = \frac{Mg\,(\rho-h)}{I_{cm} + Mh^2}.$$

La estabilidad exige $\rho > h$. Pero el Gömböc es homogéneo y casi esférico, de modo que $h \approx \rho \approx R_0$ y el margen $\delta \equiv \rho - h$ es diminuto. El equipo debe:

- Estimar $\omega$ con $\delta$ del orden de la tolerancia de fabricación y comprobar que predice períodos de segundos, no de décimas de segundo — el auto-enderezamiento **lento** es una predicción cuantitativa contrastable en video.
- Invertir el argumento: dado que la profundidad del pozo de potencial es $\sim Mg\delta$, **¿qué error de forma basta para crear equilibrios espurios y destruir la clase $(1,1)$?** Esto convierte una especificación de manufactura en una cantidad mecánica derivada.

**Experimento sugerido, cuyo fallo es el resultado:** imprimir en 3D una forma candidata con una impresora de filamento común y comprobar que **no** funciona. Luego explicar cuantitativamente por qué, comparando la tolerancia de la impresora con el $\delta$ calculado. Un equipo que consigue explicar su propio fracaso ha entendido el problema mejor que uno que compra un ejemplar comercial y lo filma.

### Pregunta conceptual obligatoria: ¿por qué en 2D no existe?

Ningún cuerpo plano, convexo y **homogéneo** puede tener un solo equilibrio estable y uno inestable; se demuestra que tiene al menos cuatro equilibrios. El equipo debe explicar por qué la topología **por sí sola no basta** para decidirlo: sobre $S^1$ la característica de Euler es cero, de modo que Morse sólo exige $S = U$, y $S = U = 1$ no queda excluido. Hacen falta la convexidad y la homogeneidad como ingredientes adicionales.

El contraste es exactamente el que motiva el problema: el tentetieso o *roly-poly* es esencialmente bidimensional y monostático, pero **inhomogéneo** — funciona por lastre. El Gömböc logra lo mismo en 3D sin lastre alguno. El equipo debe articular con precisión qué hipótesis se relaja en cada caso.

### Dónde falla el asistente

Es un tema con mucha divulgación de baja precisión, y eso se refleja en las respuestas generadas:

- Repite la frase publicitaria "siempre vuelve a su posición de equilibrio" sin la salvedad cuasiestática, que es el punto físico central.
- Confunde **monostático** (un solo equilibrio estable, cualquier número de inestables) con **mono-monostático** (clase $(1,1)$). Son clases distintas y la confusión es casi universal.
- Rara vez invoca Poincaré–Hopf, y cuando lo hace suele equivocar el signo o el papel de los puntos de silla.
- Afirma que la imposibilidad en 2D "se sigue del mismo argumento topológico". No es cierto, y detectarlo requiere entender la fórmula, no citarla.
- Genera código de geometría computacional que localiza equilibrios muestreando direcciones, y pierde sistemáticamente los que están en regiones de baja curvatura — precisamente las relevantes aquí.

### Errores frecuentes de estudiantes

- Calcular el centro de masa como el promedio de los vértices de la malla en lugar de integrar sobre el volumen. Para un cuerpo casi esférico el error resultante es del mismo orden que $\delta$, y destruye el resultado por completo.
- Buscar equilibrios como puntos donde la normal es vertical, en lugar de donde la normal **pasa por el centro de masa**.
- Clasificar la estabilidad por el signo de una sola segunda derivada en vez de por los autovalores del hessiano de $R$ sobre la superficie.
- Tratar la rodadura como vínculo holónomo (mismo error que en el Reto 1).

### Extensiones

- **Biología.** El caparazón de tortugas de domo alto se aproxima al comportamiento mono-monostático: se enderezan por geometría. Las de caparazón plano no pueden y usan cuello y patas. Con perfiles de caparazón publicados o escaneos 3D, clasificar varias especies y correlacionar la clase $(S,U)$ con la estrategia de enderezamiento observada.
- **Geomorfología.** La abrasión de guijarros tiende a reducir el número de equilibrios con el tiempo. Modelar la abrasión como una ecuación de evolución de la superficie y seguir la trayectoria del cuerpo por las clases $(S,U)$. Aplicable a datos de forma de guijarros terrestres y marcianos.
- **Diseño inverso.** Dada una clase $(S,U)$ objetivo, ¿puede el equipo construir un cuerpo que la realice? La familia $(S,U)$ con $S,U \ge 1$ y $S+U \ge 2$ es realizable; $(1,1)$ es el caso extremo y el más difícil.

### Nota para el instructor
Este reto exige geometría computacional que probablemente sea nueva para los estudiantes. Es un uso **apropiado** del asistente de IA: que genere el andamiaje de manejo de mallas, mientras el equipo conserva la responsabilidad de la física y de la verificación por Poincaré–Hopf. Conviene decirlo explícitamente en el enunciado, para que la división de trabajo con la IA sea una decisión consciente y no una omisión.

Las referencias primarias sobre la conjetura de Arnold, la construcción de Domokos y Várkonyi, y los trabajos sobre tortugas y guijarros deben ser verificadas y añadidas por el instructor antes de distribuir el enunciado.

---

# Reto 12 — El *rattleback*: cuando conservar la energía no impide tener un atractor

**Tema del curso:** vínculos no holónomos, cuerpo rígido, tensor de inercia, estabilidad, espacio de fases y teorema de Liouville.
**Nivel:** 4.

### Planteamiento
Un *rattleback* (celta, anagiro) girado en su sentido preferido gira suavemente; girado en el sentido opuesto se vuelve inestable, cabecea, se frena y **invierte su giro**. Determinar el mecanismo, predecir el tiempo de inversión, y construir ejemplares que confirmen o refuten el modelo.

### El ingrediente físico que hay que identificar

La asimetría de masa **no basta**. Lo que produce la inversión es el **desalineamiento**, por un ángulo pequeño $\delta$, entre los ejes principales del **tensor de inercia** y los ejes principales de **curvatura** de la superficie de contacto. Ese desalineamiento acopla el giro alrededor de la vertical con los dos modos de cabeceo y balanceo; para un sentido de giro el acoplamiento bombea energía hacia los modos de oscilación, y éstos la devuelven al giro con el signo contrario.

De aquí salen dos predicciones nulas verificables experimentalmente: si $\delta = 0$ no hay inversión, y si los dos momentos principales relevantes son iguales tampoco la hay. **Ambas asimetrías son necesarias.**

### El resultado profundo, y el centro del reto

En el modelo de **rodadura sin deslizamiento y sin disipación**, la energía se conserva **exactamente** — y sin embargo el giro se invierte y el sistema muestra comportamiento asintótico hacia un estado preferido. Esto parece contradecir el teorema de Liouville, que prohíbe atractores en un flujo hamiltoniano.

No hay contradicción: **un sistema no holónomo no es hamiltoniano**. El vínculo de rodadura no es integrable, el flujo en el espacio de fases reducido no proviene de una estructura simpléctica, y en general **no admite una medida invariante**. La ausencia de esa medida es precisamente lo que permite el comportamiento atractor pese a la conservación exacta de la energía.

El equipo debe:

1. Verificar numéricamente que la energía se conserva a lo largo de una inversión completa.
2. Calcular la divergencia del flujo en el espacio de fases y comprobar que **no** se anula.
3. Articular con precisión por qué esto no viola el teorema de Liouville, y qué hipótesis del teorema falla.

Éste es el punto de contacto más valioso del reto con el curso: obliga a enunciar el teorema de Liouville con sus hipótesis, en lugar de recordarlo como eslogan.

### La trampa de derivación — que es la misma que ya vieron, un nivel más profundo

Un vínculo no holónomo **no puede sustituirse en el lagrangiano antes de variar**. Hacerlo produce las ecuaciones *vakonómicas*, que describen un sistema físico distinto y **no** al rattleback. Hay que imponer el vínculo en las ecuaciones, mediante multiplicadores de Lagrange o la formulación de Gibbs–Appell.

Conviene señalarlo explícitamente en el enunciado, porque es exactamente el mismo error estructural que en el potencial efectivo: allí sustituir $\dot\theta = \ell/\mu r^2$ en $\mathcal{L}$ invierte el signo del término centrífugo y hay que pasar por el rutiano. Aquí la sustitución prematura cambia el sistema por completo. **La lección es la misma; el precio de ignorarla es mayor.**

### Las bifurcaciones

- **Modelo de contacto:** rodadura pura (no holónomo) frente a deslizamiento con fricción de Coulomb frente a régimen mixto. Los tres producen inversión, con dependencias distintas del tiempo de inversión respecto a $\omega_0$. ¿Cuál domina en un objeto real?
- **Disipación:** en el modelo conservativo pueden aparecer **inversiones múltiples** — gira, se invierte, y vuelve a invertirse. Los rattlebacks reales terminan asentados en el sentido preferido. ¿Es la disipación la que *selecciona* el estado final, sin ser el mecanismo de la inversión? El equipo debe separar ambos papeles.
- **Lineal frente a no lineal:** el análisis de estabilidad lineal predice cuál sentido de giro es inestable, pero **no puede predecir la inversión**, que es un fenómeno no lineal. Confundir ambas cosas es el error conceptual más común en este problema.
- **Contacto puntual rígido** frente a superficie con complianza y área de contacto finita.

### Verificación independiente — tres canales, dos de ellos experimentales

1. **Conservación de energía durante la inversión.** En el modelo no holónomo conservativo, $E$ debe permanecer constante mientras el giro cambia de signo. Un integrador cuya energía deriva no permite distinguir la inversión física del artefacto numérico. Si el código conserva la energía pero no invierte, el vínculo está mal impuesto.
2. **Test de quiralidad.** El rattleback es quiral: su imagen especular debe tener el sentido preferido opuesto. Construir el par enantiomérico y verificarlo. Es una comprobación de simetría pura que no requiere teoría alguna.
3. **Test nulo.** Construir un ejemplar con $\delta = 0$ — ejes de inercia y de curvatura alineados — y verificar que **no** invierte. Un experimento de control genuino, poco frecuente en cursos de mecánica.

### Construcción y medición

A diferencia del Gömböc, la tolerancia aquí es benigna: sirven un mango de cuchara curvado, media cáscara de plástico con masas pegadas asimétricamente, o piezas impresas en 3D. El equipo debe fabricar **una familia** con $\delta$ variable y medir:

- El tiempo de inversión frente a la velocidad angular inicial $\omega_0$.
- El tiempo de inversión frente a $\delta$.
- La frecuencia de cabeceo durante la fase inestable.

**Una advertencia que es en sí misma el resultado:** el tiempo de inversión depende **logarítmicamente** de la amplitud de la perturbación inicial de cabeceo, que el experimentador no controla. La dispersión de los datos será grande e irreducible por más cuidado que se ponga. El equipo debe *predecir* esa dispersión a partir del modelo en lugar de disculparse por ella. Reportar barras de error que el modelo explica es el objetivo.

### Dónde falla el asistente

Este sistema tiene una explicación popular muy difundida y equivocada en el énfasis:

- Atribuye la inversión a la **fricción**. La inversión ocurre en el modelo conservativo sin disipación alguna; la fricción selecciona el estado final, no lo causa.
- Dice que "la distribución asimétrica de masa" es la causa, sin identificar que lo esencial es el **desalineamiento entre ejes de inercia y ejes de curvatura**. Un cuerpo con masa asimétrica pero ejes alineados no es un rattleback.
- Trata el vínculo no holónomo como si fuera una fuerza disipativa.
- Si se le pregunta por Liouville, o bien afirma que el sistema es hamiltoniano, o bien concluye que la conservación de energía impide la inversión. Ambas respuestas son incorrectas y suenan igual de seguras.
- El código que genera para las ecuaciones de movimiento no holónomas pierde términos con frecuencia; la conservación de energía es el detector.

### Errores frecuentes de estudiantes

- Sustituir el vínculo en el lagrangiano (error vakonómico, arriba).
- Mezclar componentes de $\boldsymbol{\omega}$ en ejes cuerpo y en ejes laboratorio.
- Confundir el tensor de inercia respecto al centro de masa con el respecto al punto de contacto, que además se mueve.
- Concluir que la inversión viola la conservación del momento angular. No la viola: el plano ejerce par sobre el cuerpo a través del punto de contacto.
- Usar Runge–Kutta 4 y tomar la deriva de energía por física.

### Extensiones

- **Atractores extraños.** Se ha reportado en la literatura que el modelo no holónomo del rattleback exhibe atractores extraños en ciertos regímenes de parámetros — un sistema que conserva la energía y sin embargo posee un atractor caótico. Verificarlo numéricamente, con el control de error correspondiente, es un proyecto de nivel de publicación para un curso de posgrado.
- **Diseño inverso.** Dado un tiempo de inversión objetivo, determinar la geometría y la distribución de masa que lo producen. Fabricar y comprobar.
- **Conexión con el Reto 1.** El disco de Euler y el rattleback son ambos problemas de rodadura no holónoma con disipación, y ambos tienen explicaciones populares cuestionables. Un equipo que haga los dos puede comparar directamente los papeles de la disipación en cada uno.

### Nota para el instructor
Este reto y el Reto 11 forman una pareja natural: el Gömböc es un problema de **equilibrios y topología** resuelto por el paisaje de energía potencial; el rattleback es un problema de **dinámica no holónoma** donde el paisaje de energía no dice nada útil. Asignarlos a dos equipos y hacer que se presenten mutuamente los resultados obliga a articular por qué un método funciona en un caso y no en el otro.

Las referencias primarias — el análisis de estabilidad lineal clásico, los trabajos sobre inversiones múltiples y los reportes de atractores extraños — deben ser verificadas y añadidas por el instructor.

---

# Reto 13 — El aro desbalanceado: tirones, saltos y el umbral del plano inclinado

**Tema del curso:** vínculos holónomos, sistema unidimensional integrable, inercia efectiva dependiente de la configuración, estabilidad, bifurcaciones.
**Nivel:** 4.

### Planteamiento
Un aro de masa $M$ y radio $R$ lleva una masa puntual $m$ fija en su borde. Se lanza rodando sobre un plano horizontal. En ciertos regímenes el movimiento presenta **tirones** perceptibles. El reto tiene tres preguntas, de dificultad creciente:

1. **Explicar los tirones** y determinar de qué parámetros dependen.
2. **¿Se reproduce el comportamiento con cualquier distribución de masa desbalanceada?** Precisar qué significa "cualquier".
3. **¿Qué cambia si se altera el perfil del suelo** — en particular, sobre un plano inclinado?

### Formulación

Con $\theta$ medido desde la posición en que la masa toca el suelo, y rodadura sin deslizamiento (que en 2D **sí es holónoma**: $x=R\theta$ — contraste deliberado con los Retos 1 y 12, donde la rodadura en 3D no lo es):

$$\mathcal{L}=R^{2}\big[M+m(1-\cos\theta)\big]\dot\theta^{2}-mgR(1-\cos\theta).$$

El sistema tiene **un grado de libertad y la energía se conserva**: es integrable en el sentido de la §2.9 del texto, y por tanto reducible a cuadraturas. Pero con una diferencia esencial respecto a todo lo visto antes: la energía cinética es $\tfrac12 a(\theta)\dot\theta^{2}$ con

$$a(\theta)=2R^{2}\big[M+m(1-\cos\theta)\big],$$

es decir, **la inercia efectiva depende de la configuración** y oscila entre $2MR^2$ y $2(M+2m)R^2$ en cada vuelta.

### Pregunta 1 — Los tirones: tres mecanismos en competencia

Aquí está la primera bifurcación, y es la más importante del reto: **"tirón" no es un término bien definido, y hay al menos tres fenómenos distintos que lo producen.** El equipo debe distinguirlos, no elegir uno.

**(a) Modulación suave malinterpretada.** De la conservación de la energía,
$$\dot\theta^{2}=\frac{E-mgR(1-\cos\theta)}{R^{2}\big[M+m(1-\cos\theta)\big]},$$
de modo que $\dot\theta$ es máxima con la masa abajo y mínima con la masa arriba — donde numerador y denominador conspiran en el mismo sentido. Cerca de la separatriz $E=2mgR$ el aro casi se detiene en cada vuelta y luego acelera bruscamente. El movimiento es **perfectamente suave**, pero se percibe como tirón. Para $E<2mgR$ el aro ni siquiera completa la vuelta: avanza, se detiene y retrocede — libración pendular.

**(b) Salto.** El aro puede despegar cuando la fuerza normal se anula:
$$N=(M+m)g+m\big(R\ddot\theta\sin\theta+R\dot\theta^{2}\cos\theta\big)\le 0.$$

**(c) Deslizamiento.** La fuerza de rozamiento requerida es
$$F=\tfrac{m}{2}\sin\theta\,\big(R\dot\theta^{2}-g\big),$$
y el modelo de rodadura sólo vale mientras $|F|\le\mu N$. Las transiciones adherencia–deslizamiento producen tirones genuinos.

**El resultado clave que el equipo debe encontrar por sí mismo:** puesto que $\mu_{\rm req}=|F|/N$ y $F$ permanece finita cuando $N\to0$, el coeficiente requerido **diverge** en el instante del salto. Por tanto, para cualquier $\mu$ realista, **el deslizamiento precede necesariamente al salto**, salvo que $F$ se anule simultáneamente. Éste es exactamente el punto sobre el que la literatura publicada discrepa, y se demuestra en dos líneas.

Complemento cuantitativo: soltando el aro desde el reposo con la masa arriba, $N$ sólo alcanza cero para razones $m/M$ del orden de $10^{1}$. **En un experimento típico el aro no salta.** Un equipo que atribuya los tirones observados al salto sin verificar el umbral ha fallado el reto, por más elegante que sea su álgebra.

### Pregunta 2 — ¿Cualquier distribución desbalanceada?

Para una distribución arbitraria de masa total $M_t$, centro de masa desplazado una distancia $d$ del centro geométrico, y momento de inercia $I_{cm}$ respecto a su propio centro de masa:

$$T=\tfrac12\Big[M_t\big(R^{2}+d^{2}-2Rd\cos\theta\big)+I_{cm}\Big]\dot\theta^{2},\qquad V=-M_t g\,d\cos\theta+\text{cte}.$$

De aquí salen dos conclusiones que el equipo debe extraer y contrastar:

- **Sí, cualitativamente cualquier distribución con $d\neq0$ reproduce el fenómeno.** La estructura es idéntica: potencial pendular más inercia modulada.
- **Pero el sistema depende sólo de tres números:** $M_t$, $d$ e $I_{cm}$. Infinitas distribuciones físicamente distintas producen **dinámica idéntica**. El movimiento de rodadura no permite reconstruir la distribución de masa, sólo tres de sus momentos. Éste es un enunciado de **problema inverso mal planteado**, hermano del Reto 9.

Además, en el caso clásico de masa puntual sobre aro los tres parámetros **no son independientes**: quedan fijados por $m/M$ y $R$. Una distribución general tiene un parámetro libre más, y por tanto accede a regímenes que el problema clásico no alcanza. Caracterizar esa región adicional del espacio de parámetros es trabajo original.

**Experimento decisivo:** construir dos ruedas físicamente distintas con el mismo $(M_t,d,I_{cm})$ — por ejemplo una masa concentrada frente a dos masas repartidas — y verificar que ruedan de forma indistinguible. Es una comprobación elegante de la reducción, y no requiere ajustar nada.

### Pregunta 3 — El plano inclinado: donde aparece la física nueva

Sobre una pendiente de ángulo $\alpha$, el potencial adquiere un término secular y se convierte en el **potencial de tabla de lavar inclinada**:

$$V(\theta)\;\propto\;-\,M_t g R\theta\sin\alpha \;-\; M_t g\,d\cos\theta .$$

Consecuencias, todas medibles:

- **Existe equilibrio estático si y sólo si $\sin\alpha\le d/R$.** El peso desplazado suministra un par restaurador que compensa la componente de la gravedad. Para masa puntual, $d/R=m/(M+m)$, de modo que $m/M=0.2$ da $\alpha_{\max}=9.6^\circ$ y $m/M=1$ da exactamente $30^\circ$. **Predicción sin parámetros ajustables, verificable con un transportador.**
- **En $\sin\alpha=d/R$ ocurre una bifurcación silla-nodo:** los equilibrios estable e inestable se fusionan y desaparecen. Cerca del umbral hay *critical slowing down* — el aro tarda cada vez más en asentarse. Medir ese tiempo divergente es un experimento de bifurcación con material de ferretería.
- **Biestabilidad.** Por encima del umbral no hay equilibrios; por debajo, coexisten los equilibrios con soluciones "corredoras" en las que el aro sigue bajando si se lanza con suficiente velocidad. Cuál de los dos estados se alcanza depende de las condiciones iniciales **y del modelo de disipación**. Ésta es la segunda bifurcación de supuestos del reto.
- **Salto y deslizamiento se vuelven más fáciles:** $N$ se reduce en $\cos\alpha$ mientras la fuerza motriz crece. Recalcular los umbrales.

### Verificación independiente

1. **Energía.** El vínculo de rodadura no realiza trabajo, así que $E$ se conserva exactamente en el modelo ideal. Un integrador cuya energía derive no distingue tirón físico de artefacto numérico.
2. **Frontera de validez del modelo, monitorizada en tiempo real.** El equipo debe evaluar $N(t)$ y $\mu_{\rm req}(t)$ **durante** la integración y **detenerla** en la primera violación, cambiando de modelo. La mayoría de los equipos seguirá integrando pasada la frontera y producirá trayectorias sin sentido físico. Saber cuándo muere el propio modelo es el objetivo pedagógico central de este reto.
3. **Retrato de fases.** Debe ser el de un péndulo con inercia modulada; ninguna trayectoria puede cruzar la separatriz $E=2mgR$.
4. **Umbral del plano inclinado.** $\sin\alpha=d/R$, medido sin ajuste.
5. **Test de degeneración.** Las dos ruedas con idénticos $(M_t,d,I_{cm})$ deben rodar igual.

### Dónde falla el asistente

- Explica los tirones eligiendo **un** mecanismo — casi siempre el salto, por ser el más llamativo — sin comparar los tres ni verificar cuál opera en el régimen del experimento.
- No detecta que $\mu_{\rm req}\to\infty$ cuando $N\to0$, y por tanto no concluye que el deslizamiento precede al salto. Es una deducción corta que exige mirar el cociente, no cada fuerza por separado.
- El problema del aro saltarín tiene una **controversia documentada en la literatura**; el asistente presenta un lado como resuelto.
- Ante "¿cualquier distribución desbalanceada?" responde "sí" sin advertir la degeneración de tres parámetros — que es lo interesante de la pregunta.
- En el plano inclinado, omite habitualmente el equilibrio estático y el umbral $\sin\alpha=d/R$, y nunca menciona la bifurcación silla-nodo ni la biestabilidad. Suele suponer sin más que el aro rueda cuesta abajo.

### Errores frecuentes de estudiantes

- Usar $I=MR^{2}$ para el conjunto, olvidando el término de la masa añadida y el teorema de ejes paralelos respecto al centro de masa compuesto.
- Tomar la altura del centro de masa del **aro** como constante — lo es — y suponer erróneamente que lo mismo vale para el centro de masa del **sistema**, que no lo es.
- Escribir $N=(M+m)g$ por analogía con el rodamiento equilibrado.
- Confundir la velocidad angular $\dot\theta$ con la velocidad del centro del aro dividida por $R$ — coinciden aquí, pero no en el caso general con $d\neq0$ si se define mal el ángulo.
- Integrar más allá de la frontera de validez del vínculo.

### Material y medición

Trivialmente accesible: un aro de hula-hula con una abrazadera, una llanta de bicicleta con un peso, un CD con plastilina, o anillos impresos en 3D. Video en cámara lenta con un teléfono y seguimiento de puntos. Se recomienda construir una familia con $m/M$ variable y medir: la modulación de $\dot\theta$ por vuelta, el umbral $\alpha_{\max}$, y el tiempo de asentamiento cerca del umbral.

### Extensiones

- **Suelo periódico.** Un perfil sinusoidal introduce forzamiento paramétrico. ¿Aparece caos? ¿Resonancia entre el período de rodadura y el del suelo?
- **Rodadura cuesta arriba.** El aro puede subir, detenerse e invertir. ¿Cuál es la condición sobre $E$ y $\alpha$?
- **Conexión con el Reto 1.** El disco de Euler y el aro desbalanceado son ambos problemas de rodadura con pérdida de contacto o de adherencia. Comparar cómo se identifica en cada uno la frontera de validez del modelo.

### Nota para el instructor
Este reto es el mejor candidato de los trece para **abrir** el ciclo de proyectos. Es de material barato, la formulación es accesible inmediatamente después de la clase de potencial efectivo, y sin embargo contiene una controversia real de la literatura, un problema inverso degenerado y una bifurcación silla-nodo medible. Las referencias sobre el aro saltarín — incluidos los trabajos que argumentan que no salta — deben ser localizadas y verificadas por el instructor antes de distribuir el enunciado.

---

# Reto 14 — El péndulo que se vacía: por qué la masa variable casi nunca es lo que importa

**Tema del curso:** sistemas de masa variable, péndulo físico, invariantes adiabáticos, resonancia paramétrica.
**Nivel:** 4.

### Planteamiento
Una botella llena de agua cuelga de una cuerda de longitud $L$ y pierde agua por un orificio en su base a un ritmo conocido. Se la pone a oscilar. **¿Cómo evolucionan el período y la amplitud mientras se vacía?**

La respuesta correcta contradice tres intuiciones distintas, y ninguna de las tres se corrige sola.

### Trampa 1 — La ecuación de masa variable

Para un sistema de masa variable, la ecuación correcta es

$$m\frac{d\mathbf v}{dt}=\mathbf F_{\rm ext}+\dot m\,(\mathbf u-\mathbf v),$$

donde $\mathbf u$ es la velocidad del material expulsado. **Escribir $\frac{d(m\mathbf v)}{dt}=\mathbf F$ es incorrecto**: no es invariante galileano.

Si el agua gotea sin velocidad relativa, $\mathbf u=\mathbf v$, el término de reacción **se anula**, y para un péndulo de masa puntual queda

$$m(t)L\ddot\theta=-m(t)g\sin\theta\quad\Longrightarrow\quad \ddot\theta=-\frac{g}{L}\sin\theta .$$

**La masa desaparece por completo: el período no cambia.** La formulación incorrecta, en cambio, produce

$$L\ddot\theta+\frac{\dot m}{m}L\dot\theta=-g\sin\theta,$$

un término de amortiguamiento espurio — y como $\dot m<0$, es *anti*-amortiguamiento, que predice una amplitud creciente. Es el error canónico de este problema y sobrevive a mucha racionalización posterior.

**Matiz que hay que recuperar después:** por un orificio, el agua sale con velocidad $\sqrt{2g_{\rm ef}y}$ *relativa* a la botella, así que $\mathbf u\neq\mathbf v$ y sí hay empuje. Pero si el orificio está sobre el eje, el empuje no ejerce par respecto al pivote. El equipo debe establecer bajo qué condiciones geométricas esa cancelación falla.

### Trampa 2 — La botella no es una masa puntual, y ahí está toda la física

El centro de masa del conjunto botella+agua, medido desde la base, es

$$h_{cm}(y)=\frac{m_c h_c+\rho A y\,(y/2)}{m_c+\rho A y},$$

con $y$ la altura de la columna de agua. Esta función **no es monótona**: primero baja, alcanza un mínimo y vuelve a subir. Colgando la botella por el cuello, la longitud efectiva $\ell=L+(H-h_{cm})$ tiene por tanto un **máximo**, y el período

$$T\simeq 2\pi\sqrt{\ell/g}$$

**crece, alcanza un máximo y regresa a su valor inicial.** Que empiece y termine en el mismo valor con un máximo en medio es una firma cualitativa que no requiere ningún ajuste para reconocerse.

**El resultado elegante que el equipo debe demostrar:** derivando e igualando a cero se obtiene $\tfrac12\rho A y^2+m_c y-m_c h_c=0$, cuya solución satisface exactamente

$$\boxed{\,h_{cm}(y^*)=y^*\,}$$

es decir, **el centro de masa alcanza su mínimo justo cuando coincide con la superficie libre del agua.** Es un criterio puramente estático que predice un extremo dinámico — y por eso constituye un canal de verificación independiente de primer orden.

### Trampa 3 — Péndulo físico, no péndulo simple

Con la masa distribuida, el período correcto es $T=2\pi\sqrt{I_{\rm piv}/(Mg\ell)}$, y $I_{\rm piv}$ también cambia al vaciarse. El equipo debe calcular ambas versiones y cuantificar la diferencia antes de decidir cuál usar.

### La conexión con acción-ángulo

Si el vaciado es lento frente al período, la acción es adiabáticamente invariante y, con $\omega=\sqrt{g/\ell}$,

$$E/\omega \propto \ell^{3/2}\theta_0^{2}=\text{cte}\quad\Longrightarrow\quad \theta_0\propto \ell^{-3/4}.$$

**La amplitud angular debe disminuir mientras el péndulo se alarga y recuperarse después.** Pero aquí hay una pregunta genuina que el equipo debe resolver, no dar por hecha: la masa está **saliendo del sistema**, llevándose energía y momento angular. ¿Sigue siendo aplicable el teorema adiabático, y sobre qué cantidad — la acción, o la acción por unidad de masa? La respuesta depende de que el agua se lleve exactamente la energía específica local, y eso hay que argumentarlo.

Ventaja experimental decisiva: **el parámetro de adiabaticidad se controla con el diámetro del orificio.** Ampliarlo saca al sistema del régimen adiabático de forma continua y reproducible — algo que en el Reto 5 sólo se puede hacer numéricamente.

### Trampa 4 — El sistema se excita paramétricamente a sí mismo

En el marco del péndulo la gravedad efectiva en la base es $g_{\rm ef}\simeq g\cos\theta+\ell\dot\theta^{2}$, que oscila a **dos veces** la frecuencia del péndulo. Por Torricelli el gasto va como $\sqrt{g_{\rm ef}\,y}$, de modo que $\dot y$, y con ello $\ell$, quedan modulados a $2\omega$ — que es exactamente la condición de **resonancia paramétrica**.

Y hay una predicción falsable y muy fina: puesto que $\ell(y)$ tiene un extremo, **el signo del acoplamiento paramétrico se invierte** cuando el nivel del agua cruza $y^*$. El mismo mecanismo debería bombear el péndulo en una fase del vaciado y amortiguarlo en la otra. Determinar si el efecto supera la disipación es una estimación de orden de magnitud, y comprobarlo experimentalmente es trabajo original.

### Las bifurcaciones de supuestos

1. **Masa puntual frente a péndulo físico** — fórmulas de período distintas.
2. **Agua rígida frente a chapoteo.** El agua es un fluido: a primera aproximación la superficie libre se mantiene perpendicular a $\mathbf g_{\rm ef}$ y se comporta como sólido, pero cerca de resonancia con los modos de *sloshing* no.
3. **Ley de vaciado:** gasto constante, Torricelli con $g$ estática, o Torricelli con $g_{\rm ef}(t)$ modulada por el propio movimiento — un lazo de realimentación.
4. **Velocidad de expulsión:** goteo ($\mathbf u=\mathbf v$) frente a chorro con velocidad relativa.
5. **Cuerda frente a varilla rígida.** Una botella colgada de una cuerda flexible tiene un grado de libertad adicional de balanceo: es un **doble péndulo**, no un péndulo simple. ¿Cuándo importa?

### Verificación independiente — cuatro canales, tres experimentales

1. **Firma cualitativa sin ajuste:** el período debe ser no monótono, con un único máximo, y regresar a su valor inicial.
2. **Criterio estático que predice un extremo dinámico:** localizar $y^*$ equilibrando la botella parada sobre un filo, y comprobar que el máximo del período ocurre en ese nivel. Una medición estática validando una predicción dinámica.
3. **Ley de vaciado medida por separado:** filmar el nivel $y(t)$ y confirmar la ley de emptying *antes* de usarla en la dinámica.
4. **Predicción adiabática sin parámetros libres:** medir amplitud y período simultáneamente y representar $\theta_0\,\ell^{3/4}$ frente al tiempo. Debe ser plano. Repetir con orificio grande y comprobar que deja de serlo.

### Órdenes de magnitud (nota para el instructor, no para el enunciado)

Con una botella PET de 1,5 L idealizada como cilindro ($H=30$ cm, $D=8{,}8$ cm, $m_c=40$ g) y cuerda de 50 cm:

| | agua $y$ | $\ell$ | $T$ |
|---|---|---|---|
| llena | 30,0 cm | 65,0 cm | 1,617 s |
| en $y^*$ | 3,83 cm | 76,2 cm | 1,751 s |
| vacía | 0 | 65,0 cm | 1,617 s |

El máximo del período está **8,3 % por encima** del valor inicial y ocurre al **12,8 % de llenado** — nivel bajo y contraintuitivo, lo que hace el experimento discriminante. La amplitud debería caer al **88,8 %** y recuperarse. Los tiempos de vaciado por Torricelli van de 213 s (orificio de 3 mm, $\epsilon\approx0{,}008$) a 19 s (10 mm, $\epsilon\approx0{,}08$): una década de adiabaticidad ajustable con un taladro.

### Dónde falla el asistente

- Escribe $\frac{d}{dt}(m\ell^{2}\dot\theta)=-mg\ell\sin\theta$ y reporta un término de amortiguamiento. Es el error más frecuente y el más difícil de desalojar, porque el resultado *parece* razonable.
- Afirma que el período crece monótonamente al vaciarse, o que no cambia. Casi nunca detecta la no monotonía del centro de masa, que es el fenómeno central.
- Toma "a un ritmo conocido" como gasto constante sin cuestionar Torricelli, y nunca advierte que $g_{\rm ef}$ modula el gasto.
- Mezcla el resultado del péndulo puntual (período invariante) con el del péndulo físico (período no monótono) y los presenta como si fueran el mismo cálculo.
- No plantea la pregunta de si el teorema adiabático se aplica cuando la masa abandona el sistema.

### Errores frecuentes de estudiantes

- Sustituir $m\to m(t)$ en la ecuación del péndulo constante y darlo por hecho.
- Medir $h_{cm}$ desde el pivote en lugar de desde la base, o al revés, y obtener un mínimo donde hay un máximo.
- Colgar la botella boca abajo sin notar que invierte el signo del efecto.
- Iniciar con amplitud grande y comparar con la fórmula de pequeñas oscilaciones sin la corrección anarmónica, que a 30° ya es del 1,7 %.
- Confundir el amortiguamiento real por rozamiento del aire con la variación adiabática de amplitud predicha. **Es imprescindible una medida de control con la botella sellada** para separar ambos.

### Extensiones

- **Ruptura de la adiabaticidad.** Agrandar el orificio hasta que $\epsilon\sim0{,}1$ y contrastar con el Reto 5: allí la ley de escala se estudia numéricamente, aquí se mide.
- **Resonancia con los modos de chapoteo.** Estimar la frecuencia de *sloshing* del primer modo y diseñar una botella cuya frecuencia coincida con $\omega$ o $2\omega$.
- **Diseño inverso.** ¿Qué perfil de sección $A(y)$ hace que $\ell$ permanezca constante durante todo el vaciado — un péndulo isócrono que se vacía?

### Nota para el instructor
Este reto es la pareja experimental natural del Reto 5: mismo contenido teórico — invariancia adiabática — pero con el parámetro de lentitud fijado por un orificio en vez de por una función escrita a mano. Asignarlos juntos permite que un equipo mida lo que el otro simula. El material cuesta menos que un café.

---

# Reto 15 — La botella medio llena que rueda: dos mecanismos, una medida que los separa

**Tema del curso:** rodadura, momento de inercia efectivo, modos normales, resonancia, análisis dimensional.
**Nivel:** 4.

### Planteamiento
Una botella cilíndrica parcialmente llena de líquido, empujada horizontalmente, rueda con **velocidad oscilante**. Determinar:

1. ¿De qué depende la **magnitud** de las oscilaciones de velocidad, y cómo?
2. ¿Depende de la **cantidad** de líquido?
3. ¿Depende de su **viscosidad**?

### El punto de partida que hay que cuestionar

La botella medio llena **no es un sólido rígido**. Con líquido poco viscoso, la cáscara gira mientras el líquido apenas lo hace: el acoplamiento ocurre sólo a través de una capa límite viscosa junto a la pared. En consecuencia el líquido aporta inercia **traslacional** pero no **rotacional**, y la rodadura obedece

$$a=\frac{g\sin\alpha}{1+I_{\rm ef}/(M_{\rm tot}R^{2})},\qquad I_{\rm ef}\;\longrightarrow\;m_s R^{2}\ \ \text{(líquido desacoplado)}$$

en lugar de $I_{\rm ef}=m_sR^2+\tfrac12M_LR^2$ (líquido corrotante). Toda la estructura del problema sale de esta competencia.

### Dos mecanismos rivales para las oscilaciones — y cómo distinguirlos

**Mecanismo A — Desbalance del centro de masa.** Si el líquido corrota, su centro de masa queda descentrado respecto al eje y el sistema es **exactamente el aro desbalanceado del Reto 13**: inercia efectiva modulada, oscilación de $\dot\theta$. La frecuencia de oscilación es entonces **la frecuencia de rodadura** $\Omega=v/R$.

**Mecanismo B — Chapoteo (*sloshing*).** El empujón inicial excita el modo fundamental de la superficie libre. El centro de masa del líquido oscila horizontalmente y, por conservación del momento, la cáscara oscila en contrafase. La frecuencia es entonces la **frecuencia propia de chapoteo** $\omega_s$, fijada por $R$ y el llenado.

$$\boxed{\text{Mecanismo A: }\omega_{\rm osc}=v/R\ \text{ (decrece al frenarse)}\qquad\text{Mecanismo B: }\omega_{\rm osc}=\omega_s\ \text{ (constante)}}$$

**Ésta es la medida decisiva del reto, y sólo requiere video:** al frenarse la botella, ¿la frecuencia de oscilación cae proporcionalmente a la velocidad, o permanece fija? Un solo experimento distingue los dos mecanismos sin ajustar nada.

Predicción adicional: si ambos mecanismos coexisten, las dos frecuencias son próximas y la señal de velocidad debe mostrar **batidos**. Detectarlos es evidencia directa de la coexistencia.

### Estimación de $\omega_s$ — y una conexión con modos normales

Como primera aproximación, tratar el líquido de un cilindro medio lleno como un **semidisco rígido** que bascula alrededor del eje: centro de masa a $d=4R/3\pi$, momento de inercia $I_L=\tfrac12M_LR^{2}$, de donde

$$\omega_s^{2}=\frac{M_Lgd}{I_L}=\frac{8g}{3\pi R}.$$

Para $R=4{,}4$ cm da $f_s\simeq2{,}2$ Hz, independiente de la velocidad y de la densidad.

**Advertencia que el equipo debe articular:** el semidisco rígido es una *función de prueba*; el cociente de Rayleigh que produce es una **cota superior variacional** de la frecuencia verdadera, porque la superficie real se deforma. Comparar la medida con la cota y explicar el signo de la discrepancia es un ejercicio de método variacional aplicado a un experimento de cocina.

### Pregunta 1 — La amplitud

Sobre un ciclo, el intercambio de momento entre líquido y cáscara da

$$2m_s\,\delta v_{\rm cáscara}\simeq -M_L\,\delta v_{L},$$

donde el factor 2 es la inercia efectiva de rodadura de una cáscara cilíndrica. Por tanto

$$\left|\frac{\delta v_{\rm cáscara}}{\delta v_L}\right|\simeq\frac{M_L}{2m_s}.$$

**La amplitud está gobernada por la razón de masas líquido/recipiente.** Predicción tajante y fácil de aislar: una botella PET de 1,5 L ($m_s\approx40$ g) amplifica por $\sim\!11$; una botella de vidrio del mismo radio y llenado ($m_s\approx500$ g) amplifica por $\sim\!0{,}9$. **Mismo líquido, mismo radio, mismo llenado, oscilación doce veces menor.** Ningún otro parámetro cambia.

### Pregunta 2 — La cantidad de líquido

La respuesta es **no monótona, con ceros en ambos extremos**:

- Botella vacía: no hay oscilación.
- Botella completamente llena: **no hay superficie libre**, luego no hay modo de chapoteo, luego no hay oscilación (aunque el líquido siga sin corrotar).
- El máximo está en algún llenado intermedio, donde compiten la masa disponible (crece con el llenado) y la excursión del centro de masa por unidad de inclinación de la superficie (decrece).

Localizar ese máximo experimentalmente y predecirlo es el núcleo cuantitativo de esta pregunta. Además $\omega_s$ **también** depende del llenado: una capa somera en un canal curvo es un problema de aguas someras, no un semidisco basculante, y el modelo debe cambiar. El equipo debe identificar dónde deja de valer cada descripción.

### Pregunta 3 — La viscosidad

Aquí la respuesta correcta no es "amortigua". El grupo adimensional relevante compara la **profundidad de penetración viscosa en un giro** con el radio:

$$\frac{\delta}{R}=\frac{1}{R}\sqrt{\frac{\nu}{\Omega}}=\sqrt{\rm Ek}.$$

- $\delta/R\ll1$ (agua): líquido desacoplado, chapoteo poco amortiguado, **oscilaciones grandes y persistentes**; el líquido no aporta inercia rotacional.
- $\delta/R\gtrsim1$ (miel, jarabe): el líquido corrota como sólido, el chapoteo está sobreamortiguado y **desaparece** — pero entonces aparece el Mecanismo A a la frecuencia de rodadura.
- Intermedio: amortiguamiento máximo y transición entre mecanismos.

**Es decir: la viscosidad no reduce las oscilaciones de forma monótona; cambia cuál es el mecanismo.** El equipo debe obtener el grupo adimensional por análisis dimensional antes de medir, y luego comprobar que los datos de distintos $\nu$, $R$ y $\Omega$ **colapsan** al representarlos frente a él. Ese colapso es la prueba de que la escala es correcta.

Mezclas agua–glicerina o jarabe diluido cubren tres décadas de viscosidad con material de cocina. Nota honesta: con glicerina pura a $\Omega\sim10$ rad/s se alcanza $\delta/R\approx0{,}24$; llegar al régimen corrotante requiere además reducir $\Omega$, lo cual el equipo debe planificar en lugar de descubrir a mitad de camino.

### Verificación independiente — cinco canales

1. **Test de frecuencia** (el decisivo): ¿$\omega_{\rm osc}$ sigue a $v/R$ o permanece constante?
2. **Ceros en ambos extremos:** amplitud $\to0$ para llenado $\to0$ y $\to1$. Sin ajustes.
3. **Test de razón de masas:** PET frente a vidrio, todo lo demás igual.
4. **Carrera en rampa como sonda independiente.** El mismo modelo de $I_{\rm ef}$ que explica las oscilaciones predice la aceleración en un plano inclinado: $a/g\sin\alpha\approx0{,}96$ para media botella de agua frente a $\approx0{,}66$ si el líquido corrotara, y $0{,}50$ para la botella vacía. **La botella medio llena de agua debe ganarle a la vacía y a la de miel.** Que la oscilación y la carrera se expliquen con el mismo $I_{\rm ef}$ es la validación cruzada más fuerte del reto.
5. **Colapso adimensional** de los datos de viscosidad.

### Paso por resonancia

Con $R=4{,}4$ cm, $\Omega=\omega_s$ ocurre a $v\approx0{,}61$ m/s — **justo en el rango de un empujón normal**. Al frenarse, la botella barre la resonancia entre la rodadura y el chapoteo. ¿Se observa amplificación al cruzarla? ¿Es un cruce adiabático o rápido? Conecta directamente con los Retos 5 y 14.

### Órdenes de magnitud (nota para el instructor)

| | valor |
|---|---|
| $f_s$, cilindro medio lleno (semidisco rígido) | 2,55 Hz (0,5 L) · 2,19 Hz (1,5 L) · 2,00 Hz (2 L) |
| Resonancia $\Omega=\omega_s$, botella 1,5 L | $v\approx0{,}61$ m/s |
| $\delta/R$ a $\Omega=10$ rad/s, $R=4{,}4$ cm | agua 0,007 · glicerina 80 % 0,056 · glicerina pura 0,24 · miel 0,32 |
| $a/g\sin\alpha$, media botella | 0,96 (desacoplado) frente a 0,66 (corrotante) frente a 0,50 (vacía) |
| $\|\delta v_{\rm cáscara}/\delta v_L\|$ | 11,4 (PET 1,5 L) frente a 0,9 (vidrio) |

### Dónde falla el asistente

- Trata la botella como sólido rígido con un momento de inercia corregido y **omite el chapoteo por completo** — con lo que pierde el mecanismo dominante para el agua.
- Afirma que el líquido "añade inercia y por eso rueda más lento", que tiene el **signo equivocado** para la carrera en rampa.
- Atribuye las oscilaciones al desbalance del centro de masa sin proponer ninguna forma de distinguirlo del chapoteo.
- Dice que la viscosidad amortigua monótonamente; no detecta que conmuta el mecanismo.
- Da la frecuencia de chapoteo de un **tanque rectangular**, que no aplica a sección circular, presentada con la misma seguridad.
- Ofrece "el número de Reynolds" sin especificar qué velocidad y qué longitud, que es donde está toda la física.

### Errores frecuentes de estudiantes

- Usar $I=\tfrac12MR^{2}$ para el conjunto.
- No separar en los datos la frecuencia de rodadura de la de chapoteo, e informar de una sola cuando hay batidos.
- Suponer que el empujón inicial imparte momento angular al líquido.
- Comparar botellas de distinto radio sin normalizar, mezclando el efecto de $R$ sobre $\omega_s$ con el de la razón de masas sobre la amplitud.
- Medir la amplitud de oscilación de la *posición* cuando la predicción es sobre la *velocidad*.

### Extensiones

- **Corrotación transitoria.** Partiendo del reposo, ¿cuánto tarda la capa límite en arrastrar el líquido? Escala de tiempo $R^{2}/\nu$: segundos para agua, milisegundos para miel. ¿Se observa la transición de mecanismo *durante* un solo lanzamiento?
- **Sección no circular.** Una botella de sección cuadrada o con estrías cambia $\omega_s$ y añade forzamiento a la frecuencia de rodadura. ¿Aparece caos?
- **Diseño inverso.** ¿Qué llenado y qué viscosidad maximizan la distancia recorrida con un empujón dado?

### Nota para el instructor
Este reto cierra un ciclo con el 13 y el 14: el aro desbalanceado da el mecanismo A en estado puro, la botella que se vacía da el papel del centro de masa móvil, y aquí ambos compiten y hay que decidir experimentalmente cuál opera. Asignados en ese orden a lo largo del semestre, los tres construyen la misma competencia — identificar el mecanismo antes de calcular — sobre material que cuesta menos que un libro de texto.

---

# Reto 16 — ¿Energía o momento? Dos cadenas que exigen respuestas opuestas

**Tema del curso:** sistemas de masa variable, conservación de energía y de momento, colisiones inelásticas, límites de validez de un formalismo.
**Nivel:** 4.

### Planteamiento
La ecuación de un sistema de masa variable **no está cerrada**: hay que suministrar un modelo de lo que ocurre en la región donde la masa se incorpora o abandona el sistema. Este reto enfrenta al equipo con **dos configuraciones de cadena en las que el cierre correcto es el opuesto**, y donde equivocarse es experimentalmente detectable.

### Configuración A — La cadena plegada que cae (problema de Cayley)

Una cadena de longitud $L$ y densidad lineal $\lambda$ cuelga doblada por la mitad desde un soporte: un extremo fijo, el otro sujeto junto a él. Se suelta el extremo libre. **¿Cae más rápido o más lento que en caída libre?**

**Cierre energético** (el pliegue es una curva suave, sin pérdidas). Con $y$ la caída del extremo libre:

$$\dot y^{2}=\frac{g\,y\,(2L-y)}{L-y},\qquad \ddot y=\frac{g}{2}\,\frac{2L^{2}-2Ly+y^{2}}{(L-y)^{2}} .$$

De donde sale una razón notablemente limpia frente a la caída libre:

$$\frac{\dot y^{2}}{2gy}=\frac{L-y/2}{L-y}\;>\;1\quad\text{siempre.}$$

La punta arranca exactamente con $\ddot y=g$ y **acelera por encima de $g$ a partir de ahí, divergiendo** al acercarse el pliegue al final.

**Cierre de momento** (cada eslabón es capturado inelásticamente en el pliegue, con disipación). Predice $\ddot y\le g$.

Los dos modelos difieren **cualitativamente**, no en un factor. Y el experimento existe: mediciones publicadas de la aceleración de la punta encuentran valores **por encima de $g$**, seleccionando el cierre energético.

### Configuración B — La cadena que cae sobre una balanza

La misma cadena, apilada, se deja caer verticalmente sobre el plato de una balanza. Con $x$ la longitud ya depositada, el cierre de momento da

$$N=\underbrace{\lambda g x}_{\text{peso del montón}}+\underbrace{\lambda v^{2}}_{\text{flujo de momento}}=\lambda g x+2\lambda g x=3\lambda g x=3W_{\rm montón}.$$

**La balanza marca el triple del peso depositado.** Y aquí el cierre correcto es el **de momento**: los eslabones aterrizan inelásticamente y la energía sí se disipa. El cierre energético daría un factor distinto y equivocado.

### El núcleo del reto

$$\textbf{Mismo formalismo. Cierres opuestos. Y sólo el mecanismo microscópico decide cuál.}$$

El equipo debe: derivar ambos cierres para ambas configuraciones (cuatro predicciones), medir las dos configuraciones, y **argumentar físicamente** por qué el pliegue de la configuración A conserva energía mientras el impacto de la configuración B la disipa. No basta con acertar; hay que explicar por qué la regla no es universal.

Es exactamente la lección del Reto 14 elevada de grado: allí la pregunta era si $\mathbf u=\mathbf v$; aquí es si la transferencia es elástica o inelástica, y la respuesta cambia de un montaje a otro.

### Las bifurcaciones

- **Radio del pliegue.** El modelo energético supone un pliegue de radio nulo. Un pliegue real tiene curvatura finita y rigidez a flexión. ¿Cuánta disipación introduce? ¿Depende del tipo de cadena?
- **Tipo de cadena.** Cadena de bolas, cadena de eslabones, cuerda trenzada, collar de cuentas. Distinta rigidez, distinta disipación en el pliegue. ¿Se observa la transición entre cierres al cambiar de cadena?
- **Balanza real.** Un dinamómetro tiene su propia frecuencia de respuesta. Si es comparable al tiempo de caída, mide su propio transitorio y no la fuerza. Caracterizarla **antes** es obligatorio.
- **Cadena no ideal:** rigidez a flexión, fricción entre eslabones, rebote de los eslabones al impactar. Se han reportado desviaciones del factor 3 en experimentos cuidadosos.

### Verificación independiente

1. **Comparación con la caída libre en la misma toma.** Soltar simultáneamente la cadena y una bola desde la misma altura, en el mismo cuadro de video. La punta debe adelantar a la bola de forma creciente. No requiere calibración: es una comparación directa dentro de la imagen.
2. **La firma de arranque.** El modelo energético exige $\ddot y\to g$ exactamente en $y=0$ y crecimiento monótono después. Que la curva medida arranque en $g$ es una verificación fuerte de la formulación, independiente del valor final.
3. **El factor 3 con la cadena parada.** Comprobar que la misma balanza, con la misma cadena depositada estáticamente, marca $W$ y no $3W$. Separa el efecto dinámico del estático sin ninguna teoría.
4. **Balance energético en B.** La energía disipada predicha debe coincidir con la diferencia entre la energía potencial liberada y la cinética residual.

### Órdenes de magnitud (nota para el instructor)

Cadena de 1 m, cierre energético:

| $y/L$ | $\ddot y/g$ | $v$ (m/s) | $v$ caída libre |
|---|---|---|---|
| 0,00 | 1,00 | 0,00 | 0,00 |
| 0,25 | 1,39 | 2,39 | 2,22 |
| 0,50 | 2,50 | 3,84 | 3,13 |
| 0,75 | 8,50 | 6,07 | 3,84 |

A media caída la punta ya va a $2{,}5g$ y un 23 % más rápido que en caída libre: **perfectamente resoluble con un teléfono a 240 fps**. Para la balanza, con $\lambda=0{,}10$ kg/m y $x=0{,}5$ m, la lectura predicha es 1,47 N (equivalente a 150 g) frente a 0,49 N de peso depositado.

### Dónde falla el asistente

- Aplica **un solo** cierre a ambas configuraciones, casi siempre el de momento, y concluye que la cadena plegada cae más lento que $g$ — contradicho por el experimento.
- Presenta la controversia energía/momento como si estuviera zanjada a favor de uno de los lados en general, cuando la resolución es **específica de cada montaje**.
- Deriva el factor 3 correctamente (es un resultado muy repetido en la literatura) pero no sabe justificar por qué ahí sí vale el cierre inelástico.
- Escribe $\frac{d}{dt}(mv)=F$ para la parte en caída y produce un término espurio.
- No advierte que la respuesta dinámica de la balanza puede dominar la medida.

### Errores frecuentes de estudiantes

- Confundir la velocidad del pliegue con la de la punta: difieren en un factor 2.
- Calcular el centro de masa de la cadena plegada olvidando que las dos ramas tienen longitudes distintas y variables.
- Medir la aceleración diferenciando la posición dos veces sobre datos ruidosos, en lugar de ajustar la solución analítica.
- Concluir que $\ddot y>g$ viola la conservación de la energía. No la viola: la rama en movimiento se acorta y el soporte hace fuerza sobre la rama fija.

### Extensiones

- **Cadena cayendo desde una mesa a un montón en el suelo** (recogida en lugar de depósito): tercer montaje, tercer cierre. ¿Cuál aplica?
- **El límite continuo.** Con cuentas grandes y espaciadas se ve eslabón a eslabón; con hilo fino, el continuo. ¿Dónde está la transición y qué parámetro adimensional la controla?

### Nota para el instructor
Este reto es el más adecuado para asignar **inmediatamente después** del Reto 14, porque comparte la moraleja y la hace inevitable: un formalismo de masa variable sin modelo de la frontera de transferencia está incompleto, y la naturaleza no aplica siempre la misma regla. Las referencias experimentales sobre la cadena plegada y sobre las desviaciones del factor 3 deben ser localizadas y verificadas por el instructor.

---

# Reto 17 — La fuente de cadena: un fenómeno que aún se discute

**Tema del curso:** flujo estacionario de masa, tensión en cuerdas móviles, balance de momento, contraste modelo–experimento.
**Nivel:** 4.

### Planteamiento
Una cadena de bolas apilada en un recipiente elevado, cuyo extremo se lanza por el borde, no se limita a caer: forma un **arco que se eleva por encima del recipiente** y se mantiene mientras dure el flujo. El fenómeno es reciente, espectacular, cuesta unos pocos euros reproducirlo — y su explicación **sigue siendo objeto de discusión en la literatura**.

Determinar de qué depende la altura de la fuente, y decidir experimentalmente entre las explicaciones rivales.

### El problema con la explicación obvia

La respuesta inmediata — "la cadena tiene inercia y no puede girar bruscamente en el borde" — no basta. Una cuerda flexible con tensión $T$ que se mueve a velocidad $v$ a lo largo de su propia curva se comporta como si su tensión efectiva fuera $T-\lambda v^{2}$: por eso un lazo de cadena lanzado rápido conserva su forma. Pero eso explica que el arco **se mantenga**, no que **suba**. Para elevarse por encima del punto de salida hace falta una fuerza vertical hacia arriba, y **una cadena sólo puede tirar, no empujar**.

De ahí la propuesta rival: los eslabones rígidos, al ser levantados por un extremo, hacen **palanca contra el montón**, que reacciona empujando hacia arriba. Si es cierto, la fuente es evidencia directa de una fuerza de reacción anómala en la zona de recogida.

**El reto consiste en diseñar los experimentos que distingan ambas explicaciones**, no en repetir ninguna de las dos.

### El experimento discriminante

Si el mecanismo es el apalancamiento de elementos **rígidos** contra el montón, entonces:

- **cadena de bolas** (cuentas rígidas unidas por tramos cortos) $\Rightarrow$ hay fuente;
- **cadena de eslabones** rígidos $\Rightarrow$ hay fuente;
- **cordón liso y flexible**, misma densidad lineal $\Rightarrow$ **no hay fuente**.

Es una prueba binaria, barata y sin ajustes. Si el cordón liso produce fuente, la explicación del apalancamiento está en problemas.

Segunda variable de control: **la naturaleza del montón**. Si la reacción proviene de la pila, apilar la cadena sobre espuma blanda, o sobre una capa de esferas sueltas, o en un recipiente profundo frente a uno plano, debería modificar la altura de forma sistemática.

### Las predicciones cuantitativas

**Velocidad del flujo.** En régimen estacionario, con $h_d$ la caída neta desde el borde hasta el suelo, la energía por unidad de masa da $gh_d=\tfrac12v^{2}+\varepsilon$, donde $\varepsilon$ es la disipación en la recogida. De ahí

$$v^{2}=\alpha\,g\,h_d,\qquad \alpha\in[1,2],$$

con $\alpha=2$ si la recogida es sin pérdidas y $\alpha=1$ si es completamente inelástica. **Medir $v$ directamente fija $\alpha$ y con ello cuánta energía se pierde al levantar la cadena del montón** — un resultado interesante por sí solo, y el punto de contacto con el Reto 16.

**Altura de la fuente.** Cualquier modelo en el que la altura la fije la escala $v^{2}/g$ predice

$$h_f \;\propto\; h_d ,$$

escalado **lineal** con la caída, con una constante de proporcionalidad que depende del mecanismo de recogida. Medir $h_f$ frente a $h_d$ variando la altura del recipiente contrasta la linealidad (robusta) y la constante (discriminante entre modelos).

**Medida directa de la reacción.** Colocar el recipiente sobre una balanza y registrar la lectura durante el flujo estacionario. El equipo debe derivar la lectura esperada con y sin la reacción anómala, y comparar. **Ésta es la medición que ataca el mecanismo de frente**, en lugar de inferirlo de la altura.

### Las bifurcaciones

- **Modelo de recogida:** perfectamente inelástico, sin pérdidas, o con una reacción del montón. Determina $\alpha$ y la existencia misma de la fuente.
- **¿Régimen estacionario?** La altura crece al principio y decae al vaciarse el recipiente. ¿Existe una meseta genuina, o el "estado estacionario" es una idealización que el experimento no alcanza?
- **Geometría del borde:** radio de curvatura del labio del recipiente, altura del montón respecto al borde. ¿Cuánto de la fuente es física del montón y cuánto del borde?
- **Continuo frente a discreto:** la cadena de bolas tiene una longitud de eslabón finita. ¿Qué parámetro adimensional compara esa longitud con el radio del arco, y cuándo deja de valer la descripción continua?

### Verificación independiente

1. **Test de tipo de cadena** (el decisivo): bolas y eslabones sí, cordón liso no.
2. **Test de substrato:** modificar el montón y comprobar que la altura responde.
3. **Linealidad $h_f\propto h_d$**, medida sobre al menos una década de alturas.
4. **Balance energético cerrado:** $v$ medida independientemente debe ser consistente con el $\alpha$ deducido del balance, y con la altura observada.
5. **Lectura de la balanza** contrastada con las dos predicciones derivadas.

### Dónde falla el asistente

- Ofrece la explicación de la inercia como si fuera completa, sin advertir que no puede producir una elevación **por encima** del punto de salida.
- Presenta la explicación de la reacción del montón como consenso establecido, cuando es objeto de discusión activa.
- No detecta la asimetría fundamental: **una cadena tira, no empuja**, que es el hecho del que arranca todo el problema.
- Confunde el argumento de la tensión efectiva $T-\lambda v^{2}$ (que explica la persistencia de la forma) con una explicación de la altura.
- Da $v=\sqrt{2gh_d}$ sin considerar la disipación en la recogida.

### Errores frecuentes de estudiantes

- Aplicar Bernoulli o analogías de fluidos a un sólido unidimensional.
- Medir la altura de la fuente desde el suelo en lugar de desde el borde del recipiente.
- Suponer $v$ constante a lo largo del arco sin verificarlo (lo es, en régimen estacionario e incompresible — pero hay que decirlo, no asumirlo).
- No caracterizar el transitorio y promediar sobre una fase en la que el recipiente ya se está vaciando.

### Extensiones

- **Fuente invertida:** ¿existe una configuración en la que la cadena se hunda por debajo del borde en lugar de elevarse?
- **Cadena diseñada.** Fabricar por impresión 3D cadenas con geometría de eslabón controlada y medir la altura frente a un parámetro de forma. Diseño inverso: ¿qué eslabón maximiza la fuente?
- **Conexión con el Reto 16.** El $\alpha$ medido aquí en recogida y el cierre inelástico verificado allí en depósito describen el mismo tipo de proceso en sentidos opuestos. ¿Son consistentes?

### Nota para el instructor
Es el reto más vistoso de los diecisiete y probablemente el mejor para una presentación pública o una feria de ciencias, pero su valor pedagógico no está en el espectáculo: está en que el estado de la cuestión **no está cerrado**, y por tanto ningún asistente puede entregar la respuesta. Un equipo que produzca datos limpios sobre el test de tipo de cadena y sobre la lectura de la balanza habrá hecho una contribución real, no un ejercicio. Las referencias sobre el efecto y sobre las objeciones publicadas deben ser localizadas y verificadas por el instructor antes de distribuir el enunciado.

---

## Tabla resumen

| # | Reto | Tema principal | Datos reales | Verificación independiente |
|---|---|---|---|---|
| 1 | Disco de Euler | Cuerpo rígido, vínculo no holónomo | Audio propio | Ley de escala en varias superficies |
| 2 | Huevo que se levanta | Ecuaciones de Euler, fricción | Video propio | Integral de Jellett |
| 3 | Determinación de órbita | Fuerzas centrales, Kepler | MPC / JPL Horizons | Cuarta observación no ajustada |
| 4 | Precesión de Mercurio | Perturbaciones | Efemérides | Venus, Tierra, Ícaro |
| 5 | Invariante adiabático | Acción-ángulo | — | Piso de ruido numérico |
| 6 | Medición del caos | Dinámica no lineal | — | Simetría del espectro de Lyapunov |
| 7 | Troyanos de Júpiter | Tres cuerpos restringido | MPC | Distribución observada de libraciones |
| 8 | Resonancia espín-órbita | Resonancias, caos | Datos de Mercurio/Hiperión | Criterio de Chirikov en tres casos |
| 9 | Modos normales inversos | Pequeñas oscilaciones | NIST | Predicción isotópica (D₂O) |
| 10 | Asistencia gravitacional | Dispersión, aproximaciones | JPL Horizons | Voyager 2 |
| 11 | Gömböc | Equilibrio, estabilidad, cuerpo rígido | Impresión 3D / video | Poincaré–Hopf: $S-H+U=2$ |
| 12 | Rattleback | Vínculos no holónomos, Liouville | Ejemplares propios | Energía constante + test nulo $\delta=0$ + quiralidad |
| 13 | Aro desbalanceado | Inercia efectiva, bifurcaciones | Aros propios | Umbral $\sin\alpha=d/R$ + test de degeneración |
| 14 | Péndulo que se vacía | Masa variable, invariante adiabático | Botella propia | $h_{cm}(y^*)=y^*$ estático + $\theta_0\ell^{3/4}$ constante |
| 15 | Botella medio llena que rueda | Inercia efectiva, modos, resonancia | Botellas propias | Test de frecuencia + carrera en rampa |
| 16 | Cadenas: ¿energía o momento? | Masa variable, cierre de la transferencia | Cadena propia | Carrera contra caída libre + factor 3 estático |
| 17 | Fuente de cadena | Flujo estacionario, reacción del montón | Cadena de bolas | Test de tipo de cadena + lectura de balanza |

---

## Notas de implementación para el instructor

**Sobre la asignación.** Los retos 1, 2, 5, 6, 9, 11, 12, 13, 14, 15, 16 y 17 no requieren datos externos difíciles de obtener y son los más seguros para una primera edición del curso. El **Reto 13** es el más adecuado para abrir el ciclo: material barato, formulación accesible justo después de la clase de potencial efectivo, y sin embargo contiene una controversia real, un problema inverso degenerado y una bifurcación medible. Los retos 3, 4, 7, 8 y 10 dependen de que los estudiantes manejen efemérides, lo cual añade una carga real de trabajo de datos; conviene ofrecer una sesión de laboratorio sobre JPL Horizons.

**Sobre el calendario.** Estos retos son de cinco a seis semanas. Se recomiendan tres hitos: (i) semana 2, hoja de supuestos y formulación, sin resultados; (ii) semana 4, resultados preliminares con verificación parcial; (iii) semana 6, entrega y defensa.

**Sobre la defensa oral.** Las preguntas deben derivarse del código y las derivaciones del propio equipo, no del tema en abstracto. Preguntas útiles: *"muéstreme la línea donde impone el vínculo"*, *"¿qué pasa si duplico este parámetro?"*, *"su compañero escribió esta función — explíquemela"*, *"¿cuál fue el error de la IA que más tardaron en detectar, y qué los alertó?"*

**Sobre el riesgo.** El fallo más probable no es que los equipos copien de la IA; es que **acepten la primera respuesta plausible y dejen de pensar**. La hoja de supuestos y la exigencia de verificación independiente están diseñadas para hacer visible ese fallo, no para prevenirlo. Un equipo que entrega una hoja de supuestos con una sola fila no ha entendido el reto, y eso es información útil para el instructor mucho antes de la entrega final.

**Advertencia sobre las referencias.** Este documento describe los fenómenos físicos y las controversias en términos generales, sin citar trabajos específicos. Antes de distribuirlo, conviene que el instructor verifique y añada las referencias primarias que quiera que los estudiantes consulten — particularmente para los retos 1, 2 y 8, donde el estado de la literatura es parte del problema.
