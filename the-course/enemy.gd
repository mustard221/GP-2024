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
