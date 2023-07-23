extends Node
class_name TabBarView

@export var tab_views_ref: Array[PackedScene]
@export var content: Node
@export var initial_tab: int

var _current_tab: int = -1

var _tab_instances: Dictionary = {}

func _ready():
	change_tab(initial_tab)

func change_tab(tab_index: int):
	if (_current_tab == tab_index): return
	
	if (content.get_child_count() > 0):
		(content.get_child(0) as TabView).on_inactive()
		content.remove_child(content.get_child(0))
		
	if (!_tab_instances.has(tab_index)):
		_tab_instances[tab_index] = tab_views_ref[tab_index].instantiate()
	
	content.add_child(_tab_instances.get(tab_index))
	_current_tab = tab_index
	(_tab_instances.get(tab_index) as TabView).on_active()
