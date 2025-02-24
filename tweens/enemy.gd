extends Node2D

var tween: Tween

func _draw():
	
	draw_circle(Vector2(0, -5), 25, Color.DIM_GRAY) 
	draw_circle(Vector2(0, 15), 30, Color.DIM_GRAY) 
	
	var gown = [Vector2(-30, 60), Vector2(30, 60), Vector2(0, 0)]
	draw_polygon(gown, [Color.MEDIUM_SLATE_BLUE])
	
	draw_circle(Vector2(0, 0), 20, Color.BISQUE) 
	draw_circle(Vector2(0, 20), 20, Color.GRAY)
	draw_circle(Vector2(-5, 5), 8, Color.DARK_GRAY)
	draw_circle(Vector2(5, 5), 8, Color.DARK_GRAY)
	draw_circle(Vector2(7,-5), 3, Color.BLACK)
	draw_circle(Vector2(-7,-5), 3, Color.BLACK)
	
	var points = [Vector2(-10, -20), Vector2(5, -10), Vector2(0, -40)]
	draw_polygon(points, [Color.DIM_GRAY])  
	
	var points2 = [Vector2(-20, -20), Vector2(20, -20), Vector2(0, -75)]
	draw_polygon(points2, [Color.MEDIUM_SLATE_BLUE])

func _ready():
	tween = create_tween()
	tween.set_loops(0)
	tween.set_ease(Tween.EASE_OUT)

	tween.tween_property(self, "position", position + Vector2(200, 0), 0.8)  # Right
	tween.tween_interval(0.1)
	tween.tween_property(self, "position", position + Vector2(0, 200), 0.8)  # Down
	tween.tween_interval(0.1)
	tween.tween_property(self, "position", position + Vector2(-200, 0), 0.8)  # Left
	tween.tween_interval(0.1)
	tween.tween_property(self, "position", position + Vector2(-550, 0), 1.0)
	tween.tween_interval(0.2)
	
	for i in range(0, 500, 10):
		var x = i
		var y = sin(deg_to_rad(i)) * 50
		tween.tween_property(self, "position", Vector2(x, y + position.y), 0.05)  

	tween.set_trans(Tween.TRANS_QUART)

	tween.tween_property(self, "scale", Vector2(1.5, 1.5), 1.0) 
	tween.tween_property(self, "scale", Vector2(1, 1), 1.0)  
	tween.tween_property(self, "scale", Vector2(1.5, 1.5), 1.0) 
	tween.tween_property(self, "scale", Vector2(1, 1), 1.0)  
	tween.tween_property(self, "scale", Vector2(1.5, 1.5), 1.0) 
	tween.tween_property(self, "scale", Vector2(1, 1), 1.0)  

	tween.set_ease(Tween.EASE_IN)
	tween.tween_property(self, "position", position + Vector2(100, 0), 0.2)
	tween.tween_property(self, "rotation", deg_to_rad(90), 0.5)

	tween.tween_property(self, "position", position + Vector2(0, 100), 0.2)
	tween.tween_property(self, "rotation", deg_to_rad(180), 0.5)

	tween.tween_property(self, "position", position + Vector2(-100, 0), 0.2)
	tween.tween_property(self, "rotation", deg_to_rad(270), 0.5)

	tween.tween_property(self, "position", position + Vector2(0, -100), 0.2)
	tween.tween_property(self, "rotation", deg_to_rad(0), 0.5)
