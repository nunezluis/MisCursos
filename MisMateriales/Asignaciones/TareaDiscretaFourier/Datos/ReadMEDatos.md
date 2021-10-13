# Readme para comprender los datos de los eventos electroatmosféricos

+ Cada archivo corresponde a un evento registrado por varias antenas.
+ La señal registrada por cada antena viene indicada por
  R9PLT  LON, LAT, size: -57.89565324783325 -34.96598482131958 1500
+ Siguen cinco columnas: tiempo, tiempo_corregido, señal, señal2, señal3
+ Las dos últimas columnas corresponden
    + señal2 = señal/amplitudeNormalization + azimuth
    + señal3 = señal/amplitudeNormalization + distance/1000 (distancia en km del rayo a la antena)

En esta carpeta encontrarán los siguientes archivos de datos
+ Trace_EVT1272065836.908173614_908.2.txt
+ Trace_EVT1272070257.318228291_318.2.txt
+ Trace_EVT1272070496.820081490_820.1.txt
+ Trace_EVT1272070710.480088004_480.1.txt
+ Trace_EVT1272071343.694072075_694.1.txt

y dos de demos
+ DemoTrace_EVT1272065836.908173614_azi.pdf
+ DemoTrace_EVT1272065836.908173614.txt

Si grafican los datos del archivo DemoTrace_EVT1272065836.908173614.txt x=columna_2=tiempo_corregido, y=columna_4=señal2, debería salir un gráfico idéntico al pdf
