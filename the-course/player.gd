extends CharacterBody2D

@export var bullet_scene:PackedScene
@export var bullet_spawn_point:Node2D

<<<<<<< Updated upstream
const SPEED = 500.0
=======
const SPEED = 300.0
>>>>>>> Stashed changes
const JUMP_VELOCITY = -400.0

const TURN_RATE = 180

func _physics_process(delta: float) -> void:
	
<<<<<<< Updated upstream
	var r = Input.get_axis("turn_left", "turn_right")
	print(r)

	var rot = deg_to_rad(r * TURN_RATE * delta)
	rotate(rot)
	
	var f = Input.get_axis("move_backwards", "move_forwards")

=======
	var r = Input.get_axis("turn _left", "turn_right")
	print(r)
	
	var rot = deg_to_rad(r * TURN_RATE * delta)
	
	var f = Input.get_axis("move_forwards", "move_backwards")
	
>>>>>>> Stashed changes
	var vel = transform.y * f * SPEED
	print(transform.y)
	velocity = vel
	
	if Input.is_action_pressed("fire"):
		var b = bullet_scene.instantiate()
<<<<<<< Updated upstream
		b.global_position = bullet_spawn_point.global_position
		get_parent().add_child(b)
	
=======
		b.globalposition = bullet_spawn_point.globalposition
		get_parent().add_child(b)
	
	rotate(rot)
>>>>>>> Stashed changes
	move_and_slide()
