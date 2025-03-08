extends Node2D

var pos = position

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$AudioStreamPlayer2D.play()
	pos.x -= 6
	position = pos
	position.y += randi_range(-2,2)
	position.x += randi_range(-3,3)
	if position.x < -1500:
		get_tree().change_scene_to_file("res://scenes/levels/BUST/des_2.tscn")
