minetest.register_chatcommand("ranks", {
    func = function(name, param)
        minetest.show_formspec(name, "playerranks:list",
                "size[8,6.5]" ..
                "label[0,0;Level 1 -- Noob -- Start of your journey, received when you first join.]" ..
                "label[0,1;Level 2 -- Regular -- Place a piece of cobble, received when breaking stone.]" ..
                "label[0,2;Level 3 -- Experienced -- Place a diamond block.]" ..
                "label[0,3;Level 4 -- Specialist -- Place a mese block.]" ..
                "label[0,4;Level 5 -- Expert -- Place the 2nd most expensive block.]" ..
                "label[0,5;Level 6 -- Boss -- The end of your journey, place the most expensive block.]" ..
                "button_exit[3,5.5;2,2;exit;Exit]")
    end
})