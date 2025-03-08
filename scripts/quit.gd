extends Button


func _on_pressed() -> void:
	Fail.fail(true,"YOU DIED!
	for no reason", "res://scenes/first.tscn")
	$Timer.start()
	

func _on_timer_timeout() -> void:
	get_tree().quit()
