extends Control


var DialogueNode = preload("res://addons/convo/nodes/DialogueNode.tscn")


func _on_create_button_pressed():
	var node = DialogueNode.instantiate()
	$MarginContainer/VSplitContainer/GraphEdit.add_child(node)
