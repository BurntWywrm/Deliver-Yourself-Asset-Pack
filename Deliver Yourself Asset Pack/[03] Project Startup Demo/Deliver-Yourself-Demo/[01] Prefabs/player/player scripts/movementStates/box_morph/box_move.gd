# box_move.gd
extends State

func enter() -> void:
	print("Action: Box_Move")

func exit() -> void:
	pass

func process_input(event: InputEvent) -> State:
	return null

func process_frame(delta: float) -> State:
	return null

func process_physics(delta: float) -> State:
	return null
