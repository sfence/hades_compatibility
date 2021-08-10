#!/bin/python

import sys

if len(sys.argv)!=5:
  print("Usage: find_item_diff.py old_list new_list diff_type diff_list")
  exit();

old_list = open(sys.argv[1], "r");
new_list = open(sys.argv[2], "r");

old_table = []
new_table = []

while 1:
  old_line = old_list.readline();
  if (len(old_line)==0):
    break;
  old_table.append(old_line);

while 1:
  new_line = new_list.readline();
  if (len(new_line)==0):
    break;
  new_table.append(new_line);

old_list.close();
new_list.close();

diff_table = []
diff_type = sys.argv[3]

if (diff_type=="removed"):
  for item in old_table:
    if item not in new_table:
      diff_table.append(item)
if (diff_type=="added"):
  for item in new_table:
    if item not in old_table:
      diff_table.append(item)

lua = open(sys.argv[4], "w");
lua.write("".join(diff_table));
lua.close();

