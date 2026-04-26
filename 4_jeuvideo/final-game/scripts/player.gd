extends CharacterBody3D


const SPEED = 6.0
const JUMP_VELOCITY = 4.5

@export var camera : Camera3D  
const CAMERA_HEIGHT = 5.0

func _ready() -> void:
	camera.rotation_degrees = Vector3(-45, 0, 0)




func _physics_process(delta: float) -> void:
	
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir := Input.get_vector("left", "right", "up", "down")
	
	var direction := Vector3(input_dir.x, 0, input_dir.y).normalized()
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
		
		
		#Claude🤖⬇️
		var target_angle := atan2(direction.x, direction.z)
		rotation.y = lerp_angle(rotation.y, target_angle, delta * 10.0)
		#Claude🤖⬆️
 
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)

	move_and_slide()
	
	if camera:
		camera.global_position = Vector3(global_position.x, CAMERA_HEIGHT, global_position.z+4)


######################################################### Claude🤖
#J'avais des difficulté pour faire déplacé le perso (que la caméra le suive etc.)
#Donc j'ai demandé à CLaude comment faire


#Réponse : (rotation)
#Pour qu'un personnage se retourne dans la direction où il marche, il faut faire pivoter le nœud vers la direction du mouvement. Voici le code modifié :
#gdscriptextends CharacterBody3D
#
#const SPEED = 5.0
#const JUMP_VELOCITY = 4.5
#
#func _physics_process(delta: float) -> void:
	## Gravité
	#if not is_on_floor():
		#velocity += get_gravity() * delta
#
	## Saut
	#if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		#velocity.y = JUMP_VELOCITY
#
	## Direction
	#var input_dir := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	#var direction := (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
#
	#if direction:
		#velocity.x = direction.x * SPEED
		#velocity.z = direction.z * SPEED
#
		## Rotation vers la direction du mouvement
		#var target_angle := atan2(direction.x, direction.z)
		#rotation.y = lerp_angle(rotation.y, target_angle, delta * 10.0)
	#else:
		#velocity.x = move_toward(velocity.x, 0, SPEED)
		#velocity.z = move_toward(velocity.z, 0, SPEED)
#
	#move_and_slide()
#
#Les deux lignes clés ajoutées :
#
#atan2(direction.x, direction.z) — calcule l'angle vers lequel le perso doit regarder
#lerp_angle(..., delta * 10.0) — fait une rotation fluide vers cet angle (change 10.0 pour ajuster la vitesse de rotation, plus grand = plus rapide)
#
#Si tu veux une rotation instantanée sans fluidité, tu peux simplement écrire :
#gdscriptrotation.y = atan2(direction.x, direction.z)






#Réponse : caméra
#Bonne question ! Il faut utiliser un RemoteTransform3D — il permet de faire suivre la caméra sans qu'elle soit enfant du perso.
#Hiérarchie à avoir :
#Node3D  (racine)
#├── CharacterBody3D
#│   ├── CollisionShape3D
#│   ├── MeshInstance3D
#│   └── RemoteTransform3D   ← enfant du perso
#└── Camera3D                ← indépendante
#Setup dans Godot :
#
#Ajoute un nœud RemoteTransform3D comme enfant de ton CharacterBody3D
#Sélectionne le RemoteTransform3D
#Dans l'inspecteur, champ Remote Path → clique et sélectionne ta Camera3D
#Dans l'inspecteur, décoche Update Rotation → la caméra suivra la position mais pas la rotation du perso




# Réponse : (rotation)
#Le problème vient du fait que ton code utilise transform.basis du personnage pour calculer la direction, ce qui est relatif à sa rotation. En mode RPG vue du dessus, il faut des directions absolues (monde) :
#gdscriptextends CharacterBody3D
#
#const SPEED = 5.0
#const JUMP_VELOCITY = 4.5
#
#func _physics_process(delta: float) -> void:
	## Gravité
	#if not is_on_floor():
		#velocity += get_gravity() * delta
#
	## Saut
	#if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		#velocity.y = JUMP_VELOCITY
#
	## Directions absolues (indépendantes de la rotation du perso)
	#var input_dir := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	#var direction := Vector3(input_dir.x, 0, input_dir.y).normalized()
#
	#if direction:
		#velocity.x = direction.x * SPEED
		#velocity.z = direction.z * SPEED
#
		## Le perso se tourne vers la direction du mouvement
		#var target_angle := atan2(direction.x, direction.z)
		#rotation.y = lerp_angle(rotation.y, target_angle, delta * 10.0)
	#else:
		#velocity.x = move_toward(velocity.x, 0, SPEED)
		#velocity.z = move_toward(velocity.z, 0, SPEED)
#
	#move_and_slide()
#
#Le seul changement important est cette ligne :
#gdscript# Avant (relatif au perso) ❌
#var direction := (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
#
## Après (absolu, monde) ✅
#var direction := Vector3(input_dir.x, 0, input_dir.y).normalized()
#Ensuite assure-toi que ta caméra est positionnée au-dessus du perso, orientée vers le bas, genre :
#
#Position Y = 10
#Rotation X = -90°








# réponse : position de la caméra
#Dans le même script que ton personnage (CharacterBody3D), c'est déjà dedans ! Voici le script complet pour que ce soit clair :
#gdscriptextends CharacterBody3D
#
#const SPEED = 5.0
#const JUMP_VELOCITY = 4.5
#
#@export var camera : Camera3D  # ← glisse ta caméra ici dans l'inspecteur
#const CAMERA_HEIGHT = 10.0
#
#func _ready() -> void:
	## Oriente la caméra vers le bas au démarrage
	#camera.rotation_degrees = Vector3(-90, 0, 0)
#
#func _physics_process(delta: float) -> void:
	#if not is_on_floor():
		#velocity += get_gravity() * delta
#
	#if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		#velocity.y = JUMP_VELOCITY
#
	#var input_dir := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	#var direction := Vector3(input_dir.x, 0, input_dir.y).normalized()
#
	#if direction:
		#velocity.x = direction.x * SPEED
		#velocity.z = direction.z * SPEED
		#var target_angle := atan2(direction.x, direction.z)
		#rotation.y = lerp_angle(rotation.y, target_angle, delta * 10.0)
	#else:
		#velocity.x = move_toward(velocity.x, 0, SPEED)
		#velocity.z = move_toward(velocity.z, 0, SPEED)
#
	#move_and_slide()
#
	## Caméra suit le perso, bloquée en hauteur
	#if camera:
		#camera.global_position = Vector3(global_position.x, CAMERA_HEIGHT, global_position.z)
#
#N'oublie pas :
#
#Ta Camera3D doit être hors du CharacterBody3D dans la hiérarchie
#Clique sur ton CharacterBody3D → dans l'inspecteur tu vois le champ Camera → glisses-y ta Camera3D
