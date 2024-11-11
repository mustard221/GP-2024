extends Area2D

#@export var explodes

#Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var f:float
	var g:float 
	var h:float
	
	f = 10  
	g = 20 
	h = 3 
	
	f += 2 #Add 2 to f 
	f = f + 2
	g = f - 5 #Doesn't change the value of f 
	
	h *= 2
	g= h/3 #Divides 
	
	var i:int 
	var j:int
	var k:int
	
	i = 10
	j = 4
	k = i/j 
	
	print(i)
	print(j)
	print(k)
	print(f)
	print(g)
	print(h)
	
	
	
	
	i = 10 % 2 #Mdulus shows the remainder  
	
	
	
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	DebugDraw2D.set_text("pos", position)
	DebugDraw2D.set_text("glob_pos", global_position)
	DebugDraw2D.set_text("glo_rotation", global_rotation)
	DebugDraw2D.set_text("rotation", rotation)
	
	rotation += 0.1
	
	position.x +=1
	
	pass
	
func _on_area_entered(area: Area2D) -> void:
	print("collided ")
	
	if area.name == "wall":
		print(area)
		area.queue_free()
	
	pass 
