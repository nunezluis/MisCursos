
# Curso Retos 2026A

## Resumen general

| Equipo | Reto principal |
|---|---|
| Grupo 1 | Partícula libre en plataforma giratoria |
| Grupo 2 | Péndulo con masa variable |
| Grupo 3 | Momento angular con trompo de brazos retráctiles |
| Grupo 4 | Carro acelerado con péndulo |
| Grupo 4B | Polipasto de bajo costo |
| Grupo 5 | Cohete hidráulico |
| Grupo 6 | Segunda propuesta de polipasto / sistemas de poleas |
| Grupo 7 | INERLAB-R: inercia rotacional | Revisar antes de aprobar |
| Grupo 8 | Resistencia a la rodadura |
| Grupo 9 | Túnel de viento escolar de bajo costo |



## Grupo 1 — Partícula libre en plataforma giratoria

### Reto

Estudiar el movimiento de una canica liberada sobre una plataforma rotante y comparar la trayectoria observada desde un marco inercial y desde un marco rotante. La propuesta usa cámara fija, cámara solidaria a la plataforma, Tracker y simulación en Python.

### Recomendaciones exigibles

1. Formular explícitamente las ecuaciones en el marco inercial y en el marco rotante.
2. Incluir los términos de Coriolis y centrífugo.
3. Medir experimentalmente la velocidad angular de la plataforma, $ \Omega $, en lugar de suponerla.
4. Controlar y estimar la velocidad inicial de la canica.
5. Definir una métrica de comparación entre teoría y experimento, por ejemplo error cuadrático medio o residuos de \(x(t)\) y \(y(t)\).
6. Separar claramente simulación, predicción y datos experimentales reales.
7. Incluir análisis de incertidumbre en posición, tiempo, velocidad inicial y velocidad angular.

---

## Grupo 2 — Péndulo con masa variable y centro de masa variable

### Reto

Construir un péndulo físico formado por un recipiente que se vacía, de modo que cambian simultáneamente la masa total \(M(t)\), la posición del centro de masa y la longitud efectiva \(\ell(t)\). La propuesta compara agua y arena, usando modelos de vaciado tipo Torricelli y Beverloo.

### Recomendaciones exigibles

1. Separar claramente los efectos de pérdida de masa y desplazamiento del centro de masa.
2. Justificar la ecuación de movimiento para masa variable.
3. No trasladar de manera automática el formalismo lagrangiano usual sin discutir la masa variable.
4. Medir directamente \(M(t)\), \(h(t)\), \(\ell(t)\) y \(T(t)\).
5. Definir cómo se extraerá el periodo cuando el sistema no es estacionario.
6. Validar experimentalmente el modelo de vaciado: Torricelli para agua y Beverloo para arena.
7. Trabajar inicialmente en el régimen de pequeñas oscilaciones.
8. Declarar explícitamente el rango angular permitido.
9. Comparar agua y arena como dos regímenes físicos distintos, no solo como materiales intercambiables.

---

## Grupo 3 — Conservación del momento angular con trompo de brazos retráctiles

### Reto

Verificar la conservación del momento angular en un trompo con brazos retráctiles, midiendo el cambio de velocidad angular al modificar el radio efectivo de las masas.

### Recomendaciones exigibles

1. Garantizar que el cambio de radio ocurra sin torque externo apreciable.
2. Medir o estimar el torque de fricción del eje y del aire.
3. Evitar usar un motor activo durante la fase de conservación.
4. Si el motor permanece encendido, reconocer que el sistema no está aislado.
5. Determinar experimentalmente \(I_i\) e \(I_f\), no solo estimarlos mediante \(I=I_0+2mr^2\).
6. Medir \(\omega_i\) y \(\omega_f\) ajustando \(\theta(t)\), no por diferencias cuadro a cuadro.
7. Comparar:

   \[
   I_i\omega_i \quad \text{con} \quad I_f\omega_f
   \]

   incluyendo incertidumbres.
8. Explicar el balance energético: si \(I\) disminuye y \(L\) se conserva, la energía cinética aumenta por trabajo interno.

---

## Grupo 4 — Carro acelerado con péndulo: fuerzas ficticias

### Reto

Estudiar un péndulo dentro de un carro acelerado y comparar la descripción desde el laboratorio y desde el marco no inercial del carro.

### Recomendaciones exigibles

