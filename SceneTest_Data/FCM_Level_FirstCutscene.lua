require("FCM_Utilities.lua");
require("FCM_AgentExtensions.lua");
require("FCM_Printing.lua");
require("Arizzble_Freecam_Tools.lua");
require("FCM_Development_AgentBrowser.lua");
require("FCM_Scene_PrepareLevel.lua");
require("FCM_Color.lua");

--main level variables
local kScript = "aabitest"; --dont touch (the name of this script and also the name of the level function at the bottom of the script, which will be called as soon as this scene opens)
local kScene = "adv_forestTile"; --dont touch (the name of the scene asset file)
local agent_name_scene = "adv_forestTile.scene"; --dont touch (this is the name of the scene agent object, using it to set post processing effects later)

--adv_nextTimeOnMC101
--adv_wilderness
--adv_creepyMansionGraveyard
--adv_creepyMansionSwampTile

--adv_templeHubInterior
--adv_templeHubNight
--adv_townFair
--adv_townFairDestroyed
--adv_wildernessMine
--adv_forestStage
--adv_forestTreehouse

--102
--adv_ellieCourtyard
--adv_ellieInterior
--adv_magnusCourtyard
--adv_forestStage101
--adv_sorenCourtyard
--adv_forestTile

--103
--adv_sorenValleyDestroyed
--adv_theEndMansion
--adv_theEndMansionLab
--adv_sorenInterior103
--adv_sorenGrinder
--adv_sorenPortalRoom


--104
--adv_biomeMontage
--adv_farlandsCottage
--adv_farlandsCottageBasement
--adv_farlandsMaze
--adv_farlandsMazeExterior
--adv_farlandsSwamp
--adv_forestCave
--adv_forestChasm

--105
--adv_jungleFortress
--adv_skylandTown
--adv_skylandTownDestroyed
--adv_skylandThroneRoomNight
--adv_skylandThroneRoom
--adv_skylandSpeakeasy
--adv_villagePyramidBeacon105
--adv_newWorld
--adv_orderHallTreasureRoom


--107
--adv_badlandsTownConstruct
--adv_previouslyOnMC107
--adv_previouslyOnJungleFortress105
--adv_portalHallway
--adv_previouslyOnOrderHallTreasureRoom105



--108
--adv_orderHallTreasureRoom108

--cutscene development variables variables (these are variables required by the development scripts)
Custom_CutsceneDev_SceneObject = kScene; --dont touch (the development scripts need to reference the main level)
Custom_CutsceneDev_SceneObjectAgentName = agent_name_scene; --dont touch (the development scripts also need to reference the name of the scene agent)
Custom_CutsceneDev_FreecamUseFOVScale = true; --changes the camera zooming from modifing the FOV directly, to modifying just the FOV scalar (only useful if for some reason the main field of view property is chorelocked or something like that)




--cutscene variables
local MODE_FREECAM = true; --enable freecam rather than the cutscene camera
local agent_name_cutsceneCamera = "myCutsceneCamera"; --cutscene camera agent name
local agent_name_cutsceneCameraParent = "myCutsceneCameraParent"; --cutscene camera parent agent name



