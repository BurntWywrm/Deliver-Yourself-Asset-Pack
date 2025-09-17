# envelope_fall.gd
extends State

@export_group("Action States")
@export var envelope_move: State
@export var envelope_idle: State

func enter() -> void:
	print("Action: Envelope_Fall")

func exit() -> void:
	pass

func process_input(event: InputEvent) -> State:
	return null

func process_frame(delta: float) -> State:
	return null

func process_physics(delta: float) -> State:
	return null
