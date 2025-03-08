extends Node

var bust_in = false
var bust_in_press = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if bust_in and bust_in_press:
		bust_in_press = false
		$AudioStreamPlayer2.play()
		$AudioStreamPlayer.stop()
