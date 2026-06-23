local shopTable = {
	-- Floor (4 panels)
	{CFrame = CFrame.new(152.5, 0.2, -102, 1, 0, 0, 0, 1, 0, 0, 0, 1), Name = 'Floor2x2', TreeValue = 'Walnut'},
	{CFrame = CFrame.new(157.5, 0.2, -102, 1, 0, 0, 0, 1, 0, 0, 0, 1), Name = 'Floor2x2', TreeValue = 'Walnut'},
	{CFrame = CFrame.new(152.5, 0.2, -97, 1, 0, 0, 0, 1, 0, 0, 0, 1), Name = 'Floor2x2', TreeValue = 'Walnut'},
	{CFrame = CFrame.new(157.5, 0.2, -97, 1, 0, 0, 0, 1, 0, 0, 0, 1), Name = 'Floor2x2', TreeValue = 'Walnut'},

	-- Back wall (facing -Z, at X=150, spans Z -97 to -107)
	{CFrame = CFrame.new(150, 1.2, -99, 0, 0, 1, 0, 1, 0, -1, 0, 0), Name = 'Wall2TallThin', TreeValue = 'BlueSpruce'},
	{CFrame = CFrame.new(150, 1.2, -103, 0, 0, 1, 0, 1, 0, -1, 0, 0), Name = 'Wall2TallThin', TreeValue = 'BlueSpruce'},
	{CFrame = CFrame.new(150, 1.2, -107, 0, 0, 1, 0, 1, 0, -1, 0, 0), Name = 'Wall2TallThin', TreeValue = 'BlueSpruce'},

	-- Front wall (facing +Z, at X=160, gap left open at Z=-99 for a glass entrance)
	{CFrame = CFrame.new(160, 1.2, -103, 0, 0, -1, 0, 1, 0, 1, 0, 0), Name = 'Wall2TallThin', TreeValue = 'Oak'},
	{CFrame = CFrame.new(160, 1.2, -107, 0, 0, -1, 0, 1, 0, 1, 0, 0), Name = 'Wall2TallThin', TreeValue = 'Oak'},

	-- Left side wall (at Z=-107, spans X 150 to 160)
	{CFrame = CFrame.new(152, 1.2, -107, 1, 0, 0, 0, 1, 0, 0, 0, 1), Name = 'Wall2TallThin', TreeValue = 'Walnut'},
	{CFrame = CFrame.new(156, 1.2, -107, 1, 0, 0, 0, 1, 0, 0, 0, 1), Name = 'Wall2TallThin', TreeValue = 'Walnut'},
	{CFrame = CFrame.new(160, 1.2, -107, 1, 0, 0, 0, 0, 1, 0, -1, 0), Name = 'Wall2TallThin', TreeValue = 'Walnut'},

	-- Right side wall (at Z=-97, spans X 150 to 160, entrance side)
	{CFrame = CFrame.new(152, 1.2, -97, 1, 0, 0, 0, 1, 0, 0, 0, 1), Name = 'Wall2TallThin', TreeValue = 'Oak'},
	{CFrame = CFrame.new(156, 1.2, -97, 1, 0, 0, 0, 1, 0, 0, 0, 1), Name = 'Wall2TallThin', TreeValue = 'Oak'},

	-- Glass entrance (door + flanking panes, matches the museum's glass-front style)
	{CFrame = CFrame.new(160, 1.2, -99, 0, 0, -1, 0, 1, 0, 1, 0, 0), Name = 'GlassDoor1'},
	{CFrame = CFrame.new(159, 2.2, -99, 0, 0, -1, 0, 1, 0, 1, 0, 0), Name = 'GlassPane2'},
	{CFrame = CFrame.new(161, 2.2, -99, 0, 0, -1, 0, 1, 0, 1, 0, 0), Name = 'GlassPane2'},

	-- Roof (4 panels, matches floor footprint)
	{CFrame = CFrame.new(152.5, 4, -102, 1, 0, 0, 0, 1, 0, 0, 0, 1), Name = 'Floor2x2', TreeValue = 'BlueSpruce'},
	{CFrame = CFrame.new(157.5, 4, -102, 1, 0, 0, 0, 1, 0, 0, 0, 1), Name = 'Floor2x2', TreeValue = 'BlueSpruce'},
	{CFrame = CFrame.new(152.5, 4, -97, 1, 0, 0, 0, 1, 0, 0, 0, 1), Name = 'Floor2x2', TreeValue = 'BlueSpruce'},
	{CFrame = CFrame.new(157.5, 4, -97, 1, 0, 0, 0, 1, 0, 0, 0, 1), Name = 'Floor2x2', TreeValue = 'BlueSpruce'},

	-- Counter / shop sign block near the entrance
	{CFrame = CFrame.new(155, 1.5, -100, 1, 0, 0, 0, 1, 0, 0, 0, 1), Name = 'ShopCounter', TreeValue = 'Walnut'},
}


-- Lookup table replaces the long if/elseif chain: part.BuildDependentWood.Color = WoodColors[v.TreeValue].Color
local WoodColors = {
	Generic     = {Color = Color3.fromRGB(204, 142, 105)},
	Oak         = {Color = Color3.fromRGB(234, 184, 146)},
	Cherry      = {Color = Color3.fromRGB(163, 75, 75)},
	Fir         = {Color = Color3.fromRGB(215, 197, 154)},
	Birch       = {Color = Color3.fromRGB(163, 162, 165)},
	Walnut      = {Color = Color3.fromRGB(105, 64, 40)},
	Koa         = {Color = Color3.fromRGB(143, 76, 42)},
	Volcano     = {Color = Color3.fromRGB(255, 0, 0)},
	GreenSwampy = {Color = Color3.fromRGB(52, 142, 64)},
	GoldSwampy  = {Color = Color3.fromRGB(226, 155, 64)},
	Palm        = {Color = Color3.fromRGB(226, 220, 188)},
	SnowGlow    = {Color = Color3.fromRGB(255, 255, 0)},
	Frost       = {Color = Color3.fromRGB(159, 243, 233)},
	CaveCrawler = {Color = Color3.fromRGB(16, 42, 220)},
	BlueSpruce  = {Color = Color3.fromRGB(159, 173, 192)},
	LoneCave    = {Color = Color3.fromRGB(248, 248, 248)},
	Spooky      = {Color = Color3.fromRGB(170, 85, 0), Material = Enum.Material.Granite},
	SpookyNeon  = {Color = Color3.fromRGB(170, 85, 0), Material = Enum.Material.Neon},
}


local buildsFolder = workspace:FindFirstChild("Builds") or Instance.new("Folder", workspace)
buildsFolder.Name = 'Builds'

local structureFolder = workspace:FindFirstChild("BuildsStructures") or Instance.new("Folder", workspace)
structureFolder.Name = 'BuildsStructures'

for _, v in pairs(shopTable) do
	local part = game.ReplicatedStorage.ClientItemInfo:FindFirstChild(v.Name):FindFirstChildOfClass('Model'):Clone()
	part.Parent = (v.TreeValue and buildsFolder or structureFolder)
	part:SetPrimaryPartCFrame(v.CFrame)
	part.Name = v.Name

	local treeValue = Instance.new("StringValue", part)
	treeValue.Name = (v.TreeValue and 'TreeValue' or 'PurchasedBoxItemName')
	treeValue.Value = v.TreeValue or v.Name

	local wood = v.TreeValue and WoodColors[v.TreeValue]
	if wood then
		part.BuildDependentWood.Color = wood.Color
		if wood.Material then
			part.BuildDependentWood.Material = wood.Material
		end
	end

	for _, _Part in pairs(part:GetChildren()) do
		if _Part:IsA('BasePart') and _Part.Transparency == 0 then
			_Part.Transparency = 0.3
		end
	end
end
