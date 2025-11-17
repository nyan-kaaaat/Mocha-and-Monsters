class_name Order extends Node2D


var cup_size
var ingridients

func _ready() -> void:
	name.is_empty()
	cup_size = null
	ingridients = []

func setCup(cup) -> void:
	"""
	sets desired cup size
	
	pre-conditions:
		cup: cup object
	"""
	cup_size = cup
	print("cup added")

func addIngredient(ingreddient) -> void:
	"""
	adds ingredients to the ingredients list
	
	pre-conditions:
		ingredient: ingredient objects
	post-conditions: cup contains ingredients and updates it to screen
	"""
	ingridients.append(ingreddient)
