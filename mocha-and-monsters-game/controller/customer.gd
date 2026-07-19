class_name Customer extends Node2D

var desired_order = null
var given_order = null

func give_order(order) -> void:
	# give customer order object
	self.given_order = order

func compare_order() -> bool:
	# if the given order matches what the customer wants,
	# return true
	if self.given_order != null:
		return true
	return false

func customer_opinion() -> void:
	if compare_order() == true:
		print("customer happy :D")
	else:
		print("customer disappointed")
	
func _on_patcience_timer_timeout() -> void:
	print("customer gets mad")
