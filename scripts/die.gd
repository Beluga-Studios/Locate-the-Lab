extends CanvasLayer

var can_fail = true
var load_to_file

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func fail(fail:bool, message:String, Redo_file:String):
	load_to_file = Redo_file
	visible = fail
	$Node2D2/Label.text = message
	if fail and can_fail:
		can_fail = false
		$Node2D2/AnimationPlayer.play("fail")
		$AudioStreamPlayer.play()
		
	elif fail == false:
		can_fail = true


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file(load_to_file)
	fail(false,"","")
