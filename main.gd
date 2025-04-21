extends Node

class_name NodeMain

@onready var child: Node = $Child
@onready var child2: Node = get_node("Child")

# bad practice
#signal custom_signal

var a_string: String = "Soma: "

var a_int: int = 15.5

var a_float: float = 15.5

var can_sum: bool = true

var soma: int = 0

var count: float = 0

const WHILE_CONST: int = 15

enum STATE {
	IDLE,
	RUN,
	DAMAGE,
	DEFAULT
}

# o ready sempre e chamado no main em cascata dos filhos ate o pai
func _ready() -> void:
	#sum()
	#print(a_string)
	#print(a_int)
	#print(a_float)
	#for_example()
	#print(return_value())
	#while_example()
	#state_example()
	#teste_case()
	#array_example()
	print("ready pai")

# o init e chamado na ordem do pai para o filho
func _init() -> void:
	print("init pai")

func sum() -> void:
	print(str(1 + 1))
	print(1 + 1)
	print(a_string + str(1 + 1))
	sum_parameters(5, 10)

func sum_parameters(a: int, b: int) -> void:
	print("E menor que 10: " + str((a + b) < 10))
	if can_sum:
		print(a_string + str(a + b))
	else:
		print("Cannot sum")

func for_example() -> void:
	for i in a_int:
		soma = i + 1
		print(i)

func return_value() -> int:
	print(soma)
	return 10

func while_example() -> void:
	var i = 0
	while i < WHILE_CONST:
		i = i + 1
		print("While: " + str(i))

func state_example() -> void:
	print(STATE.IDLE)

# funcao do godot que atualiza por a cada 60 frames porem com animacoes e sprites
func _physics_process(delta: float) -> void:
	pass
	#count += delta
	#print(count)

# funcao do godot que atualiza por a cada 60 frames
func _process(delta: float) -> void:
	pass
	#count += delta
	#print(count)

func teste_case() -> void:
	var state: int = STATE.IDLE
	match state:
		STATE.IDLE:
			print("E idle")
		STATE.RUN:
			print("E run")

func array_example() -> void:
	var a_array: Array = [0, 1, 2, 3, "String", 1.54, true]
	for i in a_array.size():
		print(a_array[i])
		print(i)
		print(a_array[a_array.size() - 1])

#func on_button_pressed() -> void:
	#print("Botão pressionado")
	#child.on_custom_signal()
	
	# bad practice
	#emit_signal("custom_signal")

func _on_child_signal_to_parent() -> void:
	print("Sinal do filho emitido para o pai")
