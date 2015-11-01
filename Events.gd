extends Node

const Event = preload("/EventBus/EventBus.gd").Event

const EVENT_TYPE_ID = 1

const SIMPLE_EVENT = 1 + EVENT_TYPE_ID << 16

var PROPER_EVENT = Event.new()

func _ready():
	print("Simple event: " + str(SIMPLE_EVENT))
