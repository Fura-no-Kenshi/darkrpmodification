--[[---------------------------------------------------------------------------
DarkRP custom shipments and guns
---------------------------------------------------------------------------

This file contains your custom shipments and guns.
This file should also contain shipments and guns from DarkRP that you edited.

Note: If you want to edit a default DarkRP shipment, first disable it in darkrp_config/disabled_defaults.lua
	Once you've done that, copy and paste the shipment to this file and edit it.

The default shipments and guns can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/addentities.lua

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomShipmentFields


Add shipments and guns under the following line:
---------------------------------------------------------------------------]]

DarkRP.createShipment("AK-47", {
	model = "models/weapons/w_ak47_m9k.mdl", -- The model of the item that hovers above the shipment
	entity = "fas2_ak47", -- the entity that comes out of the shipment
	price = 100, -- the price of one shipment
	amount = 1, -- how many of the item go in one purchased shipment
	separate = true, -- whether the item is sold separately (usually used for guns)
	pricesep = 100, -- the price of a separately sold item
 
	-- The following fields are OPTIONAL. If you do not need them, or do not need to change them from their defaults, REMOVE them.
	noship = false, -- whether this item has a shipment
	allowed = {TEAM_GUN}, -- OPTIONAL, which teams are allowed to buy this shipment/separate gun
	shipmodel = "models/items/item_item_crate.mdl", -- OPTIONAL, the model of the shipment (this crate is the default)
	weight = 10, -- OPTIONAL, the weight of the shipment. The default is the weight of the shipment 
	spareammo = 10, -- OPTIONAL, Add ammo to the default amount of ammo for every weapon
	clip1 = 10, -- OPTIONAL, The amount of bullets in the primary clip by default
	clip2 = 10, -- OPTIONAL, The amount of bullets in the secondary clip by default
	buttonColor = Color(255, 255, 255, 255), -- Optional: The color of the button in the F4 menu,
	label = "rifle", -- Optional: the text on the button in the F4 menu
	category = "arme", -- The name of the category it is in. Note: the category must be created!
	sortOrder = 100, -- The position of this thing in its category. Lower number means higher up.
 })
