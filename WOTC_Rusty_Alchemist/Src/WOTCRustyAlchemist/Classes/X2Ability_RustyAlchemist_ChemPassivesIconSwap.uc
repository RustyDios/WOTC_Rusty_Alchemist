//*******************************************************************************************
//  FILE:   X2Ability_RustyAlchemist_ChemPassivesIconSwap                                  
//  
//	File created by RustyDios	25/11/19	09:00	
//	LAST UPDATED				25/11/19	09:00
//
//	Re-creates some chemthrower pure passives with new icons, 
//
//*******************************************************************************************

class X2Ability_RustyAlchemist_ChemPassivesIconSwap extends X2Ability_DefaultAbilitySet dependson (XComGameStateContext_Ability);

static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> Templates;

	//originals
	//Templates.AddItem(PurePassive('MZViscousAccelerant', "img:///UILibrary_XPACK_Common.PerkIcons.strx_fireresistance", false ));
	//Templates.AddItem(PurePassive('MZParticulateHaze', "img:///UILibrary_XPACK_Common.PerkIcons.UIPerk_mountainmist", false ));
	//Templates.AddItem(PurePassive('MZSmellsLikeTeamSpirit', "img:///UILibrary_XPACK_Common.PerkIcons.strx_calmingpresence", false ));

	//new ones
	Templates.AddItem(PurePassive('MZViscousAccelerant',	"img:///UILibrary_RustyAlchemist.UIPerk_ViscousAccelerant", false ));
	Templates.AddItem(PurePassive('MZParticulateHaze',		"img:///UILibrary_PerkIcons.UIPerk_observer", false ));
	Templates.AddItem(PurePassive('MZSmellsLikeTeamSpirit',	"img:///UILibrary_RustyAlchemist.UIPerk_ShieldWings", false ));

	return Templates;
}

/*	PurePassive(name TemplateName, 
				optional string TemplateIconImage="img:///UILibrary_PerkIcons.UIPerk_standard", 
				optional bool bCrossClassEligible=false, 
				optional Name AbilitySourceName='eAbilitySource_Perk', 
				optional bool bDisplayInUI=true)
*/
