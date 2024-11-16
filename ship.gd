extends RigidBody2D

@onready
var forward_thruster : Node2D = $ForwardThruster

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("forward"):
		apply_force(Vector2(0, -10), forward_thruster.position)
	
