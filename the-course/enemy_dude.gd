extends CharacterBody2D


var speed = 100
<<<<<<< HEAD
=======

>>>>>>> 98fc99683de5d4a798f3cd8a3e53a619ba6a66fd
var attacking = false

func _process(delta):
	if attacking:
		position.x = position.x - speed * delta

<<<<<<< HEAD

func _on_area_2d_body_entered(body: CharacterBody2D) -> void:
	if body.name == "enemy_dude":
=======
func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "jump_dude":
>>>>>>> 98fc99683de5d4a798f3cd8a3e53a619ba6a66fd
		attacking = true
	pass # Replace with function body.
