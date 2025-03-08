extends Node2D

var map_size

func _physics_process(delta: float) -> void:
	if $Button.is_hovered():
		map_size = 0.5
	else:
		map_size = 0.3
	$"Map-image".scale = ($"Map-image".scale + Vector2(map_size, map_size)) / 2


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/levels/start.tscn")
