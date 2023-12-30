@tool
extends Button

@export var newSceneName: String
@export var isTiny: bool = false

var focused = false

@onready var radialProgressBar = $RadialProgress

# Called when the node enters the scene tree for the first time.
func _ready():
	tooltip_text = "Walk to " + newSceneName.replace("_"," ")
	if isTiny:
		custom_minimum_size = Vector2i(20,20)
		size = custom_minimum_size
		$RadialProgress.position = custom_minimum_size/2
		$RadialProgress.radius = 12
		add_theme_stylebox_override("normal",load("res://scene/location/locationButtonStyleBoxTiny.tres"))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if focused && radialProgressBar.progress < 30 : 
		radialProgressBar.progress += 5


func _on_pressed():
	$AudioStreamPlayer2.play()
	Game.gameroot.goToPlace(newSceneName)
	
	#close map if open
	if Game.gameroot.map != null:
		Game.gameroot.map.queue_free()
	


func _on_mouse_entered():
	focused = true
	var tween = get_tree().create_tween()
	tween.tween_property(self, "size", size * 1.1, .1)
	tween.tween_property(self, "size", size / 1.1, .1)
	$AudioStreamPlayer.play()

func _on_mouse_exited():
	focused = false
	radialProgressBar.progress = 0
	$AudioStreamPlayer.stop()
