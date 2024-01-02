local Players = game:GetService("Players")
local ChatService = game:GetService("Chat")

-- Mensaje al ejecutarse
local message = "¡Prepárate para una experiencia épica con hitboxes aumentadas!"

-- Función para aumentar x5 la hitbox del arma y objeto equipado
function increaseWeaponHitbox(player)
    local character = player.Character
    if character then
        local humanoid = character:FindFirstChildOfClass("Humanoid")

        if humanoid then
            local tool = humanoid:FindFirstChildOfClass("Tool")
            if tool then
                tool.Size = Vector3.new(tool.Size.X * 5, tool.Size.Y * 5, tool.Size.Z * 5)
                
                -- Mostrar el mensaje
                ChatService:Chat(player.Character.Head, message, Enum.ChatColor.Blue)
            end
        end
    end
end

-- Conectar la función a eventos relevantes
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        increaseWeaponHitbox(player)
    end)
end)
