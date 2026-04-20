extends Node3D

@onready var titre = $Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_play_pressed() -> void:
	print("play")
	get_tree().change_scene_to_file("res://scenes/main.tscn")
	

func _on_settings_pressed() -> void:
	print("settings")
	get_tree().change_scene_to_file("res://scenes/menu/settings.tscn")
	

func _on_quit_pressed() -> void:
	get_tree().quit()
