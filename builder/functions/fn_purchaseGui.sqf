// This code is used to create a dialog and populate the list box with the contents of the BUILDER_ITEMS array. It then sets the image for the preview based on the currently selected item in the list box.

disableSerialization;

_listFormat = "%1 - %2";


createDialog "startBox_Dialog";
waitUntil {!isNull (findDisplay 9999);};

_ctrl = (findDisplay 9999) displayCtrl 1500;
{
    _ctrl lbAdd format [_listFormat, _x select 0, _x select 1],;
} forEach BUILDER_ITEMS;


((findDisplay 9999) displayCtrl 1500) ctrlAddEventHandler ['LBSelChanged', {
_index = lbCurSel 1500;
_picture = getText (configFile >> "CfgVehicles" >> ((BUILDER_ITEMS select _index) select 2) >> "editorPreview");
/**   getText ((BUILDER_ITEMS select _index) select 2)    editorPreview = "EFM_modular_base\data\preview\EFM_beam_wood_v_1_5m.jpg";**/
ctrlSetText [1502, _picture];

}]
