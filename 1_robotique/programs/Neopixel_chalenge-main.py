# Imports go at the top
from microbit import *
import neopixel
from random import randint
"""
Chalenge numéro 1 :
Allumer 1ère led en rouge, 2e en vert et 3e led en bleu

Chalenge numéro 2 :
Faire une horloge

"""

# Variable global
np = neopixel.NeoPixel(pin8, 60)
c = 5


"""
#Chalenge 1

for pixel_id in range(3):
    if pixel_id == 0:
        np[pixel_id] = (c, 0, 0)
        np.show()
        sleep(1000)
        pixel_id += 1
    elif pixel_id == 1:
        np[pixel_id] = (0, c, 0)
        np.show()
        sleep(1000)
        pixel_id += 1
    elif pixel_id == 2:
        np[pixel_id] = (0, 0, c)
        np.show()
        sleep(1000)
        pixel_id += 1
"""

#Chalenge 2

heures = neopixel.NeoPixel(pin8, 60)
minutes = neopixel.NeoPixel(pin8, 60)
seconde = neopixel.NeoPixel(pin8, 60)
s = 1000

#une seconde est égal à 1000 sleep

for pixel_id in range(60):#seconde
    minutes.clear()
    minutes[pixel_id] = (0, 0, c)
    minutes.show()
    sleep(s)
for pixel_id in range(60):#minute
    minutes.clear()
    minutes[pixel_id] = (c, 0, 0)
    minutes.show()
    sleep(s*60)
for pixel_id in range(0, 60, 5):#heures
    heures.clear()
    heures[pixel_id] = (0, c, 0)
    heures.show()
    sleep(s*60*60)
    
