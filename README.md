--FS Lib Change log
IDK Its New LOL

--Notes--
Replace Title, Tab Name, Text, Max, Min

| Title : Title you want |
| Tab Name : Name of the tab you created |
| Text : Text for the Label, Button, Slider |
| Max : Max Value |
| Min : Min Value |

**Library loadstring**
```
local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/CreepKing8288/FSLibrary/main/Lib.lua"))()
```

**Create Window**
```
local main = lib:CreateWindow("Title")
```

**Create Tab**
```
main:CreateTab("Tab Name")
```

**Sort UI**

List UI
```
main:SortList("Tab Name")
```

Grid UI
```
main:SortGrid("Tab Name")
```

**Create Label**
```
main:CreateLabel("Tab Name", "Text")
```

**Create Button**
```
main:CreateButton("Tab Name", "Text", function()
	--Script
end)
```

**Create Toggle**
```
main:CreateToggle("Tab Name", "Text", function(s)
	if s then
		print("On")
	else
		print("Off")
	end
end)
```

**Create Slider (Only Avalable For PC and Sort List)** ***NotRecomended For Mobile***
```
main:CreateSlider("Tab Name", "Text", "Max", "Min", function(s)
	--Script
end)
```

**Create Notification**
```
main:CreateNotification("Title", "Text")
```
