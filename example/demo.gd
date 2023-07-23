extends Node

@onready var navigator: StackNavigator = $Navigator

func _ready() -> void:
	navigator.push(preload("res://example/screen_one.tscn").instantiate())
