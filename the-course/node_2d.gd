extends Node2D


<<<<<<< HEAD
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
=======
@export var bug_scene:PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:

	var count = 10
	
	for i in range(count):
		var w = bug_scene.instantiate()
		var p = Vector2(i * 50, 0)
		w.position = p
		add_child(w)

>>>>>>> 344b3500755176c7aaf1b180a630655787f55e8f
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
