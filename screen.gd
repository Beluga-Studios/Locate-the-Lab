extends Node2D

var offset = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_timer_timeout() -> void:
	offset +=30
	$red.position.x -= 30
	$red.add_point(Vector2(offset,randi_range(-40,40)))
	if $red.points.size() > 8:
		$red.remove_point(0)
	$blue.position.x -= 30
	$blue.add_point(Vector2(offset,randi_range(-40,40)))
	if $blue.points.size() > 8:
		$blue.remove_point(0) 
	$green.position.x -= 30
	$green.add_point(Vector2(offset,randi_range(-40,40)))
	if $green.points.size() > 8:
		$green.remove_point(0)
	$Timer.start()
