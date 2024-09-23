extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

@export var speed:float = 20
@export var rot_speed:float = 20

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	
	#rotate((rot_speed * delta))
	#translate(Vector2(0, speed * delta)) 
	
	if Input.is_key_pressed(KEY_RIGHT):
		rotate(-deg_to_rad(-rot_speed * delta))
	if Input.is_key_pressed(KEY_LEFT):
		rotate(-deg_to_rad(rot_speed * delta))
	if Input.is_key_pressed(KEY_DOWN):
		translate(Vector2(0,  speed * delta))
	if Input.is_key_pressed(KEY_UP):
		translate(Vector2(0, - speed * delta))
	pass
