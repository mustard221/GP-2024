extends MeshInstance3D

@export var rot_speed = 100
var Collected = 0

func _process(delta: float) -> void:
	rotate_y(deg_to_rad(rot_speed) * delta)

func _on_collectible_body_entered(body: Node3D) -> void:
	Collected += 1
	print("entered" + str(body))
	$"..".queue_free()
	$"../../Label".text = "Collectible:" + str(Collected)
	pass # Replace with function body.
