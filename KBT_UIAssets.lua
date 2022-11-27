KBT_UI = {

--Backgrounds
BG = {
	test = "",
};

--Logos, Crests, Sigils, Symbols, etc.
LOGO = {
	Evoker = "Interface\\AddOns\\KBT_UIAssets\\Assets\\LOGO\\Evoker", --1024x1024
};

--Borders that match backdrop edgeFile atlas
BORDER = {
	
};

--Tile-able background texture
TILE = {
	
};

};

--[[ so we know if our assets are working :)
local startFrame = CreateFrame("Frame")
startFrame:RegisterEvent("ADDON_LOADED")
function startFrame:Initialize(event, arg1)
	if event == "ADDON_LOADED" and arg1 == "KBT_UIAssets" then
		--KBT_UI = textureList -- set our global variable with the texture info, now we can index it
		print("Hello, KBT_UIAssets is now usable!")
		startFrame:UnregisterEvent("ADDON_LOADED")

		local testFrame = CreateFrame("Frame", "KBT_UITestFrame", UIParent, "BackdropTemplate")
		testFrame:SetSize(500,500)
		testFrame:SetPoint("CENTER")
		testFrame:SetBackdrop({ bgFile = KBT_UI.LOGO.Evoker, edgeFile = "Interface/Tooltips/UI-Tooltip-Border-Maw", tile = false, edgeSize = 15, tileSize = 10, insets = { left = 3, right = 3, top = 3, bottom = 3, }, })
		testFrame:SetAlpha(1)
		testFrame:SetBackdropColor(1,1,1,1)
		testFrame:SetBackdropBorderColor(1,1,1,1)

		

	end	
end

startFrame:SetScript("OnEvent", startFrame.Initialize)

--]]