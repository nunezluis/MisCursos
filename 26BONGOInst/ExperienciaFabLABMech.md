# FabLab-integrated “mechanics starter lab” map:
For each of the **6 core themes** (Newton’s 2nd law, collisions, rotational dynamics, oscillations, friction/drag, momentum/energy)), you get **2–3 DIY/FabLab archetypes** that have already been used in **project-based / maker / open-hardware physics labs**, plus the **best-matching references** from the set we discussed (Arduino/open-hardware project labs, phyphox smartphone experiments, Tracker video analysis, and 3D-printing + air-track fabrication).

---

## 1) Newton’s 2nd law ( F=ma , dynamics with controlled forces)

**Archetype A — Fan cart / constant-force cart (3D-printed parts + low-cost track)**

* **FabLab build:** laser-cut/3D-print cart chassis + fan mount + interchangeable masses; optionally print “drag plates” to vary load.
* **Measure:** (a(t)) with **smartphone accelerometer** (phyphox) or **video tracking** (Tracker).
* **Why it’s proven:** 3D-printing projects in an *intro mechanics lab* explicitly include **fan blades for a fan cart** as a student-designed artifact. ([pubs.aip.org][1])
  Use phyphox for acceleration acquisition workflows. ([arXiv][2])

**Archetype B — Air-track cart + photogate timing (FabLab-made air track + open DAQ)**

* **FabLab build:** low-cost **linear air track** (laser-cut + 3D-printed pieces); 3D-print photogate mounts and “flag” inserts.
* **Measure:** velocity/acceleration from timing; optionally **microcontroller event-logging**.
* **Why it’s proven:** complete DIY fabrication of a **linear air track** for kinematics/dynamics is reported as an inexpensive digital-fabrication experiment. ([ResearchGate][3])

**Archetype C — Atwood machine with printed pulley + Arduino timing**

* **FabLab build:** 3D-print pulley + bearing housing; laser-cut frame; add modular masses.
* **Measure:** time-of-flight between two sensors/photogates logged with Arduino.
* **Why it’s proven:** “students build their own experimental set-up from scratch” using Arduino + sensors is the explicit model in project-based labs. ([pubs.aip.org][4])

---

## 2) Collisions (elastic/inelastic, impulse, coefficient of restitution)

**Archetype A — Air-track collisions with interchangeable bumpers**

* **FabLab build:** print bumper set (springs, magnets, Velcro pads), carts, and alignment jigs; reuse the DIY air-track.
* **Measure:** pre/post velocities from photogates or video; compute restitution and momentum balance.
* **Best match:** DIY air-track fabrication + kinematics focus. ([ResearchGate][3])

**Archetype B — “2D collision arena” video analysis (pucks/carts + Tracker)**

* **FabLab build:** laser-cut acrylic arena; 3D-print low-friction pucks; printed mass inserts.
* **Measure:** 2D trajectories via Tracker; extract ( \vec v ), momentum vectors, and energy loss.
* **Why it’s proven:** Tracker is a standard, widely curated tool for motion analysis and modeling in physics education (ComPADRE/OSP ecosystem). ([compadre.org][5])

**Archetype C — Instrumented collision cart (Arduino + force sensor surrogate)**

* **FabLab build:** cart with a “crumple zone” (printed flexures) + load cell or force-sensitive resistor (FSR) mount.
* **Measure:** force–time profile → impulse; validate impulse ≈ momentum change.
* **Best match:** open-hardware project-based labs explicitly support student-chosen instrumentation builds using Arduino sensors. ([pubs.aip.org][4])

---

## 3) Rotational dynamics (torque, moment of inertia, rolling)

**Archetype A — Physical pendulum / torsion pendulum with printed inertia sets**

* **FabLab build:** 3D-print disks/rings/spokes with known geometry; laser-cut support frame; modular axis.
* **Measure:** period vs inertia; derive (I) and compare to CAD geometry.
* **Best match:** project-based Arduino labs for building custom setups + uncertainty work. ([pubs.aip.org][4])

**Archetype B — “Rolling without slipping” instrumented with smartphone gyro (phyphox)**

* **FabLab build:** print a rolling cylinder shell with phone cradle; build adjustable incline with laser-cut angle scale.
* **Measure:** angular velocity + acceleration (gyro/accelerometer) using phyphox; compare (a) predictions for rolling objects.
* **Best match:** phyphox is designed to make smartphone sensor experiments practical and classroom-ready. ([arXiv][2])

**Archetype C — Rotational kinematics on air track (micro:bit + optical sensing)**

* **FabLab build:** optical “pickets” / encoder discs; sensor mounts; wireless data link to laptop.
* **Measure:** event-driven timing → velocity/acceleration in near-frictionless conditions.
* **Best match:** micro:bit + optical sensors + 3D-printed elements on a linear air track, with real-time logging to PC, is explicitly documented. ([Eötvös Loránd Tudományegyetem][6])

---

## 4) Oscillations (SHM, damping, resonance)

**Archetype A — Mass–spring oscillator measured by smartphone (phyphox)**

* **FabLab build:** laser-cut spring stand with safety cage; 3D-print mass holders; optional damping paddles.
* **Measure:** (x(t)) or (a(t)) from accelerometer; fit to damped SHM; explore resonance with driven motion.
* **Best match:** phyphox supports exactly this style of fast, quantitative smartphone acquisition. ([arXiv][2])

**Archetype B — Pendulum timing with Arduino photogate**

* **FabLab build:** rigid pendulum frame; 3D-printed bob inserts; photogate mount.
* **Measure:** period vs length/amplitude; damping via air paddles; uncertainty analysis.
* **Best match:** Arduino-centered student-built instrumentation is the central didactic strategy in the project-based lab model. ([pubs.aip.org][4])

