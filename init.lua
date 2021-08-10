
-- compatibility mod for hades_revisited game

hades_compatibility = {};

local mod_name = minetest.get_current_modname();
local mod_path = minetest.get_modpath(mod_name);

dofile(mod_path.."/functions.lua")

local function isFile(filename)
    local file = io.open(filename);
    if (file==nil) then 
      return false;
    end
    io.close(file);
    return true;
  end

function mysplit (inputstr, sep)
  if (sep == nil) then
    sep = "%s"
  end
  local t={}
  for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
    table.insert(t, str)
  end
  return t
end


local function fixCommitName(commit)
    if (commit=="0.7.0") then
      return "f185358"
    end
    if (commit=="0.8.1") then
      return "828b9c9"
    end
    if (commit=="0.11.0") then
      return "ca1de77"
    end
    return commit
  end

local compatibility_list = minetest.settings:get("hades_compatibility_list")
if (compatibility_list~="") then
  local compatibility_pairs = mysplit(compatibility_list,",")
  for _,pair in pairs(compatibility_pairs) do
    local names = mysplit(pair, "->")
    local commit_old = names[1]
    local commit_new = names[2]
    commit_old = fixCommitName(commit_old)
    commit_new = fixCommitName(commit_new)
    
    local this_mod_name = minetest.get_current_modname();
    local this_mod_path = minetest.get_modpath(this_mod_name);
    local lua_file = this_mod_path.."/"..commit_old.."_"..commit_new..".lua";
    
    if not isFile(lua_file) then
      minetest.log("error", "Missing compatibility file \""..lua_file.."\". Please check README of mod hades_compatibility to chack supported configurations.");
    else
      minetest.log("action", "Using "..lua_file.." for compatibility with old world.");
      dofile(lua_file);
    end
  end
end


