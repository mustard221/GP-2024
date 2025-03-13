extends CSGBox3D

@export var b_scene:PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("fire"):
		var b = b_scene.instantiate()
		b.global_position = $bullet_spawn.global_position
		b.global_rotation = $bullet_spawn.global_rotation
		$"../../../".add_child()
		
	pass
