# Hades compatibility
Version 0.11.0

A mod for Minetest game Hades Revisited.
This mod is intended for making Hades Revisited old words compatible with new versions of Hades revisited.

## Licensing
This mod is free software. It has been licensed under these licenses:

* GNU LGPLv3 (or later) for the code
* CC BY-SA 3.0 for the media

## Use

Add file compatibility.conf to your world directory. Format of file is same as minetest.conf.
Set parameter `new_commit` and `old_commit` with short git hashes representing old and new version. Use lowew case letters only.

## How it works
Compatibility for old words is done by using `minetest.register_alias` function.

## Supported version "conversion"

* Old commit f185358 (version 0.7.0 aviable via Minetest content in Dec 19 2020) to new commit 2f2fb4d (HEAD in Dec 19 2020).
* Old commit f185358 (version 0.7.0 aviable via Minetest content in Dec 19 2020) to new commit 828b9c9 (version 0.8.1 aviable via Minetest content in Dec 20 2020).
* Old commit 828b9c9 (version 0.8.1 aviable via Minetest content in Dec 20 2020) to new commit ca1de77 (version 0.11.0 aviable via Minetest content in Dec 20 2020).


