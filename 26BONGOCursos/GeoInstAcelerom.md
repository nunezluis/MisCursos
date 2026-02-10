
## 1) **Low-noise “strong-motion” accelerometer node (OpenEEW / Grillo sensor archetype)**

### What students build (low-cost archetype)

A **3-axis low-noise MEMS accelerometer node** (ADXL355 class) coupled to an **ESP32** that streams data (e.g., MQTT/JSON) for **earthquake / strong-motion / ambient vibration monitoring** in a campus- or city-scale network. ([GitHub][1])

### Typical FabLab build tasks

* Fabricate/assemble a **rugged enclosure** (IP-rated box + 3D-printed internal fixtures and strain relief).
* Assemble electronics: sensor board + ESP32 + power regulation + optional Ethernet interface.
* Implement firmware + data pipeline (local logging + network streaming).
* **Calibration + characterization**: axis alignment, bias/scale, noise floor, temperature drift checks.
* Deploy 2–5 nodes to create a small “living lab” network.

### FABLab tools and instruments needed

**Digital fabrication**

* FDM 3D printer (fixtures, brackets, cable strain relief)
* Laser cutter (gaskets, labeling, drilling templates)
* Drill press + taps + hand tools (enclosure prep, mounting)

**Electronics bench**

* Soldering station + fume extraction
* Multimeter(s), bench power supply
* Oscilloscope (debugging power/noise, SPI lines)
* Hot-air/reflow station (optional; useful if assembling SMD boards)
* Crimp tools + waterproof connectors/cable glands, heat-shrink

**Test & calibration (recommended)**

* A simple **shake source** (DIY mini shake table or loudspeaker exciter) for sinusoidal tests
* A “reference” sensor (even a phone accelerometer) for comparative sanity checks

### Best references (paper + build websites)

* **Peer-reviewed evaluation of the OpenEEW/Grillo sensor node** (design choices, performance context). ([pubs.geoscienceworld.org][2])
* **Hardware build assets** (schematics/PCB/CAD, BOM, build instructions): openeew/openeew-sensor. ([GitHub][1])
* **Firmware** (ESP32 sensor → MQTT/JSON streaming): openeew/openeew-firmware. ([GitHub][3])
* **Project website + “create your own” guides / community practices**: OpenEEW site + tutorials. ([openeew.com][4])

---

## 2) **Modular “field accelerometer data logger” (MPU-6050 / ADXL345 class) with SD + optional GPS**

### What students build (low-cost archetype)

A **general-purpose tri-axial accelerometer logger** (higher noise than ADXL355-class, but excellent for teaching) with:

* SD-card logging,
* optional GPS time/location stamping,
* and a 3D-printed mount for repeatable placement on structures/ground plates.

This is ideal for **near-field vibrations**, **tilt/acceleration surveys**, and **mobile geoscience data collection**. ([SciELO][5])

### Typical FabLab build tasks

* Design and print a **mounting base** (flat plate clamp, magnet base, tripod mount, stake mount for soil).
* Wire sensor + microcontroller (Arduino/ESP32) + SD module (+ GPS optional).
* Implement a data format + metadata (sampling rate, units, calibration constants, location, deployment notes).
* Build a “field kit” (battery pack, weather protection, cable discipline, quick setup checklist).

### FABLab tools and instruments needed

**Digital fabrication**

* FDM 3D printer (mounts/enclosures, cable management)
* Laser cutter (enclosure panels, gaskets, templates)

**Electronics bench**

* Soldering station + fume extraction
* Multimeter, bench power supply
* Oscilloscope (optional but helpful for noise/debug)
* Basic environmental protection materials (silicone, foam, conformal coating, epoxy as needed)

**Reference/validation (simple + effective)**

* Gravity-based calibration jig (printed angle blocks at known angles)
* Repeatable drop/impact test fixture (laser-cut guide + pad) for impulse response

### Best references (paper + build websites)

