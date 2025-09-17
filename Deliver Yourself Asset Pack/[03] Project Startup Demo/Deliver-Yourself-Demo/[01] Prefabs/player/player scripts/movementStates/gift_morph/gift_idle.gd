# gift_idle.gd
extends State

@export_group("Action States")
@export var gift_move: State
@export var gift_shoot: State

func enter() -> void:
	print("Action: Gift_Idle")

func exit() -> void:
	pass

func process_input(event: InputEvent) -> State:
	if Input.get_vector("move_left", "move_right", "move_forward", "move_back"):
		return gift_move
	if Input.is_action_just_pressed("shoot"):
		return gift_shoot
	return null

func process_frame(delta: float) -> State:
	return null

func process_physics(delta: float) -> State:
	return null
