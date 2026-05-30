# TheWorstUI — usage tutorial

this is a minimalist, responsive roblox ui library. it features smooth hover animations and cool dropdowns.

---

### main features:
* **many features**: its have buttons dropdowns sliders etc.
* **clean unload**: even unload there lol `UI:Unload()`.
* **manual slider input**: double-clicking a slider turns it into a textbox for manual value type.

---

### usage tutorial

#### 1. initialization & window creation
```lua
local UI = loadstring(game:HttpGet("your_script_url_here"))() -- or paste the library code directly

local Window = UI:CreateWindow({
    Name = "ui test",           -- window title
    SizeX = 250,                -- default width
    SizeY = 250,                -- default height (0 for auto-adjusting under content)
    CanResize = "BOTH"          -- resizing mode: "X", "Y", "BOTH" or "" (disabled)
})
```

2. button
a simple button with a sleek stroke-flash effect when clicked.

```lua
Window:CreateButton({
    Name = "button",
    Callback = function()
        print("clicked!")
    end
})
```

3. toggle
interactive checkbox. when enabled, its border lights up white.

```lua
Window:CreateToggle({
    Name = "fly hack lol",
    Default = false,
    Callback = function(state)
        print("fly state:", state) -- returns true/false🤑
    end
})
```

5. keybind
allows binding functions to keyboard keys or mouse clicks. supports hold mode.

```lua
Window:CreateBind({
    Name = "toggle menu",
    Default = "E",              -- default key (string or keycoded)
    Hold = false,               -- if true, callback triggers on press & release
    Callback = function(val)
        print("keybind pressed")
    end
})
```

6. slider
smooth slider. double-clicking the center opens a textbox for manual input🤑.

```lua
Window:CreateSlider({
    Name = "walkspeed",
    Min = 16,                   -- minimum value
    Max = 250,                  -- maximum value
    Default = 16,               -- default value
    Callback = function(value)
        print("current speed:", value)
    end
})
```

8. dropdown
expanding options menu with cool arrow.

```lua
Window:CreateDropdown({
    Name = "select",
    Options = {"1", "2", "3", "4"}, -- array of strings or values
    Default = "1",                  -- default option
    Callback = function(selected)
        print("selected:", selected)
    end
})
```

9. text label
simple non-interactive text container for headers or information. supports richtext.

```lua
Window:CreateLabel("<b>version 1.0.0</b>")
```

10. unloading the ui
destroys active elements and completely clears memory.

```lua
UI:Unload()
```
