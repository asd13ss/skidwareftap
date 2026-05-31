local UI = loadstring(game:HttpGet("https://raw.githubusercontent.com/asd13ss/skidwareftap/refs/heads/main/Library.lua"))()

local Window = UI:CreateWindow({
    Name = "ui test",
    SizeX = 250,
    SizeY = 0,
    CanResize = "BOTH"
})

Window:CreateLabel("<b>main configurations</b>")

local WalkspeedSlider = Window:CreateSlider({
    Name = "walkspeed",
    Min = 16,
    Max = 250,
    Default = 16,
    Callback = function(Value)
      -- ur logic there
    end
})

local FlyToggle = Window:CreateToggle({
    Name = "fly hack lol",
    Default = false,
    Callback = function(State)
        -- ur logic there
    end
})

local ToggleBind = Window:CreateBind({
    Name = "Bind",
    Default = "E",
    Hold = false,
    Callback = function()
        -- ur logic there
    end
})

local NumberDropdown = Window:CreateDropdown({
    Name = "dropdown",
    Options = {"1", "2", "3", "4"},
    Default = "1",
    Callback = function(Selected)
        -- ur logic there
    end
})

local AccentColor = Window:CreateColorpicker({
    Name = "accent color",
    Default = Color3.fromRGB(255, 0, 127),
    DefaultTransparency = 0.3,
    Callback = function(Color, Transparency)
        -- ur logic there
    end
})

Window:CreateLabel("<b>script management</b>")

Window:CreateButton({
    Name = "unload ui",
    Callback = function()
        UI:Unload()
    end
})
