extends Node

@export var mob_scene :  PackedScene
var score

func _ready() -> void:
	pass

func game_over() -> void:
	$ScoreTimer.stop()
	$MobTimer.stop()
	$HUD._show_game_over()
	$Music.stop()
	$DeathSound.play()
	
func new_game():
	score = 0
	$Player._start($StartPosition.position)
	$StartTimer.start()
	$HUD._show_message("Get Ready")
	get_tree().call_group("mobs", "queue_free")
	$Music.play()


func _on_mob_timer_timeout():
	var mob = mob_scene.instantiate()
	
	var mob_spawn_location = $MobPath/MobSpawnLocation
	$MobPath/MobSpawnLocation.progress_ratio = randf()
	
	mob.position =  mob_spawn_location.position
	
	var direction  = mob_spawn_location.rotation + PI / 2
	
	direction += randf_range(-PI/4, PI/4)
	mob.rotation = direction
	
	var velocity = Vector2(randf_range(150.0, 250.0), 0.0)
	mob.linear_velocity = velocity.rotated(direction)
	
	add_child(mob)

func _on_score_timer_timeout() -> void:
	score += 1
	$HUD._update_score(score)


func _on_start_timer_timeout() -> void:
	$MobTimer.start()
	$ScoreTimer.start()
