extends CharacterBody2D

@export var bullet_scene:PackedScene
@export var bullet_spawn_point:Marker2D

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

const TURN_RATE = 180

func _print_stuff():
	DebugDraw2D.set_text("pos", position)
	DebugDraw2D.set_text("rotation", rotation)
	DebugDraw2D.set_text("rotation deg", rad_to_deg(rotation))
	DebugDraw2D.set_text("transform.x", transform.x)
	DebugDraw2D.set_text("transform.y", transform.y)
	DebugDraw2D.set_text("global_transform.x", global_transform.x)
	DebugDraw2D.set_text("global_transform.y", global_transform.y)
	DebugDraw2D.set_text("vel", velocity)

func _process(delta: float) -> void:
	_print_stuff()

func _physics_process(delta: float) -> void:
	
	var r = Input.get_axis("turn _left", "turn_right")
	
	var rot = deg_to_rad(r * TURN_RATE * delta)
	
	var f = Input.get_axis("move_backwards", "move_forwards")
	
	var vel = transform.x * f * SPEED
	velocity = vel
	
	if Input.is_action_pressed("fire"):
		var b = bullet_scene.instantiate()
		b.global_position = bullet_spawn_point.global_position
		b.global_rotation = bullet_spawn_point.global_rotation
		get_tree().get_root().add_child(b) 
	
	
	rotate(rot)
	move_and_slide()
