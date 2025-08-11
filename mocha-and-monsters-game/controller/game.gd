extends Node2D


# the buttons on the ingredients shelf node
func _on_get_ingredient_pressed() -> void:
	print("flower pressed")


func _on_syrup_button_bean_pressed() -> void:
	print("bean pressed")


func _on_syrup_button_cube_pressed() -> void:
	print("cube pressed")


func _on_coffee_beans_pressed() -> void:
	print("coffee beans pressed")


# coffe grinder buttons

func _on_cup_size_pressed() -> void:
	print("smallest cup pressed")


func _on_cup_size_small_pressed() -> void:
	print("small cup pressed")


func _on_cup_size_medium_pressed() -> void:
	print("medium cup pressed")


func _on_cup_size_large_pressed() -> void:
	print("large cup pressed")


func _on_cup_size_largest_pressed() -> void:
	print("largest cup pressed")
