extends Node2D

func _draw() -> void:
	var c = get_viewport_rect().size / 2
	draw_line(Vector2(1 * c), Vector2(50, 50), Color.AQUAMARINE)
	draw_line(Vector2(1 * c), Vector2(-50, -50), Color.AQUAMARINE)
	draw_line(Vector2(1 * c), Vector2(100, 100), Color.AQUAMARINE)
	draw_line(Vector2(1 * c), Vector2(-100, -100), Color.AQUAMARINE)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
