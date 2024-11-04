extends Sprite2D

@export var speed = 10
@onready var player = $"../player"

func _ready() -> void:
	
	var a:float = 10.0 / 17.0
	var b:float
	
	b = a * 17.0
	print(b)
	
	pass
	
func _process(delta: float) -> void:
	
	var to_player:Vector2 = player.global_position - global_position
	
	#DebugDraw2D.set_text("Dist to player", to_player.length())
	
	to_player = to_player.normalized()
	#DebugDraw2D.set_text("Normalized to player", to_player.length())
	
	global_position = global_position + to_player * speed * delta
	
	pass
	
