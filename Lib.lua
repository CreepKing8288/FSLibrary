local library = {}

local toggled = false

function library:CreateWindow(text)
    local Design = Instance.new("ScreenGui")
    local WindowFrame = Instance.new("Frame")
    local Title = Instance.new("TextLabel")
    local Mini = Instance.new("TextButton")
    local MainFrame = Instance.new("Frame")
    local HudTab = Instance.new("Folder")
    local Tabs = Instance.new("Frame")
    local UIListLayout_2 = Instance.new("UIListLayout")

    Design.Name = "Design"
    Design.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    Design.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    Design.ResetOnSpawn = false

    WindowFrame.Name = "WindowFrame"
    WindowFrame.Parent = Design
    WindowFrame.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
    WindowFrame.Position = UDim2.new(0.134757876, 0, 0.3184793, 0)
    WindowFrame.Size = UDim2.new(0.56108284, 0, 0.031533502, 0)
    WindowFrame.Active = true
    WindowFrame.Draggable = true

    Title.Name = "Title"
    Title.Parent = WindowFrame
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1.000
    Title.Position = UDim2.new(0.0110015897, 0, 0, 0)
    Title.Size = UDim2.new(0.161833778, 0, 1.03442264, 0)
    Title.Font = Enum.Font.SourceSans
    Title.Text = text
    Title.TextColor3 = Color3.fromRGB(222, 222, 222)
    Title.TextScaled = true
    Title.TextSize = 14.000
    Title.TextWrapped = true
    Title.TextXAlignment = Enum.TextXAlignment.Left

    Mini.Name = "Mini"
    Mini.Parent = WindowFrame
    Mini.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Mini.BackgroundTransparency = 1.000
    Mini.Position = UDim2.new(0.938120604, 0, 0.0344220772, 0)
    Mini.Size = UDim2.new(0.0614104569, 0, 1, 0)
    Mini.Font = Enum.Font.SourceSans
    Mini.Text = "_"
    Mini.TextColor3 = Color3.fromRGB(255, 255, 255)
    Mini.TextSize = 16.000

    MainFrame.Name = "MainFrame"
    MainFrame.Parent = WindowFrame
    MainFrame.Active = true
    MainFrame.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
    MainFrame.Position = UDim2.new(-0.000544972136, 0, 1.12441146, 0)
    MainFrame.Selectable = true
    MainFrame.Size = UDim2.new(1.00007606, 0, 12.9598513, 0)
    MainFrame.ClipsDescendants = true

    Tabs.Name = "Tabs"
    Tabs.Parent = MainFrame
    Tabs.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
    Tabs.Position = UDim2.new(-4.47034836e-08, 0, 0, 0)
    Tabs.Size = UDim2.new(0.173367217, 0, 1, 0)

    HudTab.Name = "HudTab"
    HudTab.Parent = MainFrame

    UIListLayout_2.Parent = Tabs
    UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

    Mini.MouseButton1Down:Connect(function()
        if toggled then
            toggled = false
            MainFrame:TweenSize(UDim2.new(1, 0, 0, 0), "In", "Quad", 0.2)
        else
            toggled = true
            MainFrame:TweenSize(UDim2.new(1, 0, 12.96, 0), "In", "Quad", 0.2)
        end
    end)

    local Window = {}

    function Window:SortList(path)
        local UIList = Instance.new("UIListLayout")

        UIList.Name = "UIList"
        UIList.Parent = HudTab[path.."hud"]
        UIList.SortOrder = Enum.SortOrder.LayoutOrder
        UIList.Padding = UDim.new(0, 2)
    end

    function Window:SortGrid(path)
        local UIGrid = Instance.new("UIGridLayout")

        UIGrid.Name = "UIGrid"
        UIGrid.Parent = HudTab[path.."hud"]
        UIGrid.SortOrder = Enum.SortOrder.LayoutOrder
    end

    function Window:CreateTab(text)


        local TabButton = Instance.new("TextButton")
        local Hud = Instance.new("Frame")

        TabButton.Name = text.."tab"
        TabButton.Parent = Tabs
        TabButton.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
        TabButton.BackgroundTransparency = 0.900
        TabButton.BorderSizePixel = 0
        TabButton.Size = UDim2.new(0.999999762, 0, 0.142453298, 0)
        TabButton.Font = Enum.Font.SourceSans
        TabButton.Text = text
        TabButton.TextColor3 = Color3.fromRGB(222, 222, 222)
        TabButton.TextScaled = true
        TabButton.TextSize = 14.000
        TabButton.TextWrapped = true

        Hud.Name = text.."hud"
        Hud.Parent = HudTab
        Hud.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
        Hud.Position = UDim2.new(0.183870807, 0, 0, 0)
        Hud.Size = UDim2.new(0.816129208, 0, 1, 0)

        TabButton.MouseButton1Down:Connect(function()
            for i,v in next, HudTab:GetChildren() do
            v.Visible = false
            end
            Hud.Visible = true
            print(Hud.Name)
        end)
    end

    function Window:CreateLabel(path, text, R, G, B)
        R = R or 222
        G = G or 222
        B = B or 222
        text = text or "Label"
        local TextLabel = Instance.new("TextLabel")

            TextLabel.Parent = HudTab[path.."hud"]
            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.BackgroundTransparency = 0.900
            TextLabel.BorderSizePixel = 0
            TextLabel.Size = UDim2.new(1, 0, 0.142000005, 0)
            TextLabel.Font = Enum.Font.SourceSans
            TextLabel.TextColor3 = Color3.fromRGB(R, G, B)
            TextLabel.TextSize = 14.000
            TextLabel.Text = text
            TextLabel.TextScaled = true
    end

    function Window:CreateButton(path, text, callback)
        local callback = callback or function() end

        local TextButton = Instance.new("TextButton")
        
        TextButton.Parent = HudTab[path.."hud"]
        TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextButton.BackgroundTransparency = 0.900
        TextButton.BorderSizePixel = 0
        TextButton.Size = UDim2.new(0.999999762, 0, 0.142453298, 0)
        TextButton.Font = Enum.Font.SourceSans
        TextButton.TextColor3 = Color3.fromRGB(222, 222, 222)
        TextButton.TextScaled = true
        TextButton.TextSize = 14.000
        TextButton.TextWrapped = true
        TextButton.TextXAlignment = Enum.TextXAlignment.Left
        TextButton.Text = text
        TextButton.MouseButton1Down:Connect(function()
        pcall(callback)
        end)
    end

    function Window:CreateToggle(path, text, callback)
        local actions = {}
        local enabled = false

        text = text or "New Toggle"
        callback = callback or function() end
        
        local Toggle = Instance.new("TextButton")
        local Indi = Instance.new("TextButton")

        Toggle.Name = "Toggle"
        Toggle.Parent = HudTab[path.."hud"]
        Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Toggle.BackgroundTransparency = 0.900
        Toggle.BorderSizePixel = 0
        Toggle.Size = UDim2.new(0.999999762, 0, 0.142453298, 0)
        Toggle.Font = Enum.Font.SourceSans
        Toggle.Text = text
        Toggle.TextColor3 = Color3.fromRGB(222, 222, 222)
        Toggle.TextScaled = true
        Toggle.TextSize = 14.000
        Toggle.TextWrapped = true
        Toggle.TextXAlignment = Enum.TextXAlignment.Left

        Indi.Name = "Indi"
        Indi.Parent = Toggle
        Indi.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        Indi.BorderSizePixel = 0
        Indi.Position = UDim2.new(0.00456783315, 0, 0.89945966, 0)
        Indi.Size = UDim2.new(0.995432317, 0, 0.114832997, 0)
        Indi.Font = Enum.Font.SourceSans
        Indi.Text = " "
        Indi.TextColor3 = Color3.fromRGB(222, 222, 222)
        Indi.TextScaled = true
        Indi.TextSize = 14.000
        Indi.TextWrapped = true

        local function Fire()
            enabled = not enabled
            Indi.BackgroundColor3 = enabled and Color3.fromRGB(46, 255, 0) or Color3.fromRGB(255, 0, 0)
            pcall(callback, enabled)
        end

        Toggle.MouseButton1Down:Connect(Fire)
        function actions:Set(arg)
            Indi.BackgroundColor3 = enabled and Color3.fromRGB(46, 255, 0) or Color3.fromRGB(255, 0, 0)
            pcall(callback, arg)
        end
    end

    function Window:CreateSlider(path, text, minvalue, maxvalue, callback)
        
        text = text or "Slider"
        minvalue = minvalue or 0
        maxvalue = maxvalue or 500

        callback = callback or function() end

        local mouse = game.Players.LocalPlayer:GetMouse()
        local uis = game:GetService("UserInputService")
        local Value;

        local SliderFrame = Instance.new("Frame")
        local Slider = Instance.new("Frame")
        local SliderButton = Instance.new("TextButton")
        local SliderInner = Instance.new("Frame")
        local SliderText = Instance.new("TextLabel")
        local Sliderper = Instance.new("TextLabel")

        SliderFrame.Name = "SliderFrame"
        SliderFrame.Parent = HudTab[path.."hud"]
        SliderFrame.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
        SliderFrame.Position = UDim2.new(-0.0138937868, 0, 0.330136955, 0)
        SliderFrame.Size = UDim2.new(1, 0, 0.155000001, 0)

        Slider.Name = "Slider"
        Slider.Parent = SliderFrame
        Slider.BackgroundColor3 = Color3.fromRGB(131, 131, 131)
        Slider.Position = UDim2.new(0.023, 0, 0.550000012, 0)
        Slider.Size = UDim2.new(0.960634112, 0, 0.35133791, 0)

        SliderButton.Name = "SliderButton"
        SliderButton.Parent = Slider
        SliderButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SliderButton.BackgroundTransparency = 1.000
        SliderButton.Size = UDim2.new(1, 0, 1, 0)
        SliderButton.Font = Enum.Font.SourceSans
        SliderButton.Text = " "
        SliderButton.TextColor3 = Color3.fromRGB(0, 0, 0)
        SliderButton.TextSize = 14.000

        SliderInner.Name = "SliderInner"
        SliderInner.Parent = SliderButton
        SliderInner.BackgroundColor3 = Color3.fromRGB(188, 188, 188)
        SliderInner.Position = UDim2.new(-0.000948922709, 0, -0.0766211748, 0)
        SliderInner.Size = UDim2.new(1, 0, 1, 0)

        SliderText.Name = "SliderText"
        SliderText.Parent = SliderFrame
        SliderText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SliderText.BackgroundTransparency = 1.000
        SliderText.Position = UDim2.new(0.00231563114, 0, 0, 0)
        SliderText.Size = UDim2.new(0.65133214, 0, 0.473080933, 0)
        SliderText.Font = Enum.Font.SourceSans
        SliderText.Text = text
        SliderText.TextColor3 = Color3.fromRGB(222, 222, 222)
        SliderText.TextScaled = true
        SliderText.TextSize = 14.000
        SliderText.TextWrapped = true
        SliderText.TextXAlignment = Enum.TextXAlignment.Left

        Sliderper.Name = "Sliderper"
        Sliderper.Parent = SliderFrame
        Sliderper.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Sliderper.BackgroundTransparency = 1.000
        Sliderper.Position = UDim2.new(0.856783509, 0, 0, 0)
        Sliderper.Size = UDim2.new(0.14321664, 0, 0.473080933, 0)
        Sliderper.Font = Enum.Font.SourceSans
        Sliderper.Text = "%"
        Sliderper.TextColor3 = Color3.fromRGB(222, 222, 222)
        Sliderper.TextScaled = true
        Sliderper.TextSize = 14.000
        Sliderper.TextWrapped = true

        SliderButton.MouseButton1Down:Connect(function()
        Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 680) * SliderInner.AbsoluteSize.X) + tonumber(minvalue)) or 0
        pcall(function()
            callback(Value)
        end)
        SliderInner.Size = UDim2.new(0, math.clamp(mouse.X - SliderInner.AbsolutePosition.X, 0, 680), 0, 16)
        moveconnection = mouse.Move:Connect(function()
            Sliderper.Text = Value
            Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 680) * SliderInner.AbsoluteSize.X) + tonumber(minvalue))
            pcall(function()
                callback(Value)
                Sliderper.Text = Value
            end)
            SliderInner.Size = UDim2.new(0, math.clamp(mouse.X - SliderInner.AbsolutePosition.X, 0, 680), 0, 16)
        end)
        releaseconnection = uis.InputEnded:Connect(function(Mouse)
            if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 680) * SliderInner.AbsoluteSize.X) + tonumber(minvalue))
                pcall(function()
                    callback(Value)
                end)
                SliderInner.Size = UDim2.new(0, math.clamp(mouse.X - SliderInner.AbsolutePosition.X, 0, 680), 0, 16)
                moveconnection:Disconnect()
                releaseconnection:Disconnect()
            end
        end)
    end)
    end

    function Window:CreateTextbox(path, text, placeholder)
        TextBox.Name = "TextBox"
        TextBox.Parent = HudTab[path.."hud"]
        TextBox.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
        TextBox.Size = UDim2.new(1, 0, 0.142000005, 0)
        TextBox.Font = Enum.Font.SourceSans
        TextBox.TextColor3 = Color3.fromRGB(222, 222, 222)
        TextBox.TextScaled = true
        TextBox.TextSize = 14.000
        TextBox.TextWrapped = true
        TextBox.Text = text
        TextBox.PlaceholderText = placeholder
    end

    function Window:CreateNotification(title, message)
        game:GetService("StarterGui"):SetCore("SendNotification",{
            Title = title;
            Text = message;
                    })
    end
    function Window:GameID(placeid, callback)
        callback = callback or function() end
        if game.PlaceId == placeid then
            pcall(callback)
        end
    end
    return Window
end
return library
