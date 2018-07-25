-- dofile
dofile(minetest.get_modpath("playerranks").."/formspec.lua")
dofile(minetest.get_modpath("playerranks").."/ranks.lua")
dofile(minetest.get_modpath("playerranks").."/onjoin.lua")


-- privs -- do not change give_to_singleplayer
minetest.register_privilege("pr_noob", {description = "Noob Priv.", give_to_singleplayer = false})
minetest.register_privilege("pr_regular", {description = "Regular Priv.", give_to_singleplayer = false})
minetest.register_privilege("pr_experience", {description = "Experience Priv.", give_to_singleplayer = false})
minetest.register_privilege("pr_specialist", {description = "Specialist Priv.", give_to_singleplayer = false})
minetest.register_privilege("pr_expert", {description = "Expert Priv.", give_to_singleplayer = false})
minetest.register_privilege("pr_boss", {description = "Boss Priv.", give_to_singleplayer = false})
minetest.register_privilege("pr_staff", {description = "Staff Priv.", give_to_singleplayer = false})
minetest.register_privilege("pr_owner", {description = "Owner Priv.", give_to_singleplayer = false})


-- playerranks
playerranks = {}


--- load
minetest.log("playerranksmodloaded")