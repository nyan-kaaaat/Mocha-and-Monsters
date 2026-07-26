extends Node2D

var customer = preload("res://controller/customer.tscn")

var character_list = []

func _ready() -> void:
	$CustomerSpawner.start()

func _on_customer_spawner_timeout() -> void:
	var customer_instance = customer.instantiate()
	add_child(customer_instance)
	print("customer spawned")
