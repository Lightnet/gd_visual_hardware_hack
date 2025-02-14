extends Node3D

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var animation_tree: AnimationTree = $AnimationTree

func _ready() -> void:
	animation_tree.active = true
	#pass

func _input(event: InputEvent) -> void:
	update_animation_parameters()
	pass

func _process(delta: float) -> void:
	#update_animation_parameters()
	pass

func update_animation_parameters():
	#if Input.is_action_pressed("forward"):
		#print("play")
		#animation_player.play("press")
	if Input.is_action_pressed("forward"):
		print("press")
		animation_tree["parameters/conditions/is_idle"] = false
		animation_tree["parameters/conditions/is_press"] = true
	else:
		animation_tree["parameters/conditions/is_idle"] = true
		animation_tree["parameters/conditions/is_press"] = false
		
		
	#if Input.is_action_pressed("forward"):
		#print("press")
		#animation_tree["parameters/conditions/is_idle"] = false
		#animation_tree["parameters/conditions/is_press"] = true
	#if Input.is_action_pressed("backward"):
		#print("press")
		#animation_tree["parameters/conditions/is_idle"] = true
		#animation_tree["parameters/conditions/is_press"] = false
	#else:
		#print("release")
		#animation_tree["parameters/conditions/is_idle"] = true
		#animation_tree["parameters/conditions/is_press"] = false
	pass
