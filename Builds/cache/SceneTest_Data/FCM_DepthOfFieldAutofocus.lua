LuaR  

         
      C      Á     A    Á   e  @            PerformAutofocusDOF    3   W    ,   @ F@@  F@    ] À@ Æ A    Ý    Æ@A   A A@ Ý AA @ Á ÆA@  FB   ] AB À   ÄA Ä Ë  C FEC ÀD C @ H@ @ [  ÀÈC @  HA @  ÆH@  À HD @    B @ @ HB @  D @  À  ÀD  E    ÀD  Å    ÀD  	    ÀD @    ÀD FHE GÅ	À]H"  £EïC @	ÀÛ  FÆE   À  ] À  À   FF   À   ]      "  £EúA @  FA ] @
      C    Û  @C  À   C   Û  @  À  C       C   ÆC FF Ý@GF  @  @ â  cÆýÛ  @ÆB  Ý  ÆEB  Ý @ÆD   @ÝÆED  @  ÝÀ  @ÆB   Ý @ÆEB   Ý ÆD   @ ÝÀÆED   @  Ý Á  @ Á Ç AÇ ÀÄ
  @ÇÐGÀ	ÀD
ÀGGÇGÈGGHÇÇÇÈÇI	GMP	ÇÉ	GÆ	H  
 @

 Ý JH @

N
H ÊHÀ
   Ð
GMÆÇÐG@ÀDÀ  A	  Á GÀ MH À 	 E	 ÀÄE	 @	À E@E	 Å Å E Å	 FII ÀÄ
FIA 	 Á	  
 FJ@ ]IFIA 	 ÁÉ	  
FJ@ ]IFIA 	 Á	
  
 FJ@ ]IFIA 	 ÁI
  
FJ@ ]IFIA 	 Á
  
 FJ@ ]IFIA 	 ÁÉ
  
FJ@ ]IFIA 	 Á	  
 FJ@ ]I@
FIA IK Á  
 FJ@ ]IFIA IK ÁÉ  
FJ@ ]IFIA IK Á	  
 FJ@ ]IFIA IK ÁI  
FJ@ ]IFIA IK Á  
 FJ@ ]IFIA IK ÁÉ  
