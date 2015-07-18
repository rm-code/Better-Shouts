local RADIUS_WHISPER = 15;
local VOLUME_WHISPER = 40;

local RADIUS_SHOUT = 60;
local VOLUME_SHOUT = 80;

local function shout()
    local player = getPlayer();
    if player and player:IsSneaking() then
        player:Say(RMBetterShouts.whispers[ZombRand(#RMBetterShouts.whispers) + 1]);
        addSound(player, player:getX(), player:getY(), player:getZ(), RADIUS_WHISPER, VOLUME_WHISPER);
    elseif player then
        player:Say(RMBetterShouts.shouts[ZombRand(#RMBetterShouts.shouts) + 1]);
        addSound(player, player:getX(), player:getY(), player:getZ(), RADIUS_SHOUT, VOLUME_SHOUT);
    end
end

local function checkKey(key)
    if key == getCore():getKey('RMShout') then
        shout();
    end
end

Events.OnKeyPressed.Add(checkKey);
