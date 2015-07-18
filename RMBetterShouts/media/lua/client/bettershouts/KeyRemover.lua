require('keyBinding.lua');

-- ------------------------------------------------
-- Constants
-- ------------------------------------------------

local KEYS_TO_REMOVE = {
    'Shout',
    '[NPC Interaction]',
}

-- ------------------------------------------------
-- Local Functions
-- ------------------------------------------------

---
-- This function iterates over the table of keys we want to remove. For each
-- of these values it will iterate over the keyBinding table and check if a
-- value can be found. When a value exists in the keyBinding table it will be
-- removed (all indexes will be shifted down accordingly by table.remove) and
-- the function breaks out of the nested loop.
--
local function removeKeys()
    for i = 1, #KEYS_TO_REMOVE do
        for j = 1, #keyBinding do
            if keyBinding[j].value == KEYS_TO_REMOVE[i] then
                table.remove(keyBinding, j);
                break;
            end
        end
    end
end

-- ------------------------------------------------
-- Game Events
-- ------------------------------------------------

Events.OnGameBoot.Add(removeKeys);
