extends Screen
class_name ScreenOne

@onready var navigator: StackNavigator = get_tree().root.get_node("Demo/Navigator")

func on_load():
	super.on_load();
	print("loaded screen one")

func on_kill():
	print("removed screen one")
	super.on_kill();


func _on_button_pressed() -> void:
	navigator.push(preload('res://example/screen_two.tscn').instantiate())