**Archetype C — Video-based oscillations (Tracker)**

* **FabLab build:** printed fiducial markers; camera mount; clean background rig.
* **Measure:** trajectory extraction + model overlay; ideal for large classes (many groups, minimal hardware).
* **Best match:** Tracker is explicitly positioned for modeling/analyzing motion from videos in physics education repositories and papers. ([compadre.org][5])

---

## 5) Friction and drag (static/kinetic friction, air resistance, viscous losses)

**Archetype A — Adjustable incline + video/phone sensing for friction**

* **FabLab build:** laser-cut inclinometer ramp with fine angle adjustment; 3D-printed sleds with swappable contact materials.
* **Measure:** threshold angle (static friction), (a(t)) on incline (kinetic friction) using phyphox or Tracker.
* **Best match:** phyphox smartphone sensing + Tracker motion extraction are established low-cost routes. ([arXiv][2])

**Archetype B — Air resistance via video analysis + computational model (Tracker)**

* **FabLab build:** drop tower frame; printed shapes (spheres, cones, plates) with controlled cross-section; camera mount.
* **Measure:** (v(t)) from video → fit linear/quadratic drag; compare models.
* **Best match:** Tracker-based air-resistance workflows are explicitly documented as a mechanics/computation integration. ([opensourcephysics.github.io][7])

**Archetype C — Simple “Pitot-style” airflow speed with smartphone pressure sensor (drag context)**

* **FabLab build:** 3D-print a pitot-like nozzle and mount; use phone barometer (when available).
* **Measure:** airflow speed; connect to drag demonstrations in ducts/fans.
* **Best match:** a Physics Teacher experiment uses a **smartphone pressure sensor** in a Pitot-tube concept. ([pubs.aip.org][8])

---

## 6) Momentum and energy (work–energy, energy loss, power)

**Archetype A — Spring launcher cart (energy storage → kinetic)**

* **FabLab build:** printed spring latch + repeatable trigger; cart + track; modular masses.
* **Measure:** speed via photogates/Arduino or Tracker; energy conversion + losses.
* **Best match:** Arduino/open-hardware lab model supports fully student-built measurement chains. ([pubs.aip.org][4])

**Archetype B — Collisions as energy-loss experiments (same collision rigs)**

* **FabLab build:** bumper sets with different dissipation; add “deformation” inserts (printed flexures).
* **Measure:** compare momentum conservation vs kinetic-energy loss; characterize dissipation mechanisms.
* **Best match:** Tracker-based motion extraction is ideal for before/after velocities; collision arena approach. ([compadre.org][5])

**Archetype C — Rolling energy partition (translation + rotation) with smartphone gyro**

* **FabLab build:** rolling bodies with known (I); adjustable incline; phone cradle option.
* **Measure:** (v(t)), (\omega(t)) (phyphox) → verify energy partition and rolling constraints.
* **Best match:** phyphox as an enabling tool for smartphone-based quantitative experiments. ([arXiv][2])

---

## A practical FabLab integration strategy that scales

A pattern that works well (and matches maker-lab philosophy) is a **platform + modules** architecture:

* **Shared platform artifacts (made once per cohort):** a robust track (or air track), camera mounts, photogate mounts, inclinometer ramps, standard cart geometry files, safety shields. The ICTP SciFabLab experience is a reference model for embedding this fabrication culture into science education contexts. ([arXiv][9])
* **Student-designed “modules” (per theme):** bumpers, fan carts, inertia sets, damping paddles, drag shapes, sensor housings—each group iterates and documents.
* **Common measurement stack:** *either* (i) smartphone + phyphox, (ii) video + Tracker, (iii) Arduino/micro:bit logging. The “project-based open-hardware lab” literature supports exactly this autonomy-first approach. ([pubs.aip.org][4])

If you want, I can turn this into a **course blueprint** (week-by-week), including: deliverables per theme, a minimal BOM (bill of materials), calibration/uncertainty rubrics, and a “FabLab safety + QA” checklist aligned with freshman engineering labs.

[1]: https://pubs.aip.org/aapt/pte/article/61/7/603/2912512/Incorporating-3D-Printing-Projects-into "Incorporating 3D-Printing Projects into Introductory Physics ..."
[2]: https://arxiv.org/abs/1804.06239 "Advanced tools for smartphone-based experiments: phyphox"
[3]: https://www.researchgate.net/publication/386059425_Digital_fabrication_for_inexpensive_physics_experiments_the_linear_air_track "Digital fabrication for inexpensive physics experiments"
[4]: https://pubs.aip.org/aapt/ajp/article/85/3/216/1039005/Project-based-physics-labs-using-low-cost-open "Project-based physics labs using low-cost open-source ..."
[5]: https://www.compadre.org/osp/items/detail.cfm?ID=7365& "Tracker Video Analysis and Modeling Tool - ComPADRE"
[6]: https://ojs.elte.hu/cejntrep/article/view/7135 "Event-driven kinematic measurements using BBC micro: ..."
[7]: https://opensourcephysics.github.io/tracker-website/download/air_resistance.pdf "Combining computational physics with video analysis in ..."
[8]: https://pubs.aip.org/aapt/pte/article/60/4/273/2848259/Using-a-Smartphone-Pressure-Sensor-as-Pitot-Tube "Using a Smartphone Pressure Sensor as Pitot Tube ..."
[9]: https://arxiv.org/abs/1512.01093 "Making Ideas at Scientific Fabrication Laboratories"
