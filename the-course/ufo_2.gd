@tool
class_name ufo_2
extends CharacterBody2D

@export var radius = 20
@export var color: Color = Color.BLUE_VIOLET
@export var explosion: PackedScene
@export var line_size: float = 4

@export var bullet_scene: PackedScene
@export var bullet_spawn: Node2D

@export var speed: float = 100  # UFO movement speed
var player: Node2D = null  # Reference to the player node
var turn_rate:float=180


func _ready() -> void:
	# Tween my scale using elastic    
	scale = Vector2.ZERO
	var tween = create_tween().set_trans(Tween.TRANS_ELASTIC).set_ease(Tween.EASE_IN_OUT)
	tween.tween_property(self, "scale", Vector2.ONE, 1)
	# Vary the pitch
	$Synth.pitch_scale = randf_range(2.01, 4.2)
	# Wait 10 seconds
	await get_tree().create_timer(10.0).timeout        
	_timer()

	# Find the player in the scene (root node)
	player = get_tree().root.get_node("dude")

func _timer():
	# Set a fixed wait time
	$Timer.wait_time = 10.0
	$Timer.start()

func _draw() -> void:
	draw_circle(Vector2(0, 0), 25, color, false, -8)
	# Draw small lights (circles) on the body
	for i in range(4):
		var light_rad = radius * 0.075
		var light_pos = Vector2(remap(i, 0, 4, (-radius * 2) + light_rad * 4, (radius * 3.25) - light_rad * 5), radius * 0.5)
		draw_circle(light_pos, radius * 0.5, Color.DEEP_PINK, false, line_size)

func _process(delta):
	queue_redraw()
	if player:
		follow_player(delta)

func follow_player(delta):
	var direction = (player.global_position - global_position).normalized()
	velocity = direction * speed
	move_and_slide()
	rotate(delta * deg_to_rad(turn_rate))
	var acceleration = transform.y  * speed
	velocity = velocity + acceleration * delta	
	var c = move_and_collide(velocity * delta)

func _on_timer_timeout() -> void:
	# Drop a bullet
	var b = bullet_scene.instantiate()
	b.global_position = bullet_spawn.global_position
	# Rotate it downwards
	b.global_rotation = PI
	get_parent().add_child(b) 
	b.color = color
	b.line_size = line_size
	# Make sure it doesn't collide with other UFOs
	b.set_collision_mask_value(3, false)
	# Restart the timer for the next bullet
	_timer()
