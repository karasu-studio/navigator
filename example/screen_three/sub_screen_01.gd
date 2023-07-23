extends TabView

@export var back_btn: Button
@onready var navigator: StackNavigator = get_tree().root.get_node("Demo/Navigator")

# Called when the node enters the scene tree for the first time.
func _ready():
	print("ready-sub-screen-01")
	back_btn.connect('pressed', _on_back_pressed)

func on_active():
	print("called on active - sub-screen-01")
	
func on_inactive():
	print("called on inactive - sub-screen-01")

func _on_back_pressed():
	navigator.go_back()
