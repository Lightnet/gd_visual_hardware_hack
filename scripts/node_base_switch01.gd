extends Node3D

@onready var animation_tree: AnimationTree = $"../AnimationTree"

var is_on:bool = false

func _ready() -> void:
	pass

func  _input(event: InputEvent) -> void:
	# parameters/switch_val/blend_position
	if Input.is_action_just_pressed("forward"):
		#animation_tree["parameters/switch_val/blend_position"] = -1
		#var data = animation_tree["parameters/switch_val"]
		var data = animation_tree
		var tween = get_tree().create_tween()
		tween.tween_property(data, "parameters/switch_val/blend_position", -1, 0.2)
		
	if Input.is_action_just_pressed("backward"):
		#animation_tree["parameters/switch_val/blend_position"] = 1
		var data = animation_tree
		var tween = get_tree().create_tween()
		tween.tween_property(data, "parameters/switch_val/blend_position", 1, 0.2)
		pass
	
	pass

func _process(delta: float) -> void:
	pass
