extends Node2D

var order_instance

var order = preload("res://scenes/order.tscn")

var cup4oz = preload("res://scenes/cup_4_oz.tscn")
var cup8oz = preload("res://scenes/cup_8_oz.tscn")
var cup12oz = preload("res://scenes/cup_12_oz.tscn")
var cup16oz = preload("res://scenes/cup_16_oz.tscn")
var cup20oz = preload("res://scenes/cup_20_oz.tscn")

func spawnCup(cup) -> void:
	# Note: consider the case where the player switches the cup size of an order object
	if get_tree().get_nodes_in_group("orders").is_empty():
		spawnOrder()
	else:
		print("cup spawned")
	var cup_instance = cup.instantiate()
	cup_instance.position = Vector2(471.0, 343.0)
	add_child(cup_instance)
	order_instance.setCup(cup_instance)
	

func spawnOrder() -> void:
	order_instance = order.instantiate()
	add_child(order_instance)
	add_to_group("orders")
	print("order spawned")

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
	spawnCup(cup4oz)
	
func _on_cup_size_small_pressed() -> void:
	# create cup object and change this to reflect the new
	# object later
	spawnCup(cup8oz)

func _on_cup_size_medium_pressed() -> void:
	spawnCup(cup12oz)


func _on_cup_size_large_pressed() -> void:
	spawnCup(cup16oz)


func _on_cup_size_largest_pressed() -> void:
	spawnCup(cup20oz)

# manipulates the visibility of the order ticket
func _on_ticket_order_button_pressed() -> void:
	pass # Replace with function body.
