-- Definitions of memory structures that will be transmitted to the electron process

definitions = {
    Player = {{{"+PlayerState.PlayerNamePrivate", "+0"}, "s", 64},
            {{"++PlayerState.PawnPrivate", "+GPlayer.RootComponent", "+SceneComponent.RelativeLocation.X"}, "f"},
            {{"++PlayerState.PawnPrivate", "+GPlayer.RootComponent", "+SceneComponent.RelativeLocation.Y"}, "f"},
            {{"++PlayerState.PawnPrivate", "+GPlayer.RootComponent", "+SceneComponent.RelativeLocation.Z"}, "f"},
            {{"++PlayerState.PawnPrivate", "+GPlayer.RootComponent", "+SceneComponent.RelativeRotation.Pitch"}, "f"},
            {{"++PlayerState.PawnPrivate", "+GPlayer.RootComponent", "+SceneComponent.RelativeRotation.Yaw"}, "f"},
            {{"++PlayerState.PawnPrivate", "+GPlayer.RootComponent", "+SceneComponent.RelativeRotation.Roll"}, "f"}},
    PlayerMulti = {{{"+Character.myplayername", "+0"}, "s", 64},
            {{"+Character.RootComponent", "+SceneComponent.RelativeLocation.X"}, "f"},
            {{"+Character.RootComponent", "+SceneComponent.RelativeLocation.Y"}, "f"},
            {{"+Character.RootComponent", "+SceneComponent.RelativeLocation.Z"}, "f"},
            {{"+Character.RootComponent", "+SceneComponent.RelativeRotation.Pitch"}, "f"},
            {{"+Character.RootComponent", "+SceneComponent.RelativeRotation.Yaw"}, "f"},
            {{"+Character.RootComponent", "+SceneComponent.RelativeRotation.Roll"}, "f"}},
    FrameCar = {{{"+FrameCar.FrameType", "+0"}, "s", 64}, {{"+FrameCar.FrameName"}, "t", 64},
                {{"+FrameCar.FrameNumber", "+28", "+0"}, "s", 64},
                {{"+FrameCar.RootComponent", "+SceneComponent.RelativeLocation.X"}, "f"},
                {{"+FrameCar.RootComponent", "+SceneComponent.RelativeLocation.Y"}, "f"},
                {{"+FrameCar.RootComponent", "+SceneComponent.RelativeLocation.Z"}, "f"},
                {{"+FrameCar.RootComponent", "+SceneComponent.RelativeRotation.Pitch"}, "f"},
                {{"+FrameCar.RootComponent", "+SceneComponent.RelativeRotation.Yaw"}, "f"},
                {{"+FrameCar.RootComponent", "+SceneComponent.RelativeRotation.Roll"}, "f"},
                {{"+FrameCar.MyRegulator", "+Regulator.openPercentage"}, "f"},
                {{"+FrameCar.MyReverser", "+Reverser.forwardvalue"}, "f"},
                {{"+FrameCar.MyBrake", "+Brake.brakevalue"}, "f"},
                {{"+FrameCar.MyWhistle", "+Whistle.whistleopenfactor"}, "f"},
                {{"+FrameCar.Myhandvalvegenerator", "+Handvalve.openPercentage"}, "f"},
                {{"+FrameCar.Myhandvalvecompressor", "+Handvalve.openPercentage"}, "f"},
                {{"+FrameCar.MyBoiler", "+Boiler.currentboilerpressure"}, "f"},
                {{"+FrameCar.MyBoiler", "+Boiler.maxboilerpressure"}, "f"},
                {{"+FrameCar.MyBoiler", "+Boiler.currentwatertemperature"}, "f"},
                {{"+FrameCar.MyBoiler", "+Boiler.currentwateramount"}, "f"},
                {{"+FrameCar.MyBoiler", "+Boiler.maxwateramount"}, "f"},
                {{"+FrameCar.Mycompressor", "+Compressor.currentairpressure"}, "f"},
                {{"+FrameCar.MyBoiler", "+Boiler.currentfiretemperature"}, "f"},
                {{"+FrameCar.MyBoiler", "+Boiler.currentfuel"}, "f"},
                {{"+FrameCar.MyBoiler", "+Boiler.maxfuel"}, "f"},
                {{"+FrameCar.currentspeedms"}, "f"},
                {{"+FrameCar.maxspeedms"}, "i"},
                {{"+FrameCar.MyTender", "+Tender.currentamountFuel"}, "i"},
                {{"+FrameCar.MyTender", "+Tender.maxamountfuel"}, "i"},
                {{"+FrameCar.MyTender", "+Tender.currentamountWater"}, "i"},
                {{"+FrameCar.MyTender", "+Tender.maxamountwater"}, "i"},
                {{"+FrameCar.MyFreight", "+Freight.currentfreight"}, "i"},
                {{"+FrameCar.MyFreight", "+Freight.maxfreight"}, "i"},
                {{"+FrameCar.MyFreight", "+Freight.currentfreighttype", "+0"}, "s", 64},
                {{"+FrameCar.MyCouplerFront"}, "p"},
                {{"+FrameCar.MyCouplerFront", "+Coupler.OtherCoupler"}, "p"},
                {{"+FrameCar.MyCouplerFront", "+Coupler.bIsCoupled"}, "b"},
                {{"+FrameCar.MyCouplerRear"}, "p"},
                {{"+FrameCar.MyCouplerRear", "+Coupler.OtherCoupler"}, "p"},
                {{"+FrameCar.MyCouplerRear", "+Coupler.bIsCoupled"}, "b"}},
    Switch = {{{"+Switch.switchtype"}, "i"}, {{"+Switch.switchstate"}, "i"},
              {{"+Switch.RootComponent", "+SceneComponent.RelativeLocation.X"}, "f"},
              {{"+Switch.RootComponent", "+SceneComponent.RelativeLocation.Y"}, "f"},
              {{"+Switch.RootComponent", "+SceneComponent.RelativeLocation.Z"}, "f"},
              {{"+Switch.RootComponent", "+SceneComponent.RelativeRotation.Pitch"}, "f"},
              {{"+Switch.RootComponent", "+SceneComponent.RelativeRotation.Yaw"}, "f"},
              {{"+Switch.RootComponent", "+SceneComponent.RelativeRotation.Roll"}, "f"}},
    Turntable = {{{"+TurnTable.RootComponent", "+SceneComponent.RelativeLocation.X"}, "f"},
                 {{"+TurnTable.RootComponent", "+SceneComponent.RelativeLocation.Y"}, "f"},
                 {{"+TurnTable.RootComponent", "+SceneComponent.RelativeLocation.Z"}, "f"},
                 {{"+TurnTable.RootComponent", "+SceneComponent.RelativeRotation.Pitch"}, "f"},
                 {{"+TurnTable.RootComponent", "+SceneComponent.RelativeRotation.Yaw"}, "f"},
                 {{"+TurnTable.RootComponent", "+SceneComponent.RelativeRotation.Roll"}, "f"},
                 {{"+TurnTable.deckmesh", "+SceneComponent.RelativeRotation.Pitch"}, "f"},
                 {{"+TurnTable.deckmesh", "+SceneComponent.RelativeRotation.Yaw"}, "f"},
                 {{"+TurnTable.deckmesh", "+SceneComponent.RelativeRotation.Roll"}, "f"}},
    WaterTower = {{{"+WaterTower.RootComponent", "+SceneComponent.RelativeLocation.X"}, "f"},
                  {{"+WaterTower.RootComponent", "+SceneComponent.RelativeLocation.Y"}, "f"},
                  {{"+WaterTower.RootComponent", "+SceneComponent.RelativeLocation.Z"}, "f"},
                  {{"+WaterTower.RootComponent", "+SceneComponent.RelativeRotation.Pitch"}, "f"},
                  {{"+WaterTower.RootComponent", "+SceneComponent.RelativeRotation.Yaw"}, "f"},
                  {{"+WaterTower.RootComponent", "+SceneComponent.RelativeRotation.Roll"}, "f"},
                  {{"+WaterTower.Mystorage", "+Storage.currentamountitems"}, "f"},
                  {{"+WaterTower.Mystorage", "+Storage.maxitems"}, "f"},
                  {{"+WaterTower.Mystorage", "+Storage.storagetype", "+0"}, "s", 256}},
    Sandhouse = {{{"+Sandhouse.RootComponent", "+SceneComponent.RelativeLocation.X"}, "f"},
                  {{"+Sandhouse.RootComponent", "+SceneComponent.RelativeLocation.Y"}, "f"},
                  {{"+Sandhouse.RootComponent", "+SceneComponent.RelativeLocation.Z"}, "f"},
                  {{"+Sandhouse.RootComponent", "+SceneComponent.RelativeRotation.Pitch"}, "f"},
                  {{"+Sandhouse.RootComponent", "+SceneComponent.RelativeRotation.Yaw"}, "f"},
                  {{"+Sandhouse.RootComponent", "+SceneComponent.RelativeRotation.Roll"}, "f"},
                  {{"+Sandhouse.Mystorage", "+Storage.currentamountitems"}, "f"},
                  {{"+Sandhouse.Mystorage", "+Storage.maxitems"}, "f"},
                  {{"+Sandhouse.Mystorage", "+Storage.storagetype", "+0"}, "s", 256}},
    Industry = {{{"+Industry.industrytype"}, "i"},
                {{"+Industry.RootComponent", "+SceneComponent.RelativeLocation.X"}, "f"},
                {{"+Industry.RootComponent", "+SceneComponent.RelativeLocation.Y"}, "f"},
                {{"+Industry.RootComponent", "+SceneComponent.RelativeLocation.Z"}, "f"},
                {{"+Industry.RootComponent", "+SceneComponent.RelativeRotation.Pitch"}, "f"},
                {{"+Industry.RootComponent", "+SceneComponent.RelativeRotation.Yaw"}, "f"},
                {{"+Industry.RootComponent", "+SceneComponent.RelativeRotation.Roll"}, "f"},
                {{"+Industry.mystorageeducts1", "+Storage.currentamountitems"}, "f"},
                {{"+Industry.mystorageeducts1", "+Storage.maxitems"}, "f"},
                {{"+Industry.mystorageeducts1", "+Storage.storagetype", "+0"}, "s", 256},
                {{"+Industry.mystorageeducts2", "+Storage.currentamountitems"}, "f"},
                {{"+Industry.mystorageeducts2", "+Storage.maxitems"}, "f"},
                {{"+Industry.mystorageeducts2", "+Storage.storagetype", "+0"}, "s", 256},
                {{"+Industry.mystorageeducts3", "+Storage.currentamountitems"}, "f"},
                {{"+Industry.mystorageeducts3", "+Storage.maxitems"}, "f"},
                {{"+Industry.mystorageeducts3", "+Storage.storagetype", "+0"}, "s", 256},
                {{"+Industry.mystorageeducts4", "+Storage.currentamountitems"}, "f"},
                {{"+Industry.mystorageeducts4", "+Storage.maxitems"}, "f"},
                {{"+Industry.mystorageeducts4", "+Storage.storagetype", "+0"}, "s", 256},
                {{"+Industry.mystorageproducts1", "+Storage.currentamountitems"}, "f"},
                {{"+Industry.mystorageproducts1", "+Storage.maxitems"}, "f"},
                {{"+Industry.mystorageproducts1", "+Storage.storagetype", "+0"}, "s", 256},
                {{"+Industry.mystorageproducts2", "+Storage.currentamountitems"}, "f"},
                {{"+Industry.mystorageproducts2", "+Storage.maxitems"}, "f"},
                {{"+Industry.mystorageproducts2", "+Storage.storagetype", "+0"}, "s", 256},
                {{"+Industry.mystorageproducts3", "+Storage.currentamountitems"}, "f"},
                {{"+Industry.mystorageproducts3", "+Storage.maxitems"}, "f"},
                {{"+Industry.mystorageproducts3", "+Storage.storagetype", "+0"}, "s", 256},
                {{"+Industry.mystorageproducts4", "+Storage.currentamountitems"}, "f"},
                {{"+Industry.mystorageproducts4", "+Storage.maxitems"}, "f"},
                {{"+Industry.mystorageproducts4", "+Storage.storagetype", "+0"}, "s", 256}},
    Spline = {{{"+Spline.SplineControlPoints_size"}},
                {{"+Spline.SplineControlPoints"}},
                {{"+Spline.SplineMeshBoolArray"}},
                {{"+Spline.SplineType"}}},
}

