local armorDefs = {
	tanks = {
		"supertank",
		"megatank",
	},

	infantry = {
		"dude",
	},
}

--NOTE: only needed for <95.0 (before engine was expecting a cryptic format)
if not(Game) or not(Game.version) then
  for categoryName, categoryTable in pairs(armorDefs) do
    local t = {}
    for _, unitName in pairs(categoryTable) do
      t[unitName] = 1
    end
    armorDefs[categoryName] = t
  end
end

return armorDefs
