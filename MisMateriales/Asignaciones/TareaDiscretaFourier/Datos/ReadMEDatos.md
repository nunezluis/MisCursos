# Readme para comprender los datos de los eventos electroatmosféricos

+ Cada archivo corresponde a un evento registrado por varias antenas.
+ La señal registrada por cada antena viene indicada por
  R9PLT  LON, LAT, size: -57.89565324783325 -34.96598482131958 1500
+ Siguen cinco columnas: tiempo, tiempo_corregido, señal, señal2, señal3
+ Las dos últimas columnas corresponden
    + señal2 = señal/amplitudeNormalization + azimuth
    + señal3 = señal/amplitudeNormalization + distance/1000 (distancia en km del rayo a la antena)
