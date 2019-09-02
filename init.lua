minetest.register_alias("python", "pythonima:python")
minetest.register_alias("python_block", "pythonima:python_block")
minetest.register_alias("gvr", "pythonima:gvr")

local current = minetest.get_modpath("pythonima")
parts = {
    pythonima = {"mapgen", "nodes", "items", "crafts", "mobs"},
}

print(parts)
for prefix, subparts in pairs(parts) do
    for _, subpart in pairs(subparts) do
        dofile(current.."/"..prefix.."/"..subpart..".lua")
    end
end
