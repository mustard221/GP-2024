extends Node2D

var i = 0
<<<<<<< HEAD

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
=======
var thera 

func _draw() -> void:
	
	
	
	print("draw called: " + str(i))
	var r = get_viewport_rect()
	var hw = r.size.x / 2
	var hh = r.size.y / 2
	draw_rect(Rect2(r), Color.RED, true, 10, true)
	
	var p = get_viewport().get_mouse_position()
	print(p)
	draw_rect(Rect2(0, 0, r.size.x, r.size.y), Color.BLUE, true, 10, true)
	if p.x < hw and p.y < hh:
		draw_rect(Rect2(0, 0, hw, hh), Color.RED, true, 10, true)
	elif p.x < hw and p.y > hh:
		draw_rect(Rect2(0, hh, hw, hh), Color.RED, true, 10, true)
	elif p.x > hw and p.y < hh:
		draw_rect(Rect2(hw, 0, hw, hh), Color.RED, true, 10, true)
	else:
		draw_rect(Rect2(hw, hh, hw, hh), Color.RED, true, 10, true)
	

	#    ==
	# <
	# >
	# <=
	# >=
	# && and
	# || or
	# not
	
>>>>>>> 55932441a984cf73751705b877da75a315761fc6
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	queue_redraw()
	pass
