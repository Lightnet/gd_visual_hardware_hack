extends Node3D

# https://github.com/godotengine/godot-proposals/issues/4381
# https://docs.godotengine.org/en/stable/classes/class_animationnodeblendtree.html
# https://docs.godotengine.org/en/stable/classes/class_animationnode.html#class-animationnode
# https://godotforums.org/d/21821-how-do-i-change-the-animation-of-an-animation-node-during-runtime/2
# 

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var animation_tree: AnimationTree = $AnimationTree
@onready var animation_tree_2: AnimationTree = $AnimationTree2


func _ready() -> void:
	#animation_player.play()
	
	#print("animation:", animation_tree_2.get_animation("rotate_dial"))
	#var anim = animation_tree_2.get_animation("rot")
	#anim.timeline_length = 1.0
	print("nodes:", animation_tree_2.get_tree().get_node_count())
	#print("rot_dial?:", animation_tree_2.get_tree().get("rot_dial"))
	#print("rot_dial?:", animation_tree_2.get_node("rot_dial"))
	#print("rot_dial?:", animation_tree_2.get_animation_list())
	#print("rot_dial?:", animation_tree_2.get_node("AnimationNodeName"))
	#print("rot_dial?:", animation_tree_2.tree_root.get("rot_dial")) 
	#print("rot_dial?:", animation_tree_2.get_tree().get("RotDial"))
	print("rot_dial?:", animation_tree_2.get("RotDial"))
	print(animation_tree_2.tree_root)
	print(animation_tree_2.tree_root.get_node("RotDial"))
	print(animation_tree_2.tree_root.get_node("RotDial").timeline_length)
	pass
	
func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("forward"):
		#animation_tree_2["parameters/RotDial/timeline_length"] = 1.0
		#print(animation_tree_2["parameters/RotDial"])
		animation_tree_2.tree_root.get_node("RotDial").timeline_length = 1
	if Input.is_action_just_pressed("backward"):
		#animation_tree_2["parameters/RotDial/timeline_length"] = 1.0
		animation_tree_2.tree_root.get_node("RotDial").timeline_length = 3
	pass

func _process(delta: float) -> void:
	pass


func _on_h_slider_value_changed(value: float) -> void:
	animation_tree_2.tree_root.get_node("RotDial").timeline_length = value
	#pass
