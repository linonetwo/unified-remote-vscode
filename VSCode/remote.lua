
local keyboard = libs.keyboard;

--@help Press key stroke to copy
actions.copy = function ()
	keyboard.stroke("lcommand", "c");
end

--@help Press key stroke to paste
actions.paste = function ()
	keyboard.stroke("lcommand", "v");
end

--@help Press key stroke to format
actions.format = function ()
	keyboard.stroke("loption", "lshift", "f");
end