* **Peer-reviewed assessment of low-cost wireless sensors (MPU-6050 class) for structural/vibration monitoring**—useful for performance expectations and limitations. ([SciELO][5])
* **Peer-reviewed “CHEAP” Arduino-based multi-accelerometer system** (design and validation approach you can reuse pedagogically). ([MDPI][6])
* **Build-style documentation (logger concept with GPS+SD+accelerometer)**: Geo Data Logger / “Bump-O-Meter” style build. ([Instructables][7])
* **Practical wiring/interfacing reference for ADXL345-class modules** (for introductory build onboarding). ([circuitdigest.com][8])

---

# Student “experiences” you can run with the low-cost accelerometer (lab + field)

Below are **implementable activities** that naturally integrate FabLab work (mounts, jigs, test rigs) with geoscience skills (signal processing, interpretation, uncertainty).

## A) Core calibration and metrology (Week 1–2)

1. **Gravity calibration & axis alignment**

   * Printed angle blocks (0°, 30°, 45°, 60°, 90°) → bias/scale factors, cross-axis sensitivity (intro to calibration discipline).

2. **Noise floor and sampling study**

   * Measure stationary noise vs sampling rate / filtering; characterize Allan-like drift qualitatively; learn “what your sensor can’t do”.

## B) Vibration + resonance (Week 3–5)

3. **Modal ID of a small structure**

   * Mount sensor on a lab frame/beam; excite with impulse; estimate dominant resonances and damping (intro SHM + FFT + PSD).

4. **Microzonation “toy survey” on campus**

   * Same instrument, multiple sites (soil vs slab vs bridge) → compare ambient vibration spectra; learn repeatability and metadata discipline.

5. **Vehicle/traffic-induced vibration mapping**

   * Deploy near a road/bridge; compare time-of-day patterns; link to “anthropogenic seismic noise” style analysis.

## C) Earth-hazards oriented projects (Week 6–8)

6. **Shake-table earthquake simulation**

   * Build a DIY mini shake table (FabLab) and test model buildings; compare base vs top accelerations; estimate amplification.

7. **Threshold-based event detection (early-warning *concept*, not safety-grade)**

   * Implement STA/LTA or band-energy triggers; quantify false positives with different thresholds; discuss operational constraints. (OpenEEW references provide the real system context.) ([openeew.com][4])

8. **Landslide/rockfall proxy experiment**

   * Instrument a gravel slope tray; detect impulsive events and correlate with video; learn about triggering, classification, and bias.

---

## Practical course framing tip

Run the course as **two tracks**:

* **Track 1 (precision node):** OpenEEW/ADXL355-class for “how real networks are built.” ([GitHub][1])
* **Track 2 (maker logger):** MPU-6050/ADXL345-class for “high-throughput student projects” and rapid iteration. ([SciELO][5])


[1]: https://github.com/openeew/openeew-sensor?utm_source=chatgpt.com "Hardware for an OpenEEW sensor"
[2]: https://pubs.geoscienceworld.org/ssa/srl/article/96/2A/980/648871/Evaluation-of-an-Open-Earthquake-Early-Warning?utm_source=chatgpt.com "Evaluation of an Open Earthquake Early Warning System ..."
[3]: https://github.com/openeew/openeew-firmware?utm_source=chatgpt.com "Firmware for an OpenEEW sensor."
[4]: https://openeew.com/?utm_source=chatgpt.com "OpenEEW | Open-source earthquake early warning system"
[5]: https://www.scielo.br/j/riem/a/rsGSYtxRcYRjxdfcbQ5MBVw/?lang=en&utm_source=chatgpt.com "Assessment of low-cost wireless sensors for structural ..."
[6]: https://www.mdpi.com/1424-8220/21/18/6191?utm_source=chatgpt.com "Development of a Low-Cost System for the Accurate ..."
[7]: https://www.instructables.com/Geo-Data-Logger-ArduinoGPSSDAccelerometer-to-l/?utm_source=chatgpt.com "Geo Data Logger: Arduino+GPS+SD+Accelerometer to ..."
[8]: https://circuitdigest.com/microcontroller-projects/interface-adxl345-accelerometer-with-arduino-uno?utm_source=chatgpt.com "How to Interface ADXL345 Accelerometer with Arduino UNO"
