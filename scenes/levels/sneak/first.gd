extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
		$person2.position.x -= 2
		if $person2.position.x < -650:
			print("next")
			Engine.time_scale = 0
			#get_tree().reload_current_scene()
