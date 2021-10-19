# Hades compatibility
Version 0.13.0

A mod for Minetest game Hades Revisited.
This mod is intended for making Hades Revisited old words compatible with new versions of Hades revisited.

## Licensing
This mod is free software. It has been licensed under these licenses:

### Code

* GNU LGPLv3 (or later) for the code

### Media

* MIT, Copyright (C) 2012-2013 Ironzorg, VenessaE
hades_flowers_flowergrass.png

* CC BY-SA 3.0 for the media
Others

## Use

Chcek settingtypes.txt to see, which parameter should be configured in minetest.conf via Minetest setting menu or text editor (file minetest.conf)

## How it works
Compatibility for old words is done by using `minetest.register_alias` function.
Some updates required some mods to be added into you world (like hades_messecons)

## Supported version "conversion"

* Old commit f185358 (version 0.7.0 aviable via Minetest content in Dec 19 2020) to new commit 2f2fb4d (HEAD in 2020-11-14).
* Old commit f185358 (version 0.7.0 aviable via Minetest content in 2020-11-14) to new commit 828b9c9 (version 0.8.1 aviable via Minetest content in 2020-12-20).
* Old commit 828b9c9 (version 0.8.1 aviable via Minetest content in 2020-12-20) to new commit ca1de77 (version 0.11.0 aviable via Minetest content in 2021-08-01). Mod hades_messecons can be used like replace of removed messecons mod (https://content.minetest.net/packages/SFENCE/hades_mesecons/).
* Old commit ca1de77 (version 0.11.0 aviable via Minetest content in 2021-08-01) to new commit 88f74ff (version 0.13.0 aviable via Minetest content in 2021-10-04). Mods hades_travelnet (https://content.minetest.net/packages/SFENCE/hades_travelnet/), hades_boost_cart (included in https://content.minetest.net/packages/SFENCE/hades_extensionmods/), hades_extravessels (included in https://content.minetest.net/packages/SFENCE/hades_extensionmods/). Parameter hades_compatibility_flowergrass can be set to true, if removed flowergrass should be defined.



