class_name Order extends Food

func _ready() -> void:
	name.is_empty()
	cup_size = null
	ingridients = []
	liquid_ml = 0

## sets the order's desired cup size
func setCup(cup) -> void:
	cup_size = cup
	print("cup added")

## adds ingredients to the ingredients list
func addIngredient(ingreddient) -> void:
	ingridients.append(ingreddient)
