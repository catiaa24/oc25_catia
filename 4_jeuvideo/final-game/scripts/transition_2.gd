extends CanvasLayer

signal on_transition_finished # signal pour indiquer que l'animation est finie 

@onready var fond = $GPUParticles2D
@onready var animation = $AnimationPlayer

func _ready(): # ➡️ fonction ready
	fond.hide()
	animation.animation_finished.connect(_on_animation_finished)

func _on_animation_finished(anim_name):
	if anim_name == "square":
		on_transition_finished.emit()
		animation.play("return")
	elif anim_name == "return":
		fond.hide()

func transition():
	fond.show()
	animation.play("square")
