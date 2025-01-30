extends CharacterBody2D

@export var bullet_scene:PackedScene
@export var bullet_spawn_point:Marker2D

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

const TURN_RATE = 180

func print_stuff():
	DebugDraw2D.set_text("pos", position)
	DebugDraw2D.set_text("global position", global_position)
	DebugDraw2D.set_text("rotation", rotation)
	DebugDraw2D.set_text("rotation deg", rad_to_deg(rotation))
	DebugDraw2D.set_text("transform.x", transform.x)
	DebugDraw2D.set_text("transfrom.y", transform.y)
	DebugDraw2D.set_text("global_transform.x", global_transform.x)
	DebugDraw2D.set_text("glbal_transfrom.y", global_transform.y)
	DebugDraw2D.set_text("global_transform.x", global_transform.x)
	DebugDraw2D.set_text("global_transform.y", global_transform.y)
	DebugDraw2D.set_text("vel", velocity)
	
func _process(delta: float) -> void:
	print_stuff()
	pass

func _physics_process(delta: float) -> void:
	# position = position + transform.x
	var r = Input.get_axis("turn_left", "turn_right")
	print(r)

	var rot = deg_to_rad(r * TURN_RATE * delta)
	
	var f = Input.get_axis("move_backwards", "move_forwards")
<<<<<<< HEAD
<<<<<<< HEAD
	
	var vel = transform.x * f * SPEED
=======

	var vel = - transform.y * f * SPEED
	print(transform.y)
>>>>>>> c7ba656818fe7a4f732dda743b40e4a87fa04ac2
=======

	var vel = - transform.y * f * SPEED
	print(transform.y)
>>>>>>> 7a1890fd5a44864826b5a9b11173ba6160a82634
	velocity = vel
	
	
	if Input.is_action_pressed("fire"):
		var b = bullet_scene.instantiate()
		b.global_position = bullet_spawn_point.global_position
		b.global_rotation = bullet_spawn_point.global_rotation
<<<<<<< HEAD
<<<<<<< HEAD
		get_tree().get_root().add_child(b) 
=======
		get_parent().add_child(b)
>>>>>>> c7ba656818fe7a4f732dda743b40e4a87fa04ac2
	
=======
		get_parent().add_child(b)
>>>>>>> 7a1890fd5a44864826b5a9b11173ba6160a82634
	
	rotate(rot)
	move_and_slide()
