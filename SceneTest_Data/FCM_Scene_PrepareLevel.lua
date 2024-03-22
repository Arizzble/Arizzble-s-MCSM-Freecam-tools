Scene_CleanUpOriginalScene = function(kScene)
    --bulk remove all of the following assets
    Custom_RemovingAgentsWithPrefix(kScene, "light_CHAR_CC"); --character light objects
    Custom_RemovingAgentsWithPrefix(kScene, "lightrig"); --character light rigs
    Custom_RemovingAgentsWithPrefix(kScene, "fx_"); --particle effects
    Custom_RemovingAgentsWithPrefix(kScene, "fxg_"); --particle effects
    Custom_RemovingAgentsWithPrefix(kScene, "fxGroup_"); --particle effects groups
    Custom_RemovingAgentsWithPrefix(kScene, "light_point"); --scene point lights
    Custom_RemovingAgentsWithPrefix(kScene, "templateRig"); --template light rigs
    Custom_RemovingAgentsWithPrefix(kScene, "charLightComposer"); --light composers
    Custom_RemovingAgentsWithPrefix(kScene, "adv_");
    Custom_RemovingAgentsWithPrefix(kScene, "obj_");   
    --get all agents within the scene
    local scene_agents = SceneGetAgents(kScene);

    --loop through all agents inside the scene
    for i, agent_object in pairs(scene_agents) do
        --get the name of the current agent item that we are on in the loop
        local agent_name = tostring(AgentGetName(agent_object));

        --if the name of the agent has an adv_ prefix then its a level mesh, so remove it
        --if the name of the agent has an obj_ prefix then it is an object (ocassionaly a mesh but sometimes its something else like look at targets), so remove it.
        if string.match(agent_name, "adv_") or string.match(agent_name, "obj_") then
            --make sure that the current agent that we are deleting is not a skybox, we will need it
            if not (agent_name == "obj_skydomeTruckStopExterior") then
                Custom_RemoveAgent(agent_name, kScene);
            end
        end
    end
end

