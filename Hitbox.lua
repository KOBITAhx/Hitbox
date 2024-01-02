local Players = game:GetService("Players")

function doubleSize(player)
    local character = player.Character
    if character and player ~= Players.LocalPlayer then
        local humanoid = character:FindFirstChildOfClass("Humanoid")

        if humanoid then
            humanoid:SetScale(Vector3.new(2, 2, 2))
        end
    end
end

Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        doubleSize(player)
    end)
    
    wait(2)
    doubleSize(player)
end)

Players.PlayerRespawned:Connect(function(player)
    wait(1)
    doubleSize(player)
  end)
