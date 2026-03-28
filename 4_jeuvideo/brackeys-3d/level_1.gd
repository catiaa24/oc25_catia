extends Node3D


@onready var level = $Label
@onready var dead = $Area3D
var entre = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$DeadMenu.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept") and $DeadMenu.visible == true:
		get_tree().change_scene_to_file("res://level1.tscn")


func _on_timer_timeout() -> void:
	level.visible = false





func _on_area_3d_body_entered(body: CharacterBody3D) -> void:
	if body.name == "ProtoController":                  # l'intérieur de la colision
		$DeadMenu.show()
		$ProtoController.hide()
		
