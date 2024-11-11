<<<<<<< HEAD
extends CharacterBody2D

var SPEED = 200.0

func move_forwards():
	velocity.x = -200
func move_backwards():
	velocity.x = 200

func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()

func _physics_process(delta):
	move_forwards()
	move_backwards()
	move_and_slide()
=======
extends Sprite2D

@export var player:Node2D

@export var speed:float = 200

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	var to_player = player.global_position - global_position
	
	to_player = to_player.normalized()
	
	global_position = global_position + (- to_player * speed * delta)
	
	pass
>>>>>>> 6878b50158a291b71d9fdde59babafc75d9bae0f
