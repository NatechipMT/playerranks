-- Noob on join
minetest.register_on_joinplayer(function(player)
      local player_name = player:get_player_name()
      local privs = minetest.get_player_privs(player_name)
      if 
      	privs['pr_noob'] == true 
      then
            minetest.chat_send_all("Give a warm welcome to "..player:get_player_name()..", a noob!")
      end
end)
-- Regular on join
minetest.register_on_joinplayer(function(player)
      local player_name = player:get_player_name()
      local privs = minetest.get_player_privs(player_name)
       if 
		privs['pr_regular'] == true
       then
            minetest.chat_send_all("Give a warm welcome to "..player:get_player_name()..", a regular!")
      end
end)
-- Experience on join
minetest.register_on_joinplayer(function(player)
      local player_name = player:get_player_name()
      local privs = minetest.get_player_privs(player_name)
       if 
       	privs['pr_experience'] == true 
       then
            minetest.chat_send_all("Give a warm welcome to "..player:get_player_name()..", an experienced player!")
      end
end)
-- Specialist on join
minetest.register_on_joinplayer(function(player)
      local player_name = player:get_player_name()
      local privs = minetest.get_player_privs(player_name)
       if 
       	privs['pr_specialist'] == true 
       then
            minetest.chat_send_all("Give a warm welcome to "..player:get_player_name()..", a specialist!")
      end
end)
-- Expert on join
minetest.register_on_joinplayer(function(player)
      local player_name = player:get_player_name()
      local privs = minetest.get_player_privs(player_name)
       if 
       	privs['pr_expert'] == true 
       then
            minetest.chat_send_all("Give a warm welcome to "..player:get_player_name()..", an expert!")
      end
end)
-- Boss on join
minetest.register_on_joinplayer(function(player)
      local player_name = player:get_player_name()
      local privs = minetest.get_player_privs(player_name)
       if 
       	privs['pr_boss'] == true
       then
            minetest.chat_send_all("Give a warm welcome to "..player:get_player_name()..", a boss!")
      end
end)
