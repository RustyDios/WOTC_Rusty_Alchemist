You created an XCOM 2 Mod Project!

Yeay, Another mod created!
This mod adds a class that specialises in using Mitruti's chemthrowers Immolator/Cryolator + puts the RPGO specialisations into a combined standard class

Required mods;
https://steamcommunity.com/sharedfiles/filedetails/?id=1918448514 Immolator + Chemthrower mod
https://steamcommunity.com/sharedfiles/filedetails/?id=1124609091 NPSBD
https://steamcommunity.com/sharedfiles/filedetails/?id=1134256495 CHL
https://steamcommunity.com/sharedfiles/filedetails/?id=1891339003 Bitterfrost Protocol (bonus weapons)
https://steamcommunity.com/sharedfiles/filedetails/?id=1965050975 Chemthrower Addons (bonus weapons)

============
List of files / purpose
============
 XComEditor, XComEngine, XComGame	default DLC files
 XComClassData, xcomclassdata_abb	contains all data for class, optional swapfile for ABB/roulette
 XComEncyclodepia					contains data required for captains quarters
 XComGameData						contains loadout, AWC exclusion, debug option and BOOST TO FORTRESS immunities
 XComStrategyTuning					contains cost and rank values for GTS unlock
 XComPromotionUIMod					contains custom ability deck costs

 XComMZ_RD_AlchemistTweaks			config options for this mod
 XComMZAmmoMod, XComMZChemthrower	contains changes to the cone shape of the Immolator and Cryolator

 UILibrary_RustyAlchemist			GTS Slide, Class Icon, Ability Icons
 XComGame.int						Localisation edits

 UIStrategyScreenListener_RustyAlchemist_GTS	Adds the GTS template/icon to the screen
 X2StrategyElement_RustyAlchemist_GTS			Adds the GTS template to the GTS!
 X2Ability_RustyAlchemist_ChemPassiveIconSwap	swaps some icons from the chemthrower mod for ones I think 'fit' better
 X2 DLC Info									swaps some ability icons for perks, makes fumigate and medispray non turn ending, adds checks for ammo, sets up ability tags

XComAbilityToSlotReassignment, XComPistolSlot   Tweaks for Dedicated Pistol Slot

==================================================================================
STEAM DESC		https://steamcommunity.com/sharedfiles/filedetails/?id=1922770319
==================================================================================
This is a class mod designed around using [i]Mitzruti's Immolator & Chemthrower abilities[/i] and puts the four RPGO Specialisations within that mod into a standard class.

[b] I highly advise that the required mods be subbed to first. [/b]

[h1]===== Class Description =====[/h1]
The Alchemist has a love for mixing mundane chemicals to create wide-spreading effects. They have trained in the use of Chemthrowers and can often move into the best positions to use them. Khemians are masters of offensive toxic mixtures. Elixars are masters of tonic remedies to cure every affliction. Omniums enjoy using canisters and create unique effects.

[h1]===== Weapon Use =====[/h1]
[b]Primary Weapon;[/b] Chemthrowers
[b]Secondary Weapon;[/b] Canisters, Grenade Launchers and/or Rocket Launchers

