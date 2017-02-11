function prefix (former, latter)
    return former .. ' ' .. latter
end

--[[stateTab = {
    ["\n \n"] = {"the"},
    ["\n the"] = {"more"},
    ["the more"] = {"we", "we"},
    ["more we"] = {"try", "do"},
    ["we try"] = {"the"},
    ["try the"] = {"more"},
    ["we do"] = {"\n"},
}
--]]
function print_r ( t )  
    local print_r_cache={}
    local function sub_print_r(t,indent)
        if (print_r_cache[tostring(t)]) then
            print(indent.."*"..tostring(t))
        else
            print_r_cache[tostring(t)]=true
            if (type(t)=="table") then
                for pos,val in pairs(t) do
                    if (type(val)=="table") then
                        print(indent.."["..pos.."] => "..tostring(t).." {")
                        sub_print_r(val,indent..string.rep(" ",string.len(pos)+8))
                        print(indent..string.rep(" ",string.len(pos)+6).."}")
                    elseif (type(val)=="string") then
                        print(indent.."["..pos..'] => "'..val..'"')
                    else
                        print(indent.."["..pos.."] => "..tostring(val))
                    end
                end
            else
                print(indent..tostring(t))
            end
        end
    end
    if (type(t)=="table") then
        print(tostring(t).." {")
        sub_print_r(t,"  ")
        print("}")
    else
        sub_print_r(t,"  ")
    end
    print()
end

local stateTab

function insert (index, value)
    if not stateTab[index] then
        stateTab[index] = {value}
    else 
        table.insert(stateTab[index], value)
    end
end


-- function allwords ()
--     local line = io.read()
--     local pos = 1
--     return function()
--         while line do
--             local s, e = string.find(line, "%w+", pos)
--             if s then 
--                 pos = e + 1
--                 return string.sub(line, s, e)
--             else
--                 line = io.read()
--                 pos = 1
--             end
--         end
--         return nil
--     end
-- end

function allwords ()
    local line = io.read()
    local pos = 1
    local times = 5
    return function()
        while line do
            print(line .. "------")
            local s, e = string.find(line, "%w+", pos)
            if s then 
                times = times - 1
                pos = e + 1
                local temp = string.sub(line, s, e)
                return temp
            else
                if times < 0 then return nil end
                line = io.read()
                print("wwwww")
                pos = 1
            end
        end
        return nil
    end
end

local N = 2
local MAXGEN = 3
local NOWORD = "\n"

stateTab = {}

local w1, w2 = NOWORD, NOWORD

for w in allwords() do
    insert(prefix(w1, w2), NOWORD)
    w1 = w2; w2 = w;
end

insert(prefix(w1, w2), NOWORD)

print_r(stateTab)

w1 = NOWORD; w2 = NOWORD

for i=1, MAXGEN do
    print(i)
    local list = stateTab[prefix(w1, w2)]
    print_r(list)
    local r = math.random(table.getn(list))
    local nextword = list[r]

    if nextword == NOWORD then return end
    io.write(nextword, " ")
    w1 = w2; w2 = nextword
end


