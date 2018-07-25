-- These blocks allow you to get certain ranks

-- 2nd Most Expensive Block
minetest.register_node("playerranks:2ndexpensive_block", {
	description = "2nd Most Expensive Block -- Drops 25 diamonds when digged",
	tiles = {"2ndexpensive_block.jpg"}, 
	groups = {cracky=3},
	drop = "default:diamond 25",
	sounds = default.node_sound_wood_defaults(),	
})
-- 2nd Most Expensive Block Craft
minetest.register_craft({
	output = "playerranks:2ndexpensive_block",
	recipe = {
		{"default:diamondblock", "default:diamondblock", "default:diamondblock"}
	}
})


-- 1st Most Expensive Block
minetest.register_node("playerranks:1stexpensive_block", {
	description = "1st Most Expensive Block -- Drops 40 diamonds and 4 mese when broken digged",
	tiles = {"1stexpensive_block.jpg"}, 
	groups = {cracky=3},
	drop = "default:diamond 40, default:mese 4"
	sounds = default.node_sound_wood_defaults(),	
})
-- 1st Most Expensive Block Craft
minetest.register_craft({
	output = "playerranks:1stexpensive_block",
	recipe = {
		{"default:mese", "default:diamondblock","default:mese"},
		{"default:diamondblock", "default:mese","default:diamondblock"},
		{"default:mese", "default:diamondblock", "default:mese"}
	}
})

---------------------------------------------------------------------------------------------------------------------------------------------------


--Level 2
-- When you place default:cobble you become a Regular Player
minetest.override_item("default:cobble", {
   after_place_node = function(pos, placer, itemstack, pointed_thing)
      local player_name = placer:get_player_name()
      local privs = minetest.get_player_privs(player_name)
      if privs.pr_noob then
         privs.pr_regular = true
         privs.pr_noob = nil
         minetest.set_player_privs(player_name, privs)
         core.chat_send_all("*** " .. player_name .. " is now Level 2 -- Regular! Type /ranks for more info! ***")
      end
   end,
})


--Level 3
-- When you place default:diamondblock you become a Experienced Player
minetest.override_item("default:diamondblock", {
   after_place_node = function(pos, placer, itemstack, pointed_thing)
      local player_name = placer:get_player_name()
      local privs = minetest.get_player_privs(player_name)
      if privs.pr_regular then
         privs.pr_experience = true
         privs.pr_regular = nil
         minetest.set_player_privs(player_name, privs)
         core.chat_send_all("*** " .. player_name .. " is now Level 3 -- Experienced! Type /ranks for more info! ***")
      end
   end,
})

--Level 4
-- When you place default:mese you become a Specialist Player
minetest.override_item("default:mese", {
   after_place_node = function(pos, placer, itemstack, pointed_thing)
      local player_name = placer:get_player_name()
      local privs = minetest.get_player_privs(player_name)
      if privs.pr_experience then
         privs.pr_specialist = true
         privs.pr_experience = nil
         minetest.set_player_privs(player_name, privs)
         core.chat_send_all("*** " .. player_name .. " is now Level 4 -- Specialist! Type /ranks for more info! ***")
      end
   end,
})

-- Level 5
-- When you place playerranks:2ndexpensive_block you become a Expert Player
minetest.override_item("playerranks:2ndexpensive_block", {
   after_place_node = function(pos, placer, itemstack, pointed_thing)
      local player_name = placer:get_player_name()
      local privs = minetest.get_player_privs(player_name)
      if privs.pr_specialist then
         privs.pr_expert = true
         privs.pr_specialist = nil
         minetest.set_player_privs(player_name, privs)
         core.chat_send_all("*** " .. player_name .. " is now Level 5 -- Expert! Type /ranks for more info! ***")
      end
   end,
})

-- Level 6
-- When you place playerranks:1stexpensive_block you become a Boss Player
minetest.override_item("playerranks:1stexpensive_block", {
   after_place_node = function(pos, placer, itemstack, pointed_thing)
      local player_name = placer:get_player_name()
      local privs = minetest.get_player_privs(player_name)
      if privs.pr_expert then
         privs.pr_boss = true
         privs.pr_expert = nil
         privs.fly = true -- Gives fly, can be changed to any priv 
         minetest.set_player_privs(player_name, privs)
         core.chat_send_all("*** Congragulations " .. player_name .. "! You have reached Level 6 -- Boss! You can now fly! Type /ranks for more info! ***")
		 core.chat_send_player(player_name, '***You can now fly!***')
      end
   end,
})