-- If an channel actor STARTS WITH a particular name, it will use the corresponding definition
channelNames = {
    BP_Player_Conductor = "PlayerMulti",
    BP_SplineActor = "Spline",
    BP_switch = "Switch",
    BP_watertower = "WaterTower",
    BP_sandhouse = "Sandhouse",
    BP_industry = "Industry",
    BP_turntable = "Turntable",

    flatcar = "FrameCar", --flatcar_cordwood, flatcar_hopper, flatcar_logs, flatcar_stakes, flatcar_tanker
    boxcar = "FrameCar",
    class70 = "FrameCar", --class70, class70_tender
    climax = "FrameCar",
    cooke260 = "FrameCar", --cooke260, cooke260_updg_tender
    eureka = "FrameCar", --eureka, eureka_tender
    handcar = "FrameCar",
    heisler = "FrameCar",
    porter = "FrameCar" --porter040, porter042
}

-- UE4 Structs to discover
ue4Structs = {
    -- UE4 objects
    GameEngine          = { "/Script/Engine.GameEngine", global = true },
    GameViewportClient  = { "/Script/Engine.GameViewportClient" },
    GameInstance        = { "/Script/Engine.GameInstance" },
    LocalPlayer         = { "/Script/Engine.LocalPlayer", global = true },
    PlayerController    = { "/Script/Engine.PlayerController", global = true },
    MovementComponent   = { "/Script/Engine.CharacterMovementComponent" },
    CapsuleComponent    = { "/Script/Engine.CapsuleComponent", global = true },
    GPlayer             = { "/Script/Engine.Character" },
    World               = { "/Script/Engine.World" },

    -- RailroadsOnline Objects
    ARRPlayerController = { "/Script/arr.ARRPlayerController" },
    GameStateBase       = { "/Script/arr.arrGameStateBase" },
    GameModeBase        = { "/Script/arr.arrGameModeBase" },
    FrameCar            = { "/Script/arr.framecar" },
    BasedMovement       = { "/Script/Engine.BasedMovementInfo" },
    PlayerState         = { "/Script/Engine.PlayerState" },
    Character           = { "/Script/arr.SCharacter" },
    SceneComponent      = { "/Script/Engine.SceneComponent" },
    TurnTable           = { "/Script/arr.turntable" },
    Tender              = { "/Script/arr.tender" },
    Switch              = { "/Script/arr.Switch" },
    WaterTower          = { "/Script/arr.watertower" },
    Sandhouse           = { "/Script/arr.sandhouse" },
    Industry            = { "/Script/arr.industry" },
    Storage             = { "/Script/arr.storage" },
    Regulator           = { "/Script/arr.regulator" },
    Reverser            = { "/Script/arr.johnsonbar" },
    Brake               = { "/Script/arr.airbrake" },
    Whistle             = { "/Script/arr.whistle" },
    Spline              = { "/Script/arr.SplineActor" },
    Boiler              = { "/Script/arr.boiler" },
    Compressor          = { "/Script/arr.compressor" },
    Coupler             = { "/Script/arr.coupler" },
    Handvalve           = { "/Script/arr.handvalve" },
    Freight             = { "/Script/arr.freight" },
    NetDriver           = { "/Script/Engine.NetDriver" },
    NetConnection       = { "/Script/Engine.NetConnection" },
    WorldComposition    = { "/Script/Engine.WorldComposition" },
    ActorChannel        = { "/Script/Engine.ActorChannel" }
}