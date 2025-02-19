extends Marker2D

# The thing to spawn
@export var ufo_scene2:PackedScene

@export var radius:float = 200
@export var count:int = 5

@export var rate:int = 5

func spawn():
	print("begin spawning")
	var theta_inc = TAU / float(count)
	var color = Color.from_hsv(0.6, 1, 1, 0.9)		
	for i in count:
		await get_tree().create_timer(1 / float(rate)).timeout
		var theta = theta_inc * i
		var x = sin(theta) * radius * 2
		var y = - cos(theta) * radius * 2
		var ufo = ufo_scene2.instantiate()
		ufo.color = color
		ufo.position = position + Vector2(x, y)		
		get_parent().add_child(ufo)
		
		
func _ready() -> void:
	pass 
