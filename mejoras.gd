extends Control

@onready var buttonx2: Button = $MarginContainer/PanelContainer/MarginContainer/VBoxContainer/x2/HBoxContainer/Button
@onready var buttonx4: Button = $MarginContainer/PanelContainer/MarginContainer/VBoxContainer/x4/HBoxContainer/Button
var multiplicador: int = 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	buttonx2.mult_pops.connect(_on_button)
	buttonx4.mult_pops.connect(_on_button)

func _on_button(value) -> void:
	multiplicador = multiplicador * value
