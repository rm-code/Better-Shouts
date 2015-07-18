local RADIUS_WHISPER = 15;
local VOLUME_WHISPER = 40;

local RADIUS_SHOUT = 60;
local VOLUME_SHOUT = 80;

local SHOUTS = {
    'Over here!',
    'Hey, over here!',
    'Hey maggot-heads!',
    'Are you hungry?',
    'Get over here!',
    'This is my town now!',
    'Oi, you smelly scumbags!',
    'Catch me if you can!',
};

local WHISPERS = {
    'Psssssst... over here!',
    'Hey, yes you. Come here!',
    'Get some tasty meat. Just come to me!',
    'Yes, come closer.',
    'Just a little closer ...',
};

local function shout()
    local player = getPlayer();
    if player and player:IsSneaking() then
        player:Say(WHISPERS[ZombRand(#WHISPERS) + 1]);
        addSound(player, player:getX(), player:getY(), player:getZ(), RADIUS_WHISPER, VOLUME_WHISPER);
    elseif player then
        player:Say(SHOUTS[ZombRand(#SHOUTS) + 1]);
        addSound(player, player:getX(), player:getY(), player:getZ(), RADIUS_SHOUT, VOLUME_SHOUT);
    end
end

local function checkKey(key)
    if key == getCore():getKey('RMShout') then
        shout();
    end
end

Events.OnKeyPressed.Add(checkKey);
