extends GridContainer
@export var level1: String = "Level1"
@export var level2: String = "Level2"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_level_1_pressed() -> void:
	get_tree().change_scene_to_file(str("res://scenes/" + level1 + ".tscn"))


func _on_level_2_pressed() -> void:
	get_tree().change_scene_to_file(str("res://scenes/" + level2 + ".tscn"))
