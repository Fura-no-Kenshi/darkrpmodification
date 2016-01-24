--[[---------------------------------------------------------------------------
DarkRP custom jobs
---------------------------------------------------------------------------

This file contains your custom jobs.
This file should also contain jobs from DarkRP that you edited.

Note: If you want to edit a default DarkRP job, first disable it in darkrp_config/disabled_defaults.lua
	Once you've done that, copy and paste the job to this file and edit it.

The default jobs can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/jobrelated.lua

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomJobFields


Add jobs under the following line:
---------------------------------------------------------------------------]]


TEAM_CITIZEN = DarkRP.createJob("Citoyen", {
    color = Color(0, 255, 35, 255),
    model = {
        "models/player/Group01/Female_01.mdl",
        "models/player/Group01/Female_02.mdl",
        "models/player/Group01/Female_03.mdl",
        "models/player/Group01/Female_04.mdl",
        "models/player/Group01/Female_06.mdl",
        "models/player/group01/male_01.mdl",
        "models/player/Group01/Male_02.mdl",
        "models/player/Group01/male_03.mdl",
        "models/player/Group01/Male_04.mdl",
        "models/player/Group01/Male_05.mdl",
        "models/player/Group01/Male_06.mdl",
        "models/player/Group01/Male_07.mdl",
        "models/player/Group01/Male_08.mdl",
        "models/player/Group01/Male_09.mdl"
    },
    description = [[Le citoyen est le niveau le plus fondamental de la société, vous pouvez tenir en plus d'être un clochard. 
		Vous avez pas de rôle spécifique dans la vie de la ville.]],
    weapons = {"weapon_fists"},
    command = "citoyen",
    max = 0,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Citizens",
})

