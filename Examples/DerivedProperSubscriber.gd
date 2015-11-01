extends "BaseProperSubscriber.gd"

func _ready():
	# base takes care to init of subs_dict
	pass
	
func _create_subs_dict():
	var _events = get_node("/root/Events")
	var subs = ._create_subs_dict()
	subs[_events.event_c] = "event_c_fired"
	return subs

func event_c_fired(data):
	print(get_name() + ", proper event c with data: " + str(data))
	pass

func event_b_fired(data):
	print(get_name() + ", overriden proper event b with data: " + str(data))
	pass
