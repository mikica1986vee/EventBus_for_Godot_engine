
extends Node2D

const SimpleEvents = preload("SimpleEvents.gd")

func _ready():
	# Initialization here
	call_deferred("emmit")
	pass

func emmit():
	var eb = get_node("/root/EventBus")
	eb.post(SimpleEvents.SIMPLE_EVENT_A, "Simple A fired")
	eb.post(SimpleEvents.SIMPLE_EVENT_B, "Simple B fired")
	eb.post(SimpleEvents.SIMPLE_EVENT_C, "Simple C fired")
	
	var events = get_node("/root/Events")
	eb.post(events.event_a, "a fired")
	eb.post(events.event_b, "b fired")
	eb.post(events.event_c, "c fired")
