//*******************************************************************************************
//  FILE:   X2StrategyElement_RustyAlchemist_GTS                                   
//  
//	File created by RustyDios	24/11/19	11:00	
//	LAST UPDATED				24/03/20	09:00
//
//	Contains the setup required for the GTS unlock
//
//*******************************************************************************************

class X2StrategyElement_RustyAlchemist_GTS extends X2StrategyElement config (MZ_RD_AlchemistTweaks);

var config int	RDAlchemist_GTS1_RANK, RDAlchemist_GTS1_COST;
var config int	RDAlchemist_GTS2_RANK, RDAlchemist_GTS2_COST;

//add the GTS template
static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> Templates;

	Templates.AddItem(Create_MZRoaringFlamesUnlock());
	Templates.AddItem(Create_MZSearingMagnesiumUnlock());

	return Templates;
}

//create the GTS template
static function X2SoldierAbilityUnlockTemplate Create_MZRoaringFlamesUnlock()
{
	local X2SoldierAbilityUnlockTemplate	Template;
	local ArtifactCost						Resources;

	`CREATE_X2TEMPLATE(class'X2SoldierAbilityUnlockTemplate', Template, 'MZRoaringFlamesUnlock');

	Template.AllowedClasses.AddItem('RustyAlchemist');
	Template.AbilityName = 'MZRoaringFlames';
	Template.strImage = "img:///UILibrary_RustyAlchemist.RA_GTS1";

	//Requirements
	Template.Requirements.RequiredHighestSoldierRank = default.RDAlchemist_GTS1_RANK; // default 3 sgt
	Template.Requirements.RequiredSoldierClass = 'RustyAlchemist';
	Template.Requirements.RequiredSoldierRankClassCombo = true;
	Template.Requirements.bVisibleIfSoldierRankGatesNotMet = true;

	// Cost
	Resources.ItemTemplateName = 'Supplies';
	Resources.Quantity = default.RDAlchemist_GTS1_COST;	// default 50
	Template.Cost.ResourceCosts.AddItem(Resources);
	
	return Template;
}

static function X2SoldierAbilityUnlockTemplate Create_MZSearingMagnesiumUnlock()
{
	local X2SoldierAbilityUnlockTemplate	Template;
	local ArtifactCost						Resources;

	`CREATE_X2TEMPLATE(class'X2SoldierAbilityUnlockTemplate', Template, 'MZSearingMagnesiumUnlock');

	Template.AllowedClasses.AddItem('RustyAlchemist');
	Template.AbilityName = 'MZSearingMagnesium';
	Template.strImage = "img:///UILibrary_RustyAlchemist.RA_GTS2";

	//Requirements
	Template.Requirements.RequiredHighestSoldierRank = default.RDAlchemist_GTS2_RANK; // default 5 cpt
	Template.Requirements.RequiredSoldierClass = 'RustyAlchemist';
	Template.Requirements.RequiredSoldierRankClassCombo = true;
	Template.Requirements.bVisibleIfSoldierRankGatesNotMet = true;

	// Cost
	Resources.ItemTemplateName = 'Supplies';
	Resources.Quantity = default.RDAlchemist_GTS2_COST;	// default 100
	Template.Cost.ResourceCosts.AddItem(Resources);
	
	return Template;
}
