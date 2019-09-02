minetest.register_alias("python", "pythonima:python")
minetest.register_alias("python_block", "pythonima:python_block")
minetest.register_alias("gvr", "pythonima:gvr")

local current = minetest.get_modpath("pythonima").."/pythonima/"
parts = {"mapgen", "nodes", "items", "crafts"}
for _, part in pairs(parts)
    do dofile(current..part..".lua")
end
