# Imports go at the top
from microbit import *
import neopixel
from random import randint
"""
Chalenge numéro 1 :
Allumer 1ère led en rouge, 2e en vert et 3e led en bleu
"""
np = neopixel.NeoPixel(pin8, 60)
#np.fill ((255,0,63))
#np.show()
c = 5
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
   


    #elif pixel_id == 1:
     #   np[pixel_id] = (0,25,0)



    
    
    
