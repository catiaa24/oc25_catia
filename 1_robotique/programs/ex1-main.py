# Imports go at the top
from microbit import *
import music


# Code in a 'while True:' loop repeats forever
while True:
    if button_a.was_pressed():
        display.clear()
        display.show(Image.SILLY,100)
        music.play(['c', 'd', 'e', 'c'])
        music.play(['c', 'd', 'e', 'c'])
        music.play(['e', 'f', 'g'])
        music.play(['e', 'f', 'g'])
        music.play(['g', 'a', 'g', 'f', 'e', 'c'])
        music.play(['g', 'a', 'g', 'f', 'e', 'c'])
        music.play(['c', 'g', 'c'])
        music.play(['c', 'g', 'c'])
        

    if accelerometer.was_gesture('shake'):
        display.show(Image.SILLY)
    
    if button_b.was_pressed():
        display.clear()
        display.scroll('B',100)

    if 
    display.show(Image.CONFUSED)
    sleep(750)
    display.show(Image('60606:'
                       '05050:'
                       '60906:'
                       '05050:'
                       '60606'))
    sleep(1000)
    display.scroll('Hello', 50)

    #sleep(1000)
    #display.scroll(compass.heading())
    

    

   
