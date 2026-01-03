local success, BuildInfo = pcall(function()
    return loadstring(game:HttpGet(
        "https://raw.githubusercontent.com/VSUDEVELOPMENTS/VSU-PROJECTS/refs/heads/main/build.lua"
    ))()
end)

if not success or type(BuildInfo) ~= "table" then
    BuildInfo = {}
end

-- Ensure required fields exist
BuildInfo["Build Type"] = BuildInfo["Build Type"] or "Release"
BuildInfo.Version = BuildInfo.Version or "Unknown"
BuildInfo.Build = BuildInfo.Build or "Local"
