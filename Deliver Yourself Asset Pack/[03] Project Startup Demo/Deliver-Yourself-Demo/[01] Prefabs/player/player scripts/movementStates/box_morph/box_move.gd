# box_move.gd
extends State

@export_group("Action States")
@export var box_jump: State
@export var box_idle: State

func enter() -> void:
	print("Action: Box_Move")

func exit() -> void:
	pass

func process_input(event: InputEvent) -> State:
	if Input.is_action_just_pressed("jump"):
		return box_jump
	return null

func process_frame(delta: float) -> State:
	return box_idle
	return null

func process_physics(delta: float) -> State:
	return null
