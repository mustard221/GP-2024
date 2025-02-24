extends Node2D

var tween: Tween

func _draw():
	draw_circle(Vector2(0, -5), 28, Color.GAINSBORO) 
	draw_circle(Vector2(0, 25), 25, Color.GAINSBORO) 
	
	var gown = [Vector2(-30, 60), Vector2(30, 60), Vector2(0, 0)]
	draw_polygon(gown, [Color.DARK_OLIVE_GREEN]) 
	
	draw_circle(Vector2(0, -5), 22, Color.BISQUE) 
	draw_circle(Vector2(-5, 5), 6, Color.GRAY)
	draw_circle(Vector2(5, 5), 6, Color.GRAY)
	draw_circle(Vector2(0, 5), 6, Color.GRAY)
	draw_circle(Vector2(7,-5), 3, Color.BLACK)
	draw_circle(Vector2(-7,-5), 3, Color.BLACK)
	
	draw_polygon([Vector2(-12, -10), Vector2(12, -10), Vector2(0, -20)], [Color.GRAY])
	
	var points = [Vector2(-10, -20), Vector2(5, -10), Vector2(0, -40)]
	draw_polygon(points, [Color.DIM_GRAY])  

	var points2 = [Vector2(-15, -20), Vector2(15, -20), Vector2(0, -60)]
	draw_polygon(points2, [Color.DARK_SLATE_GRAY])
	
	draw_circle(Vector2(0, -20), 12, Color.DARK_SLATE_GRAY)

func _ready():
	tween = create_tween()
	tween.set_loops(0)
	tween.set_ease(Tween.EASE_IN_OUT)
	for i in range(0, 500, 10):
		var x = i
		var y = sin(deg_to_rad(i)) * 50
		tween.tween_property(self, "position", Vector2(x, y + position.y), 0.05)  
	

	tween.tween_property(self, "position", position + Vector2(200, 0), 0.8)  
	tween.tween_interval(0.1)
	tween.tween_property(self, "position", position + Vector2(0, 200), 0.8)  
	tween.tween_interval(0.1)
	tween.tween_property(self, "position", position + Vector2(-200, 0), 0.8)  
	tween.tween_interval(0.1)
	tween.tween_property(self, "position", position + Vector2(-550, 0), 1.0)
	tween.tween_interval(0.2)

	tween.tween_property(self, "scale", Vector2(1.5, 1.5), 1.0) 
	tween.tween_property(self, "scale", Vector2(1, 1), 1.0)  
	tween.tween_property(self, "scale", Vector2(1.5, 1.5), 1.0) 
	tween.tween_property(self, "scale", Vector2(1, 1), 1.0)  
	tween.tween_property(self, "scale", Vector2(1.5, 1.5), 1.0) 
	tween.tween_property(self, "scale", Vector2(1, 1), 1.0) 
