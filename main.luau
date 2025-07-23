local available : boolean = false
local player : Instance = game.Players.LocalPlayer
local scripts : () -> nil = function()
    -- script here
end
if available then scripts()
else player:Kick([[Script is not available for now.
สคริปต์ยังไม่สามารถใช้งานได้ในขณะนี้]]) end
