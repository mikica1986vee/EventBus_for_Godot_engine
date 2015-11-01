extends Node

const Events = preload("SimpleEvents.gd")

var subs_dict = {
	Events.SIMPLE_EVENT_A : "event_a_fired",
	Events.SIMPLE_EVENT_B : "event_b_fired"
}

func _ready():
	# Initialization here
	print ("base subscriber")
	pass
	
func _enter_tree():
	get_node("/root/EventBus").register(self)
	
func _exit_tree():
	get_node("/root/EventBus").unregister(self)

func event_a_fired(data):
	print(get_name() + ", event a with data: " + str(data))
	pass

func event_b_fired(data):
	print(get_name() + ", event b with data: " + str(data))
	pass
