extends Timer



func _on_timeout() -> void:
	get_tree().change_scene_to_file("res://scenes/levels/BUST/bust_in.tscn")
