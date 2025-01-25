extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pressed.connect(on_pressed)
	pass # Replace with function body.

func on_pressed():
	$AudioStreamPlayer.play_random()
