extends Node2D

var i = 0

func _draw() -> void:
	i = 1
	var r = get_viewport_rect()
	var h = r.size.x / 2
	var l = r.size.y / 2
	
	draw_rect(Rect2(0, 0, h, l), Color.RED, true)
	draw_rect(Rect2(h, 0, h, l), Color.BLUE, true)
	draw_rect(Rect2(0, l, h, h), Color.YELLOW, true)
	draw_rect(Rect2(0, l, h, 0), Color.GREEN, true)
	
	var p = get_viewport().get_mouse_position()
	print(p)
	
	if p.x < h and p.y < l:
		draw_rect(Rect2(0, 0, h, l), Color.RED, true)
	
	elif p.x > h and p.y < l:
		draw_rect(Rect2(h, 0, h, l), Color.YELLOW, true)
	
	elif p.x < h and p.y > l:
		draw_rect(Rect2(0, l, h, h), Color.GREEN, true)

	elif p.x > h and p.y > l:
		draw_rect(Rect2(0, l, h, 0), Color.BLUE, true)
	
	pass
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	queue_redraw()
	pass
