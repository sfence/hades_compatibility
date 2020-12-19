#!/bin/python

import sys

if len(sys.argv)!=4:
  print("Usage: generate_oldnewtable_lua.py old_list new_list output_lua")
  exit();

old_list = open(sys.argv[1], "r");
new_list = open(sys.argv[2], "r");

lua_code = "local oldnewtable = {};\n";

while 1:
  old_line = old_list.readline();
  new_line = new_list.readline();
  if (len(old_line)==0) and (len(new_line)==0):
    break;
  
  if (len(old_line)==0) and (len(new_line)!=0):
    print("Old list is shorter then new list.")
    exit();
  if (len(old_line)!=0) and (len(new_line)==0):
    print("Old list is longer then new list.")
    exit();
  new_line = new_line.rstrip('\n');
  old_line = old_line.rstrip('\n');
  lua_code = lua_code + "oldnewtable[\"" + old_line + "\"] = \"" + new_line + "\";\n";

old_list.close();
new_list.close();

lua = open(sys.argv[3], "w");
lua.write(lua_code);
lua.close();
