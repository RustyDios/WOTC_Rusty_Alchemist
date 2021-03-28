//*******************************************************************************************
//  FILE:   XComDownloadableContentInfo_WOTCRustyAlchemist                                    
//  
//	File created by RustyDios	24/11/19	02:45
//	LAST UPDATED				16/02/21	02:45
//
//	X2 DLC Info for my alchemist class
//
//*******************************************************************************************

class X2DownloadableContentInfo_WOTCRustyAlchemist extends X2DownloadableContentInfo config (MZ_RD_AlchemistTweaks);

// var config stuffs 
//Grab the chemthrower attacks list FROM Mitzruti's mod
var config array<name> ChemthrowerAttacks;

var config bool bCHEMTHROWERS_HAVE_FFW, bAlchemistAmmoLockout;

/// Called on new campaign while this DLC / Mod is installed
static event InstallNewCampaign(XComGameState StartState){}		//empty_func

/// Called on first time load game if not already installed	
static event OnLoadedSavedGame(){}								//empty_func

//*******************************************************************************************
//		OPTC code 
//*******************************************************************************************

static event OnPostTemplatesCreated()
{
	local X2AbilityTemplateManager		AllAbilities;			//holder for all abilities
	local X2AbilityTemplate				CurrentAbility;			//current thing to focus on
	local int i;

	//Grab the distinct template managers(lists) to search through
	AllAbilities     = class'X2AbilityTemplateManager'.static.GetAbilityTemplateManager();

	//Grab the chemthrower attacks list
	//ChemthrowerAttacks = class'X2Ability_Immolator'.default.ChemthrowerAttacks;

	//*****************************************
	//	Change some ability icons - see also the passive thing
	//*****************************************

	SwapAbilityIcon(AllAbilities.FindAbilityTemplate('MZSearingMagnesium'), 	"UILibrary_RustyAlchemist.UIPerk_SearingMagnesium");	//gts 2
	SwapAbilityIcon(AllAbilities.FindAbilityTemplate('MZRoaringFlames'), 		"UILibrary_RustyAlchemist.UIPerk_RoaringFlames");		//gts 1
	SwapAbilityIcon(AllAbilities.FindAbilityTemplate('MZDissonantEnergies'), 	"UILibrary_PerkIcons.UIPerk_clusterbomb");

	//**************************************************
	//	Switch Off Friendly Fire Warning for Chemthrower Attacks 
	//	couldn't figure out how to check if Unit has Fine Control
	//**************************************************

	//chemthrower attacks pulled from the ! combined ! .ini files... nope
	//manually created list in the config of this mod
	//default.ChemthrowerAttacks = class'X2Ability_Immolator'.default.ChemthrowerAttacks;

	for (i=0; i <= default.ChemthrowerAttacks.Length ; ++i )
	{
		CurrentAbility = AllAbilities.FindAbilityTemplate(default.ChemthrowerAttacks[i]);
		if (CurrentAbility != none)
		{
			//AbilityCondition = new class'X2Condition_AbilityProperty';
			//AbilityCondition.OwnerHasSoldierAbilities.AddItem('MZFineControl');
			CurrentAbility.bFriendlyFireWarning = default.bCHEMTHROWERS_HAVE_FFW;
		}
	}

	AddAlchemistGTSUnlocks();

	//end OPTC
}

//*******************************************************************************************
//	Adds item inventory checks for Alchemist + Ammo
//	Code adapted from Reality Machina's Metal Over Flesh mod
//*******************************************************************************************

