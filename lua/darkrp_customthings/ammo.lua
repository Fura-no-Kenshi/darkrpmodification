--[[---------------------------------------------------------------------------
Ammo types
---------------------------------------------------------------------------
Ammo boxes that can be purchased in the F4 menu.

Add your custom ammo types in this file. Here's the syntax:
DarkRP.createAmmoType("ammoType", {
    name = "Ammo name",
    model = "Model",
    price = 1234,
    amountGiven = 5678,
    customCheck = function(ply) return ply:IsAdmin()
})

ammoType: The name of the ammo that Garry's mod recognizes
	If you open your SWEP's shared.lua, you can find the ammo name next to
	SWEP.Primary.Ammo = "AMMO NAME HERE"
	or
	SWEP.Secondary.Ammo = "AMMO NAME HERE"

name: The name you want to give to the ammo. This can be anything.

model: The model you want the ammo to have in the F4 menu

price: the price of your ammo in dollars

amountGiven: How much bullets of this ammo is given every time the player buys it

customCheck: (Optional! Advanced!) a Lua function that describes who can buy the ammo.
	Similar to the custom check function for jobs and shipments
	Parameters:
		ply: the player who is trying to buy the ammo

Examples are below!

Pistol ammo type. Used by p228, desert eagle and all other pistols
Example 1:

DarkRP.createAmmoType("pistol", {
	name = "Pistol ammo",
	model = "models/Items/BoxSRounds.mdl",
	price = 30,
	amountGiven = 24
})

Buckshot ammo, used by the shotguns
Example 2:

DarkRP.createAmmoType("buckshot", {
	name = "Shotgun ammo",
	model = "models/Items/BoxBuckshot.mdl",
	price = 50,
	amountGiven = 8
})

Rifle ammo, usually used by assault rifles
Example 3:

DarkRP.createAmmoType("smg1", {
	name = "Rifle ammo",
	model = "models/Items/BoxMRounds.mdl",
	price = 80,
	amountGiven = 30
})

Add new ammo types under the next line!
---------------------------------------------------------------------------]]

DarkRP.createAmmoType(".454 Casull", {
    name = ".454 Casull",
    model = "models/Items/BoxSRounds.mdl",
    price = 120,
    amountGiven = 12
})
 
DarkRP.createAmmoType("10x25mm", {
    name = "10x25mm",
    model = "models/Items/BoxSRounds.mdl",
    price = 65,
    amountGiven = 24
})
 
 
DarkRP.createAmmoType(".50 AE", {
    name = ".50 AE",
    model = "models/Items/BoxSRounds.mdl",
    price = 95,
    amountGiven = 24
})
DarkRP.createAmmoType(".45 ACP", {
    name = ".45 ACP",
    model = "models/Items/BoxSRounds.mdl",
    price = 65,
    amountGiven = 12
})
 
DarkRP.createAmmoType("9x18mm", {
    name = "9x18mm",
    model = "models/Items/BoxSRounds.mdl",
    price = 120,
    amountGiven = 12
})
 
DarkRP.createAmmoType(".357 SIG", {
    name = ".357 SIG",
    model = "models/Items/BoxSRounds.mdl",
    price = 60,
    amountGiven = 12
})
 
DarkRP.createAmmoType("7.62x39mm", {
    name = "7.62x39mm",
    model = "models/Items/BoxMRounds.mdl",
    price = 750,
    amountGiven = 24
})
 
DarkRP.createAmmoType("5.45x39mm", {
    name = "5.45x39mm",
    model = "models/Items/BoxMRounds.mdl",
    price = 150,
    amountGiven = 24
})
 
DarkRP.createAmmoType("7.62x51mm", {
    name = "7.62x51mm",
    model = "models/Items/BoxMRounds.mdl",
    price = 550,
    amountGiven = 24
})
 
DarkRP.createAmmoType("9x19mm", {
    name = "9x19mm",
    model = "models/Items/BoxMRounds.mdl",
    price = 650,
    amountGiven = 24
})
 
DarkRP.createAmmoType("5.56x45mm", {
    name = "5.56x45mm",
    model = "models/Items/BoxMRounds.mdl",
    price = 250,
    amountGiven = 24
})
 
DarkRP.createAmmoType("12 Gauge", {
    name = "12Gauge",
    model = "models/Items/BoxBuckshot.mdl",
    price = 400,
    amountGiven = 25
})
 
DarkRP.createAmmoType(".380ACP",{
  name = ".380ACP",
  model = "models/Items/BoxSRounds.mdl",
  price = 250,
  amountGiven = 20,
  })
 
  DarkRP.createAmmoType(".50BMG",{
    name = ".50BMG",
	model = "models/Items/BoxMRounds.mdl",
	price = 350,
	amountGiven = 12,
})
   
DarkRP.createAmmoType("23x75mm",{
	name = "23x75mm",
	model = "models/Items/BoxMRounds.mdl",
	price = 250,
	amountGiven = 15,
})