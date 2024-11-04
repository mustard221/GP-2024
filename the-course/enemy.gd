extends Sprite2D

@onready var player = $"../Sprite2D" #enemy knows about player 
@export var speed = 60
# Called when the node enters the scene tree for the first time.

func _ready() -> void:
	
	pass # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.

func _process(delta: float) -> void:
	
	var to_player = player.global_position - global_position
	
	to_player = to_player.normalized()
	
	global_position = global_position + (to_player * speed * delta)
	
	pass
