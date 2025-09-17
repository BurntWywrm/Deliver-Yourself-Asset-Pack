# playerScript.gd
class_name Player
extends RigidBody3D

## delegates any node dependent logic to the state machine(s) for further processing

@onready var animation: AnimationPlayer = $AnimationPlayer # Animation Player
@onready var shapeshift_manager: Node = $shapeshiftManager # State Manager
@onready var selection_component: Node = $selectionComponent # Selection Component

func _ready() -> void:
	# Initialize the shapeshift_manager, passing a reference of the player to the morphs,
	# that way they can move and react accordingly
	shapeshift_manager.init(self, animation, selection_component)

# Passes functions to the morph states
func _unhandled_input(event: InputEvent) -> void:
	shapeshift_manager.process_input(event)

func _physics_process(delta: float) -> void:
	shapeshift_manager.process_physics(delta)

func _process(delta: float) -> void:
	shapeshift_manager.process_frame(delta)
