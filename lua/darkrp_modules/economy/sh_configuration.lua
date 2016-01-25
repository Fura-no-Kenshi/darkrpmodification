BEModuleConfig = {}
BEModuleFunctions = {}

local Config = BEModuleConfig

-- General Settings --
Config.Version = 2.5 -- Which version of DarkRP, don't include second decimals INCORRECT: (2.5.0) Correct: (2.5)
Config.Style = 1 -- The default VGUI style, players can change theirs (1-4) 1: "Sleek" Dark, 2: Dark/Black, 3: Pink, 4: Red
Config.Currency = "€" -- The symbol displayed to represent money
Config.LoadTime = 30 -- How long it takes for the initilization timers to take (to allow other things to load, basically)

-- Economy Settings --
Config.Reputation = 100 -- Where the reputation progress starts at (0-100) (reloading the script resets the game value)
Config.EconomyBank = 50000 -- How much money the bank begins with (reloading the script resets the game value)

Config.E_HUDPosition = "top" -- Where the economy meter and basic information is located: "top" or "bottom"
Config.E_HUDHeight = 25 -- The height of the HUD displaying economy, reputation, and money
Config.E_HUDWidth = 250 -- Same as height, but the width, which is horizontal

Config.EconomyStyleCommand = "estyle" -- The command used to change the VGUI style, no slash required
Config.EconomyManagerCommand = "economy" -- The command that allows the mayor to manage the economy
Config.EconomyManagerQuickKey = true -- If this is enabled, the mayor can press F2 (when not looking at a door) to open the economy manager

-- Bank Robbing Settings --
Config.NoRobbingJobs = { "Policier", "Maire", "Vendeur D'armes", "Medecin", "Citoyen", "S.D.F" } -- The job names that aren't allowed to rob, can't use variables such as TEAM_POLICE
Config.RequiredRobJobs = { "Policier" } -- How many players of one job there should be for robbing to work
Config.MinimumRequired = 2 -- There must at least be this many required of the jobs above for robbing to work, set 0 to disable
Config.AutoWant = true -- Want the player when being robbed
Config.WantMessage = "Braquage de Banque" -- The message displayed when a player begins robbing
Config.MoneyPickupSpeed = 0.25 -- How fast the player picks up money from money stacks
Config.MoneyPickupSound = "physics/body/body_medium_impact_soft6.wav" -- The sound each time money is picked up from money stacks, set to "" to disable
Config.MoneyWorth = 100 -- The worth of each individual money stack
Config.MoneyStacks = 48 -- How many money stacks are in the money stack
Config.MoneyRespawn = 600 -- How many seconds until money stacks respawn again
Config.MoneyComesFromGovernment = false -- When money stacks are taken, that money will also be deducted from the government's bank
Config.MoneyEmpty = "Il n'y a plus d'argent dans la banque." -- The message displayed if there isn't any money left (and the above variable is enabled)
Config.MoneyRespawnDelay = 5 -- The delay after all money has been taken, when it will respawn again
Config.AlarmSound = "ambient/alarms/alarm1.wav" -- The sound played when the alarm is ringing
Config.AlarmHealth = 100 -- How much health the alarm has, when it reaches 0 health any alarm will stop
Config.AlarmSparkOnDamage = true -- When the alarm takes damage it will make spark sounds
Config.AlarmStartAgain = 30 -- How long before the alarm will start again after being damaged to turn off
Config.AlarmCooldown = 60 -- How long until the alarm stops (after the last robbing action)

Config.AlarmLocations = {
	-- Where alarms are put for bank robberies
	-- Remove these to disable alarms
	
	{ map = "rp_downtown_v4c_v2", model = "models/props_wasteland/speakercluster01a.mdl", pos = Vector(-1407, 214, -27), ang = Angle(0, 0, 0) },
}

Config.MoneyStackLocations = {
	-- Individual money stacks that are placed
	-- Use "models/props_wasteland/speakercluster01a.mdl" as a refrence for placement
	 
	{ 
		map = "rp_evocity2_v2p", pos = Vector(1068, -65, 204), ang = Angle(0, 46, 0),
	},
}

