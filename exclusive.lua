Staff = {
    [5610296033] = true; -- // Democracy
}

Hierarchy = {
    [1085419] = true; -- // $ vinux aka x2pzs
    [9026124392] = true; -- // bamdino
    [8245551542] = true; -- // vip holder
    [3851819900] = true; -- // Turbo
}

--// Don't mess with anything below this
function initiateNames()
    game.Players.LocalPlayer.Character.UpperTorso:FindFirstChild('OriginalSize'):Destroy()
    for _,v in pairs(game:GetService('Players'):GetPlayers()) do
        if v.Character then
            if not v.Character.UpperTorso:FindFirstChild('OriginalSize') then
                v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[⭐] ' .. v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName)
            end
            if Staff[v.UserId] then
                v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[🛡️] ' .. v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName)
            end
            if Hierarchy[v.UserId] then
                v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑] ' .. v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName)
            end
        end
    end
end

local successful, errored = pcall(initiateNames)
return Hierarchy
