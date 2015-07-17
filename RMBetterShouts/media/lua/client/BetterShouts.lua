local function shout()
    local player = getPlayer();
    if player then
        player:Say('Supercalifragilisticexpialidocious!');
    end
end

local function checkKey(key)
    if key == getCore():getKey('RMShout') then
        shout();
    end
end

Events.OnKeyPressed.Add(checkKey)
