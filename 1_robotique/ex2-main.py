"""
Catia Pinto Ferreira
21 août 2025
introduction au micro:bit

programme démonstrateur avec 10 programmes
bouton A : incrémente le programme
bouton B : execute


Programme :

0 - affiche une tête confuse
1 - micro:bit dit "hello, how are you ?"
2 - joue l'audio "twinkle"
3 - affiche une image d'étoile 
4 - affiche rien sur l'écran
5
6
7
8
9


"""
# Imports go at the top
from microbit import *
import speech
import music


#on commence aec le program 0
p = 0



while True:
   
    display.show(p)

    # choix du programme avec bouton
    if button_a.was_pressed(): 
        p = p+1
        if p == 10:
            p=0

    # le bouton B execute le programme actuel (0 à 9)
    if button_b.was_pressed():
        if p == 0:
            display.show(Image.CONFUSED)
            sleep(1000)
    
        

        if p == 1:
            display.show(Image.SURPRISED)
            
            
            speech.say('hello, how are you ?')
            sleep(1000)
                
            
            
        if p == 2:
            set_volume(250)
            audio.play(Sound.TWINKLE)
            sleep(1000)
            
        if p == 3:
            display.clear()
            display.show(Image('90909:'
                               '07670:'
                               '96969:'
                               '07670:'
                               '90909'))
            sleep(1000)
        if p == 4:
            music.play(['c', 'd', 'e', 'c'])
            music.play(['c', 'd', 'e', 'c'])
            music.play(['e', 'f', 'g'])
            music.play(['e', 'f', 'g'])
            music.play(['g', 'a', 'g', 'f', 'e', 'c'])
            music.play(['g', 'a', 'g', 'f', 'e', 'c'])
            music.play(['c', 'g', 'c'])
            music.play(['c', 'g', 'c'])
            
           
       
        

