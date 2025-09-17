# envelope_move.gd
extends State

@export_group("Action States")
@export var envelope_idle: State
@export var envelope_fall: State

func enter() -> void:
	print("Action: Envelope_Move")

func exit() -> void:
	pass

func process_input(event: InputEvent) -> State:
	return null

func process_frame(delta: float) -> State:
	return envelope_idle
	return null

func process_physics(delta: float) -> State:
	return null
