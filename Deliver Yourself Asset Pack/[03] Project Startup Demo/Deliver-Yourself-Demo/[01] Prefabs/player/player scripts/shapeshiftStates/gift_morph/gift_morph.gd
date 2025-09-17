# gift_morph.gd
extends State

@onready var movement_manager: Node = $movementManager

func enter() -> void:
	print("Morph: Gift")
	movement_manager.init(parent)

func exit() -> void:
	movement_manager.deinit()

func process_input(event: InputEvent) -> State:
	return selectionComponent.process_morph_selection(event, self) # Processes morph selection
	return null

func process_frame(delta: float) -> State:
	return null

func process_physics(delta: float) -> State:
	return null
