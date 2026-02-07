-- Loading GUI
local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "FBLoading"

local txt = Instance.new("TextLabel", gui)
txt.Size = UDim2.new(1,0,1,0)
txt.BackgroundColor3 = Color3.fromRGB(0,0,0)
txt.BackgroundTransparency = 0.35
txt.Text = "LOADING FULL BRIGHT..."
txt.TextColor3 = Color3.fromRGB(255,255,255)
txt.Font = Enum.Font.GothamBold
txt.TextScaled = true

task.wait(1.2)

-- Full Bright
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

task.wait(0.3)
gui:Destroy()
