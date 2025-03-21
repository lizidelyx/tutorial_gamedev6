extends LinkButton
@export var stage_select: String = "stage select"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	get_tree().change_scene_to_file(str("res://scenes/" + stage_select + ".tscn"))