TEAM_POLICE = DarkRP.createJob("Policier", {
    color = Color(25, 25, 170, 255),
    model = {
		"models/player/uk_police/uk_police_02.mdl", 
		"models/player/uk_police/uk_police_03.mdl", 
		"models/player/uk_police/uk_police_04.mdl", 
		"models/player/uk_police/uk_police_05.mdl", 
		"models/player/uk_police/uk_police_06.mdl", 
		"models/player/uk_police/uk_police_07.mdl", 
		"models/player/uk_police/uk_police_08.mdl", 
		"models/player/uk_police/uk_police_09.mdl"},
    description = [[Le Policier protége chaque citoyen qui vit dans cette ville. Vous avez le pouvoir d'arrêter les criminels et protéger les innocents.]],
    weapons = {"weapon_fists", "arrest_stick", "unarrest_stick", "stunstick", "weaponchecker", "m9k_hk45"},
    command = "Policier",
    max = 0,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = false,
    hasLicense = true,
    ammo = {
        ["pistol"] = 60,
    },
    category = "Civil Protection",
})

TEAM_SWAT = DarkRP.createJob("S.W.A.T.", {
    color = Color(25, 25, 170, 255),
    model = {
		"models/fearless/cr.mdl", 
		"models/fearless/sru02.mdl", 
		"models/fearless/sru01.mdl"},
    description = [[Le Policier protége chaque citoyen qui vit dans cette ville. Vous avez le pouvoir d'arrêter les criminels et protéger les innocents.]],
    weapons = {"weapon_fists", "arrest_stick", "unarrest_stick", "stunstick", "weaponchecker", "fas2_mp5sd6"},
    command = "SWAT",
    max = 4,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = true,
    hasLicense = true,
    ammo = {
        ["pistol"] = 60,
    },
    category = "Civil Protection",
})

TEAM_GANG = DarkRP.createJob("Gangster", {
    color = Color(0, 255, 35, 255),
    model = {
        "models/fearless/bsuit01.mdl",
        "models/fearless/bsuit04.mdl",
        "models/fearless/bsuit07.mdl"},
    description = [[Vous êtes les sous-fifres du monde de la criminalité. Suivez les ordres qui viennent d'en haut si vous voulez survivre.]],
    weapons = {"weapon_fists"},
    command = "gangster",
    max = 4,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Gangsters",
})

TEAM_MAFIEUX = DarkRP.createJob("Mafieux", {
    color = Color(0, 255, 35, 255),
    model = {
        "models/fearless/mafia02.mdl",
        "models/fearless/mafia04.mdl",
        "models/fearless/mafia06.mdl",
        "models/fearless/mafia07.mdl",
        "models/fearless/mafia09.mdl"},
    description = [[Vous êtes un organisation criminels. Suivez les ordres de votre parrain.]],
    weapons = {"weapon_fists"},
    command = "mafieux",
    max = 4,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Mafieux",
})

TEAM_PARRAIN = DarkRP.createJob("Parrain", {
    color = Color(0, 255, 35, 255),
    model = {
        "models/fearless/don1.mdl"},
    description = [[Vous êtes . Suivez les ordres qui viennent d'en haut si vous voulez survivre.]],
    weapons = {"weapon_fists", "m9k_model3russian"},
    command = "Parrain",
    max = 1,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = true,
    hasLicense = false,
    category = "Mafieux",
})

TEAM_CHEFGANGSTER = DarkRP.createJob("Chef Gangster", {
    color = Color(0, 255, 35, 255),
    model = {"models/fearless/02.mdl"},
    description = [[Le Chef Gangster est le patron des criminels dans la ville.]],
    weapons = {"weapon_fists", "lockpick", "unarrest_stick"},
    command = "chefgangster",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 1.34,
    admin = 0,
    vote = true,
    hasLicense = false,
    category = "Gangsters",
})

TEAM_GUN = DarkRP.createJob("Vendeur d'armes", {
    color = Color(0, 255, 35, 255),
    model = {"models/player/monk.mdl",
			"models/player/Group01/Female_01.mdl",
			"models/player/Group01/Female_02.mdl",
			"models/player/Group01/Female_03.mdl",
			"models/player/Group01/Female_04.mdl",
			"models/player/Group01/Female_06.mdl",
			"models/player/group01/male_01.mdl",
			"models/player/Group01/Male_02.mdl",
			"models/player/Group01/male_03.mdl",
			"models/player/Group01/Male_04.mdl",
			"models/player/Group01/Male_05.mdl",
			"models/player/Group01/Male_06.mdl",
			"models/player/Group01/Male_07.mdl",
			"models/player/Group01/Male_08.mdl",
			"models/player/Group01/Male_09.mdl"},
    description = [[Le Vendeur d'armes est la seule personne qui peut vendre des armes à d'autres personnes.
         Assurez-vous que vous n'êtes pas pris à vendre des armes à feu illégalement au public! Vous pourriez être arrêté!]],
    weapons = {"weapon_fists"},
    command = "gundealer",
    max = 2,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = true,
    category = "Citizens",
})

TEAM_GUARD = DarkRP.createJob("Garde du Corps", {
    color = Color(0, 255, 35, 255),
    model = {"models/player/monk.mdl"},
    description = [[on vous pays pour protéger alors férmé là et defender votre client]],
    weapons = {"weapon_fists", "m9k_m92beretta"},
    command = "Garde",
    max = 2,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = true,
    category = "Citizens",
})

TEAM_MEDIC = DarkRP.createJob("Médecin", {
    color = Color(0, 255, 35, 255),
    model = {"models/player/kleiner.mdl"},
    description = [[Avec vos connaissances médicales vous travaillez pour soigner les joueurs.
         Sans un médecin, les gens ne peuvent pas être guéries.]],
    weapons = {"med_kit", "weapon_fists", "fas2_ifak"},
    command = "Médecin",
    max = 3,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    medic = true,
    category = "Citizens",
})

TEAM_COMMISSAIRE = DarkRP.createJob("Commissaire", {
    color = Color(20, 20, 255, 255),
    model = {"models/player/combine_soldier_prisonguard.mdl"},
    description = [[Le Commissaire est le chef de l'unité de protection civile. Coordonner la force de police pour faire respecter la loi dans la ville.]],
    weapons = {"weapon_fists", "arrest_stick", "unarrest_stick", "stunstick", "door_ram", "weaponchecker", "m9k_deagle"},
    command = "Commissaire",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 1.67,
    admin = 0,
    vote = true,
    hasLicense = true,
    chief = true,
    NeedToChangeFrom = TEAM_POLICE,
    ammo = {
        ["pistol"] = 60,
    },
    category = "Civil Protection",
})

TEAM_MAIRE = DarkRP.createJob("Maire", {
    color = Color(150, 20, 20, 255),
    model = {
		 "models/player/breen.mdl",
		 "models/fearless/mayor1.mdl",
		 "models/fearless/mayor2.mdl"},
    description = [[Le maire de la ville crée des lois pour gouverner la ville.]],
    weapons = {"weapon_fists"},
    command = "Maire",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 1.89,
    admin = 0,
    vote = true,
    hasLicense = false,
    mayor = true,
    category = "Civil Protection",
})

TEAM_SDF = DarkRP.createJob("S.D.F", {
    color = Color(0, 255, 35, 255),
    model = {"models/player/corpse1.mdl"},
    description = [[Vous êtes l'élément le plus bas de la société. 
		 Tout le monde se moque de vous.
         Vous avez pas de maison.
         Vous mendier pour votre nourriture et l'argent
         Chantez pour obtenir de l'argent,
         Faites votre propre maison en bois]],
    weapons = {"weapon_bugbait", "weapon_fists", "pickpocket"},
    command = "hobo",
    max = 0,
    salary = 0,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    hobo = true,
    category = "Citizens",
})

if not DarkRP.disabledDefaults["modules"]["hungermod"] then
    TEAM_COOK = DarkRP.createJob("cuisinier", {
        color = Color(0, 255, 35, 255),
        model = {"models/player/mossman.mdl"},
        description = [[Vous êtes un grand chef cuisinier, utilisez vos compétences culinaire pour régaler les papilles de vos clients.]],
        weapons = {},
        command = "cuisinier",
        max = 2,
        salary = GAMEMODE.Config.normalsalary,
        admin = 0,
        vote = false,
        hasLicense = false,
        cook = true
    })
end


--[[---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------]]
GAMEMODE.DefaultTeam = TEAM_CITIZEN


--[[---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------]]
GAMEMODE.CivilProtection = {
	[TEAM_POLICE] = true,
	[TEAM_SWAT] = true,
	[TEAM_COMMISSAIRE] = true,
	[TEAM_MAIRE] = true,
}

--[[---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------]]
-- DarkRP.addHitmanTeam(TEAM_MOB)
