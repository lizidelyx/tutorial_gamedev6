extends Area2D

@export var sceneName: String = "Level1"
@export var LoseScreen: String = "LoseScreen"

func _on_body_entered(body: Node2D) -> void:
	var current_scene = get_tree().get_current_scene().get_name()
	if body.get_name() == "Player":
		if current_scene == sceneName:
			global.lives -=1
		if (global.lives == 0):
			get_tree().change_scene_to_file(str("res://scenes/" + LoseScreen + ".tscn"))
		else:
			get_tree().call_deferred("change_scene_to_file",(str("res://scenes/" + sceneName+ ".tscn")))
