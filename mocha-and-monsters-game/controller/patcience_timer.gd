extends Timer

func _ready() -> void:
	start()

func _process(delta: float) -> void:
	_on_progress_bar_value_changed(time_left)

func _on_progress_bar_value_changed(value: float) -> void:
	pass # Replace with function body.