[url=https://steamcommunity.com/sharedfiles/filedetails/?id=1775963384] Iridars Rocket Launchers [/url] are included for mod support but not a requirement.

The class/weapon does not benefit from 'Hot Load Ammo' and I have limited the class from equipping ammo. Other classes that can use the weapon are not ammo limited, but take note that ammo does not affect the Chemthrower weapon type.

I strongly recommend these mods to give this class an alternative elemental attack/weapon, above and beyond what the canisters do;
[url=https://steamcommunity.com/sharedfiles/filedetails/?id=1891339003] Bitterfrost Protocol [/url]
[url=https://steamcommunity.com/sharedfiles/filedetails/?id=1965050975] Rusty's Chemthrower Addons [/url]

[url=https://steamcommunity.com/sharedfiles/filedetails/?id=1705464884] Dedicated Pistol Slot [/url] Mod support included allowing pistols and canisters in the tertiary slot.

[h1]===== Armour Use =====[/h1]
They can use any standard soldier armour, the TLP Grenadier cosmetics and Skirmisher armours. 
I'd also suggest the [url=https://steamcommunity.com/sharedfiles/filedetails/?id=1892845191] Purifier Armour [/url] cosmetic mod.

[h1]===== Abilities/Perks =====[/h1]
[url=https://steamcommunity.com/workshop/filedetails/discussion/1922770319/4009846212728646050/] See the discussions below[/url]

[h1]===== Stat Growth per Rank =====[/h1]
[url=https://steamcommunity.com/workshop/filedetails/discussion/1922770319/4009846212728646050/] See the discussions below[/url]

[h1]===== Bonds =====[/h1]
They can form bonds like any other soldier but may have odd interactions with the 'Dual Strike' ability. Their default favoured class is Grenadiers.

I also included support for SPARKS, LWOTC Grenadiers/Technicals and Proficiency Sappers if you have mods that support those classes, like these;
[url=https://steamcommunity.com/sharedfiles/filedetails/?id=1128718069] SPARKS can Bond[/url], [url=https://steamcommunity.com/sharedfiles/filedetails/?id=1335226018] LWOTC Classes Pack[/url], [url=https://steamcommunity.com/sharedfiles/filedetails/?id=1265143828] Proficiency Class Pack[/url]

[h1]===== Bonus Stuff =====[/h1]
I made standard game Fortress grant immunity to every type of elemental damage. You can revert this change in the config files (XComGameData), just comment out/remove the extra lines. 

By default the mod makes the Immolator and Cryolator have a slighter wider spread, I found this to be much better whilst testing the class. I also make Fumigate and Medispray not turn ending.
I make a change that chemthrower attacks do not give a friendly fire warning, this can be toggled in the config files.

[b]Most values are changeable in the config files.[/b]

[h1]===== Known Issues/Conflicts =====[/h1][list]
[*]  [url=https://steamcommunity.com/sharedfiles/filedetails/?id=1171964288] Configure Upgrade Slots [/url]. [strike] This mod will mean that you will not be able to attach 'normal' weapon upgrades to chemthrowers, they can use the special made attachments instead. [/strike] Allowed attachments for chemthrowers have now changed, making this issue obsolete.

[*] Special Chemthrower attacks (like Fumigate, Medispray and Fulmination) all take their cone sizes from the 'Immolator' config, if you use other chemthrowers the cone might not match

[*] Sometimes visualization of some chemthrower abilities glitches out, they still work functionally but don't display a stream jet. Mostly prevalent with canister activations.

[*] Any soldiers made [i]before the 24 March 2020[/i] Update will need to be rebuilt to gain the new tree. I suggest using the RebuildSelectedSoldiersClass command found in [url=https://steamcommunity.com/sharedfiles/filedetails/?id=1370543410] Additional Console Commands [/url]

[*] [url=https://steamcommunity.com/sharedfiles/filedetails/?id=2133397762] Ability To Slot Reassignment [/url] Config file for this mod fixes up the Launch Grenade ability to only appear if the soldier has a Grenade Launcher, however it also currently has a minor UI issue that creates 'double abilities' on the HUD. These abilities share the same charges/use/grenade ammo and do not effect actual gameplay.
[/list]

[h1]===== FAQ's =====[/h1]
[b]It's pointless/not required in RPGO[/b] 
Sorry, not happening for Vanilla/LW2

[h1]===== Credits and Thanks =====[/h1]
Mitzruti for creating the mod that gave me the inspiration to put this together.
Iridar and RealityMachina whose code I borrowed/studied for the ammo lockout.
Shiremct for the Proficiency Class Packs I learned so much from.
The XCOM2 Modders discord for continual support.

Has some icons from [url=https://steamcommunity.com/sharedfiles/filedetails/?id=1557951815] Ketaros's Pack [/url], other imagery provided by NelVlesis.

This is my first modded class, I hope you find it well constructed and balanced to play with.

~ Enjoy [b]!![/b] and please [url=https://www.buymeacoffee.com/RustyDios] buy me a Cuppa Tea[/url]
====================================================
Most of the classes abilities are from Mitruti's mod, I just put them into a standard class format, added some GTS options, sprinkled with a bit of icon swaps. See the screenshots for abilities or read Mitzruti's mods description/discussion.

Alchemists have access to a limited XCOM tree focusing mainly around Grenade abilities and consisting of;
Phantom, Field Medic, Volatile Mix, Blast Padding, Heavy Ordnance, Total Combat, Lightning Reflexes, Implacable, Untouchable, Ever Vigilant, Salvo, Expanded Canister, Chemical Deflector and Desolate Homeland.

They also have the chance to get either Phase Walk or Null Ward from the More Psi mod if you have [url=https://steamcommunity.com/sharedfiles/filedetails/?id=1662114279] Iridars More Psi Abilities [/url].
If you do not have that mod and the game rolls these abilities they will just become blank entries on the XCOM tree.

[table]
[tr][th][/th][th] Khemians [/th][th] Elixars [/th][th] Omniums [/th][th] GTS Unlock [/th][/tr]
[tr][th] SQD [/th][td] Viscous Accelerant [/td][td] Fine Control [/td][td] Roving Chemist [/td][td] -- [/td][/tr]
[tr][th] CPL [/th][td] Cross Combatiblity [/td][td] Fumigate [/td][td] Chemical Suppression [/td][td] -- [/td][/tr]
[tr][th] SGT [/th][td] Corroding Compounds [/td][td] Medispray [/td][td] Specialized Countermeasures [/td][td] Roaring Flames [/td][/tr]
[tr][th] LTN [/th][td] Particulate Haze [/td][td] Incandescence [/td][td] Pressure Blast [/td][td] -- [/td][/tr]
[tr][th] CPT [/th][td] Fulmination [/td][td] Thermal Bulwark [/td][td] Burning Rush [/td][td] Searing Magnesium [/td][/tr]
[tr][th] MAJ [/th][td] Nightmare Fuel [/td][td] Team Spirit [/td][td] Opressive Heat [/td][td] -- [/td][/tr]
[tr][th] COL [/th][td] Chemical Storm [/td][td] Fortress [/td][td] Valley of Death [/td][td] -- [/td][/tr]
[/table]

[table]
[tr][th][/th][th] HP [/th][th] AIM[/th][th] WILL [/th][th] STR [/th][th] DODGE [/th][th] MOBILITY [/th][/tr]
[tr][th] SQD [/th][td] 2 [/td][td] 2 [/td][td] 5 [/td][td] 0 [/td][td] 2 [/td][td] 2 [/td][/tr]
[tr][th] CPL [/th][td] 1 [/td][td] 3 [/td][td] 2 [/td][td] 1 [/td][td] 2 [/td][td] 0 [/td][/tr]
[tr][th] SGT [/th][td] 1 [/td][td] 3 [/td][td] 2 [/td][td] 1 [/td][td] 2 [/td][td] 2 [/td][/tr]
[tr][th] LTN [/th][td] 2 [/td][td] 3 [/td][td] 5 [/td][td] 0 [/td][td] 2 [/td][td] 0 [/td][/tr]
[tr][th] CPT [/th][td] 1 [/td][td] 3 [/td][td] 1 [/td][td] 1 [/td][td] 2 [/td][td] 2 [/td][/tr]
[tr][th] MAJ [/th][td] 2 [/td][td] 3 [/td][td] 4 [/td][td] 1 [/td][td] 5 [/td][td] 0 [/td][/tr]
[tr][th] COL [/th][td] 1 [/td][td] 3 [/td][td] 5 [/td][td] 1 [/td][td] 5 [/td][td] 2 [/td][/tr]
[tr][th]Total[/th][td] 10 [/td][td] 20 [/td][td] 25 [/td][td] 5 [/td][td] 20 [/td][td] 8 [/td][/tr]
[/table]

This is designed to make them strong, resilient and highly mobile. They might often need to run around and in close to get the best use of the Chemthrower's cone shaped spread. 

Hidden Potential is included set at 0-1 HP,0-5 aim, 0-3 Will, 0-1 Dodge, 0-1 Mobility per rank increase.
=============================================================================================================

UILibrary_RustyAlchemist.Alchemist_Class_Icon
UILibrary_RustyAlchemist.Alchemist_Class_Icon_Coloured
UILibrary_RustyAlchemist.Alchemist_Class_Icon_NelVlesis
UILibrary_RustyAlchemist.Alchemist_Class_Icon_New
UILibrary_RustyAlchemist.RA_GTS1
UILibrary_RustyAlchemist.RA_GTS2
UILibrary_RustyAlchemist.UIPerk_RoaringFlames
UILibrary_RustyAlchemist.UIPerk_SearingMagnesium
UILibrary_RustyAlchemist.UIPerk_ShieldWings
UILibrary_RustyAlchemist.UIPerk_ViscousAccelerant
