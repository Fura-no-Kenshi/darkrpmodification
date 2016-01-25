--[[---------------------------------------------------------------------------
DarkRP Agenda's
---------------------------------------------------------------------------
Agenda's can be set by the agenda manager and read by both the agenda manager and the other teams connected to it.


HOW TO MAKE AN AGENDA:
AddAgenda(Title of the agenda, Manager (who edits it), {Listeners (the ones who just see and follow the agenda)})
---------------------------------------------------------------------------]]
-- Example: AddAgenda("Gangster's agenda", TEAM_MOB, {TEAM_GANG})
-- Example: AddAgenda("Police agenda", TEAM_MAYOR, {TEAM_CHIEF, TEAM_POLICE})

	AddAgenda("Mission Gangster", TEAM_CHEFGANGSTER, {TEAM_GANGSTER})
	AddAgenda("Mission Mafia", TEAM_PARRAIN, {TEAM_MAFIEUX})
	AddAgenda("Planning de Police", TEAM_MAIRE, {TEAM_COMMISSAIRE, TEAM_POLICIER, TEAM_SWAT})