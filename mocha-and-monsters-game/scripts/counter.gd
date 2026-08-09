extends Node2D

var customer = preload("res://scenes/customer.tscn")

var character_list = []

func _ready() -> void:
	$CustomerSpawner.start()

## spawn a customer if the cafe is empty
func _on_customer_spawner_timeout() -> void:
	if get_tree().get_nodes_in_group("customer").is_empty():
		var customer_instance = customer.instantiate()
		add_child(customer_instance)
		print("customer spawned")
	else:
		pass
