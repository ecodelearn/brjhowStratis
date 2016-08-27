// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: storeOwners.sqf
//	@file Author: AgentRev, JoSchaap, His_Shadow

// Notes: Gun and general stores have position of spawned crate, vehicle stores have an extra air spawn direction
//
// Array contents are as follows:
// Name, Building Position, Desk Direction (or [Desk Direction, Front Offset]), Excluded Buttons
storeOwnerConfig = compileFinal str
[
	["GenStore1", 1, [30, 1.5], []],	// Stratis Airbase
	["GenStore2", 4, 310, []],			// Kamino Bay
	["GenStore3", 4, 340, []],			// Girna
	["GenStore4", 1, 90, []],			// Air Station Mike (new)
	["GenStore5", 1, 210, []],			// Old Outpost (new)

	["GunStore1", 0, 5, []],			// West of Camp Tempest
	["GunStore2", 1, 130, []],			// Kill Farm
	["GunStore3", 5, 85, []],			// Agios Cephas
	["GunStore4", 1, 270, []],			// Agia Marina
	["GunStore5", 1, 180, []],			// Kamino Bay (new)
	["GunStore6", 5, 85, ["Armament"]],

	// Buttons you can disable: "Land", "Armored", "Tanks", "Helicopters", "Boats", "Planes"
	["VehStore1", 0, 195, ["Planes"]],	// Kamino Bay
	["VehStore2", 2, 285, ["Boats"]],	// Stratis Airbase
	["VehStore3", 1, -101, ["Planes"]]	// Strogos Bay
];

// Outfits for store owners
storeOwnerConfigAppearance = compileFinal str
[
	["GenStore1", [["weapon", ""], ["uniform", "U_IG_Guerilla2_2"]]],
	["GenStore2", [["weapon", ""], ["uniform", "U_IG_Guerilla2_3"]]],
	["GenStore3", [["weapon", ""], ["uniform", "U_IG_Guerilla3_1"]]],
	["GenStore4", [["weapon", ""], ["uniform", "U_IG_Guerilla3_2"]]],
	["GenStore5", [["weapon", ""], ["uniform", "U_IG_Guerilla3_2"]]],

	["GunStore1", [["weapon", ""], ["uniform", "U_B_SpecopsUniform_sgg"]]],
	["GunStore2", [["weapon", ""], ["uniform", "U_O_SpecopsUniform_blk"]]],
	["GunStore3", [["weapon", ""], ["uniform", "U_I_CombatUniform_tshirt"]]],
	["GunStore4", [["weapon", ""], ["uniform", "U_IG_Guerilla1_1"]]],
	["GunStore5", [["weapon", ""], ["uniform", "U_IG_Guerilla1_1"]]],
	["GunStore6", [["weapon", ""], ["uniform", "U_O_SpecopsUniform_blk"]]],

	["VehStore1", [["weapon", ""], ["uniform", "U_Competitor"]]],
	["VehStore2", [["weapon", ""], ["uniform", "U_Competitor"]]],
	["VehStore3", [["weapon", ""], ["uniform", "U_Competitor"]]]
];
