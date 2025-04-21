extends Node

# bad practice
@onready var parentChild: Node = get_node(".")
@onready var parentMain: Node = get_node("..")
@onready var parentMainGodot: Node = get_parent()
@onready var buton: Button = parentMainGodot.get_node("Button")

# good practice signals
# pode emitir o sinal para qualquer objeto pai ou filhos
signal signal_to_parent

# o ready sempre e chamado no filho
func _ready() -> void:
	print("ready filho")
	print(parentChild.name)
	print(parentMain.name)
	print(parentMainGodot.name)
	print(buton.name)
	emit_signal("signal_to_parent")

# o init e chamado na ordem do pai para o filho
func _init() -> void:
	print("init filho")

func on_custom_signal() -> void:
	print("Botao do Objeto Raiz foi pressionado")
