extends Node2D

var customer = preload("res://scenes/customer.tscn")
var customer_instance

var character_list = []

func _ready() -> void:
	$CustomerSpawner.start()

## spawn a customer if the cafe is empty
func _on_customer_spawner_timeout() -> void:
	if get_tree().get_nodes_in_group("customer").is_empty():
		customer_instance = customer.instantiate()
		add_child(customer_instance)
		add_to_group("customer")
		print("customer spawned")
	else:
		remove_child(customer_instance)
		remove_from_group("customer")
		print("customer removed")
