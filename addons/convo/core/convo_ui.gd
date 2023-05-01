extends Control


@export var graph_edit: GraphEdit
@export var popup_menu: PopupMenu

var DialogueNode = preload("res://addons/convo/nodes/TextNode.tscn")


func _ready():
	popup_menu.visible = false


func _on_create_button_pressed():
	var node = DialogueNode.instantiate()
	$MarginContainer/VSplitContainer/GraphEdit.add_child(node)


func _on_graph_edit_gui_input(event: InputEvent):
	if event is InputEventMouseButton and event.is_pressed():
		if event.button_index == MOUSE_BUTTON_RIGHT:
			popup_menu.position = event.position
			popup_menu.visible = true
