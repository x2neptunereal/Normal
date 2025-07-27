local available : boolean = false
local player : Instance = game.Players.LocalPlayer
local developers : {} = {
    Zanexy = {
        loader = 'https://api.luarmor.net/files/v3/loaders/41cb3148565c0d854cd6996a940d6e5c.lua',
        games = {
            994732206, -- Blox Fruit
            1451439645, -- King Legacy
            5184146090, -- Second Piece
            1202096104, -- Driving Empire
        },
    },
    Ares = {
        loader = '',
        games = {
            -- None
        },
    },
    Go = {
        loader = 'https://api.luarmor.net/files/v3/loaders/bda9a3bea41595d4523f398139890d2b.lua',
        games = {
            5578556129, -- Anime Vanguards
            6884266247, -- Anime Rangers X
            4509896324, -- Anime Last Stand
            6057699512, -- All Star Tower Defense X
        },
    },
    x2Neptune = {
        loader = 'https://api.luarmor.net/files/v3/loaders/61fbde2dbdc76aaeba292cf81dc0900a.lua',
        games = {
            7018190066, -- Dead Rails
        },
    },
}
local getsupport : () -> {} = function()
    for i, developer in pairs(developers) do
        if table.find(developer.games, game.GameId) then
            return {true, developer.loader}
        end
    end
    return {false, 'Not Support'}
end
local scripts : () -> nil = function()
    local data : {} = getsupport()
    if data[1] then
        pcall(function()
            print('[ Normal Hub Loader ] Support ' ..
            game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name)
        end)
        loadstring(game:HttpGet(tostring(data[2])))()
    else
        player:Kick('Game not support.\nสคริปต์ยังไม่รองรับเกมนี้')
    end
end
if available then scripts()
else player:Kick('Script is not available for now.\nสคริปต์ยังไม่สามารถใช้งานได้ในขณะนี้') end