Config.ShelfLocations = {
	-- Shelves of stacks of money
	-- Use "models/props/cs_office/shelves_metal.mdl" as a refrence for placement
	
	{ 
		map = "rp_evocity2_v2p", pos = Vector(1046, -31, 204), ang = Angle(0, 90, 0),
		map = "rp_evocity2_v2p", pos = Vector(952, 167, 204), ang = Angle(0, 0, 0),
	},
}

-- Mayor Settings --
Config.MayorTeamName = "Maire" -- The team name of the "mayor team" (economy privledges), can't use variables such as TEAM_MAYOR

Config.UnacceptableReputation = 5 -- When the reputation is considered "unacceptable," should be less than or equal to 20
Config.AllowRecall = true -- When the reputation reaches unacceptable, people can recall the mayor (legal demotion)

-- Hints --
Config.HintInterval = 90 -- The delay between showning hints
Config.HintLength = 10 -- How long the hint stays before it fades away
Config.SayHintBeforeHint = true -- Display "HINT: " before hints.

Config.Hints = {
	-- Remember to fit these to your configuration's specifications (it doesn't do it automatically)
	
	"There are four different VGUI styles to choose from. You can change your current style by typing /estyle <style id>, you can enter numbers between 1-4.",
	"The mayor makes decisions that will effect the city's reputation and bank. If the city's reputation reaches unacceptable, the mayor can be recalled by typing /recall.",
	"Opportunities that the mayor must complete regulary occur. Sometimes there is a right answer, but even the right answer can go wrong.",
	"Good economy allows the government to better equip theirselves. Also, it could mean a better salary for everybody.",
	"If you're the mayor, you can use /economy or press F2 to access the Economy Manager.",
	"Everytime you receive a paycheck, some taxes might be taken.",
	"Work as a government officer, and you might be able to loadout with upgrades and weapons.",
	"The mayor is able to influence economic progression. They can invest as much money into the proccess, and in turn creates profit. The more money invested, though, the longer it takes.",
}

-- Taxes --
Config.EnableTaxes = true -- Whether people are taxed, and that tax money is put into the government's bank
Config.GovernmentSalary = { "Policier", "Commissaire", "Medecin", "Maire" } -- The team names of people paid using the government's bank, can't use variables such as TEAM_POLICE
Config.TaxPayers = { "Citoyen", "Gangster", "Chef Gangster", "Vendeur d'armes" } -- The team names of jobs that must pay taxes, can't use variables such as TEAM_CITIZEN
Config.MaxTaxes = 90 -- The, percentage, limit that taxes can be set to (100 being all money can be taken from paychecks)
Config.DefaultTaxes = 20 -- Where taxes begin
Config.TaxNotificationLength = 10 -- How long it displays the new taxes for

-- Loadouts --
Config.EnableLoadouts = true -- Whether loadouts are enabled, which allows for government to modify their weapons when they spawn
Config.GovernmentJobs = { "Policier", "Commissaire" } -- The team names of government members, can't use variables such as TEAM_POLICE

Config.PerkNotificationLength = 10 -- How long the notification is displayed for when a perk is bought or expires

Config.Perks = {
	-- Duration is in minutes
	-- Make sure the ID values for weapon loadouts match
	
	{ id = "primaryWeapons", title = "Primary Weapons", cost = 10000, duration = 60, description = [[Unlocks two-handed weaponry for government officers in their loadout]] },
	{ id = "secondaryWeapons", title = "Secondary Weapons", cost = 5000, duration = 60, description = [[Unlocks one-handed weaponry for government officers in their loadout]] },
	
	-- Do not modify these ID values (you can remove the perks, though)
	{ id = "upgrades", title = "Upgrades", cost = 10000, duration = 60, description = [[Allow government officers to upgrade their strength, resistance, and armor in their loadout]] },
	{ id = "reputation", title = "Most Repuable", cost = 25000, duration = 60, description = [[Reputation will be doubled whenever reputation is gained]] },
	{ id = "economy", title = "Better Economy", cost = 5000, duration = 60, description = [[People receiving a paycheck will receive twice their usual payday amount]] },
}

