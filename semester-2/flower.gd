extends Node2D

func _draw():
	var center = get_viewport_rect().size / 2
	var bottom = Vector2(center.x, get_viewport_rect().size.y)
	var angle = 1
	var radius = 50
	var angle_step = 1
	var radius_step = 0.5
	
	draw_line(center, bottom, Color.LIGHT_GREEN, 10)
	draw_circle(Vector2(center), 75, Color.BURLYWOOD)

	for i in range(250):
		var x = center.x + radius * cos(angle)
		var y = center.y + radius * sin(angle)
		draw_circle(Vector2(x, y), 5, Color.GAINSBORO)
		angle += angle_step
		radius += radius_step

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
