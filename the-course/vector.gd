extends Sprite2D

<<<<<<< HEAD
@export var time = 5
@export var speed = 10
@onready var player = $"../player"



var theta = atan2(y, x) + (PI * 0.5)
rotation = theta

var tot_time:float = 0

# Called when the node enters the scene tree for the first time.
=======
@export var speed = 10
@onready var player = $"../player"

>>>>>>> 7a1890fd5a44864826b5a9b11173ba6160a82634
func _ready() -> void:
	
	var a:float = 10.0 / 17.0
	var b:float
	
	b = a * 17.0
	print(b)
	
<<<<<<< HEAD
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
=======
	pass
	
>>>>>>> 7a1890fd5a44864826b5a9b11173ba6160a82634
func _process(delta: float) -> void:
	
	var to_player:Vector2 = player.global_position - global_position
	
<<<<<<< HEAD
	if to_player.length() > 0:
		DebugDraw2D.set_text("Dist to player", to_player.length())
		
		to_player = to_player.normalized()
		DebugDraw2D.set_text("Normalized to player", to_player.length())
		
		global_position = global_position + to_player * speed * delta
		tot_time += delta
		
	DebugDraw2D.set_text("tot_time", tot_time)
	
	pass
=======
	#DebugDraw2D.set_text("Dist to player", to_player.length())
	
	to_player = to_player.normalized()
	#DebugDraw2D.set_text("Normalized to player", to_player.length())
	
	global_position = global_position + to_player * speed * delta
	
	pass
	
>>>>>>> 7a1890fd5a44864826b5a9b11173ba6160a82634
