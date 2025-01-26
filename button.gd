extends Button

@export var valor_boton: int
@export var puntos_desbloqueo: int
signal mult_pops(value: int)
@onready var progress_bar: ProgressBar = $"../../../../../../../../Main/ProgressBar"
@onready var contador: Label = $"../../../../../../../../Main/Contador"

var comprado: bool = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pressed.connect(_on_pressed)
	text = str(puntos_desbloqueo) + " pops"
	progress_bar.max_value = 20

func _process(delta: float) -> void:
	if comprado or int(contador.text) < puntos_desbloqueo:
		disabled = true
	else:
		disabled = false
		
func _on_pressed() -> void:
	mult_pops.emit(valor_boton)
	comprado = true

	
