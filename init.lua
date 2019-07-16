gdamage = {}

-- List of registered damage types.
gdamage.types = {}

-- Register a damage type.
function gdamage.register(type)
	gdamage.types[type] = true
	if minetest.get_modpath("armor_monoid") then
		armor_monoid.register_armor_group(type, 100)
	end
end

-- Get a list of default armor groups.
function gdamage.armor_defaults()
	local ret = {}
	for k in pairs(gdamage.types) do
		ret[k] = 100
	end
	return ret
end
