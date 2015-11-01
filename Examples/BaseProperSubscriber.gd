extends Node

var subs_dict

func _ready():
	# Initialization here
	if subs_dict == null:
		subs_dict = _create_subs_dict()
	
	get_node("/root/EventBus").register(self)
	pass
	
func _create_subs_dict():
	var _events = get_node("/root/Events")
	return {
		_events.event_a : "event_a_fired",
		_events.event_b : "event_b_fired"
	}
	
func _enter_tree():
	if subs_dict != null:
		get_node("/root/EventBus").register(self)
	
func _exit_tree():
	get_node("/root/EventBus").unregister(self)

func event_a_fired(data):
	print(get_name() + ", proper event a with data: " + str(data))
	pass

func event_b_fired(data):
	print(get_name() + ", proper event b with data: " + str(data))
	pass
