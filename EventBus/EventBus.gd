#dict eventConst -> mapSubscribers -> Delegate
#subscribers MUST HAVE subs_dict that will map Event ID with method name. Methods must take one argument only.
#obj should call register in _enter_tree() (if using simple ids) and unregister in _exit_tree()
extends Node

var event_to_object_map = {}

func post(event_id, arg):
	if event_to_object_map.has(event_id):
		var map = event_to_object_map[event_id]
		for obj in map:
			map[obj].fire(arg)
	
	pass
	
func register(obj):
	for index in obj.subs_dict:
		var event_map
		if event_to_object_map.has(index):
			event_map = event_to_object_map[index]
		else:
			event_map = {}
			event_to_object_map[index] = event_map
			
		event_map[obj] = EventDelegate.new(obj, obj.subs_dict[index])
		pass
		
func unregister(obj):
	for index in obj.subs_dict:
		if not event_to_object_map.has(index):
			continue
			
		var event_map = event_to_object_map[index]
		if event_map.has(obj):
			event_map.erase(obj)
		pass
		
class EventDelegate:
	var method_name;
	var target;
	
	func _init(target, method):
		self.method_name = method
		self.target = target
		
	func fire(arg):
		target.call(method_name, arg)
		
class Event:
	func _init():
		pass