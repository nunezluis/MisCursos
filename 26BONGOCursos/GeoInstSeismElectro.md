


## 1) **OhmPi** — open-source **electrical resistivity (ERT) meter** for near-surface geophysics

### What students build (low-cost archetype)

A **multi-electrode resistivity meter** (current injection + voltage measurement + electrode multiplexer) based on a Raspberry Pi, intended for **small-scale / teaching / fieldable ERT** campaigns. The HardwareX paper explicitly provides design files, bill of materials, and construction/operation details. ([hardware-x.com][1])

### Typical FabLab build tasks

* **Mechanical:** 3D-print internal brackets, strain reliefs, cable organizers; integrate into a rugged case.
* **Electrodes & harness:** build modular electrode strings (stakes + banana/MC4-style connectors), and a robust multicore cable layout.
* **Electronics integration:** assemble the measurement/control stack and validate with a resistor-network “dummy ground.”
* **Field exercise:** a short ERT line (e.g., Wenner/Schlumberger) across contrasting ground (soil vs pavement) and inversion workflow.

### FABLab tools and instruments needed

**Digital fabrication**

* FDM 3D printer (fixtures, sensor mounts, cable strain reliefs)
* Laser cutter (front panels, gaskets, drilling templates, labels)
* Drill press + taps, hand tools, calipers

**Electronics bench**

* Soldering station + fume extraction
* Multimeter(s), bench power supply
* Oscilloscope (debugging switching/noise, verifying waveforms)
* (Optional) hot-air/reflow for SMD work

**Metrology / acceptance testing**

* Precision resistor set / decade box (for validation and calibration)
* Insulation / continuity test workflow (basic but non-negotiable for field cables)

### Best references (paper + build websites)

* **Peer-reviewed paper:** *OhmPi: An open source data logger for dedicated applications of electrical resistivity imaging…* (HardwareX, 2020). ([hardware-x.com][1])
* **Project documentation (build + operation):** OhmPi official documentation site. ([ohmpi.org][2])
* **Repository (hardware/software assets):** OhmPi GitHub. ([GitHub][3])

---

## 2) **DIY geophone seismograph station** (Raspberry Pi + 24-bit ADC + geophone) — a “personal seismology” node

### What students build (low-cost archetype)

A compact **seismograph** using a **geophone** + **24-bit digitization** + Raspberry Pi-class computer for logging/streaming. A very common pathway is the **Raspberry Shake DIY ecosystem** (which provides assembly guidance and even references to FabLab assets like laser-cut and 3D-printed parts), but you can also replicate the architecture with equivalent components for a fully student-built instrument. ([Raspberry Shake Manual][4])

### Typical FabLab build tasks

* **Mechanical:** laser-cut/3D-print enclosure pieces, build a rigid baseplate, and add a simple thermal/vibration isolation layer (foam + mass).
* **Electronics:** assemble the ADC + front-end + Pi, implement clean grounding/shielding, and validate with known test signals.
* **Installation science:** site selection (noise), coupling to ground (slab vs soil), and metadata discipline.
* **Data pipeline:** miniSEED/streaming or local logging; event detection; spectral noise characterization.

### FABLab tools and instruments needed

**Digital fabrication**

* FDM 3D printer (enclosure parts, cable glands, mounts)
* Laser cutter (panels, spacers, damping pads templates)
* Basic workshop tools (drill/taps, files, calipers)

**Electronics bench**

* Soldering station + fume extraction
* Multimeter(s), bench power supply
* Oscilloscope (front-end noise/debug)
* (Recommended) function generator or simple signal-injection setup for end-to-end tests

**Test infrastructure (nice-to-have, very educational)**

* DIY “shake source” (speaker exciter or small shaker) for sine sweeps
* Timing reference discipline (NTP/GPS optional depending on ambition)

### Best references (paper + build websites)

* **Peer-reviewed performance overview (Raspberry Shake class instruments):** SRL paper on laboratory/field tests of low-cost seismographs (RS-4D). ([pubs.geoscienceworld.org][5])
* **Peer-reviewed design upgrade pattern (Pi + 24-bit ADC architecture):** MDPI paper on upgrading a low-cost seismograph with a 24-bit ADC and low-noise front-end. ([MDPI][6])
* **DIY assembly documentation (explicit FabLab angle):** Raspberry Shake assembly guide (points to laser cutter/3D printer source files for DIY builds). ([Raspberry Shake Manual][4])
* **Practical build/tutorial article:** MagPi “build a seismograph with Raspberry Shake.”
* **Hands-on “geophone + Pi + ADC” guide (useful for a fully student-owned build):** Core Electronics tutorial. ([Core Electronics][7])

---
[![Build a seismograph with Raspberry Shake — The MagPi magazine](https://tse4.mm.bing.net/th/id/OIP.RXPPgU6xLCQidl6JDjcwhAHaE7?pid=Api)](https://magpi.raspberrypi.com/articles/build-a-seismograph-with-raspberry-shake?utm_source=chatgpt.com)


[1]: https://www.hardware-x.com/article/S2468-0672%2820%2930031-6/fulltext?utm_source=chatgpt.com "OhmPi: An open source data logger for dedicated ..."
[2]: https://ohmpi.org/?utm_source=chatgpt.com "OHMPI: Open source and open hardware resistivity-meter ..."
[3]: https://github.com/ohmpi/ohmpi?utm_source=chatgpt.com "OhmPi fork from gitlab"
[4]: https://manual.raspberryshake.org/assembly.html?utm_source=chatgpt.com "Assembly Guide"
[5]: https://pubs.geoscienceworld.org/ssa/srl/article/90/1/219/566431/Do-Low-Cost-Seismographs-Perform-Well-Enough-for?utm_source=chatgpt.com "Do Low‐Cost Seismographs Perform Well Enough for Your ..."
[6]: https://www.mdpi.com/2624-795X/6/1/4?utm_source=chatgpt.com "Upgrading a Low-Cost Seismograph for Monitoring Local ..."
[7]: https://core-electronics.com.au/guides/geophone-raspberry-pi/?utm_source=chatgpt.com "Set Up a Geophone with a Raspberry Pi and an ADC ..."
