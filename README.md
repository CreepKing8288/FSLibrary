--FS Lib Change log
IDK Its New LOL

--Notes--
Replace Tab Name, Text, Max, Min

| Tab Name : Name of the tab you created |
| Text : Text for the Label, Button, Slider |
| Max : Max Value |
| Min : Min Value |

Library loadstring
```
local main = loadstring(game:HttpGet("https://raw.githubusercontent.com/CreepKing8288/FSLibrary/main/Lib.lua"))()
```

Create Tab
```
main:CreateTab("Tab Name")
```

Sort UI
```
main:SortList("Tab Name")
main:SortGrid("Tab Name")
```

Create Label
```
main:CreateLabel("Tab Name", "Text")
```

Create Button
```
main:CreateButton("Tab Name", "Text", function()
	--Script
end)
```

Create Toggle
```
main:CreateToggle("Tab Name", "Text", function(s)
	if s then
		print("On")
	else
		print("Off")
	end
end)
```

Create Slider (Only Avalable For PC / Sort Grid)
```
main:CreateSlider("Tab Name", "Text", "Max", "Min", function(s)
	--Script
end)
```

Create Notification
```
main:CreateNotification("Tab Name", "Text")
```
