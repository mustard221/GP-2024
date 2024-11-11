extends Sprite2D

<<<<<<< HEAD
@onready var player = $"../Sprite2D" #enemy knows about player 
@export var speed = 60
# Called when the node enters the scene tree for the first time.

func _ready() -> void:
	
	pass # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.

=======
@export var player:Node2D

@export var speed:float = 200

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
>>>>>>> c7ba656818fe7a4f732dda743b40e4a87fa04ac2
func _process(delta: float) -> void:
	
	var to_player = player.global_position - global_position
	
	to_player = to_player.normalized()
	
<<<<<<< HEAD
	global_position = global_position + (to_player * speed * delta)
=======
	global_position = global_position + (- to_player * speed * delta)
>>>>>>> c7ba656818fe7a4f732dda743b40e4a87fa04ac2
	
	pass
