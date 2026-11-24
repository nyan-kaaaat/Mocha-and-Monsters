extends Node2D

var customer = preload("res://scenes/character-scenes/customer.tscn")
var customer1 = preload("res://scenes/character-scenes/character_1.tscn")
var customer2 = preload("res://scenes/character-scenes/character_2.tscn")

var customer_instance

var character_list = [customer1, customer2]

func _ready() -> void:
	$CustomerSpawner.start()

## spawns a customer if the cafe is empty
## and adds them to a group of customers, can only have 1 at a time
func _on_customer_spawner_timeout() -> void:
	if get_tree().get_nodes_in_group("customer").is_empty():
		# picks a random customer from the character list and spawns them
		var random_customer = randi_range(0, character_list.size()-1)
		customer_instance = character_list[random_customer].instantiate()
		add_child(customer_instance)
		add_to_group("customer")
		print("customer spawned")
	else:
		pass

## removes customer from the scene
	#remove_child(customer_instance)
	#remove_from_group("customer")
	#print("customer removed")
