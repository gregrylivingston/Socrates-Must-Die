extends Button

@export var newSceneName: String
var focused = false
@onready var radialProgressBar = $RadialProgress

# Called when the node enters the scene tree for the first time.
func _ready():
	tooltip_text = "Walk to " + newSceneName.replace("_"," ")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if focused && radialProgressBar.progress < 30 : 
		radialProgressBar.progress += 5


func _on_pressed():
	$AudioStreamPlayer2.play()
	Game.gameroot.goToPlace(newSceneName)
	


func _on_mouse_entered():
	focused = true
	$AnimationPlayer.play("mouseOver")
	$AudioStreamPlayer.play()

func _on_mouse_exited():
	focused = false
	radialProgressBar.progress = 0
	$AudioStreamPlayer.stop()
