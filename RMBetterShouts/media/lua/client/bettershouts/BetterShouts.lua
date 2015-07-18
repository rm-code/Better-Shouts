local RADIUS_WHISPER = 10;
local VOLUME_WHISPER = 20;

local RADIUS_SHOUT = 30;
local VOLUME_SHOUT = 50;

local function shout()
    local player = getPlayer();
    if player and player:IsSneaking() then
        player:Say('Psssst! Over here!');
        addSound(player, player:getX(), player:getY(), player:getZ(), RADIUS_WHISPER, VOLUME_WHISPER);
    elseif player then
        player:Say('Supercalifragilisticexpialidocious!');
        addSound(player, player:getX(), player:getY(), player:getZ(), RADIUS_SHOUT, VOLUME_SHOUT);
    end
end

local function checkKey(key)
    if key == getCore():getKey('RMShout') then
        shout();
    end
end

Events.OnKeyPressed.Add(checkKey);
