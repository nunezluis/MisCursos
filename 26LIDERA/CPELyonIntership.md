## LIDERA
Laboratorio de Investigaciones en Detectores de Radiación y Astropartículas (LIDERA) is an interdisciplinary research lab focused on developing astroparticle detectors. It is a part of the Gravitation and High Energy Astrophysics group, GIRG (Grupo de Investigación en Relatividad y Gravitación), of the School of Physics of the Universidad Industrial de Santander in Bucaramanga, Colombia. Our research group is recognized as a top-level research group by the Colombian Ministry of Science.  We lead the Latin American Giant Observatory https://lagoproject.net/ and contribute to the CosmoGeophysics Task Force of the Pierre Auger Observatory in Argentina https://www.auger.org/ .

Our **research lines** are: Muography, Cherenkov detector technologies, and High-performance computing simulations environments.
**Recent publications of our Labs are**
+ Betancourt, J., et al. (2025). Enhanced water Cherenkov detector for soil moisture detection. arXiv preprint arXiv:2509.08562.
+ Martínez-Rivero, R. A., et al .(2025). Muon Imaging of Hydrotreatment Reactors. arXiv preprint arXiv:2504.15103.
+ Peña-Rodríguez, J., et al. (2024). MUYSC: An end-to-end muography simulation toolbox. Geophysical Journal International, 237(1), 540-556.
+ Tarazona Alvarado, M., et al. (2024). Assessing and monitoring air quality in cities and urban areas with a portable, modular and low-cost sensor station: calibration challenges. International Journal of Remote Sensing, 45(17), 5713-5736.
+ Peña-Rodríguez, J., et al. (2023). Characterization and On-Field Performance of the MuTe Silicon Photomultipliers. Instruments, 7(1), 7.

These are three possible projects
## Edge-AI Workflow for Smart Data Extraction and Transmission in Muography
### Project description
This project aims to design and implement an end-to-end data workflow for a muography detector, integrating Internet of Things technologies with edge Machine Learning. Raw data acquired from sensors will be collected on a local embedded computer physically attached to the instruments. At this edge level, ML algorithms will be used to discriminate, compress, and prioritize data, enabling the transmission of high-value information rather than full raw streams. The processed data will then be securely transmitted to a remote server for storage, visualization, and scientific analysis.
The project should address practical constraints of field deployments—limited bandwidth, intermittent connectivity, power consumption, and environmental noise—while enhancing data quality and scientific usability. The resulting workflow will be modular, reproducible, and scalable, serving as a reference architecture for distributed astroparticle and environmental observatories.
### Methodology / Techniques
The project combines IoT data acquisition, edge computing, and supervised/unsupervised ML. Sensor data are ingested locally using lightweight protocols (e.g., MQTT). Feature extraction and ML models perform event discrimination, anomaly detection, and data reduction at the edge. Selected data products are packaged, time-synchronized, and transmitted to a central server for validation and analysis. Performance is evaluated based on bandwidth reduction, latency, and data quality.
### Tasks of the Visiting Student
+ Study the muographer and weather-station data formats and acquisition electronics
+ Implement local data ingestion and storage on an embedded computer
+ Develop and test ML algorithms for data discrimination and quality control
+ Integrate secure data transmission to a remote server
+ Validate the workflow using real or simulated data
+ Document the architecture and contribute to reproducible deployment scripts
### References related to the research internship
+ Ficili, I., et al. (2025). From Sensors to Data Intelligence: Leveraging IoT, Cloud, and Edge Computing with AI. Sensors, 25(6), 1763. https://doi.org/10.3390/s25061763
+ Sathyamoorthy, S., et al. (2023). Advances and Challenges in IoT Sensors, Data Handling, and Processing in Environmental Monitoring Networks. HAFED POLY Journal of Science, Management and Technology, 5(2), 40–60.