1. Corregir el título: debe decir **“movimiento rectilíneo uniformemente acelerado”**.
2. Corregir la transformación cinemática:

   \[
   \vec r'=\vec r-\frac{1}{2}\vec a_0t^2.
   \]

3. Derivar explícitamente la ecuación del péndulo en el carro acelerado.
4. Usar como predicción central:

   \[
   \tan|\theta_{\rm eq}|=\frac{a_0}{g}.
   \]

5. Medir \(a_0\) independientemente, por ajuste de \(x(t)\) o con acelerómetro.
6. Convertir el experimento del líquido en una segunda prueba cuantitativa:

   \[
   \tan\alpha=\frac{a_0}{g}.
   \]

7. Reportar incertidumbres de \(a_0\), \(\theta_{\rm eq}\) y \(\alpha\).
8. Reformular la comparación entre marcos: no se trata de decidir cuál marco es “más verdadero”, sino cuál descripción resulta más conveniente.

---

## Grupo 4B — Polipasto de bajo costo

### Reto

Construir un polipasto accesible para estudiar ventaja mecánica, diámetro de poleas, disposición de poleas y masa de la cuerda.

### Recomendaciones exigibles

1. Formular una pregunta medible, por ejemplo:

   > ¿Cómo cambia la eficiencia real del polipasto con el número de ramas, el diámetro de las poleas y la masa lineal de la cuerda?

2. Incluir medición directa de fuerza con dinamómetro.
3. Medir:

   \[
   MA_{\rm real}=\frac{mg}{F},
   \]

   \[
   VR=\frac{x}{y},
   \]

   \[
   \eta=\frac{mg\,y}{F\,x}.
   \]

4. Separar modelo ideal y efectos no ideales.
5. Justificar cómo se estudiará realmente el efecto del diámetro de las poleas.
6. Medir la masa lineal de la cuerda:

   \[
   \lambda=\frac{m_{\rm cuerda}}{L_{\rm cuerda}}.
   \]

7. Definir configuraciones específicas, número de poleas, cargas, repeticiones e incertidumbres.

---

## Grupo 5 — Cohete hidráulico

### Reto

Optimizar el volumen inicial de agua en un cohete hidráulico de botella, comparando trayectoria experimental con simulación numérica en Python.

### Recomendaciones exigibles

1. Incluir un protocolo de seguridad obligatorio antes de autorizar lanzamientos.
2. Distinguir presión manométrica y presión absoluta:

   \[
   P_{\rm abs,0}=P_{\rm atm}+P_{\rm gauge}.
   \]

3. Incluir coeficiente de descarga de la boquilla:

   \[
   \dot m=C_d^{\rm nozzle}\rho A_t v_e.
   \]

4. No afirmar que la aceleración siempre aumenta; el empuje cae al disminuir la presión.
5. Rediseñar la medición del apogeo. Una cámara a 5 m no es suficiente si se esperan alturas de 20–30 m.
6. Hacer al menos cinco lanzamientos por volumen.
7. Definir métricas de comparación:

   \[
   h_{\max}, \quad t_{\rm burnout}, \quad RMSE_y,
   \]

   además de residuos de trayectoria.
8. Validar el código con convergencia en \(\Delta t\) o usar `solve_ivp`.

---

## Grupo 6 — Segunda propuesta de polipasto / Atwood con efectos reales

### Reto

Estudiar sistemas de poleas en tres etapas: máquina de Atwood simple, polipasto 2:1 y 4:1, y máquina de Atwood doble con fricción, inercia de poleas y masa distribuida de la cuerda.

### Recomendaciones exigibles

1. Distinguir datos simulados, resultados esperados y datos experimentales reales.
2. Corregir el modelo del polipasto: no usar \(a=g/n\) como ley general.
3. Definir correctamente:

   \[
   MA_{\rm ideal}=n,
   \]

   \[
   MA_{\rm real}=\frac{mg}{F}.
   \]

4. Incorporar dinamómetro para medir fuerza.
5. Calcular eficiencia:

   \[
   \eta=\frac{mg\,y}{F\,x}.
   \]

6. Derivar el modelo de Atwood doble con restricciones geométricas explícitas.
7. Medir fricción e inercia de poleas de forma independiente.
8. Aumentar repeticiones a mínimo cinco por configuración.
9. Reducir el alcance si no hay tiempo suficiente: es preferible hacer bien Atwood simple y polipasto 2:1/4:1 que desarrollar tres montajes incompletos.

