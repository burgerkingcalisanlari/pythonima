minetest.register_craftitem("pythonima:gvr", {
	description = "Guido Van Rossum",
    inventory_image = "gvr.png",
    groups = {tool = 1},
    stack_max = 1,
    on_use = function(itemstack, user, pointed_thing)
        minetest.add_entity(pointed_thing.above, "pythonima:dropbox")
    end,
})

minetest.register_craftitem("pythonima:python", {
	description = "Python",
	inventory_image = "python.png"
})
