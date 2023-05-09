local config = require "plugins.configs.nvimtree"

-- alnumcomp and splitbynum borrowed from 
-- https://github.com/TheAMM/mpv_sort_script/blob/master/src/alphanum.lua 
local function splitbynum(s)
    local result = {}
    for x, y in (s or ""):gmatch("(%d*)(%D*)") do
        if x ~= "" then table.insert(result, tonumber(x)) end
        if y ~= "" then table.insert(result, y) end
    end
    return result
end

-- compare two strings
local function alnumcomp(x, y)
    local xt, yt = splitbynum(x), splitbynum(y)
    for i = 1, math.min(#xt, #yt) do
        local xe, ye = xt[i], yt[i]
        if type(xe) == "string" then ye = tostring(ye)
            elseif type(ye) == "string" then xe = tostring(xe) end
            if xe ~= ye then return xe < ye end
        end
        return #xt < #yt
end

local function sort_by(nodes)
    local function compareFilenames(a, b)
        -- directories first
        if a.type == 'directory' and b.type ~= 'directory' then
            return true
        elseif a.type ~= 'directory' and b.type == 'directory' then
            return false;
        end

        return alnumcomp(a.name, b.name)
    end

    table.sort(nodes, compareFilenames)
end

-- Sort propel migrations and other files that have number suffixes correctly
config.sort_by = sort_by

-- Show git status of files
config.git.enable = true
config.renderer.icons.show.git = true
config.renderer.highlight_git = true

return config;
