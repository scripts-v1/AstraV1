local rVersion = loadstring(game:HttpGet("https://raw.githubusercontent.com/scripts-v1/AstroV1/refs/heads/main/Version.lua"))()
local introUrl = "https://raw.githubusercontent.com/scripts-v1/AstroV1/refs/heads/main/ConfirmLoadOnceGUIV1.txt"
local statusCodes = {
        "Everything is up to date!",
        "Updating script...",
        "Files might be corrupt, attempting to recover them...",
        "Loading script..."

}


local function checkFiles()
        if isfolder("AstraV1") and isfile("AstraV1/version.txt") then
                local cVersion = tonumber(readfile("AstraV1/version.txt"))

                if not cVersion then  return statusCodes[3] end


                if cVersion == rVersion then
                        return statusCodes[1]
                end

                return statusCodes[2]
        end

        return statusCodes[4]
end

local result = checkFiles("https://raw.githubusercontent.com/scripts-v1/AstroV1/refs/heads/main/Version.lua")

local function createFiles()

        if result == statusCodes[1] then return end

        if result == statusCodes[3] or statusCodes[4] then
                makefolder("AstraV1")
                makefolder("AstraV1/GUI")

                writefile("AstraV1/version.txt", tostring(rVersion))

                local b64ena = game:HttpGet(introUrl)

                if b64ena and #tostring(b64ena) > 500 then
                        writefile("AstraV1/GUI/IntroV1.rbxm", base64decode(b64ena))
                end

        end

end


createFiles()
return result
