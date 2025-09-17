# box_idle.gd
extends State

@export_group("Action States")
@export var box_move: State
@export var box_jump: State

func enter() -> void:
	print("Action: Box_Idle")

func exit() -> void:
	pass

func process_input(event: InputEvent) -> State:
	if Input.get_vector("move_left", "move_right", "move_forward", "move_back"):
		return box_move
	if Input.is_action_just_pressed("jump"):
		return box_jump
	
	return null

func process_frame(delta: float) -> State:
	return null

func process_physics(delta: float) -> State:
	return null
