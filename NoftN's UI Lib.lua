local WindowTBL = {}

function WindowTBL.CreateWindow()
    if game.CoreGui:FindFirstChild("NoftN's UI") then
        game.CoreGui:FindFirstChild("NoftN's UI"):Destroy()
    end

    local NoftNsUI = Instance.new("ScreenGui")
    local MainFrame = Instance.new("Frame")
    local SideBar = Instance.new("Frame")
    local allTabs = Instance.new("Frame")
    local tabButton = Instance.new("TextButton")
    local UICorner = Instance.new("UICorner")
    local tabListing = Instance.new("UIListLayout")
    local Title = Instance.new("TextLabel")
    local mainCorner = Instance.new("UICorner")
    local allPages = Instance.new("Frame")
    local mainCorner_2 = Instance.new("UICorner")
    local newPage = Instance.new("ScrollingFrame")
    local elementsListing = Instance.new("UIListLayout")

    --Properties:

    NoftNsUI.Name = "NoftN's UI"
    NoftNsUI.Parent = game.CoreGui
    NoftNsUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    MainFrame.Name = "MainFrame"
    MainFrame.Parent = NoftNsUI
    MainFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    MainFrame.BorderSizePixel = 0
    MainFrame.Position = UDim2.new(0.221642762, 0, 0.0626780614, 0)
    MainFrame.Size = UDim2.new(0, 426, 0, 305)

    SideBar.Name = "SideBar"
    SideBar.Parent = MainFrame
    SideBar.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
    SideBar.Size = UDim2.new(0, 107, 0, 305)

    allTabs.Name = "allTabs"
    allTabs.Parent = SideBar
    allTabs.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
    allTabs.BackgroundTransparency = 1.000
    allTabs.BorderSizePixel = 0
    allTabs.Position = UDim2.new(0, 0, 0.0649736747, 0)
    allTabs.Size = UDim2.new(0, 107, 0, 283)

    tabButton.Name = "tabButton"
    tabButton.Parent = allTabs
    tabButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    tabButton.BorderSizePixel = 0
    tabButton.Position = UDim2.new(0.0467289723, 0, 0.0353356898, 0)
    tabButton.Size = UDim2.new(0, 97, 0, 28)
    tabButton.Font = Enum.Font.Gotham
    tabButton.Text = "Tab Button"
    tabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    tabButton.TextSize = 14.000

    UICorner.Parent = tabButton

    tabListing.Name = "tabListing"
    tabListing.Parent = allTabs
    tabListing.HorizontalAlignment = Enum.HorizontalAlignment.Center
    tabListing.SortOrder = Enum.SortOrder.LayoutOrder
    tabListing.Padding = UDim.new(0, 3)

    Title.Name = "Title"
    Title.Parent = SideBar
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1.000
    Title.BorderSizePixel = 0
    Title.Position = UDim2.new(0, 0, -0.000600095664, 0)
    Title.Size = UDim2.new(0, 107, 0, 20)
    Title.Font = Enum.Font.Gotham
    Title.Text = "NoftN's UI"
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextSize = 14.000
    Title.TextWrapped = true

    mainCorner.Name = "mainCorner"
    mainCorner.Parent = MainFrame

    allPages.Name = "allPages"
    allPages.Parent = MainFrame
    allPages.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    allPages.BorderSizePixel = 0
    allPages.Position = UDim2.new(0.251173705, 0, 0, 0)
    allPages.Size = UDim2.new(0, 319, 0, 305)

    mainCorner_2.Name = "mainCorner"
    mainCorner_2.Parent = allPages

    newPage.Name = "newPage"
    newPage.Parent = allPages
    newPage.Active = true
    newPage.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    newPage.BorderSizePixel = 0
    newPage.Position = UDim2.new(0.0282131657, 0, 0.0262295082, 0)
    newPage.Size = UDim2.new(0, 300, 0, 288)

    elementsListing.Name = "elementsListing"
    elementsListing.Parent = newPage
    elementsListing.SortOrder = Enum.SortOrder.LayoutOrder
    
    local TabHandler = {}
    
    function TabHandler.Tab(Name)
        Name = Name or "New Tab"
        
        local tabButton = Instance.new("TextButton")
        local UICorner = Instance.new("UICorner")
        local newPage = Instance.new("ScrollingFrame")
        local elementsListing = Instance.new("UIListLayout")
        
        tabButton.Name = "tabButton"
        tabButton.Parent = allTabs
        tabButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        tabButton.BorderSizePixel = 0
        tabButton.Position = UDim2.new(0.0467289723, 0, 0.0353356898, 0)
        tabButton.Size = UDim2.new(0, 97, 0, 28)
        tabButton.Font = Enum.Font.Gotham
        tabButton.Text = Name
        tabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        tabButton.TextSize = 14.000

        UICorner.Parent = tabButton
        UICorner.Name = "sideCorner"
        UICorner.CornerRadius = UDim.new(0, 3)
        
        newPage.Name = "newPage"
        newPage.Parent = allPages
        newPage.Active = true
        newPage.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        newPage.BorderSizePixel = 0
        newPage.Position = UDim2.new(0.0282131657, 0, 0.0262295082, 0)
        newPage.Size = UDim2.new(0, 300, 0, 288)
        newPage.ScrollBarThickness = 5
        newPage.Visible = false

        elementsListing.Name = "elementsListing"
        elementsListing.Parent = newPage
        elementsListing.HorizontalAlignment = Enum.HorizontalAlignment.Center
        elementsListing.SortOrder = Enum.SortOrder.LayoutOrder
        elementsListing.Padding = UDim.new(0, 5)
        
        tabButton.MouseButton1Click:Connect(function()
            for i, v in next, allPages:GetChildren() do
                v.Visible = false
            end
            newPage.Visible = true
            
            for i, v in next, allTabs:GetChildren() do
                if v:IsA("TextButton") then
                    game.TweenService:Create(v, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                        BackgroundColor3 = Color3.fromRGB(115, 49, 37)
                    }):Play()
                end
            end
            
            game.TweenService:Create(tabButton, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In) {
                BackgroundColor3 = Color3.fromRGB(255, 109, 83)
            }):Play()
            
            local ElementHandler = {}
            
            function ElementHandler.Button(Text, Callback)
                Text = Text or "Text Button"
                Callback = Callback or function() end
                
                local TextButton = Instance.new("TextButton")
                local buttonCorner = Instance.new("UICorner")
                
                TextButton.Parent = game.StarterGui["NoftN's UI"].MainFrame.allPages.newPage
                TextButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
                TextButton.BorderSizePixel = 0
                TextButton.Position = UDim2.new(0.0533333346, 0, 0, 0)
                TextButton.Size = UDim2.new(0, 268, 0, 29)
                TextButton.Font = Enum.Font.Gotham
                TextButton.Text = Text
                TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
                TextButton.TextSize = 14.000
                TextButton.TextWrapped = true

                buttonCorner.CornerRadius = UDim.new(0, 5)
                buttonCorner.Name = "buttonCorner"
                buttonCorner.Parent = TextButton
                
                TextButton.MouseButton1Click:Connect(function()
                    Callback()
                end)
            end
            
            function ElementHandler.Toggle(Text, Callback, Value)
                Text = Text or "Toggle"
                Callback = Callback or function(Value) end
                Value = Value or false
                
                local ToggleButton = Instance.new("TextButton")
                local toggle = Instance.new("Frame")
                local toggleCorner = Instance.new("UICorner")
                local toggle_MainCorner = Instance.new("UICorner")
                local toggle_Text = Instance.new("TextLabel")
                
                ToggleButton.Name = "ToggleButton"
                ToggleButton.Parent = game.StarterGui["NoftN's UI"].MainFrame.allPages.newPage
                ToggleButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
                ToggleButton.BorderSizePixel = 0
                ToggleButton.Position = UDim2.new(0.0566666685, 0, 0.115107916, 0)
                ToggleButton.Size = UDim2.new(0, 267, 0, 28)
                ToggleButton.Font = Enum.Font.Gotham
                ToggleButton.Text = ""
                ToggleButton.TextColor3 = Color3.fromRGB(0, 0, 0)
                ToggleButton.TextSize = 14.000

                toggle.Name = "toggle"
                toggle.Parent = ToggleButton
                toggle.BackgroundColor3 = Color3.fromRGB(61, 67, 74)
                toggle.BorderSizePixel = 0
                toggle.Position = UDim2.new(0.0226415098, 0, 0.103686638, 0)
                toggle.Size = UDim2.new(0, 22, 0, 22)

                toggleCorner.CornerRadius = UDim.new(0, 888)
                toggleCorner.Name = "toggleCorner"
                toggleCorner.Parent = toggle

                toggle_MainCorner.CornerRadius = UDim.new(0, 5)
                toggle_MainCorner.Name = "toggle_MainCorner"
                toggle_MainCorner.Parent = ToggleButton

                toggle_Text.Name = "toggle_Text"
                toggle_Text.Parent = ToggleButton
                toggle_Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                toggle_Text.BackgroundTransparency = 1.000
                toggle_Text.BorderSizePixel = 0
                toggle_Text.Position = UDim2.new(0.127340823, 0, -0.0357142873, 0)
                toggle_Text.Size = UDim2.new(0, 200, 0, 28)
                toggle_Text.Font = Enum.Font.Gotham
                toggle_Text.Text = "Toggle Example"
                toggle_Text.TextColor3 = Color3.fromRGB(0, 0, 0)
                toggle_Text.TextSize = 14.000
                toggle_Text.TextXAlignment = Enum.TextXAlignment.Left
                
                local TogEnabled = Value
                
                ToggleButton.MouseButton1Click:Connect(function()
                    TogEnabled = not TogEnabled
                    Callback(TogEnabled)
                    
                    if TogEnabled then
                        game.TweenService:Create(toggle, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                            BackgroundColor3 = Color3.fromRGB(255, 109, 83)
                        }):Play()
                    else
                        game.TweenService:Create(toggle, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
                            BackgroundColor3 = Color3.fromRGB(61, 67, 74)
                        }):Play()
                    end
                end)
            end
            
            return ElementHandler;
        end)
    end
    
    return TabHandler
end

return WindowTBL;
