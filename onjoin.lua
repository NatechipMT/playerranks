-- Noob on join
minetest.register_on_joinplayer(function(player)
      local player_name = player:get_player_name()
      local privs = minetest.get_player_privs(player_name)
       -- Prevents admins with /grant all from spam (Below)
      if  privs.pr_noob == true and privs.pr_staff == nil then
            minetest.chat_send_all("Give a warm welcome to "..player:get_player_name()..", a noob!")
      end
end)
-- Regular on join
minetest.register_on_joinplayer(function(player)
      local player_name = player:get_player_name()
      local privs = minetest.get_player_privs(player_name)
       if privs.pr_regular == true and privs.pr_staff == nil then
            minetest.chat_send_all("Give a warm welcome to "..player:get_player_name()..", a regular!")
      end
end)
-- Experience on join
minetest.register_on_joinplayer(function(player)
      local player_name = player:get_player_name()
      local privs = minetest.get_player_privs(player_name)
       if privs.pr_experience == true and privs.pr_staff == nil then
            minetest.chat_send_all("Give a warm welcome to "..player:get_player_name()..", an experienced player!")
      end
end)
-- Specialist on join
minetest.register_on_joinplayer(function(player)
      local player_name = player:get_player_name()
      local privs = minetest.get_player_privs(player_name)
       if privs.pr_specialist == true and privs.pr_staff == nil then
            minetest.chat_send_all("Give a warm welcome to "..player:get_player_name()..", a specialist!")
      end
end)
-- Expert on join
minetest.register_on_joinplayer(function(player)
      local player_name = player:get_player_name()
      local privs = minetest.get_player_privs(player_name)
       if privs.pr_expert == true and privs.pr_staff == nil then
            minetest.chat_send_all("Give a warm welcome to "..player:get_player_name()..", an expert!")
      end
end)
-- Boss on join
minetest.register_on_joinplayer(function(player)
      local player_name = player:get_player_name()
      local privs = minetest.get_player_privs(player_name)
       if privs.pr_boss == true and privs.pr_staff == nil then
            minetest.chat_send_all("Give a warm welcome to "..player:get_player_name()..", a boss!")
      end
end)

-- Staff on join
minetest.register_on_joinplayer(function(player)
      local player_name = player:get_player_name()
      local privs = minetest.get_player_privs(player_name)
       if privs.pr_staff == true and privs.pr_owner == nil then
            minetest.chat_send_all("Give gr welcome to "..player:get_player_name()..", a staff member!")
      end
end)

-- Owner on join
minetest.register_on_joinplayer(function(player)
      local player_name = player:get_player_name()
      local privs = minetest.get_player_privs(player_name)
       if privs.pr_owner == true then
            minetest.chat_send_all("Give a gr welcome to "..player:get_player_name()..", the owner!")
      end
end)