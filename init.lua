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

-- Generic damage type.
gdamage.register("generic")

-- Get a list of default armor groups.
-- Optionally specify value to return in each.
function gdamage.armor_defaults(v)
	local ret = {}
	for k in pairs(gdamage.types) do
		ret[k] = v or 100
	end
	return ret
end