FJ@ ]IFIA IK Á	  
 FJ@ ]I   É	 I É  5      SceneGetCamera !   Custom_DOF_AUTOFOCUS_SceneObject    AgentGetCamera 	   tostring    AgentGetName    AgentSetProperty    Clip Plane - Far    Clip Plane - Near    AgentGetWorldPos    AgentGetForwardVec        A   ipairs #   Custom_DOF_AUTOFOCUS_ObjectEntries    AgentFindInScene    AgentIsOnScreen    Runtime: Visible    AgentDistanceToAgent 
   VectorDot     table    insert    Custom_GetNearestAgent    Custom_GetFarthestAgent )   Custom_DOF_AUTOFOCUS_GameplayCameraNames   ?  @   @   x    y    z    Vector    VectorDistance    math    abs  $tI"   Custom_DOF_AUTOFOCUS_UseCameraDOF    Depth Of Field Enabled    Depth Of Field - Far    Depth Of Field Fall Off - Far    Depth Of Field Max - Far    Depth Of Field - Near    Depth Of Field Fall Off - Near    Depth Of Field Max - Near *   Custom_DOF_AUTOFOCUS_SceneObjectAgentName    FX DOF Enabled    FX DOF Far    FX DOF Far Falloff    FX DOF Far Max    FX DOF Near    FX DOF Near Falloff    FX DOF Near Max     
      ¬   @C:\Users\abidr\Desktop\TelltaleGamesModels\MCSM\MODS\FreecamToolsBeta\Arizzble's Freecam Tools (Beta)\Arizzbles_Freecam_Tools\SceneTest_Data\FCM_DepthOfFieldAutofocus.lua   8   8   8   9   9   9   :   :   :   :   :   ;   ;   ;   ;   ;   <   <   <   <   <   =   =   =   >   >   >   A   R   S   V   Y   Y   Y   Y   [   d   d   d   d   d   g   g   i   i   i   i   j   j   j   j   j   j   k   k   k   k   k   l   l   l   l   m   m   m   m   n   n   n   n   n   q   t   t   t   t   t   w   w   w   w   w   z   z   z   z   z   }   }   }   }   }                        Y   Y                                                                                 ¡   ¡   ¡   ¡   ¡   ¡   ¡   ¡   ¢   §   ¨   ©   «   «   «   «   ­   ®   ¯   ¯   °   °   °   °   ²   ³   ´   ´   ·   ¸   ¹   Á   Á   Á   Á   Ã   Ã   Ã   Ã   Å   Å   Á   Á   Ï   Ï   Ð   Ð   Ð   Ð   Ñ   Ñ   Ñ   Ñ   Ò   Ò   Ò   Ò   Ò   Ó   Ó   Ó   Ó   Ó   ×   ×   Ø   Ø   Ø   Ø   Ù   Ù   Ù   Ù   Ú   Ú   Ú   Ú   Ú   Û   Û   Û   Û   Û   â   ä   å   æ   ç   è   é   ì   ì   ï   ð   ñ   ò   ò   ó   ó   ÷   ø   ù   û   ü   ý   ÿ   ÿ                               	  
  
  
  
                                   !  "  #  &  &  &  (  (  (  *  *  *  *  *  +  ,  -  .  /  0  1  6  6  6  8  8  8  8  8  8  :  :  :  :  :  :  ;  ;  ;  ;  ;  ;  <  <  <  <  <  <  >  >  >  >  >  >  ?  ?  ?  ?  ?  ?  @  @  @  @  @  @  @  C  C  C  C  C  C  E  E  E  E  E  E  F  F  F  F  F  F  G  G  G  G  G  G  I  I  I  I  I  I  J  J  J  J  J  J  K  K  K  K  K  K  O  P  Q  R  S  T  U  V  W  I      currentCamera_agent         currentCamera_camera         currentCamera_name         currentCamera_far_plane         currentCamera_near_plane         currentCamera_position_vector         currentCamera_forward_vector         nearFocusTarget1_agent      !   nearFocusTarget1_position_vector          nearFocusTarget1_forward_vector         nearFocusTarget1_vector_dot         nearFocusTarget1_distance         farFocusTarget2_agent          farFocusTarget2_position_vector         farFocusTarget2_forward_vector         farFocusTarget2_vector_dot         farFocusTarget2_distance         rejectionAngle         rejectionDistance         validAgentsArray         (for generator) "   e      (for state) "   e      (for control) "   e      i #   c      objectName #   c      object_agent $   c      object_isOnScreen $   c      object_isVisible $   c      object_distance $   c      object_position_vector $   c      object_forward_vector $   c      object_vector_dot $   c      isValidTarget H   c      (for generator) h         (for state) h         (for control) h         x i   }      validAgent i   }      state_isMultiTarget         state_isSingleTarget         state_isDisabled         (for generator) ¡   ª      (for state) ¡   ª      (for control) ¡   ª      i ¢   ¨      name ¢   ¨      focalRange Ó        focalDistance Ô        focalRangeOffset Õ        focalFarMax Ö        focalNearMax ×        focalFarFallof Ø        focalNearFallof Ù        a_x ã        a_y ä        a_z å        b_x æ        b_y ç        b_z è        averaged_x ê        averaged_y ì        averaged_z î        averagePosition ó        averageFocalDistance ÷        distanceDifference ø        absoluteDistanceDifference ü        current_nearFocusDistance 	       current_nearFallof 
       current_nearMax        current_farFocusDistance        current_farFalloff        current_farMax        current_enabledDOF     
      _ENV    enable_fix1    prev_cameraName    prev_state_isDisabled    prev_nearFocusDistance    prev_nearFallof    prev_nearMax    prev_farFocusDistance    prev_farFalloff    prev_farMax     ¬   @C:\Users\abidr\Desktop\TelltaleGamesModels\MCSM\MODS\FreecamToolsBeta\Arizzble's Freecam Tools (Beta)\Arizzbles_Freecam_Tools\SceneTest_Data\FCM_DepthOfFieldAutofocus.lua    '   (   )   *   +   ,   -   .   1   W  W  W  	      prev_cameraName          prev_state_isDisabled          prev_nearFocusDistance          prev_nearFallof          prev_nearMax          prev_farFocusDistance          prev_farFalloff          prev_farMax          enable_fix1 	            _ENV 