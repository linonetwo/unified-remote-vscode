
local keyboard = libs.keyboard;
local os = libs.os;

--@help Press key stroke to copy
actions.copy = function ()
	keyboard.stroke("lcommand", "c");
end

--@help Press key stroke to paste
actions.paste = function ()
	keyboard.stroke("lcommand", "v");
end

--@help Press key stroke to revert
actions.revert = function ()
	keyboard.stroke("lcommand", "z");
end

--@help Press key stroke to cut
actions.cut = function ()
	keyboard.stroke("lcommand", "x");
end

--@help Press key stroke to format
actions.format = function ()
	keyboard.stroke("loption", "lshift", "f");
end

--@help Press key stroke to selectNextSame
actions.selectNextSame = function ()
	keyboard.stroke("lcommand", "d");
end

--@help Press key stroke to switch tab
actions.switch = function ()
	keyboard.stroke("lctrl", "tab");
end

--@help Press key stroke to switch tab and go immediately
actions.switchGo = function ()
	keyboard.stroke("lctrl", "tab");
	keyboard.press("return");
end
