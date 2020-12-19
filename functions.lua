

hades_compatibility.register_lbms = function(oldnewtable)
    for old_name, new_name in pairs(oldnewtable) do
      local lbm_def = {
        label = "Upgrade "..old_name.." to "..new_name,
        name = old_name.."_to_"..new_name,
        nodemaes = {old_name},
        run_at_every_load = false,
        action = function(pos, node)
            local store_meta = minetest.get_meta(pos);
            local table_meta = store_meta:to_table();
            node.name = new_name;
            minetest.set_node(node);
            local store_meta = minetest.get_meta(pos);
            store_meta:from_table(table_meta);
            minetest.log("info", "Replace "..old_name.." with "..new_name);
          end
      }
    end
  end

hades_compatibility.register_items = function(oldnewtable)
    for old_name, new_name in pairs(oldnewtable) do
      local node_def = minetest.registered_nodes[new_name];
      local craftitem_def = minetest.registered_craftitems[new_name];
      local tool_def = minetest.registered_tools[new_name];
      if (node_def ~= nil) then
        minetest.register_node(old_name, node_def);
        minetest.log("error", dump(node_def));
      elseif (craftitem_def ~= nil) then
        minetest.register_craftitem(old_name, craftitem_def);
      elseif (tool_def ~= nil) then
        minetest.register_tool(old_name, tool_def);
      else
        minetest.log("error", "Item "..new_name.." definition not found.");
      end
    end
  end

