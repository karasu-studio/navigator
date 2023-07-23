extends Screen

@export var tab_buttons: Array[Button]
@export var tab_bar_view: TabBarView

func on_load():
	super.on_load();
	for i in tab_buttons.size():
		tab_buttons[i].connect('pressed', func (): _on_tab_pressed(i))
	print("loaded screen three")

func on_kill():
	print("removed screen three")
	super.on_kill();
	
func _on_tab_pressed(tab: int):
	tab_bar_view.change_tab(tab)
