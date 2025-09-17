# gift_move.gd
extends State

@export_group("Action States")
@export var gift_shoot: State
@export var gift_idle: State

func enter() -> void:
	print("Action: Gift_Move")

func exit() -> void:
	pass

func process_input(event: InputEvent) -> State:
	return null

func process_frame(delta: float) -> State:
	return null

func process_physics(delta: float) -> State:
	return null
