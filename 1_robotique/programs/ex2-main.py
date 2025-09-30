"""
Catia Pinto Ferreira
21 août 2025
introduction au micro:bit

programme démonstrateur avec 10 programmes
bouton A : incrémente le programme
bouton B : execute

Programmes :

0 - affiche une tête confuse
1 - dit "hello, how are you ?" avec une tête contente
2 - joue l'audio "twinkle"
3 - affiche une image d'étoile 
4 - joue la musique Frère Jacques
5 - affiche rien sur l'écran
6 - indique les points cardinaux
7 - si le logo est touché ET le bouton B pressé => indique la température
8 - si on tape des mains ET le bouton est pressé => image surprise
9 - si le micro:bit est en mouvement => joue l'audio "slide"

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
            sleep(500)
    
        if p == 1:
            display.show(Image.HAPPY)
            speech.say('Hello, how are you?')
            sleep(500)
                   
        if p == 2:
            set_volume(250)
            audio.play(Sound.TWINKLE)
            sleep(500)
            
        if p == 3:
            display.clear()
                
            display.show(Image( '90909:'
                                '07670:'
                                '96969:'
                                '07670:'
                                '90909'))
            sleep(500)

        if p == 4:
            music.play(['C4:4', 'D4:4', 'E4:4', 'C4:4',])
            music.play(['C4:4', 'D4:4', 'E4:4', 'C4:4'])
            music.play(['E4:4', 'F4:4', 'G4:8'])
            
            music.play(['E4:4', 'F4:4', 'G4:8'])
            music.play(['G4:4', 'A4:2', 'G4:4', 'F4:4', 'E4:4', 'C4:8'])
            music.play(['G4:4', 'A4:2', 'G4:4', 'F4:4', 'E4:4', 'C4:8'])
            music.play(['C4:4', 'G4:4', 'C4:8'])
            music.play(['C4:4', 'G4:4', 'C4:8'])
            
        if p == 5:
            display.clear()
            sleep(500)
        
        if p == 6:
            display.scroll(compass.heading())

        if p == 7 :
            if pin_logo.is_touched():
                display.scroll(temperature())
                sleep(500)
                
        if p == 8 :
            if microphone.current_event() == SoundEvent.LOUD:
                display.show(Image.SURPRISED)
                sleep(500)

        if p == 9 :
            if accelerometer.was_gesture('shake'):
                audio.play(Sound.SLIDE)
                
    
