extends Area2D

@export var collected = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if body.name == "platformer_dude":
		body.score = body.score + 1
		collected = body.score
		$"../platformer_dude/Camera2D/Label".text = "Collected: " + str(collected)
		self.queue_free()
	pass # Replace with function body.
