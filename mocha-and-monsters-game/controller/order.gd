class_name Order extends Node2D

var cup_size = null;
var ingridients = []

func setCup(cup) -> void:
	cup_size = cup
	print("cup added")

func addIngredient(ingreddient) -> void:
	ingridients.append(ingreddient)
