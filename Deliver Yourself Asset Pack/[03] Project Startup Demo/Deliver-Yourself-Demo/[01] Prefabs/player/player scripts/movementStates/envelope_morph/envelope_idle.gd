# envelope_idle.gd
extends State

@export_group("Action States")
@export var envelope_move: State
@export var envelope_fall: State

func enter() -> void:
	print("Action: Envelope_Idle")

func exit() -> void:
	pass

func process_input(event: InputEvent) -> State:
	if Input.get_vector("move_left", "move_right", "move_forward", "move_back"):
		return envelope_move
	return null

func process_frame(delta: float) -> State:
	return null

func process_physics(delta: float) -> State:
	return null
