extends CanvasLayer

@onready var contador: Label = $Main/VBoxContainer/Contador
@onready var mejoras: Control = $Mejoras

@onready var ADDER : int = 1

func _on_button_pressed() -> void:
	contador.text = str(int(contador.text) + ADDER * mejoras.multiplicador)
