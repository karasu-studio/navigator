extends Screen
class_name ScreenTwo

@onready var navigator: StackNavigator = get_tree().root.get_node("Demo/Navigator")

func on_load():
	super.on_load();
	print("loaded screen two")

func on_kill():
	print("removed screen two")
	super.on_kill();


func _on_button_pressed() -> void:
	navigator.replace(preload('res://example/screen_three/screen_three.tscn').instantiate())
