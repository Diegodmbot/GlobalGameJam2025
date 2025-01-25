extends Button

@export var valor_boton: int
signal mult_pops(value: int)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pressed.connect(_on_pressed)
	
func _on_pressed() -> void:
	mult_pops.emit(valor_boton)
	disabled = true