Scene_CleanUpOriginalScene101 = function(kScene)
    AgentDestroy("adv_forestTreehouse_meshesAFoliageGrass");
    AgentDestroy("adv_forestTreehouse_meshesAFoliageTrees");
    AgentDestroy("adv_forestTreehouse_meshesAFoliageTreesFlats");
    AgentDestroy("adv_forestTreehouse_meshesBFoliageGrass");
    AgentDestroy("adv_forestTreehouse_meshesBFoliageTreesFlats");
    AgentDestroy("adv_forestTreehouse_meshesCFoliageTrees");
    AgentDestroy("adv_forestTreehouse_meshesB");
    AgentDestroy("adv_forestTreehouse_meshesC");
    AgentDestroy("adv_forestTreehouse_meshesD");
    AgentDestroy("adv_forestTreehouse_meshesA");
    AgentDestroy("obj_treehouseForestTreehouseA");
    AgentDestroy("obj_treehouseForestTreehouseB");
    AgentDestroy("obj_treehouseForestTreehouseC");
    AgentDestroy("obj_treehouseForestTreehouseD");
    AgentDestroy("obj_treehouseForestTreehouseE");
    AgentDestroy("obj_treehouseForestTreehouseF");
    AgentDestroy("obj_mountainMatteForestTreehouse");
    AgentDestroy("obj_skydomeDayForestStage");
    AgentDestroy("obj_treehouseForestStage_foliageA");
    AgentDestroy("obj_treeForestTreehouseB");
    AgentDestroy("obj_treeForestTreehouseB02");
    AgentDestroy("obj_treeForestTreehouseB03");
    AgentDestroy("obj_treeForestTreehouseB04");
    AgentDestroy("obj_treeForestTreehouseB05");
    AgentDestroy("adv_forestTreehouse_meshesBFoliageTrees");
    
    local tile_group = AgentCreate("env_tile", "group.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);

    local tile2 = AgentCreate("env_tile2", "adv_orderTemple_meshesA.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    local tile3 = AgentCreate("env_tile3", "adv_orderTemple_meshesB.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    local tile4 = AgentCreate("env_tile4", "adv_orderTemple_meshesC.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    local tile5 = AgentCreate("env_tile5", "adv_orderTemple_meshesD.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    local tile6 = AgentCreate("env_tile6", "adv_orderTemple_meshesAFoliageGrass.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    local tile7 = AgentCreate("env_tile7", "adv_orderTemple_meshesBFoliageGrass.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    local tile8 = AgentCreate("env_tile8", "adv_orderTempleMountainsA.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    local tile9 = AgentCreate("env_tile9", "adv_orderTempleMountainsB.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    local tile10 = AgentCreate("env_tile10", "obj_cloudsOrderTempleA.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    local tile11 = AgentCreate("env_tile11", "obj_orderTemple_gardenA.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    local tile12 = AgentCreate("env_tile12", "obj_orderTemple_gardenB.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    local tile13 = AgentCreate("env_tile13", "obj_orderTemple_gardenC.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    local tile14 = AgentCreate("env_tile14", "obj_orderTemple_gardenD.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    local tile15 = AgentCreate("env_tile15", "obj_orderTemple_gardenE.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    local tile16 = AgentCreate("env_tile16", "obj_orderTemple_meshesAFoliageTrees.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    local tile17 = AgentCreate("env_tile17", "obj_orderTemple_meshesBFoliageTrees.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    local tile18 = AgentCreate("env_tile18", "obj_orderTemple_walkwaysA.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    local tile19 = AgentCreate("env_tile19", "obj_orderTemple_walkwaysB.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    local tile20 = AgentCreate("env_tile20", "obj_orderTempleWingA.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    local tile21 = AgentCreate("env_tile21", "obj_orderTempleWingB.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    local tile22 = AgentCreate("env_tile22", "obj_orderTempleWingC.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    local tile23 = AgentCreate("env_tile23", "obj_orderTempleWingD.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);


    AgentAttach(tile2, tile_group);
    AgentAttach(tile3, tile_group);
    AgentAttach(tile4, tile_group);
    AgentAttach(tile5, tile_group);
    AgentAttach(tile6, tile_group);
    AgentAttach(tile7, tile_group);
    AgentAttach(tile8, tile_group);
    AgentAttach(tile9, tile_group);
    AgentAttach(tile10, tile_group);
    AgentAttach(tile11, tile_group);
    AgentAttach(tile12, tile_group);
    AgentAttach(tile13, tile_group);
    AgentAttach(tile14, tile_group);
    AgentAttach(tile15, tile_group);
    AgentAttach(tile16, tile_group);
    AgentAttach(tile17, tile_group);
    AgentAttach(tile18, tile_group);
    AgentAttach(tile19, tile_group);
    AgentAttach(tile20, tile_group);
    AgentAttach(tile21, tile_group);
    AgentAttach(tile22, tile_group);
    AgentAttach(tile23, tile_group);

end

Scene_BetaScene106 = function(kScene)   
    local tile_group = AgentCreate("env_tile", "group.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);

    --local tile2 = AgentCreate("env_tile2", "adv_orderTemple_meshesA.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    --local tile3 = AgentCreate("env_tile3", "adv_orderTemple_meshesB.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    local tile4 = AgentCreate("env_tile4", "adv_creepyMansionInteriorChase_meshesE.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    local tile5 = AgentCreate("env_tile5", "adv_creepyMansionInteriorChase_meshesEFoliageTrees.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    local tile6 = AgentCreate("env_tile6", "adv_creepyMansionInteriorChase_meshesF.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);

    AgentAttach(tile2, tile_group);
    AgentAttach(tile3, tile_group);
    AgentAttach(tile4, tile_group);
    AgentAttach(tile5, tile_group);
    AgentAttach(tile6, tile_group);

end


Scene_BetaScene101_nether = function(kScene)   
    local tile_group = AgentCreate("env_tile", "group.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);

    local tile2 = AgentCreate("env_tile2", "adv_townFairHallBackstage_MeshesA.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    local tile3 = AgentCreate("env_tile3", "adv_townFairHallBackstage_MeshesB.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    local tile4 = AgentCreate("env_tile4", "adv_townFairHallBackstage_MeshesC.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    local tile5 = AgentCreate("env_tile5", "adv_townFairHallBackstage_MeshesD.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    local tile6 = AgentCreate("env_tile6", "adv_townFairHallBackstage_MeshesE.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    local tile7 = AgentCreate("env_tile7", "adv_townFairHallBackstage_MeshesF.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    local tile8 = AgentCreate("env_tile8", "adv_townFairHallBackstage_meshesG.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    local tile9 = AgentCreate("env_tile9", "adv_townFairHallBackstage_meshesI.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    local tile10 = AgentCreate("env_tile10", "adv_townFairHallBackstage_meshesJ.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    local tile11 = AgentCreate("env_tile11", "adv_townFairHallBackstage_meshesK.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    local tile12 = AgentCreate("env_tile12", "adv_townFairHallBackstage_meshesH.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    --local tile13 = AgentCreate("env_tile13", "adv_badlandsMaze_meshesI.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    --local tile14 = AgentCreate("env_tile14", "adv_badlandsTown_meshesA.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    --local tile15 = AgentCreate("env_tile15", "obj_doorHiddenTempleHub103.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    --local tile16 = AgentCreate("env_tile16", "obj_mineCartTempleHub103.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    --local tile17 = AgentCreate("env_tile17", "obj_minecartTrackStraightTempleHub103.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    --local tile18 = AgentCreate("env_tile18", "obj_obstacleTempleHub103A.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    --local tile19 = AgentCreate("env_tile19", "obj_obstacleTempleHub103B.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    --local tile20 = AgentCreate("env_tile20", "obj_obstacleTempleHub103C.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    --local tile21 = AgentCreate("env_tile21", "obj_redstoneDustLineTempleHub103A.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    --local tile22 = AgentCreate("env_tile22", "obj_redstoneDustLineTempleHub103B.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    --local tile23 = AgentCreate("env_tile23", "obj_redstonePathwayTempleHub103.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    --local tile24 = AgentCreate("env_tile24", "obj_rubbleTempleHub103A.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    --local tile25 = AgentCreate("env_tile25", "obj_tableTempleHub103A.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    --local tile26 = AgentCreate("env_tile26", "obj_telescopeEllieTempleHub103.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    --local tile27 = AgentCreate("env_tile27", "obj_tntPileTempleHub103.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    --local tile28 = AgentCreate("env_tile28", "obj_tntPileTempleHub103Blocks.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    --local tile29 = AgentCreate("env_tile29", "obj_tntTowerTempleHub103A.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    --local tile30 = AgentCreate("env_tile30", "adv_townFair_meshesIFoliageTrees.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    --local tile31 = AgentCreate("env_tile31", "adv_townFair_meshesKFoliageTrees.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    --local tile32 = AgentCreate("env_tile32", "adv_townFair_meshesIFoliage.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    --local tile33 = AgentCreate("env_tile33", "adv_sorenInterior103_meshesK.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    --local tile34 = AgentCreate("env_tile34", "adv_sorenInterior103_meshesK.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    --local tile35 = AgentCreate("env_tile35", "adv_sorenInterior103_meshesK.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    --local tile36 = AgentCreate("env_tile36", "adv_sorenInterior103_meshesK.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    --local tile37 = AgentCreate("env_tile37", "adv_sorenInterior103_meshesK.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    --local tile38 = AgentCreate("env_tile38", "adv_sorenInterior103_meshesK.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);
    --local tile39 = AgentCreate("env_tile39", "adv_sorenInterior103_meshesK.prop", Vector(0,0,0), Vector(0,0,0), Custom_CutsceneDev_SceneObject, false, false);

    AgentAttach(tile2, tile_group);
    AgentAttach(tile3, tile_group);
    AgentAttach(tile4, tile_group);
    AgentAttach(tile5, tile_group);
    AgentAttach(tile6, tile_group);
    AgentAttach(tile7, tile_group);
    AgentAttach(tile8, tile_group);
    AgentAttach(tile9, tile_group);
    AgentAttach(tile10, tile_group);
    AgentAttach(tile11, tile_group);
    AgentAttach(tile12, tile_group);
    AgentAttach(tile13, tile_group);
    AgentAttach(tile14, tile_group);
    AgentAttach(tile15, tile_group);
    AgentAttach(tile16, tile_group);
    AgentAttach(tile17, tile_group);
    AgentAttach(tile18, tile_group);
    AgentAttach(tile19, tile_group);
    AgentAttach(tile20, tile_group);
    AgentAttach(tile21, tile_group);
    AgentAttach(tile22, tile_group);
    AgentAttach(tile23, tile_group);
    AgentAttach(tile24, tile_group);
    AgentAttach(tile25, tile_group);
    AgentAttach(tile26, tile_group);
    AgentAttach(tile27, tile_group);
    AgentAttach(tile28, tile_group);
    AgentAttach(tile29, tile_group);
    AgentAttach(tile30, tile_group);
    AgentAttach(tile31, tile_group);
    AgentAttach(tile32, tile_group);
    AgentAttach(tile33, tile_group);
    AgentAttach(tile34, tile_group);
    AgentAttach(tile35, tile_group);
    AgentAttach(tile36, tile_group);
    AgentAttach(tile37, tile_group);
    AgentAttach(tile38, tile_group);
    AgentAttach(tile39, tile_group);

end


Scene_CleanUpOriginalScene101AndPlayChoreForTest = function(kScene)
    AgentDestroy("adv_forestTreehouse_meshesAFoliageGrass");
    AgentDestroy("adv_forestTreehouse_meshesAFoliageTrees");
    AgentDestroy("adv_forestTreehouse_meshesAFoliageTreesFlats");
    AgentDestroy("adv_forestTreehouse_meshesBFoliageGrass");
    AgentDestroy("adv_forestTreehouse_meshesBFoliageTrees")
    AgentDestroy("adv_forestTreehouse_meshesBFoliageTreesFlats");
    AgentDestroy("adv_forestTreehouse_meshesCFoliageTrees");
    AgentDestroy("adv_forestTreehouse_meshesB");
    AgentDestroy("adv_forestTreehouse_meshesC");
    AgentDestroy("adv_forestTreehouse_meshesD");
    AgentDestroy("adv_forestTreehouse_meshesA");
    AgentDestroy("obj_treehouseForestTreehouseA");
    AgentDestroy("obj_treehouseForestTreehouseB");
    AgentDestroy("obj_treehouseForestTreehouseC");
    AgentDestroy("obj_treehouseForestTreehouseD");
    AgentDestroy("obj_treehouseForestTreehouseE");
    AgentDestroy("obj_treehouseForestTreehouseF");
    AgentDestroy("obj_mountainMatteForestTreehouse");
    AgentDestroy("obj_skydomeDayForestStage");
    AgentDestroy("obj_treehouseForestStage_foliageA");
    AgentDestroy("obj_treeForestTreehouseB");
    AgentDestroy("obj_treeForestTreehouseB02");
    AgentDestroy("obj_treeForestTreehouseB03");
    AgentDestroy("obj_treeForestTreehouseB04");
    AgentDestroy("obj_treeForestTreehouseB05");
    AgentDestroy("adv_forestTreehouse_meshesBFoliageTrees");
    AgentDestroy("fx_water_forestTreehouse");
    AgentDestroy();
    AgentDestroy();
    AgentDestroy();
    AgentDestroy();
    AgentDestroy();
    AgentDestroy();
    AgentDestroy();
    AgentDestroy();
    AgentDestroy();
    AgentDestroy();
    AgentDestroy();
    AgentDestroy();
    AgentDestroy();
    AgentDestroy();
    AgentDestroy();
end

Scene_BetaScene106CleanUp = function(kScene)   

    AgentDestroy("adv_creepyMansionInterior_meshesA");
    AgentDestroy("adv_creepyMansionInterior_meshesB");
    AgentDestroy("adv_creepyMansionInterior_meshesC");
    AgentDestroy("adv_creepyMansionInterior_meshesD");
    AgentDestroy("adv_creepyMansionInterior_meshesE");
    AgentDestroy("adv_creepyMansionInterior_meshesF");
    AgentDestroy("obj_exteriorFrontDoorCreepyMansionInterior");
    AgentDestroy("obj_doorIronMainHallCreepyMansionRight");
    AgentDestroy("obj_doorIronMainHallCreepyMansionLeft");
    AgentDestroy();
    AgentDestroy();
    AgentDestroy();
    AgentDestroy();
    AgentDestroy();
    AgentDestroy();
    AgentDestroy();

end




Scene_RelightScene_Treehouse = function(kScene, agent_name_scene)

    --find the original sunlight in the scene
    --local envlight  = AgentFindInScene("light_DIR", kScene);
    --local envlight_props = AgentGetRuntimeProperties(envlight);
    --local envlight_groupEnabled = PropertyGet(envlight_props, "EnvLight - Enabled Group");
    --local envlight_groups = PropertyGet(envlight_props, "EnvLight - Groups");
    
    --find the original sky light in the scene (note telltale dev, why do you use a light source for the skybox when you could've just had the sky be an (emmissive/unlit) shader?)
    --local skyEnvlight  = AgentFindInScene("light_amb_sky", kScene);
    --local skyEnvlight_props = AgentGetRuntimeProperties(skyEnvlight);
    --local skyEnvlight_groupEnabled = PropertyGet(skyEnvlight_props, "EnvLight - Enabled Group");
    --local skyEnvlight_groups = PropertyGet(skyEnvlight_props, "EnvLight - Groups");
    
    --the main prop (like a prefab) file for a generic light
    local envlight_prop = "module_env_light.prop";
    
    --calculate some new colors
    local sunColor     = RGBColor(255, 230, 198, 255);
    local ambientColor = RGBColor(108, 150, 225, 255);
    local skyColor     = RGBColor(0, 80, 255, 255);
    local fogColor     = Desaturate_RGBColor(skyColor, 0.7);
    
    --adjust the colors a bit (yes there is a lot of tweaks... would be easier if we had a level editor... but we dont yet)
    skyColor = Desaturate_RGBColor(skyColor, 0.2);
    fogColor = Multiplier_RGBColor(fogColor, 2.8);
    fogColor = Desaturate_RGBColor(fogColor, 0.45);
    sunColor = Desaturate_RGBColor(sunColor, 0.15);
    skyColor = Desaturate_RGBColor(skyColor, 0.2);
    sunColor = Desaturate_RGBColor(sunColor, 0.15);
    ambientColor = Desaturate_RGBColor(ambientColor, 0.35);
    ambientColor = Multiplier_RGBColor(ambientColor, 1.8);
    
    --set the alpha value of the fog color to be fully opaque
    local finalFogColor = Color(fogColor.r, fogColor.g, fogColor.b, 1.0);
    
    --change the properties of the fog
    AgentSetProperty("module_environment", "Env - Fog Color", finalFogColor, kScene);
    AgentSetProperty("module_environment", "Env - Fog Start Distance", 3.25, kScene);
    AgentSetProperty("module_environment", "Env - Fog Height", 2.85, kScene);
    AgentSetProperty("module_environment", "Env - Fog Density", 0.525, kScene);
    AgentSetProperty("module_environment", "Env - Fog Max Opacity", 1, kScene);
    AgentSetProperty("module_environment", "Env - Fog Enabled", true, kScene);
    AgentSetProperty("module_environment", "Env - Enabled", true, kScene);
    AgentSetProperty("module_environment", "Env - Enabled on High", true, kScene);
    AgentSetProperty("module_environment", "Env - Enabled on Medium", true, kScene);
    AgentSetProperty("module_environment", "Env - Enabled on Low", true, kScene);
    AgentSetProperty("module_environment", "Env - Priority", 1000, kScene);
    
    --create our sunlight and set the properties accordingly
    local myLight_Sun = AgentCreate("myLight_Sun", envlight_prop, Vector(0,0,0), Vector(40, -175), kScene, false, false);
    AgentSetProperty("myLight_Sun", "EnvLight - Type", 2, kScene);
    AgentSetProperty("myLight_Sun", "EnvLight - Intensity", 12, kScene);
    AgentSetProperty("myLight_Sun", "EnvLight - Enlighten Intensity", 0.0, kScene);
    AgentSetProperty("myLight_Sun", "EnvLight - Radius", 1, kScene);
    AgentSetProperty("myLight_Sun", "EnvLight - Distance Falloff", 1, kScene);
    AgentSetProperty("myLight_Sun", "EnvLight - Spot Angle Inner", 5, kScene);
    AgentSetProperty("myLight_Sun", "EnvLight - Spot Angle Outer", 45, kScene);
    AgentSetProperty("myLight_Sun", "EnvLight - Color", sunColor, kScene);
    --AgentSetProperty("myLight_Sun", "EnvLight - Enabled Group", envlight_groupEnabled, kScene);
    --AgentSetProperty("myLight_Sun", "EnvLight - Groups", envlight_groups, kScene);
    AgentSetProperty("myLight_Sun", "EnvLight - Shadow Type", 2, kScene);
    AgentSetProperty("myLight_Sun", "EnvLight - Wrap", 0.0, kScene);
    AgentSetProperty("myLight_Sun", "EnvLight - Shadow Quality", 3, kScene);
    AgentSetProperty("myLight_Sun", "EnvLight - HBAO Participation Type", 1, kScene);
    

    --TREEHOUSE LIGHT 
    --light_env_default
    AgentSetProperty("light_env_default", "EnvLight - Type", 2, kScene);
    AgentSetProperty("light_env_default", "EnvLight - Intensity", 12, kScene);
    AgentSetProperty("light_env_default", "EnvLight - Enlighten Intensity", 0.0, kScene);
    AgentSetProperty("light_env_default", "EnvLight - Radius", 1, kScene);
    AgentSetProperty("light_env_default", "EnvLight - Distance Falloff", 1, kScene);
    AgentSetProperty("light_env_default", "EnvLight - Spot Angle Inner", 5, kScene);
    AgentSetProperty("light_env_default", "EnvLight - Spot Angle Outer", 45, kScene);
    AgentSetProperty("light_env_default", "EnvLight - Color", sunColor, kScene);
    --AgentSetProperty("light_env_default", "EnvLight - Enabled Group", envlight_groupEnabled, kScene);
    --AgentSetProperty("light_env_default", "EnvLight - Groups", envlight_groups, kScene);
    AgentSetProperty("light_env_default", "EnvLight - Shadow Type", 2, kScene);
    AgentSetProperty("light_env_default", "EnvLight - Wrap", 0.0, kScene);
    AgentSetProperty("light_env_default", "EnvLight - Shadow Quality", 3, kScene);
    AgentSetProperty("light_env_default", "EnvLight - HBAO Participation Type", 1, kScene);



    --ambient light foliage
    AgentSetProperty("light_Amb_foliage", "EnvLight - Intensity", 1, kScene);
    AgentSetProperty("light_Amb_foliage", "EnvLight - Color", sunColor, kScene);
    
    --sky light/color
    AgentSetProperty("light_amb_sky", "EnvLight - Intensity", 4, kScene);
    AgentSetProperty("light_amb_sky", "EnvLight - Color", skyColor, kScene);
    
    --create a spotlight that emulates the sundisk in the sky
    local myLight_SkySun = AgentCreate("myLight_SkySun", envlight_prop, Vector(0,0,0), Vector(-54, 5, 0), kScene, false, false);
    AgentSetProperty("myLight_SkySun", "EnvLight - Type", 1, kScene);
    AgentSetProperty("myLight_SkySun", "EnvLight - Intensity", 55, kScene);
    AgentSetProperty("myLight_SkySun", "EnvLight - Enlighten Intensity", 0.0, kScene);
    AgentSetProperty("myLight_SkySun", "EnvLight - Radius", 2555, kScene);
    AgentSetProperty("myLight_SkySun", "EnvLight - Distance Falloff", 1, kScene);
    AgentSetProperty("myLight_SkySun", "EnvLight - Spot Angle Inner", 5, kScene);
    AgentSetProperty("myLight_SkySun", "EnvLight - Spot Angle Outer", 25, kScene);
    AgentSetProperty("myLight_SkySun", "EnvLight - Color", sunColor, kScene);
    --AgentSetProperty("myLight_SkySun", "EnvLight - Enabled Group", skyEnvlight_groupEnabled, kScene);
    --AgentSetProperty("myLight_SkySun", "EnvLight - Groups", skyEnvlight_groups, kScene);
    AgentSetProperty("myLight_SkySun", "EnvLight - Shadow Type", 0, kScene);
    AgentSetProperty("myLight_SkySun", "EnvLight - Wrap", 0.0, kScene);
    AgentSetProperty("myLight_SkySun", "EnvLight - Shadow Quality", 0, kScene);
    AgentSetProperty("myLight_SkySun", "EnvLight - HBAO Participation Type", 1, kScene);

    --remove original sun since we created our own and only needed it for getting the correct lighting groups.
    --AgentDestroy("light_DIR");
    --AgentDestroy("light_DIR", kScene);

    --modify the scene post processing
    AgentSetProperty(agent_name_scene, "FX anti-aliasing", true, kScene);
    AgentSetProperty(agent_name_scene, "FX Sharp Shadows Enabled", true, kScene);
    AgentSetProperty(agent_name_scene, "FX Ambient Occlusion Enabled", true, kScene);
    AgentSetProperty(agent_name_scene, "FX Tonemap Intensity", 1.0, kScene);
    AgentSetProperty(agent_name_scene, "FX Tonemap White Point", 8.0, kScene);
    AgentSetProperty(agent_name_scene, "FX Tonemap Black Point", 0.005, kScene);
    AgentSetProperty(agent_name_scene, "FX Tonemap Filmic Toe Intensity", 1.0, kScene);
    AgentSetProperty(agent_name_scene, "FX Tonemap Filmic Shoulder Intensity", 0.75, kScene);
    AgentSetProperty(agent_name_scene, "FX Tonemap Type", 2, kScene);
    AgentSetProperty(agent_name_scene, "FX Tonemap Filmic Pivot", 0, kScene);
    AgentSetProperty(agent_name_scene, "FX Tonemap Filmic Shoulder Intensity", 0.8, kScene);
    AgentSetProperty(agent_name_scene, "HBAO Enabled", true, kScene);
    AgentSetProperty(agent_name_scene, "HBAO Intensity", 1.5, kScene);
    AgentSetProperty(agent_name_scene, "HBAO Radius", 0.75, kScene);
    AgentSetProperty(agent_name_scene, "HBAO Max Radius Percent", 0.5, kScene);
    AgentSetProperty(agent_name_scene, "HBAO Max Distance", 35.5, kScene);
    AgentSetProperty(agent_name_scene, "HBAO Distance Falloff", 0, kScene);
    AgentSetProperty(agent_name_scene, "HBAO Hemisphere Bias", -0.2, kScene);
    AgentSetProperty(agent_name_scene, "FX Bloom Threshold", -0.35, kScene);
    AgentSetProperty(agent_name_scene, "FX Bloom Intensity", 0.10, kScene);
    AgentSetProperty(agent_name_scene, "Ambient Color", ambientColor, kScene);
    AgentSetProperty(agent_name_scene, "Shadow Color", RGBColor(0, 0, 0, 0), kScene);
    AgentSetProperty(agent_name_scene, "FX Vignette Tint Enabled", true, kScene);
    AgentSetProperty(agent_name_scene, "FX Vignette Tint", RGBColor(0, 0, 0, 255), kScene);
    AgentSetProperty(agent_name_scene, "FX Vignette Falloff", 1.0, kScene);
    AgentSetProperty(agent_name_scene, "FX Vignette Center", 0, kScene);
    AgentSetProperty(agent_name_scene, "FX Vignette Corners", 1.0, kScene);
    AgentSetProperty(agent_name_scene, "LightEnv Saturation", 1.0, kScene);
    AgentSetProperty(agent_name_scene, "LightEnv Reflection Intensity Shadow", 1.0, kScene);
    AgentSetProperty(agent_name_scene, "LightEnv Reflection Intensity", 1.0, kScene);
    AgentSetProperty(agent_name_scene, "LightEnv Shadow Max Distance", 20.0, kScene);
    AgentSetProperty(agent_name_scene, "LightEnv Dynamic Shadow Max Distance", 25.0, kScene);
    AgentSetProperty(agent_name_scene, "LightEnv Shadow Position Offset Bias", 0.0, kScene);
    AgentSetProperty(agent_name_scene, "LightEnv Shadow Depth Bias", -1.0, kScene);
    AgentSetProperty(agent_name_scene, "LightEnv Shadow Auto Depth Bounds", false, kScene);
    AgentSetProperty(agent_name_scene, "LightEnv Shadow Light Bleed Reduction", 0.8, kScene);
    AgentSetProperty(agent_name_scene, "LightEnv Shadow Moment Bias", 0.0, kScene);
    AgentSetProperty(agent_name_scene, "Specular Multiplier Enabled", true, kScene);
    AgentSetProperty(agent_name_scene, "Specular Color Multiplier", 55, kScene);
    AgentSetProperty(agent_name_scene, "Specular Intensity Multiplier", 1, kScene);
    AgentSetProperty(agent_name_scene, "Specular Exponent Multiplier", 1, kScene);
    AgentSetProperty(agent_name_scene, "FX Noise Scale", 1, kScene);
end