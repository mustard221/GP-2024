extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	queue_redraw()
	pass
	
func _draw() -> void:
	
	var r = Rect2(10, 10, 100, 30)
	
	draw_rect(r, Color.AQUAMARINE, false, 5)
	draw_line(Vector2(50, 50), Vector2(200, 200), Color.CRIMSON)
	draw_circle(Vector2(100, 100), 50, Color.DARK_OLIVE_GREEN)
	
	var v = get_viewport_rect()
	
	draw_line(Vector2(0, v.size.y), Vector2(v.size.x, 0), Color.DEEP_PINK)
	
	for i in range(10):
		print(i)
	

	for i in range(10, -1, -1):
		print(i)
	
	var basket = ["banana", "apple", "orange"]
	
	for f in basket:
		print(f)

	for i in range(basket.size()):
		print(basket[i])
		
	print(v)

	var lines = 10
	var w = v.size.x / lines

	for i in range(lines):
		draw_line(Vector2(i * w, 0), Vector2(i * w, v.size.y), Color.BROWN)

	var h_lines = 100
	var gap = 100
	var border = 100

	for i in range(h_lines):
		draw_line(Vector2(border, border + gap * i),
		Vector2(v.size.x - border, border + gap * i), Color.BLUE)
	
	pass
