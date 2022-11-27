# KBT_UIAssets
A bunch of globally accessible assets for other addons to use that are a mashup of Blizz things.

Hi, this is planned as a way for me (and others who end up using this) to update assets without updating their main addons.
The idea behind this is to be able to access a variety of textures by indexing a global variable table.
In this case, it would be indexing KBT_UI. Within there are 4 major tables (at this moment), such as BG, LOGO, BORDER,
and TILE. BG is for background textures, LOGO is for logos, crests, sigils, sysmbols, etc., BORDER is for textures
that match Blizzard's backdrop edgeFile atlas, and TILE is for tile-able background textures. From there, index one
of the valid fields, such as the url, width, and height.

An example of some usage could be:

`KBT_UI.LOGO.Evoker.url`

This variable contains a string directed to `"Interface\\AddOns\\KBT_UIAssets\\Assets\\LOGO\\Evoker"`. Additionally
you can do `KBT_UI.LOGO.Evoker.width` and `KBT_UI.LOGO.Evoker.height` to get the default intended values of the texture.
In the case of this image, it would be numberical values of 1024 for both width and height (a square texture).

When you assign this variable to a texture (after making sure this addon is loaded), it should now assign that texture
frame with the one selected in the table.

Even further, you could parse over the table info, as an example:

```lua
for k, v in pairs(KBT_UI.LOGO) do
  print("k: " .. k) -- the name
end
```

In this example, the output would result in:
```
k: Evoker
k: TextureName2
k: TextureName3
```
etc.

Using this, you could create a list of variable names for textures. As another example:

```lua
for k, v in pairs(KBT_UI.LOGO) do
  print("texture: " .. KBT_UI.LOGO[k]["url"]) -- the path
end
```

output:
```
texture: Interface\AddOns\KBT_UIAssets\Assets\LOGO\Evoker
texture: Interface\AddOns\KBT_UIAssets\Assets\LOGO\TextureName2
texture: Interface\AddOns\KBT_UIAssets\Assets\LOGO\TextureName3
```
etc.

this may be useful if you wanted to, say, bring up a list of textures to be auto-generated in another addon.
