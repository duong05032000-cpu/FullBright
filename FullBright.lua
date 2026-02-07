-- Black loading screen
local gui = Instance.new("ScreenGui")
gui.Name = "FBLoading"
gui.Parent = game.CoreGui

local bg = Instance.new("Frame")
bg.Parent = gui
bg.Size = UDim2.new(1,0,1,0)
bg.BackgroundColor3 = Color3.fromRGB(0,0,0)
bg.BackgroundTransparency = 0

local txt = Instance.new("TextLabel")
txt.Parent = bg
txt.Size = UDim2.new(1,0,1,0)
txt.BackgroundTransparency = 1
txt.Text = "FULL BRIGHT ENABLED"
txt.TextColor3 = Color3.fromRGB(255,255,255)
txt.Font = Enum.Font.GothamBold
txt.TextScaled = true

-- giữ màn hình đen 1 chút
task.wait(1)

-- bật full bright
local Lighting = game:GetService("Lighting")
Lighting.Brightness = 2
Lighting.ClockTime = 14
Lighting.FogEnd = 100000
Lighting.GlobalShadows = false
Lighting.OutdoorAmbient = Color3.fromRGB(128,128,128)

for _,v in pairs(Lighting:GetChildren()) do
    if v:IsA("Atmosphere")
    or v:IsA("BloomEffect")
    or v:IsA("SunRaysEffect")
    or v:IsA("BlurEffect") then
        v:Destroy()
    end
end

-- giữ chữ thêm tí
task.wait(0.5)

-- tắt màn hình đen
gui:Destroy()
