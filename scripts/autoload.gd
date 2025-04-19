extends Node

var tracks=["Lab","Forest"]
const MUSIC_DIR = "res://assets/audio/music/"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	change_music_to("Forest")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
		pass

func change_music_to(track:String):
	if tracks.has(track):
		print("changingchanging musiic")
		var music = load(MUSIC_DIR+track+".mp3")
		$AudioStreamPlayer.stream = music
		$AudioStreamPlayer.play()
		print("changed")
	else:
		push_error("Track %s does not exist" % track)


func _on_audio_stream_player_finished() -> void:
	$AudioStreamPlayer.play()