## Edge-Enhanced Coincidence Electronics for a Three-Layer Plastic Scintillator Hodoscope
This internship focuses on extending existing low-cost astroparticle detection electronics—derived from the Cosmic Watch architecture http://www.cosmicwatch.lns.mit.edu/ —to operate with a three-layer plastic scintillator hodoscope. The current system supports synchronized readout and coincidence triggering for two scintillator modules. The proposed upgrade will enable triple-channel acquisition, triple-coincidence triggering, and improved background rejection.
In addition to hardware and firmware development, the project introduces a Machine Learning (ML)  component to enhance coincidence readout. ML models deployed locally will help discriminate between actual muon events and noise, optimize timing windows, and dynamically adapt thresholds under varying environmental and operational conditions.
The upgraded system will be validated using cosmic-ray muons, with performance assessed in terms of timing resolution, efficiency, and false-coincidence suppression. The outcome will be a scalable, reproducible hodoscope electronics platform suitable for education, R&D, and field deployments in astroparticle physics.
### Methodology / Techniques
The project combines analog front-end design (SiPM readout, amplification, discrimination), digital timing and coincidence logic (microcontroller or FPGA), and ML-based event classification. Triple-channel synchronization and coincidence windows are implemented in firmware. ML algorithms analyze pulse features and timing correlations to refine coincidence decisions. System performance is characterized using cosmic muons.
### Tasks of the Visiting Student
+ Analyze the existing two-channel Cosmic Watch–like electronics
+ Design and integrate electronics for a third scintillator channel
+ Implement triple-coincidence and synchronization logic
+ Develop and train Machine Learning models for event discrimination
+ Test and calibrate the hodoscope using cosmic-ray muons
+ Document hardware, firmware, and ML workflows
### References related to this internship
+ Axani, S. N. (2019). The physics behind the cosmicwatch desktop muon detectors. arXiv preprint arXiv:1908.00146.
+ Hansen, S., et al. (2004). Low-cost data acquisition card for school-network cosmic ray detectors. IEEE Transactions on Nuclear Science, 51(3), 926-930.

## Edge-Based Digital Twin for Adaptive Control of a Muography Detector
### Project description
This internship aims to develop a lightweight digital twin of a muography detector, deployed at the edge, to enable adaptive control and improved data quality under real operating conditions. The digital twin will mirror the detector’s key behaviors—rate, noise, timing, and efficiency—as functions of environmental variables, particularly temperature, and operational parameters such as thresholds and coincidence windows.
Integrated within the edge computing workflow, the digital twin will interact in near real time with the muographer: it will predict performance drifts, recommend or apply trigger adjustments, and assess the impact of environmental changes before data transmission to the server. This closed-loop approach enhances stability, reduces false triggers, and optimizes bandwidth by prioritizing high-value events.
The project emphasizes simplicity, interpretability, and robustness, producing a reproducible reference implementation of a digital twin suitable for field deployments in astroparticle physics.
### Methodology / Techniques
The project combines system identification, physics-informed modeling, and lightweight Machine Learning regression/classification. Environmental and detector telemetry feed a digital twin that predicts rates and noise. Control logic adjusts thresholds and coincidence parameters. Validation uses live data and controlled temperature variations. Edge deployment prioritizes low latency and resource efficiency.
### Tasks of the visiting student
+ Analyze muographer telemetry, trigger logic, and environmental dependencies
+ Define the digital twin state variables and simplified detector model
+ Implement the digital twin on the edge device
+ Integrate adaptive trigger and threshold control
+ Test responses to temperature and rate variations
+ Evaluate performance gains and document the workflow
### References related to the internship
+ Fuller, A., Fan, Z., Day, C., & Barlow, C. (2020). Digital twin: enabling technologies, challenges and open research. IEEE access, 8, 108952-108971.
+ Willard, J., et al. (2020). Integrating physics-based modeling with machine learning: A survey. arXiv preprint arXiv:2003.04919, 1(1), 1-34.
