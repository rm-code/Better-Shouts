require('luautils');

-- ------------------------------------------------
-- Global Variables
-- ------------------------------------------------

RMBetterShouts = {}; -- This table will hold the shouts.

-- ------------------------------------------------
-- Constants
-- ------------------------------------------------

local MOD_ID = 'RMBetterShouts';

local PATH_BASE_SHOUTS   = 'text/base_shouts.txt';
local PATH_BASE_WHISPERS = 'text/base_whispers.txt';

local COMMENT_IDENTIFIER = '#';

-- ------------------------------------------------
-- Local Functions
-- ------------------------------------------------

local function loadShouts(id, path)
    local reader = getModFileReader(id, path, false);
    if reader then
        local list = {};

        while true do
            local line = reader:readLine();

             -- Checks if EOF is reached.
            if not line then
                reader:close();
                break;
            end

            -- Ignore comments and empty lines
            if not luautils.stringStarts(line, COMMENT_IDENTIFIER) and line ~= '' then
                list[#list + 1] = line;
            end
        end

        return list;
    end
end

local function initMod()
    RMBetterShouts.shouts   = loadShouts(MOD_ID, PATH_BASE_SHOUTS);
    RMBetterShouts.whispers = loadShouts(MOD_ID, PATH_BASE_WHISPERS);
end

-- ------------------------------------------------
-- Game Events
-- ------------------------------------------------

Events.OnGameBoot.Add(initMod);
