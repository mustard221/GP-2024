extends Node2D

func _draw() -> void:
	var screen_width = get_viewport_rect().size.x
	var spacing = screen_width / 10
	var radius = 10
	for i in range(10):
		var x = i * spacing + radius
		var y = get_viewport_rect().size.y / 2
		draw_circle(Vector2(x, y), radius, Color.ALICE_BLUE)
		radius += 5
		
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
