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

# Passes functions to the movement states
func _unhandled_input(event: InputEvent) -> void:
	movement_manager.process_input(event)

func _physics_process(delta: float) -> void:
	movement_manager.process_physics(delta)

func _process(delta: float) -> void:
	movement_manager.process_frame(delta)
