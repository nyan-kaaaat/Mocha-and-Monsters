class_name Customer extends Node2D

#func _ready() -> void:
	#$PatcienceTimer.start()
	#
#func _process(delta: float) -> void:
	#$PatcienceTimer._on_progress_bar_value_changed($PatcienceTimer.time_left)
	
func _on_patcience_timer_timeout() -> void:
	print("customer gets mad")
