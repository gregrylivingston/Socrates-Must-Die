extends Control

@export var notificationText: String = "Hello World"

# Called when the node enters the scene tree for the first time.
func _ready():
	$UiButton.text = notificationText
	await get_tree().create_timer(5).timeout
	queue_free()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
