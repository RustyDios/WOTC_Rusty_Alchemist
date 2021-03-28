//*******************************************************************************************
//  FILE:   UIStrategyScreenListener_RustyAlchemist_GTS                                   
//  
//	File created by RustyDios	24/11/19	11:00	
//	LAST UPDATED				13/09/20	05:00
//
//	REPLACED WITH OPTC SCRIPT
//
//*******************************************************************************************

class UIStrategyScreenListener_RustyAlchemist_GTS extends UIStrategyScreenListener;
/*
event OnInit(UIScreen Screen)
{
	if (IsInStrategy())
	{
		//Add the GTS Perks to the GTS lists
		AddSoldierUnlockTemplate('MZRoaringFlamesUnlock');
		AddSoldierUnlockTemplate('MZSearingMagnesiumUnlock');
	}
}

static function AddSoldierUnlockTemplate(name UnlockGTSName)
{
	local X2FacilityTemplate FacilityTemplate;

	// Find the GTS facility template
	FacilityTemplate = X2FacilityTemplate(class'X2StrategyElementTemplateManager'.static.GetStrategyElementTemplateManager().FindStrategyElementTemplate('OfficerTrainingSchool'));
	if (FacilityTemplate == none)
		return;

	if (FacilityTemplate.SoldierUnlockTemplates.Find(UnlockGTSName) != INDEX_NONE)
		return;

	// Update the GTS template with the specified soldier unlock
	FacilityTemplate.SoldierUnlockTemplates.AddItem(UnlockGTSName);
}
*/
