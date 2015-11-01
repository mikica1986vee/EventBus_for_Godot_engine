
extends "BaseSimpleSubscriber.gd"

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	# Initialization here
	pass

func _init():
	var subs_dict = {}
	subs_dict[Events.SIMPLE_EVENT_C] = "event_c_fired"
	pass

func event_c_fired(data):
	print(get_name() + ", event c with data: " + str(data))
	
func event_b_fired(data):
	print(get_name() + ", overriden b with data: " + str(data))