static function bool CanAddItemToInventory_CH(out int bCanAddItem, const EInventorySlot Slot, const X2ItemTemplate ItemTemplate, int Quantity, XComGameState_Unit UnitState, optional XComGameState CheckGameState, optional out string DisabledReason)
{
	local XGParamTag		LocTag;
	local X2AmmoTemplate	Ammo;

	Ammo = X2AmmoTemplate(ItemTemplate);

	//DisabledReason = "";
	if(CheckGameState != none)
	{
		return CanAddItemToInventory(bCanAddItem, Slot, ItemTemplate, Quantity, UnitState, CheckGameState);
	}

	if(CheckGameState == none && UnitState.GetSoldierClassTemplateName() == 'RustyAlchemist' && Ammo != none && default.bAlchemistAmmoLockout) //only do this check for our Ammo on Alchemists
	{
		LocTag = XGParamTag(`XEXPANDCONTEXT.FindTag("XGParam"));
		//LocTag.StrValue0 = class'X2SoldierClassTemplateManager'.static.GetSoldierClassTemplateManager().FindSoldierClassTemplate('RustyAlchemist').DisplayName;
		//DisabledReason = class'UIUtilities_Text'.static.CapsCheckForGermanScharfesS(`XEXPAND.ExpandString(class'UIArmory_Loadout'.default.m_strUnavailableToClass));
		LocTag.StrValue0 = UnitState.GetPrimaryWeapon().GetMyTemplate().FriendlyName;
		DisabledReason = class'UIUtilities_Text'.static.CapsCheckForGermanScharfesS(`XEXPAND.ExpandString(class'UIArmory_Loadout'.default.m_strAmmoIncompatible));
		//m_strAmmoIncompatible=AMMO NOT COMPATIBLE WITH <XGParam:StrValue0/!WeaponName/>
		return false; //return false to give our disabled reason;
	}

	return true; //return true as a fallback or if we got nothing to do with the item
}

static function bool CanAddItemToInventory(out int bCanAddItem, const EInventorySlot Slot, const X2ItemTemplate ItemTemplate, int Quantity, XComGameState_Unit UnitState, XComGameState CheckGameState)
{
	local X2AmmoTemplate Ammo;

	Ammo = X2AmmoTemplate(ItemTemplate);

	if(UnitState.GetSoldierClassTemplateName() == 'RustyAlchemist' && Ammo != none && default.bAlchemistAmmoLockout) //is ammo item and is for a Alchemist
	{
		bCanAddItem = 0;
		return true; //we set this to true so ammo return false for Alchemists
	}

	return false;
}

//*******************************************************************************************
//	Swaps ability icons, and refreshes them to display if they have a persistent passive effect
//*******************************************************************************************
static function	SwapAbilityIcon(X2AbilityTemplate Template, string ImagePath, bool bShowPassive = true)
{
	local X2Effect						TempEffect;				//placeholder for Effects
	local X2Effect_Persistent			Per_Effect;				//effect type to edit

	if (Template != none)
	{
		Template.IconImage = "img:///" $ImagePath ;
		Template.AbilitySourceName = 'eAbilitySource_Perk';

		//overide the original display and refresh the icon
		foreach Template.AbilityTargetEffects( TempEffect ) 
		{
			if (X2Effect_Persistent	(TempEffect) != none)
			{
				Per_Effect = X2Effect_Persistent(TempEffect);
				Per_Effect.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyHelpText(), Template.IconImage,bShowPassive,,Template.AbilitySourceName);
			}
		}

		foreach Template.AbilityShooterEffects( TempEffect ) 
		{
			if (X2Effect_Persistent	(TempEffect) != none)
			{
				Per_Effect = X2Effect_Persistent(TempEffect);
				Per_Effect.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyHelpText(), Template.IconImage,bShowPassive,,Template.AbilitySourceName);
			}
		}
	}
}

//*******************************************************************************************
//	Adds GTS Purchases for Alchemist 
//	code adapted from Iridar and HotBlodded via discord
//*******************************************************************************************
static function AddAlchemistGTSUnlocks()
{
	local X2StrategyElementTemplateManager	TemplateManager;
	local X2FacilityTemplate				Template;
	local array<name>						SoldierUnlocks;
	local name								SoldierUnlock;

	//Karen!!
	TemplateManager = class'X2StrategyElementTemplateManager'.static.GetStrategyElementTemplateManager();

	//create the 'to add' array
	SoldierUnlocks.AddItem('MZRoaringFlamesUnlock');
	SoldierUnlocks.AddItem('MZSearingMagnesiumUnlock');

	//if the facility exists ... 
	Template = X2FacilityTemplate(TemplateManager.FindStrategyElementTemplate('OfficerTrainingSchool'));
	if (Template != none)
	{
		foreach SoldierUnlocks(SoldierUnlock)
		{
			//and we can't find the template ... add it
			if (Template.SoldierUnlockTemplates.Find(SoldierUnlock) == INDEX_NONE)
			{
				Template.SoldierUnlockTemplates.AddItem(SoldierUnlock);
			}
		}
	}
}
