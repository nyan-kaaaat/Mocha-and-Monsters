extends Control


func _on_start_button_pressed() -> void:
	get_tree().change_scene_to_file("res://controller/game.tscn")

func _on_instruction_button_pressed() -> void:
	pass # Replace with function body.
