extends Node2D

var drive = false
var intial_pos:Vector2 = position
var is_just_not_hoverd:bool = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if position.x < -660:
		get_tree().change_scene_to_file("res://scenes/images/drive.tscn")
	if drive:
		intial_pos.x -= 10
	position = intial_pos
	toggle_particles($Button.is_hovered() or drive)
	if $Button.is_hovered() or drive:
		if is_just_not_hoverd:
			$AudioStreamPlayer2D.play()
			is_just_not_hoverd = false
		else:
			is_just_not_hoverd = true
		
		
		position.y += randi_range(-2,2)
		position.x += randi_range(-3,3)

func toggle_particles(toggle :bool):
		$CPUParticles2D1.emitting = toggle
		$CPUParticles2D2.emitting = toggle
		$CPUParticles2D3.emitting = toggle


func _on_button_pressed() -> void:
	drive = true
	Autoload.bust_in = true
