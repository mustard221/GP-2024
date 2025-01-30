extends Node2D

func _draw():
	var center = get_viewport_rect().size / 2
	var angle = 1
	var radius = 100
	var angle_step = 0.1
	var radius_step = 0.8

	for i in range(250):
		var x = center.x + radius * cos(angle)
		var y = center.y + radius * sin(angle)
		draw_circle(Vector2(x, y), 2, Color.DARK_SEA_GREEN)
		angle += angle_step
		radius += radius_step

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
