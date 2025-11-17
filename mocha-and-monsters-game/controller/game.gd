extends Node2D

var order

var cup4oz = preload("res://controller/cup_4_oz.tscn")

func _ready() -> void:
	order = Order.new()

# the buttons on the ingredients shelf node
func _on_get_ingredient_pressed() -> void:
	print("flower pressed")


func _on_syrup_button_bean_pressed() -> void:
	print("bean pressed")


func _on_syrup_button_cube_pressed() -> void:
	print("cube pressed")


func _on_coffee_beans_pressed() -> void:
	print("coffee beans pressed")


func _on_matcha_pressed() -> void:
	print("matcha pressed")


func _on_black_tea_pressed() -> void:
	print("black tea pressed")


func _on_green_tea_pressed() -> void:
	print("green tea pressed")


# coffe grinder buttons
func _on_cup_size_pressed() -> void:
	var cup4oz_instance = cup4oz.instantiate()
	cup4oz_instance.position = Vector2(471.0, 343.0)
	order.setCup(cup4oz_instance)
	


func _on_cup_size_small_pressed() -> void:
	# create cup object and change this to reflect the new
	# object later
	var cup4oz_instance = cup4oz.instantiate()
	cup4oz_instance.position = Vector2(471.0, 343.0)
	order.setCup(cup4oz_instance)


func _on_cup_size_medium_pressed() -> void:
	print("medium cup pressed")


func _on_cup_size_large_pressed() -> void:
	print("large cup pressed")


func _on_cup_size_largest_pressed() -> void:
	print("largest cup pressed")


# UI dopdown buttons
func _on_up_pressed() -> void:
	print("up")


func _on_left_pressed() -> void:
	print("left")


func _on_right_pressed() -> void:
	print("right")