Config.WeaponsLoadout = {
	-- In order to remove this from loadouts, just remove all of the tables (not the entire variable, just empty it)
	{ id = "primaryWeapons", category = "Primary", reputationRequired = 70, classes = { "weapon_m42", "weapon_ak472", "weapon_mp52", "weapon_pumpshotgun2" } },
	{ id = "secondaryWeapons", category = "Secondary", reputationRequired = 50, classes = { "weapon_deagle2", "weapon_fiveseven2", "weapon_glock2", "weapon_p2282", "weapon_mac102" } },
}

Config.UpgradesReputation = 50 -- How low the reputation is allowed for upgrades to be used
Config.AvailableUpgradePoints = 10 -- How many points are available to be distributed into upgrades (default and minimum value is 1 and the maximum value is 10 for each perk)

Config.WalkSpeedUpgrade = 50 -- The maximum value that is added to the player's speed when using the leg strength upgrade
Config.DamageScaleUpgrade = 0.5 -- The maximum scale that is subtracted from the player's damage scale with the resistance upgrade

Config.UpgradesLoadout = {
	-- WARNING: Do not modify the ID values
	-- You can remove the upgrades or modify the title
	
	{ id = "legStrength", title = "Leg Strength" },
	{ id = "resistance", title = "Damage Resistance" },
	{ id = "armor", title = "Protective Gear" },
}

Config.CurrentPerks = {} -- Used for the current perks, also can work for default perks (use ID)

-- Opportunities -- 
Config.OpportunityInterval = 300 -- The interval between opportunities given to the mayor (make this greater than the sum of the expirations)
Config.OpportunityNotificationExpiration = 45 -- How long before the question to check the opportunity disappears
Config.OpportunityDecisionExpiration = 300 -- How long to make an answer
Config.OpportunityPostNotificationExpiration = 15 -- How long before the message displaying the outcome of the opportunity expires
Config.OpportunityNotification = "Une nouvelle audiance vous a été demandé." -- The message displayed

Config.OpportunitySkipped = 5 -- How much reputation is taken when an opportunity is skipped or there is no mayor
Config.OpportunityMinPlayers = 1 -- How many players there must be for reputation to actually be lowered for missing an opportunity

