extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var n = 10
	while n <= 10:
		n -= 1
	print(n)
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
