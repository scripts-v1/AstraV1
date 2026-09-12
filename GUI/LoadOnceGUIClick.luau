local function loadGUIScripts(GUI)
    if GUI and GUI.Name == "Load" then
        local blur = GUI:FindFirstChild("Blur")
        local main = blur:FindFirstChild("Main")
        local button = main:FindFirstChild("TextButton")

        button.Activaed:Connect(function()
            GUI:Destroy()
            return "Sucess"
        end)
    end
end



return loadGUIScripts
