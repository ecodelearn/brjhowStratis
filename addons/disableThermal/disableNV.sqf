sleep 15;
{
	if(side _x == east) then {
	    _x unassignItem "NVGogglesB_gry_F";
	    _x removeItems "NVGogglesB_gry_F";
	    _x unassignItem "NVGogglesB_grn_F";
	    _x removeItems "NVGogglesB_grn_F";
	    _x unassignItem "NVGogglesB_blk_F";
	    _x removeItems "NVGogglesB_blk_F";
	};
} foreach (allUnits);

{
	if(side _x == independent) then {
	    _x unassignItem "NVGogglesB_gry_F";
	    _x removeItems "NVGogglesB_gry_F";
	    _x unassignItem "NVGogglesB_grn_F";
	    _x removeItems "NVGogglesB_grn_F";
	    _x unassignItem "NVGogglesB_blk_F";
	    _x removeItems "NVGogglesB_blk_F";
	};
} foreach (allUnits);

{
	if(side _x == west) then {
	    _x unassignItem "NVGogglesB_gry_F";
	    _x removeItems "NVGogglesB_gry_F";
	    _x unassignItem "NVGogglesB_grn_F";
	    _x removeItems "NVGogglesB_grn_F";
	    _x unassignItem "NVGogglesB_blk_F";
	    _x removeItems "NVGogglesB_blk_F";
	};
} foreach (allUnits);