aabitest = function()
    --Scene_RelightScene_Treehouse(kScene, agent_name_scene); --DO NOT TOUCH THIS BECAUSE IT WILL CRASHED MCSM S1
    --Scene_CleanUpOriginalScene(kScene); 
    --Scene_CleanUpOriginalScene101(kScene);
    --Scene_BetaScene106(kScene);
    --Scene_BetaScene101(kScene);
    --Scene_BetaScene101_nether(kScene);
    --Scene_CleanUpOriginalScene101AndPlayChoreForTest(kScene);
    --Scene_BetaScene106CleanUp(kScene);
    if (MODE_FREECAM == false) then
        do return end 
    end
    --==use these resources to create any props from episode to other episode if u like==--
    ResourceSetEnable("Project");
    --ResourceSetEnable("Minecraft101");
    --ResourceSetEnable("Minecraft102");
    --ResourceSetEnable("Minecraft103");
    --ResourceSetEnable("Minecraft104");
    --ResourceSetEnable("Minecraft105"); 
    --ResourceSetEnable("Minecraft106"); 
    --ResourceSetEnable("Minecraft107"); 
    --ResourceSetEnable("Minecraft108"); 

    --==SOME FUNCTIONS EXAMPLES==--
    --toliet = AgentCreate("Toliet", "ui_boot_title.prop", Vector(0, 0, 0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    --ShaderSwapTexture(toliet, "ui_boot_title.d3dtx", "toilethead.d3dtx");

    --aiden = AgentCreate("Aiden", "skM1_aiden.prop", Vector(0, 0, 0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    --AgentCreate("SwordDiamond", "obj_swordDiamond.prop", Vector(0, 0, 0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    
    --AgentCreate("Lukas", "skM1_lukas.prop", Vector(0, 0, 0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);

    --captian = AgentCreate("castleGuard","skM1_castleGuard2.prop", Vector(0, 0, 0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    --ShaderSwapTexture(aiden, "skM1_aiden.d3dtx", "skM1_aidenMasked.d3dtx");

    --AgentCreate("Gabriel", "skM1_gabriel.prop", Vector(0, 0, 0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    --AgentCreate("Ellie", "skM1_ellie.prop", Vector(0, 0, 0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    --AgentCreate("Soren", "skM1_soren.prop", Vector(0, 0, 0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    --AgentCreate("Magnus", "skM1_magnus.prop", Vector(0, 0, 0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    
    --PropertyRemove("cam_")
    --AgentSetProperty("obj_mountainEntranceForestTileA", "Runtime: Visible", true);
    --AgentSetProperty("obj_mountainSorenForestTileA", "Runtime: Visible", false);
    --AgentSetProperty("obj_mountainSorenForestTileB", "Runtime: Visible", false);
    --AgentSetProperty("obj_mountainSorenForestTileC", "Runtime: Visible", false);

    --== SIMPLE PROP EXAMPLE ==--
    --AgentCreate("StandArmor", "obj_standArmor.prop", Vector(0, 0, 0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    --local chorecontroller = ChorePlay("skM1_action_gabrielEllieSorenMagnusExitPortal");
    --ControllerSetLooping(chorecontroller, true);

    --local chorecam = "cam_cutscene.prop"
    --ChoreRemoveAgent("env_forestStage_cs_building_1", chorecam)
    --ChoreRemoveAgent("env_forestStage_cs_building_1", "cam_nav.prop")
    --ChoreRemoveAgent("env_forestStage_cs_building_1", "cam_pan.prop")
    --ChoreRemoveAgent("env_forestStage_cs_building_1", "cam_station.prop")
    --module_nav_cam
    

   --==UNUSED CHORES==--
   --skM1_action_jesseCatchesOtisHumanLadder
   --skM1_action_otisClimbsOnJesseShoulders
   --skM1_action_otisFallsInMineCart
   --skM1_action_otisJumpsUpFromMineCart
   --skM1_action_otisRunsOffWithReuben
   --skM1_action_otisSavesReubenFromFalling
   --skM1_action_otisStartsToClimbUpMineCart
   --skM1_action_otisThrowsReubenToJesse
   --skM1_idle_lukasJesseOtisOnShoulders
   --skM1_idle_lukasJesseOtisReubenOnShoulders
   --skM1_action_oliviaPunchesAxelInStomach

    --Custom_PrintSceneListToTXT(kScene, "soren.txt");

    --create our free camera and our cutscene dev tools
    Arizzble_FreecamTools_CreateFreeCamera(); --IMPORTANT
    --Custom_CutsceneDev_InitalizeCutsceneTools(); --IT WORK, BUT IT CAN BROKE MY FREECAM TOOLS
    Callback_OnPostUpdate:Add(Arizzble_FreecamTools_UpdateFreeCamera); --IMPORTANT
    --Callback_OnPostUpdate:Add(Arizzble_FreecamTools_UpdateFreeCamera_Old); --DOSENT WORKS
    --Callback_OnPostUpdate:Add(Custom_CutsceneDev_UpdateCutsceneTools_Input); --WIP (DONT TOUCH)
    --Callback_OnPostUpdate:Add(Custom_CutsceneDev_UpdateCutsceneTools_Main); --WIP (DONT TOUCH)
    --Callback_OnPostUpdate:Add(PlayerMoveTest); --JESSE MOVEABLE TEST
    --Custom_RemovingAgentsWithPrefix(kScene, "cam_") --DOESNT WORK
end



--JESSE MOVE TEST: IF CUSTOM DOSENT WORK THEN, USE ORGINIAL INPUTS FUNCTION (DO NOT TOUCH)
PlayerMoveTest = function()

  if Input_IsVKeyPressed(37) then --left arrow key
   TempPos = AgentGetPos("Jesse");
    TempPos.x = TempPos.x + 0.1;
    AgentSetPos("Jesse", TempPos, Custom_CutsceneDev_SceneObject);
  end

  if Input_IsVKeyPressed(39) then --right arrow key
   TempPos = AgentGetPos("Jesse");
    TempPos.x = TempPos.x - 0.1;
    AgentSetPos("Jesse", TempPos, Custom_CutsceneDev_SceneObject);
  end

  if Input_IsVKeyPressed(38) then --up arrow key
   TempPos = AgentGetPos("Jesse");
    TempPos.z = TempPos.z + 0.1;
    AgentSetPos("Jesse", TempPos, Custom_CutsceneDev_SceneObject);
  end

  if Input_IsVKeyPressed(40) then --down arrow key
   TempPos = AgentGetPos("Jesse");
    TempPos.z = TempPos.z - 0.1;
    AgentSetPos("Jesse", TempPos, Custom_CutsceneDev_SceneObject);
  end

  if Input_IsVKeyPressed(67) then --c key
   TempPos = AgentGetPos("Jesse");
    TempPos.y = TempPos.y + 0.1;
    AgentSetPos("Jesse", TempPos, Custom_CutsceneDev_SceneObject);
  end

  if Input_IsVKeyPressed(86) then --v key
   TempPos = AgentGetPos("Jesse");
    TempPos.y = TempPos.y - 0.1;
    AgentSetPos("Jesse", TempPos, Custom_CutsceneDev_SceneObject);
  end
  ----------------rotote
  if Input_IsVKeyPressed(74) then --left arrow key
   TempRot = AgentGetRot("Jesse");
    TempRot.z = TempRot.z + 0.01;
    AgentSetRot("Jesse", TempRot, Custom_CutsceneDev_SceneObject);
  end

  if Input_IsVKeyPressed(76) then --right arrow key
   TempRot = AgentGetRot("Jesse");
    TempRot.z = TempRot.z - 0.01;
    AgentSetRot("Jesse", TempRot, Custom_CutsceneDev_SceneObject);
  end

  if Input_IsVKeyPressed(73) then --up arrow key
   TempRot = AgentGetRot("Jesse");
    TempRot.y = TempRot.y + 0.01;
    AgentSetRot("Jesse", TempRot, Custom_CutsceneDev_SceneObject);
  end

  if Input_IsVKeyPressed(75) then --down arrow key
   TempRot = AgentGetRot("Jesse");
    TempRot.y = TempRot.y - 0.01;
    AgentSetRot("Jesse", TempRot, Custom_CutsceneDev_SceneObject);
  end
  --ROTATION POS RESET (CBA)
  if Input_IsVKeyPressed(101) then --5 num key
    RotReset = Vector(0,0,0) 
    AgentSetRot("Jesse", RotReset, Custom_CutsceneDev_SceneObject);
  end
end

--open the scene with this script
SceneOpen(kScene, kScript);