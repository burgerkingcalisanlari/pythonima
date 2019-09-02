minetest.register_alias("gvr", "pythonima:gvr")

minetest.register_craft({
    output = "pythonima:gvr 1",
    recipe = {
        {"default:dirt", "default:dirt", "default:dirt"},
        {"default:dirt", "default:dirt", "default:dirt"},
        {"default:dirt", "", ""}, 
    }
})

minetest.register_craftitem("pythonima:gvr", {
	description = "Guido Van Rossum",
    inventory_image = "gvr.png",
    groups = {tool = 1},
    on_use = function(itemstack, user, pointed_thing)
    end,
})
