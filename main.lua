local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Title of the library", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})


local Tab = Window:MakeTab({
	Name = "Tab 1",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

getgenv().AutoClick = true;
getgenv().RebirthAuto = true;

function AutoClick()
    while getgenv().AutoClick == true do
        game:GetService("ReplicatedStorage").EggHatchingRemotes.Test:FireServer()
        wait(0.0000000000000001)
    end
end

function RebirthAuto()
	while getgenv().RebirthAuto == true do
		game:GetService("ReplicatedStorage").Remotes.Rebirth:InvokeServer()
		wait(0.0001)
	end
end

OrionLib:MakeNotification({
	Name = "     Made By     ",
	Content = " Z3AF Scripts",
	Image = "rbxassetid://4483345998",
	Time = 5
})


Tab:AddToggle({
	Name = "Auto Click OP",
	Default = false,
	Callback = function(Value)
		getgenv().AutoClick = Value
        AutoClick()
	end    
})

Tab:AddToggle({
	Name = "Auto Rebirth OP",
	Default = false,
	Callback = function(Value)
		getgenv().RebirthAuto = Value
        RebirthAuto()
	end    
})










--game:GetService("ReplicatedStorage").EggHatchingRemotes.Test:FireServer()
 
 --obby part
 
 --game:GetService("Workspace").Obby.Part




OrionLib:Init()