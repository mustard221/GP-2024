extends Node2D

# when the scene is loaded, assign these variables from the scene
@onready var ufo_spawner = $ufo_spawner
@onready var ufo_spawner2 = $ufo_spawner2
@onready var dude = $dude

var target = 0
var level = 0

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventKey and event.keycode == KEY_ESCAPE:
		get_tree().quit()	

func _ready() -> void:
	next_level()
	var tween = create_tween().set_ease(Tween.EASE_IN).set_trans(Tween.TRANS_BOUNCE)
	tween.tween_property($Heroplanet, "pitch_scale", 4, 5)
	tween.tween_property($Heroplanet, "pitch_scale", 1, 5)
	$Heroplanet.play()

func next_level():
	ufo_spawner.radius = randf_range(200, 250)
	ufo_spawner.count = 6
	ufo_spawner.rate  = level + 1
	ufo_spawner.position = dude.position
	ufo_spawner.spawn()
	ufo_spawner2.radius = randf_range(200, 400)
	ufo_spawner2.count = randi_range(2, 10)
	ufo_spawner2.rate  = randf_range(1, 5)
	ufo_spawner2.position = dude.position
	ufo_spawner2.spawn()
	level = level + 1
	# next target
	target = target + ufo_spawner2.count + ufo_spawner.count
	


func _process(delta):
	# if the dude reaches the target, advance to next level
	if dude.ufo_count == target:
		next_level()
	$CanvasLayer/target.text="target_count: " + str(target)
	$CanvasLayer/level.text="level: " + str(level)
	pass
