import statistics
Crescent_numbers = [1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192]
Media = statistics.mean(Crescent_numbers)
Mediana = statistics.median(Crescent_numbers)
print(Media)
print(Mediana)

import statistics as st
Media = st.mean(Crescent_numbers)
Mediana = st.median(Crescent_numbers)
print(Media)
print(Mediana)

from statistics import mean, median
Media = mean(Crescent_numbers)
Mediana = median(Crescent_numbers)
print(Media)
print(Mediana)

from statistics import *
Media = mean(Crescent_numbers)
Mediana = median(Crescent_numbers)
print(Media)
print(Mediana)