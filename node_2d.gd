extends Node2D

@onready var contador: Label = $Main/Contador

const ADDER : int = 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	contador.text = str(int(contador.text) + ADDER)
	pass # Replace with function body.
