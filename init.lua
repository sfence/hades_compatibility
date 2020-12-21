
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

local settings_file = minetest.get_worldpath().."/".."compatibility.conf";
if not isFile(settings_file) then
  minetest.log("error", "Configuration file \""..settings_file.."\" not found.");
end
local settings = Settings(settings_file);

local old_commit = settings:get("old_commit");
local new_commit = settings:get("new_commit");

local this_mod_name = minetest.get_current_modname();
local this_mod_path = minetest.get_modpath(this_mod_name);
local lua_file = this_mod_path.."/"..old_commit.."_"..new_commit..".lua";


if not isFile(lua_file) then
  minetest.log("error", "Missing compatibility file \""..lua_file.."\". Please check README of mod hades_compatibility to chack supported configurations.");
end

minetest.log("info", "Using "..lua_file.." for compatibility with old world.");
dofile(lua_file);

