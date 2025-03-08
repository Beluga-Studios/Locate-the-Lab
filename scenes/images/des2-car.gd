extends Node2D


var left = false
var back = false
var pos = position
var tree = true
var tree_puns = [
	"the tree says “Wait, i’m a talking tree” the car proceeds chopping down the tree and says “and you will dialogue.”",
	"Looks like you’re rooted in failure!",
	"Treeific.",
	"Upon arrival to the tree the car started swinging at the tree. \"But, I'm a talking tree\" said the tree. \"And you will dialogue\" replied the car.",
	"Pretty bendy tree."
]
var random_tree_index = randi_range(0, tree_puns.size() - 1)
var tree_pun:String = tree_puns[random_tree_index]


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(random_tree_index," | ", str(tree_puns.size)," | ", tree_puns[random_tree_index])

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$AudioStreamPlayer2D.play()
	if tree:
		if not (left or back):
			pos.x -= 7
			position = pos
			position.y += randi_range(-2,2)
			position.x += randi_range(-3,3)
		elif left:
			pos.x -= 6
			if position.x < 40:
				pos.y += 5
			position = pos
			position.y += randi_range(-2,2)
			position.x += randi_range(-3,3)
			if position.x < -1500:
				get_tree().change_scene_to_file("res://scenes/levels/BUST/next/entrance.tscn")
		elif back:
			if not $"../AnimationPlayer".is_playing():
				Fail.fail(true, "Wrong Way!", "res://scenes/levels/BUST/bust_in.tscn")


func _on_area_2d_2_area_entered(area: Area2D) -> void:
	hide_buttons()
	tree=false
	$"../Node2D2/AnimationPlayer".play("tree_fall")
	$Timer.start()
	$CPUParticles2D1.emitting = false
	$CPUParticles2D2.emitting = false
	$CPUParticles2D3.emitting = false
	

func _on_timer_timeout() -> void:
	Fail.fail(true, tree_pun, "res://scenes/levels/BUST/bust_in.tscn")


func _on_button_2_pressed() -> void:
	z_index = 1
	left = true
	hide_buttons()

func _on_button1_pressed() -> void:
	$Area2D.queue_free()
	back = true
	hide_buttons()
	$"../AnimationPlayer".play("turn_back")
	print("finished")

func hide_buttons():
	$"../Button".hide()
	$"../Label".hide()
	$"../Button2".hide()
	$"../Label2".hide()
