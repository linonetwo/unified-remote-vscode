local keyboard = libs.keyboard;

events.detect = function()
    return libs.fs.exists("/Applications/Visual Studio Code.app");
end

-- @help Focus VSCode application
actions.open = function()
    os.script("tell application \"Visual Studio Code\" to reopen (activate)");
end

-- @help Launch Firefox application
actions.launch = function() os.open("/Applications/Visual Studio Code.app"); end

-- @help Press key stroke to copy
actions.copy = function() keyboard.stroke("lcommand", "c"); end

-- @help Press key stroke to paste
actions.paste = function() keyboard.stroke("lcommand", "v"); end

-- @help Press key stroke to selectAll
actions.selectAll = function() keyboard.stroke("lcommand", "a"); end

-- @help Press key stroke to revert
actions.revert = function() keyboard.stroke("lcommand", "z"); end

-- @help Press key stroke to cut
actions.cut = function() keyboard.stroke("lcommand", "x"); end

-- @help Press key stroke to format
actions.format = function() keyboard.stroke("loption", "lshift", "f"); end

-- @help Press key stroke to selectNextSame
actions.selectNextSame = function() keyboard.stroke("lcommand", "d"); end

-- @help Press key stroke to switch tab
actions.switch = function()
    keyboard.stroke("lctrl", "tab");
    -- Without keyboard up typing is not working. 
    keyboard.up("lctrl", "tab")
	end
	
	-- @help Press key stroke to switch tab and go immediately
	actions.switchGo = function()
    keyboard.stroke("lctrl", "tab");
		-- Without keyboard up typing is not working. 
		keyboard.up("lctrl", "tab")
    keyboard.press("return");
end

-- @help Press key stroke to selectNextSame
actions.callTree = function() keyboard.stroke("loption", "lshift", "h"); end
