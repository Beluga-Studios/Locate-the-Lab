extends Node2D

var intial_pos:Vector2 = position
var scalex = 1
var scaley = 1
var down = false
var predown = down

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	predown = down
	if position.x < -500 and position.y < 600:
		down = true
		intial_pos.y += 10
	intial_pos.x -= 10
	position = intial_pos
	$AudioStreamPlayer2D.play()
	position.y += randi_range(-2,2)
	position.x += randi_range(-3,3)
	if down != predown:
		$powerUP.play()
	
	


func _on_area_2d_area_entered(area: Area2D) -> void:
	$"../Node2D/CPUParticles2D".emitting = true
	$"../Node2D/Line2D6".show()
	
