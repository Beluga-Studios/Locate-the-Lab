extends Node2D

var pos = position

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pos.y += 1
	scale += Vector2(.05,.05)
	position = pos
	position.x += randi_range(-3,3)
	position.y += randi_range(-3,3)
	$AudioStreamPlayer2D.play()
