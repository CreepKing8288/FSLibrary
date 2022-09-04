--**FS Lib Change log**
```
Added Label Color Text
```
--Notes--
Replace Title, Tab Name, Text, Max, Min, R,G,B
```
| Title : Title you want |
| Tab Name : Name of the tab you created |
| Text : Text for the Label, Button, Slider |
| Max : Max Value |
| Min : Min Value |
| R = Red ,G = Green, B = Blue/ Nums You Can leave it emty |
https://g.co/kgs/rrbNTX - RGB Picker
```
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
main:CreateLabel("Tab Name", "Text", R, G, B)
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

**Create TextBox**
```
main:CreateTextbox("Tab Name", "Text", "Placeholder")
```

**Create Notification**
```
main:CreateNotification("Title", "Text")
```

**Game Place ID Detection**
```
main:GameID(placeid, function()
--Codes
end)
```
--dont add "" on placeid
