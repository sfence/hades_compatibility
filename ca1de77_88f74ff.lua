minetest.register_alias("columnia:column_bottom_hades_trees_lush_bark","columnia:column_bottom_hades_trees_orange_bark");
minetest.register_alias("columnia:column_crosslink_hades_trees_lush_bark","columnia:column_crosslink_hades_trees_orange_bark");
minetest.register_alias("columnia:column_linkangle_down_hades_trees_lush_bark","columnia:column_linkangle_down_hades_trees_orange_bark");
minetest.register_alias("columnia:column_linkangle_hades_trees_lush_bark","columnia:column_linkangle_hades_trees_orange_bark");
minetest.register_alias("columnia:column_linkcrossdown_hades_trees_lush_bark","columnia:column_linkcrossdown_hades_trees_orange_bark");
minetest.register_alias("columnia:column_linkcross_hades_trees_lush_bark","columnia:column_linkcross_hades_trees_orange_bark");
minetest.register_alias("columnia:column_linkdown_hades_trees_lush_bark","columnia:column_linkdown_hades_trees_orange_bark");
minetest.register_alias("columnia:column_link_hades_trees_lush_bark","columnia:column_link_hades_trees_orange_bark");
minetest.register_alias("columnia:column_linktee_down_hades_trees_lush_bark","columnia:column_linktee_down_hades_trees_orange_bark");
minetest.register_alias("columnia:column_linktee_hades_trees_lush_bark","columnia:column_linktee_hades_trees_orange_bark");
minetest.register_alias("columnia:column_linkvertical_hades_trees_lush_bark","columnia:column_linkvertical_hades_trees_orange_bark");
minetest.register_alias("columnia:column_mid_hades_trees_lush_bark","columnia:column_mid_hades_trees_orange_bark");
minetest.register_alias("columnia:column_stairsub_hades_trees_lush_bark","columnia:column_stairsub_hades_trees_orange_bark");
minetest.register_alias("columnia:column_stairsubpillar_hades_trees_lush_bark","columnia:column_stairsubpillar_hades_trees_orange_bark");
minetest.register_alias("columnia:column_top_hades_trees_lush_bark","columnia:column_top_hades_trees_orange_bark");
minetest.register_alias("hades_trees:lush_bark","hades_trees:orange_bark");
minetest.register_alias("hades_trees:lush_tree","hades_trees:orange_tree");
minetest.register_alias("stairs:slab_lush_bark","stairs:slab_orange_bark");
minetest.register_alias("stairs:stair_in_lush_bark","stairs:stair_in_orange_bark");
minetest.register_alias("stairs:stair_lush_bark","stairs:stair_orange_bark");
minetest.register_alias("stairs:stair_out_lush_bark","stairs:stair_out_orange_bark");

local S = hades_compatibility.translator;

if (minetest.settings:get_bool("hades_compatibility_flowergrass", false)) then
	minetest.register_node(":hades_flowers:flowergrass", {
		description = S("Flower Grass"),
		drawtype = "plantlike",
		tiles = {"hades_flowers_flowergrass.png"},
		use_texture_alpha = "clip",
		inventory_image = "hades_flowers_flowergrass.png",
		wield_image = "hades_flowers_flowergrass.png",
		paramtype = "light",
		waving = 1,
		walkable = false,
		buildable_to = true,
		floodable = true,
		is_ground_content = true,
		groups = {snappy=3,flammable=3,flora=1,attached_node=1},
		sounds = hades_sounds.node_sound_grass_defaults(),
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
		},
	})
end