---

## Grupo 7 — INERLAB-R: sistema de inercia rotacional

### Reto

Construir un sistema rotacional de bajo costo para medir momentos de inercia, verificar \(I=MR^2\) y explorar el teorema de ejes paralelos.

### Recomendaciones exigibles

1. Corregir la afirmación de que el sistema PASCO usa Arduino.
2. Reformular el segundo experimento: decidir si se verificará la aditividad de momentos de inercia o el verdadero teorema de Steiner.
3. Para Steiner, usar explícitamente:

   \[
   I=I_{\rm CM}+M_{\rm total}d^2.
   \]

4. Corregir el tratamiento de fricción:

   \[
   I=\frac{r\,m(g-a)-r\,m_f g}{\alpha}.
   \]

5. Incluir la inercia propia del carro porta-masa.
6. Añadir bloqueo mecánico del carro durante la rotación.
7. Sustituir la validación principal por regresión:

   \[
   I_{\rm exp}=I_{\rm ap}+MR^2.
   \]

8. Exigir defensa oral, código, CAD y datos crudos para verificar comprensión, dado que el texto muestra señales de redacción asistida por IA.

---

## Grupo 8 — Coeficiente de resistencia a la rodadura

### Reto

Medir el coeficiente de resistencia a la rodadura \(C_{rr}\) de un cilindro sobre distintas superficies, usando rampa, pista horizontal, Tracker y verificación de rodadura pura.

### Recomendaciones exigibles

1. Reescribir la deducción usando energía.
2. Evitar la deducción actual, que mezcla fuerza horizontal y torque de forma inconsistente.
3. Usar:

   \[
   C_{rr}=\frac{|a|}{g}\left(1+\frac{I}{MR^2}\right).
   \]

4. Para cilindro sólido:

   \[
   C_{rr}=\frac{3}{2}\frac{|a|}{g}.
   \]

5. Definir criterio de rodadura pura:

   \[
   \epsilon(t)=\frac{|v(t)-\omega(t)R|}{|v(t)|}.
   \]

6. Especificar las superficies: vidrio, madera, cemento, caucho, lija, etc.
7. Medir \(a\) por ajuste global de \(x(t)\), no por aceleración instantánea de Tracker.
8. Descartar el tramo inicial después de la rampa.
9. Incluir incertidumbre en \(a\), \(R\), \(M\), \(I\) y \(C_{rr}\).
10. Verificar comprensión oral de la diferencia entre fricción, resistencia a la rodadura y disipación.

---

## Grupo 9 — Túnel de viento escolar de bajo costo

### Reto

Construir un túnel de viento impreso en 3D o híbrido, medir presión estática y de estancamiento, calcular velocidad del flujo y estimar el coeficiente de arrastre \(C_d\) para formas simples.

### Recomendaciones exigibles

1. No usar el micrófono del teléfono como sensor de presión; el barómetro no es el micrófono.
2. No usar lecturas sucesivas de un solo teléfono como manómetro diferencial.
3. Usar un manómetro en U o un sensor diferencial de presión.
4. Medir velocidad con Pitot–manómetro:

   \[
   U=\sqrt{\frac{2q}{\rho_{\rm aire}}}.
   \]

5. Medir fuerza de arrastre directamente con resorte, balanza o soporte flexible calibrado:

   \[
   C_d=\frac{2F_D}{\rho U^2A}.
   \]

6. No estimar \(C_d\) solo con presión frontal y trasera, salvo como aproximación cualitativa para cuerpos romos.
7. Calcular el número de Reynolds para cada modelo:

   \[
   Re=\frac{\rho UL}{\mu}.
   \]

8. Controlar el bloqueo: el área frontal del modelo no debe superar el 5–10 % del área de la sección de pruebas.
9. Hacer el diseño más escolar: usar cartón, acrílico, MDF o PVC, e imprimir solo piezas críticas.

---

# Prioridades globales para todos los grupos

1. Convertir la idea experimental en una predicción cuantitativa.
2. Medir directamente la magnitud central del experimento.
3. Separar modelo ideal, correcciones no ideales y datos reales.
4. Definir una métrica explícita de comparación teoría–experimento.
5. Incluir incertidumbres y repeticiones.
6. Evitar conclusiones prematuras basadas solo en simulaciones.
7. Verificar comprensión cuando el texto parezca generado o pulido por IA.
```
