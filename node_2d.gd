extends CanvasLayer

@onready var contador: Label = $Main/Contador
@onready var mejoras: Control = $Mejoras
@onready var texture_button = $Main/TextureButton
@onready var current_state:int = 1

const INITIAL_POSITION = Vector2(-960, -167)
const ADDER : int = 1


func _on_texture_button_pressed():
	contador.text = str(int(contador.text) + ADDER * mejoras.multiplicador)
	# cambiar textura
	var new_texture: CompressedTexture2D = null
	current_state = current_state + 1 if current_state != 5 else 0
	match current_state:
		0:
			new_texture = preload("res://sprites/Papel-3.PNG")
		1:
			new_texture = preload("res://sprites/Papel-1.PNG")
		2:
			new_texture = preload("res://sprites/Papel-1.PNG")
		3:
			new_texture = preload("res://sprites/Papel-2.PNG")
		4:
			new_texture = preload("res://sprites/Papel-2.PNG")
		5:
			new_texture = preload("res://sprites/Papel-3.PNG")
	texture_button.texture_normal = new_texture
	# animacion
	var tween = create_tween()
	tween.tween_property(texture_button, "rotation_degrees", randf_range(3, 10), 0.05)
	tween.tween_property(texture_button, "rotation_degrees", randf_range(-3, -10), 0.05)
	if current_state == 0:
		texture_button.disabled = true
		tween.tween_property(texture_button, "position", Vector2(texture_button.position.x, 800), 1)
		await  tween.finished
		texture_button.position = INITIAL_POSITION
		texture_button.scale = Vector2(0,0)
		#tween.stop()
		$Main/TextureButton/AnimationPlayer.play("create")
		current_state = 1
		texture_button.texture_normal = preload("res://sprites/Papel-1.PNG")
		texture_button.disabled = false
