local result, statusCodes = loadstring(game:HttpGet("https://raw.githubusercontent.com/scripts-v1/AstraV1/refs/heads/main/CheckVersionV1/UpdateVersion.luau"))()
local ScriptLoader = loadstring(game:HttpGet("https://raw.githubusercontent.com/scripts-v1/AstraV1/refs/heads/main/GUI/LoadOnceGUIClick.luau"))()

if result and statusCodes then
    if result == statusCodes[4] then
        local GUIAsset = getcustomasset("AstraV1/GUI/IntroV1.rbxm")
        local GUI = game:GetObjects(GUIAsset)[1]

        GUI.Parent = gethui()
        ScriptLoader(GUI)
    
    end
end