Config.Opportunities = {
	{ title = "Research",
	description = [[A local research center is requesting that you invest in one of their departments. You can ignore their request, but this research center has much influence. The researchers are some of the best in the world, and are sure to accomplish their goals with propper funding. There's a large demand for medical technology, but technology could be much more profitable, although risky.]],
	choices = {
		{ choice = "Invest in Medicine", choiceCost = 5000,
			results = {
				{ chance = 50, money = 7500, reputation = 4, message = [[Few medical advancements were made.]] },
				{ chance = 20, money = 10000, reputation = 6, message = [[There was many advancements in medical technology.]] },
				{ chance = 5, money = 25000, reputation = 10, message = [[Several cures for lethal diseases were found.]] },
				{ chance = 5, money = 15000, reputation = 8, message = [[Several cures for non-lethal viruses were discovered.]] },
				{ chance = 5, money = 25000, reputation = 2, message = [[Too few medical advancements were made to profit from.]] },
				{ chance = 5, money = 0, reputation = 0, message = [[The researchers are seemingly incompetent now that they've accomplished nothing.]] },
				{ chance = 5, money = 0, reputation = 0, message = [[There was an accident, setting back the research and rendering your investment lost.]] },
				{ chance = 2, money = 90000, reputation = 15, message = [[A cure which practically solves everything was discovered.]] },
				{ chance = 1, money = 0, reputation = -4, message = [[A large explosion went off at the facility. This probably wouldn't have happened if you didn't invest.]] },
				{ chance = 1, money = 0, reputation = -2, message = [[Somebody went insane and used your investment to kill some people.]] },
				{ chance = 1, money = 0, reputation = -2, message = [[A failure to follow protocal resulted in disaster.]] },
			}
		},
		
		{ choice = "Invest in Technology", choiceCost = 5000,
			results = {
				{ chance = 45, money = 10000, reputation = 5, message = [[Some new technology was invented.]] },
				{ chance = 15, money = 20000, reputation = 8, message = [[Many new technological devices were invented.]] },
				{ chance = 10, money = 3500, reputation = 2, message = [[Too little technology was created to profit from.]] },
				{ chance = 10, money = 500, reputation = 0, message = [[Barely any technology was made.]] },
				{ chance = 5, money = 25000, reputation = 10, message = [[Life saving technology was invented.]] },
				{ chance = 5, money = 0, reputation = 0, message = [[The researchers are seemingly incompetent now that they've accomplished nothing.]] },
				{ chance = 5, money = 0, reputation = 0, message = [[There was an accident, setting back the research and rendering your investment lost.]] },
				{ chance = 1, money = 100000, reputation = -4, message = [[Unlimited energy was discovered. It's not free, for the public at least.]] },
				{ chance = 1, money = 10000, reputation = 12, message = [[Unlimited energy was discovered. It might not be free, but there's still money to be made.]] },
				{ chance = 1, money = 0, reputation = -4, message = [[A large explosion went off at the facility. This probably wouldn't have happened if you didn't invest.]] },
				{ chance = 1, money = 0, reputation = -6, message = [[Somebody went insane and made a weapon of mass destruction, then used it.]] },
				{ chance = 1, money = 0, reputation = -2, message = [[A failure to follow protocal resulted in disaster.]] },
			}
		},
		
		{ choice = "Ignore", choiceCost = 0,
			results = {
				{ chance = 50, money = 0, reputation = 0, message = [[You ignore the request without much problem.]] },
				{ chance = 25, money = 0, reputation = -5, message = [[By ignoring the request, some people have lost respect for you.]] },
				{ chance = 15, money = 0, reputation = -2, message = [[Not investing resulted in deaths that could have been prevented.]] },
				{ chance = 5, money = 0, reputation = 2, message = [[People think it was a good choice to not invest.]] },
				{ chance = 5, money = 0, reputation = 2, message = [[An anomaly was found that wouldn't have been if you invested, and lives were saved.]] },
			}
		}
	}},
	
	{ title = "Domestic Terrorism",
	description = [[Everything wasy going fine, until there was a threat to blow up a building. Mostly somebody tipping off that the person they knew was going to be rigging explosives to the structural foundation. What should you do about this threat?]],
	choices = {
		{ choice = "Do Nothing", choiceCost = 0,
			results = {
				{ chance = 60, money = 0, reputation = -10, message = [[The building exploded and a lot of people died.]] },
				{ chance = 20, money = 0, reputation = -4, message = [[Nothing happened, but word got out about the threat and people are furious with your lack of action.]] },
				{ chance = 10, money = 0, reputation = 0, message = [[Nothing happened, and the threats remain secret to the public.]] },
				{ chance = 10, money = 0, reputation = -6, message = [[Somebody suspicious was caught with explosives and plans to destroy the building, but people are furious you didn't respond to the threat.]] },
			}
		},
		
		{ choice = "Call in the FBI", choiceCost = 5000,
			results = {
				{ chance = 80, money = 0, reputation = 10, message = [[The FBI is led to a man stocked with explosives and plans to destroy the building.]] },
				{ chance = 10, money = 20000, reputation = 8, message = [[The FBI didn't find any explosives, but they found lots of illegal contraband.]] },
				{ chance = 5, money = 0, reputation = 2, message = [[The FBI found out the threat was fake, but arrested the caller.]] },
				{ chance = 3, money = 0, reputation = 0, message = [[The FBI didn't find anything, and no explosion happened.]] },
				{ chance = 2, money = 0, reputation = 0, message = [[An explosion went off killing a lot of people.]] },
			}
		},
		
		{ choice = "Evacuate the Building", choiceCost = 0,
			results = {
				{ chance = 30, money = 0, reputation = 8, message = [[The building was evacuationed and bombs were found.]] },
				{ chance = 30, money = 0, reputation = 0, message = [[The building was evacuationed, but no bombs were found.]] },
				{ chance = 20, money = 0, reputation = 10, message = [[The building was evacuationed. Followed by an explosion, but nobody was killed.]] },
				{ chance = 20, money = 0, reputation = -4, message = [[The evacuation was a failure, the bomber set off the bombs before everybody escape.]] },
			}
		}
	}},
	
	{ title = "Donations for a Cause",
	description = [[The community has raised over $100,000 to help improve the economy, but where it goes is up to you. Unemployment is at 10% and could use the money to lower it.]],
	choices = {
		{ choice = "Raise Employment", choiceCost = 0,
			results = {
				{ chance = 80, money = 50000, reputation = 6, message = [[Unemployment was lowered to 4%.]] },
				{ chance = 10, money = 125000, reputation = 8, message = [[Unemployment was lowered to 2%.]] },
				{ chance = 8, money = 5000, reputation = 2, message = [[Unemployment only lowered to 8%.]] },
				{ chance = 2, money = 0, reputation = 2, message = [[Unemployment didn't change.]] },
			}
		},
		
		{ choice = "Keep the Money", choiceCost = 0,
			results = {
				{ chance = 99, money = 100000, reputation = -75, message = [[You keep the money, but the community has never been so disappointed in you before.]] },
				{ chance = 1, money = 100000, reputation = 0, message = [[Nobody seems to care that you stole all that money.]] },
			}
		}
	}},
}

-- Functions (for versions) --
Config.GiveMoney = function(ply, amount)
	if Config.Version == 2.5 then
		ply:addMoney(amount)
	elseif Config.Version < 2.5 then
		ply:AddMoney(amount)
	end
end

Config.Notify = function(ply, msgType, time, message)
	if Config.Version == 2.5 then
		DarkRP.notify(ply, msgType, time, message)
	elseif Config.Version < 2.5 then
		GAMEMODE:Notify(ply, msgType, time, message)
	end
end

Config.NotifyAll = function(msgType, time, message)
	if Config.Version == 2.5 then
		DarkRP.notifyAll(msgType, time, message)
	elseif Config.Version < 2.5 then
		GAMEMODE:NotifyAll(msgType, time, message)
	end
end

Config.AddChatCommand = function(command, callback, description, delay)
	if Config.Version == 2.5 then
		if SERVER then
			DarkRP.defineChatCommand(command, callback)
		end
		
		DarkRP.declareChatCommand{ command = command, description = description, delay = delay }
	elseif Config.Version < 2.5 then
		AddChatCommand("/"..command, callback)
	end
end

Config.FormatNumber = function(n)
	if (!n) then
		return 0
	end
	
	if n >= 1e14 then return tostring(n) end
	
	n = tostring(n)
	sep = sep or ","
	
	local dp = string.find(n, "%.") or #n+1
	
	for i=dp-4, 1, -3 do
		n = n:sub(1, i) .. sep .. n:sub(i+1)
	end
	
	return n
end

Config.ChangeTeam = function(ply, t, force)
	if t == "Default" then
		t = GAMEMODE.DefaultTeam
	end
	
	if Config.Version == 2.5 then
		ply:changeTeam(t, force)
	elseif Config.Version < 2.5 then
		ply:ChangeTeam(t, force)
	end
end

Config.IsDoor = function(entity)
	if Config.Version == 2.5 then
		return entity:isDoor()
	elseif Config.Version < 2.5 then
		return entity:IsDoor()
	end
end

Config.IsWanted = function(ply)
	if Config.Version == 2.5 then
		return ply:isWanted()
	elseif Config.Version < 2.5 then
		return ply:IsWanted()
	end
end

Config.Wanted = function(ply, reason)
	if Config.Version == 2.5 then
		ply:wanted(ply, reason)
	elseif Config.Version < 2.5 then
		GAMEMODE:PlayerWanted(ply, ply, reason)
	end
end