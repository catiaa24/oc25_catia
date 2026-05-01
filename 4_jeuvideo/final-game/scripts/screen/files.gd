extends Control

@onready var button = $Button  # le Button enfant de Internet

func _ready():
	button.pressed.connect(_on_button_pressed)

func _on_button_pressed():
	var chemin = ""
	
	match OS.get_name():
		"Windows":
			chemin = "C:/Users/" + OS.get_environment("USERNAME") + "/Documents"
		"macOS":
			chemin = "/Users/" + OS.get_environment("USER") + "/Documents"
		"Linux":
			chemin = "/home/" + OS.get_environment("USER") + "/Documents"
	
	OS.shell_open(chemin)
	
# Aide de claude
