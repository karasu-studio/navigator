extends TabView

func _ready():
	print("ready-sub-screen-02")

func on_active():
	print("called on active - sub-screen-02")
	
func on_inactive():
	print("called on inactive - sub-screen-02")
