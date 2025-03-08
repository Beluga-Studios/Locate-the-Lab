extends Node2D

var intial_ypos = -40

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x += 10
	position.y = intial_ypos
	position.y += randi_range(-4,4) 
	$other/AudioStreamPlayer2D.play()










#Extravaganza Technologies
#	Beluga Studios
#
#	Minke AI
#
#	Orca
#
#
#
