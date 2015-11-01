# Event Bus for Godot engine

##How to

You only need EventBus.gd file. Add it as autoload with whatever name you want. (I suggest EventBus :P)

After setting EventBus as autoload you should (but you don't have to) define script with Events. If you are going to use consts as Events your script does not have to extend any other class.

After this, every object that want's to listen to particular event should have subs_dict dictionary field attached. Key should be event and value should be method name. Each callback method should accept one argument. Check out Examples directory.

##Posting event

Obtain EventBus node <code>(get_node("/root/EventBus")) and call .post(event, data_object) </code>

##Registering and unregistering

Obtain EventBus and call .register(obj), obj must have subs_dict dictionary field. To unregister call .unregister(obj) on EventBus.
Good place to call these is in <code>_enter_tree() and _exit_tree() </code>
