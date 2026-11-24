class_name Order extends Node2D

var cup_size
var ingridients

func _ready() -> void:
	name.is_empty()
	cup_size = null
	ingridients = []

## sets the order's desired cup size
func setCup(cup) -> void:
	cup_size = cup
	print("cup added")

## adds ingredients to the ingredients list
func addIngredient(ingreddient) -> void:
	ingridients.append(ingreddient)
