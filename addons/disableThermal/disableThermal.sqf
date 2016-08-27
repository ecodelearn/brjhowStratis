// disableTheral.sqf
// by CRE4MPIE
// ver 0.2
// 2015-04-29 11:44pm
// contributions from BIStudio Forums, edited by CRE4MPIE

_layer = 85125; 
_blacklist =	[	"launch_I_Titan_short_F",
					"launch_O_Titan_short_F",
					"launch_B_Titan_short_F",
					"launch_Titan_short_F",
					"launch_Titan_F",
					"launch_O_Titan_F",
					"launch_I_Titan_F",
					"launch_B_Titan_F",
					"Laserdesignator",
					"Laserdesignator_02",
					"Laserdesignator_03",
					"B_static_AT_F",
					"O_static_AT_F",
					"I_static_AT_F",
					"B_static_AA_F",
					"O_static_AA_F",
					"I_static_AA_F",
					"B_HMG_01_F",
					"O_HMG_01_F",
					"I_HMG_01_F",
					"B_HMG_01_high_F",
					"O_HMG_01_high_F",
					"I_HMG_01_high_F",
					"B_GMG_01_F",
					"O_GMG_01_F",
					"B_GMG_01_high_F",
					"O_GMG_01_high_F",
					"I_GMG_01_high_F"
				];  // blacklist array

_headgear =		[	"H_HelmetO_ViperSP_ghex_F",
					"H_HelmetO_ViperSP_hex_F"
				];

_optics = 	[ 	"optic_Nightstalker"				
			];				


//_nvgoggles =	[  	"NVGogglesB_gry_F",
//					"NVGogglesB_grn_F",
//					"NVGogglesB_blk_F"
//				];

				
while {true} do 
{ 
	
if (currentVisionMode player == 2) then																		// check for TI Mode
{
	
	if(headgear player in _headgear) then
		{
			removeHeadgear player;
			_layer  cutText ["ACESSORIOS NÃO PERMITIDOS SERÃO REMOVIDOS - ADMIN BRJHOW!","BLACK",-1];							// Blackout screen with Text
			playSound "FD_CP_Not_Clear_F";
			sleep 10;
			_layer cutText ["", "PLAIN"];
		};

	
	if (({_x in (primaryWeaponItems player)} count _optics) > 0) then
		{
		
			{player removePrimaryWeaponItem  _x;} count _optics;
			_layer  cutText ["ACESSORIOS NÃO PERMITIDOS SERÃO REMOVIDOS - ADMIN BRJHOW!","BLACK",-1];							// Blackout screen with Text
			playSound "FD_CP_Not_Clear_F";
			sleep 10;
			_layer cutText ["", "PLAIN"];
			player addPrimaryWeaponItem "optic_Hamr";
		};
	
	if ((currentweapon player in _blacklist) && (daytime <= 0 && daytime > 6))then							// check if player has launcher as current weapon
		{ 																										
            _layer    cutText ["Imagem Thermal não permitida!.","BLACK",-1];										// Blackout screen with Text
			playSound "FD_CP_Not_Clear_F";
            waituntil {currentVisionMode player != 2};
            _layer cutText ["", "PLAIN"];
		}
	else
		{
		if (alive (getConnectedUAV player)) then																// check if player is connected to a UAV			
			{																											
            _layer    cutText ["Thermal Imaging OFFLINE while connected to a UAV terminal!.","BLACK",-1];	// Blackout screen with Text
			playSound "FD_CP_Not_Clear_F";
            waituntil {currentVisionMode player != 2};
            _layer cutText ["", "PLAIN"];
			};
		};
			sleep 1;
};
};