--// real fake animation zombie don't use any animation it will looks real also permanent animation

local Players = game:GetService("Players")

local function animateCharacter()
    while true do
        local character = Players.LocalPlayer.Character
        if character then
            local animate = character:FindFirstChild("Animate")
            if animate then
                animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
                animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
            end
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                humanoid.Jump = false
            end
        end
        wait(1)
    end
end

animateCharacter()
