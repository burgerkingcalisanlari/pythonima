minetest.register_alias("python", "pythonima:python")
minetest.register_alias("python_block", "pythonima:python_block")
minetest.register_alias("gvr", "pythonima:gvr")


minetest.register_ore({
    ore_type       = "blob",
    ore            = "pythonima:python_block",
    wherein        = "default:stone",
    clust_scarcity = 8 * 8 * 8,
    clust_num_ores = 9,
    clust_size     = 3,
    y_max          = 31000,
    y_min          = -31,
})

minetest.register_node("pythonima:python_block", {
	description = "Python Ore",
	tiles = {"python_block.png"},
	groups = {crumbly=3},
	drop = "pythonima:python",
})

minetest.register_craftitem("pythonima:gvr", {
	description = "Guido Van Rossum",
    inventory_image = "gvr.png",
    groups = {tool = 1},
    stack_max = 1,
    on_use = function(itemstack, user, pointed_thing)
    end,
})

minetest.register_craftitem("pythonima:python", {
	description = "Python",
	inventory_image = "python.png"
})

minetest.register_craft({
    output = "pythonima:gvr 1",
    recipe = {
        {"pythonima:python", "pythonima:python", "pythonima:python"},
        {"pythonima:python", "pythonima:python", "pythonima:python"},
        {"pythonima:python", "", ""},
    }
})
