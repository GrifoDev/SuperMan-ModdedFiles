.class public Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;
.super Ljava/lang/Object;
.source "LppAlgorithm.java"


# instance fields
.field APDRMAXNUMBER:I

.field AlgoLocP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

.field AlgoLocPP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

.field AlgoLocPPP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

.field Cnt_SameLocSet:J

.field CurrSetLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

.field CurrentLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

.field FilterdOldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

.field FilterdOlderLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

.field Flag_FineLocAcquired:Z

.field Flag_First_loc:Z

.field Flag_Loc_init:Z

.field LastLMLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

.field final MAX_MOVEMENT_SPEED_RUN:D

.field final MAX_MOVEMENT_SPEED_STATIONARY:D

.field final MAX_MOVEMENT_SPEED_VEHICLE:D

.field final MAX_MOVEMENT_SPEED_WALK:D

.field final MIN_MOVEMENT_DISTANCE:D

.field final MIN_UPDTAE_TIME:D

.field OldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

.field Origin_LLH:[D

.field final POS_SET_RADIUS:D

.field final POS_SET_TIME:D

.field PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

.field final Position_Jump_Sec_TH:D

.field Prev_StateTime:D

.field ProcessNoisePerSecondVehicle:[D

.field ProcessNoisePerSecondWalk:[D

.field final RST_LOC_VALID_CHK_NEWSET:I

.field final RST_LOC_VALID_CHK_NOUPDATE:I

.field final RST_LOC_VALID_CHK_STATIONARY:I

.field final STATE_STATIONARY:I

.field final STATE_UNKNWON:I

.field final STATE_VEHICLE:I

.field TAG:Ljava/lang/String;

.field final Trajectory_Time_Gap:J

.field final _DATAFROMAPDR:I

.field final _DATAFROMGPS:I

.field final _DATAFROMNETWORK:I

.field flag_AlgorithmOn:Z

.field lastStatus:I

.field lastTrajTime:J

.field public mAPDRResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;",
            ">;"
        }
    .end annotation
.end field

.field public mAPDRStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;",
            ">;"
        }
    .end annotation
.end field

.field mFlagIsGPSBatchMode:Z

.field mFlagLocInputReady:Z

.field mFlagStayingArea:Z

.field private final mInputPosBuf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;",
            ">;"
        }
    .end annotation
.end field

.field private final mInputPosBufSync:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;",
            ">;"
        }
    .end annotation
.end field

.field mLPPLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;

.field private final mLPPPosition:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;",
            ">;"
        }
    .end annotation
.end field

.field time_lastSent:J


# direct methods
.method public constructor <init>()V
    .locals 10

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string/jumbo v0, "LppAlgorithm"

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    .line 39
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->MAX_MOVEMENT_SPEED_VEHICLE:D

    .line 40
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->MAX_MOVEMENT_SPEED_RUN:D

    .line 41
    iput-wide v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->MAX_MOVEMENT_SPEED_WALK:D

    .line 42
    iput-wide v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->MAX_MOVEMENT_SPEED_STATIONARY:D

    .line 43
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->MIN_MOVEMENT_DISTANCE:D

    .line 44
    const-wide v0, 0x40b3880000000000L    # 5000.0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->MIN_UPDTAE_TIME:D

    .line 46
    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Trajectory_Time_Gap:J

    .line 48
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Position_Jump_Sec_TH:D

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;

    .line 53
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    .line 55
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    .line 56
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->FilterdOldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    .line 57
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->FilterdOlderLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    .line 58
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrSetLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    .line 60
    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->flag_AlgorithmOn:Z

    .line 61
    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagIsGPSBatchMode:Z

    .line 62
    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagStayingArea:Z

    .line 63
    iput-boolean v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagLocInputReady:Z

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBufSync:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    .line 70
    iput v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->_DATAFROMAPDR:I

    .line 71
    iput v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->_DATAFROMGPS:I

    .line 72
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->_DATAFROMNETWORK:I

    .line 74
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->POS_SET_RADIUS:D

    .line 75
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->POS_SET_TIME:D

    .line 77
    iput v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->RST_LOC_VALID_CHK_NOUPDATE:I

    .line 78
    iput v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->RST_LOC_VALID_CHK_NEWSET:I

    .line 79
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->RST_LOC_VALID_CHK_STATIONARY:I

    .line 82
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->APDRMAXNUMBER:I

    .line 83
    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_Loc_init:Z

    .line 84
    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_First_loc:Z

    .line 85
    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_FineLocAcquired:Z

    .line 88
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-direct {v0, v4, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    .line 166
    iput-wide v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Cnt_SameLocSet:J

    .line 339
    iput v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->lastStatus:I

    .line 439
    iput v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->STATE_UNKNWON:I

    .line 440
    iput v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->STATE_STATIONARY:I

    .line 441
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->STATE_VEHICLE:I

    .line 448
    iput-wide v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->time_lastSent:J

    .line 450
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->AlgoLocP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    .line 451
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->AlgoLocPP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    .line 452
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->AlgoLocPPP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    .line 488
    iput-wide v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->lastTrajTime:J

    .line 704
    new-array v0, v4, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    .line 705
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Prev_StateTime:D

    .line 706
    new-array v0, v4, [D

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->ProcessNoisePerSecondVehicle:[D

    .line 707
    new-array v0, v4, [D

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->ProcessNoisePerSecondWalk:[D

    .line 35
    return-void

    .line 704
    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x4059000000000000L    # 100.0
    .end array-data

    .line 706
    :array_1
    .array-data 8
        0x4024000000000000L    # 10.0
        0x4024000000000000L    # 10.0
        0x3fe0000000000000L    # 0.5
    .end array-data

    .line 707
    :array_2
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3fe0000000000000L    # 0.5
    .end array-data
.end method

.method private LocValidCheck(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;Z)I
    .locals 22
    .param p1, "lpploc"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    .param p2, "lpplocOld"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    .param p3, "flag_fixPos"    # Z

    .prologue
    .line 344
    new-instance v8, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    invoke-direct {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;-><init>()V

    .line 345
    .local v8, "apdrCurrent":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    new-instance v9, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    invoke-direct {v9}, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;-><init>()V

    .line 347
    .local v9, "apdrOld":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "apdr$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    .line 348
    .local v6, "apdr":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    iget-wide v0, v8, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    move-wide/from16 v18, v0

    iget-wide v0, v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-gez v18, :cond_1

    .line 349
    iget-wide v0, v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    move-wide/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-gez v18, :cond_1

    .line 350
    invoke-virtual {v8, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->set(Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;)V

    .line 353
    :cond_1
    iget-wide v0, v9, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    move-wide/from16 v18, v0

    iget-wide v0, v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-gez v18, :cond_0

    .line 354
    iget-wide v0, v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    move-wide/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-gez v18, :cond_0

    .line 355
    invoke-virtual {v9, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->set(Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;)V

    goto :goto_0

    .line 360
    .end local v6    # "apdr":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    :cond_2
    iget v10, v8, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    .line 361
    .local v10, "currStatus":I
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    .line 364
    .local v4, "MAX_VELOCITY":D
    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v10, v0, :cond_3

    iget v0, v9, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 366
    :cond_3
    const/16 v18, 0x4

    move/from16 v0, v18

    if-eq v10, v0, :cond_4

    iget v0, v9, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 367
    :cond_4
    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    .line 384
    :goto_1
    invoke-virtual/range {p1 .. p2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->distanceTo(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)D

    move-result-wide v12

    .line 385
    .local v12, "dist_2_point":D
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v18

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v20

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v16, v18, v20

    .line 386
    .local v16, "timediff":D
    mul-double v14, v4, v16

    .line 388
    .local v14, "maxDistance":D
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v10, v0, :cond_5

    iget v0, v9, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 389
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->APDRMAXNUMBER:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3fe999999999999aL    # 0.8

    mul-double v18, v18, v20

    cmpl-double v18, v14, v18

    if-lez v18, :cond_5

    .line 390
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->APDRMAXNUMBER:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3fe999999999999aL    # 0.8

    mul-double v14, v18, v20

    .line 394
    :cond_5
    const/4 v11, 0x0

    .line 396
    .local v11, "result":I
    const-wide/16 v18, 0x0

    cmpl-double v18, v16, v18

    if-lez v18, :cond_6

    .line 398
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "gps"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_d

    .line 399
    const/4 v11, 0x1

    .line 434
    :cond_6
    :goto_2
    return v11

    .line 370
    .end local v11    # "result":I
    .end local v12    # "dist_2_point":D
    .end local v14    # "maxDistance":D
    .end local v16    # "timediff":D
    :cond_7
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    .line 374
    :cond_8
    const/16 v18, 0x2

    move/from16 v0, v18

    if-eq v10, v0, :cond_9

    iget v0, v9, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 375
    :cond_9
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 374
    goto/16 :goto_1

    .line 377
    :cond_a
    const/16 v18, 0x3

    move/from16 v0, v18

    if-eq v10, v0, :cond_b

    iget v0, v9, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 378
    :cond_b
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 377
    goto/16 :goto_1

    .line 381
    :cond_c
    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    goto/16 :goto_1

    .line 401
    .restart local v11    # "result":I
    .restart local v12    # "dist_2_point":D
    .restart local v14    # "maxDistance":D
    .restart local v16    # "timediff":D
    :cond_d
    cmpl-double v18, v12, v14

    if-lez v18, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/location/Location;->getAccuracy()F

    move-result v18

    const/high16 v19, 0x42480000    # 50.0f

    cmpl-float v18, v18, v19

    if-lez v18, :cond_f

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    .line 403
    .restart local v6    # "apdr":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Loc Rejection : apdr time - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-wide v0, v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    goto :goto_3

    .line 405
    .end local v6    # "apdr":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    :cond_e
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Loc Rejection : currStatus - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " oldStatus: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v9, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 406
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Loc Rejection : timediff - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " MAX_VELOCITY: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 407
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Loc Rejection : dist - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " MaxDist: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 408
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Loc Rejection :Too long distance, eliminate pos "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 409
    const-string/jumbo v19, " , dist: "

    .line 408
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 410
    const-string/jumbo v19, " MaxDist: "

    .line 408
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 411
    const/4 v11, 0x0

    .line 401
    goto/16 :goto_2

    .line 413
    :cond_f
    const-wide/high16 v18, 0x4034000000000000L    # 20.0

    mul-double v18, v18, v16

    const-wide/high16 v20, 0x4008000000000000L    # 3.0

    mul-double v18, v18, v20

    cmpl-double v18, v12, v18

    if-lez v18, :cond_11

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    .line 415
    .restart local v6    # "apdr":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Loc Rejection : apdr time - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-wide v0, v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    goto :goto_4

    .line 417
    .end local v6    # "apdr":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    :cond_10
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Loc Rejection : currStatus - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " oldStatus: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v9, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 418
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Loc Rejection : timediff - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " MAX_VELOCITY: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 419
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Loc Rejection : dist - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " MaxDist: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 420
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Loc Rejection :Too long distance, eliminate pos "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 421
    const-string/jumbo v19, " , dist: "

    .line 420
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 422
    const-string/jumbo v19, " MaxDist: "

    .line 420
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 423
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 426
    :cond_11
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v10, v0, :cond_12

    .line 427
    const/4 v11, 0x2

    goto/16 :goto_2

    .line 430
    :cond_12
    const/4 v11, 0x1

    goto/16 :goto_2
.end method

.method private LppAlgorithmCheckAndRun(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V
    .locals 8
    .param p1, "lpploca"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    .prologue
    .line 286
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Flag_LocOK - loc time is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 289
    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "NOPROVIDER"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 290
    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v4, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    .line 293
    :cond_0
    const/4 v0, 0x0

    .line 295
    .local v0, "flag_goAlgo":Z
    iget-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Cnt_SameLocSet:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Cnt_SameLocSet:J

    .line 296
    iget-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->lastTrajTime:J

    long-to-double v4, v4

    const-wide v6, 0x40c3880000000000L    # 10000.0

    add-double/2addr v4, v6

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v6

    long-to-double v6, v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_3

    .line 297
    const/4 v0, 0x1

    .line 298
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Cnt_SameLocSet:J

    .line 304
    :cond_1
    :goto_0
    if-eqz v0, :cond_9

    .line 306
    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrSetLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v4, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    .line 309
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v1, "mAPDRDeleteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;>;"
    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "sample$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    .line 311
    .local v2, "sample":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    iget-wide v4, v2, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    .line 312
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 299
    .end local v1    # "mAPDRDeleteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;>;"
    .end local v2    # "sample":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    .end local v3    # "sample$iterator":Ljava/util/Iterator;
    :cond_3
    iget-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Cnt_SameLocSet:J

    const-wide/16 v6, 0x2

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 301
    const/4 v0, 0x1

    goto :goto_0

    .line 316
    .restart local v1    # "mAPDRDeleteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;>;"
    .restart local v3    # "sample$iterator":Ljava/util/Iterator;
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Delete ApdrData num : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 318
    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 322
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 323
    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    .line 324
    .restart local v2    # "sample":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    iget-wide v4, v2, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrSetLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_6

    .line 325
    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    invoke-direct {v5, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 329
    .end local v2    # "sample":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    :cond_7
    iget-boolean v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->flag_AlgorithmOn:Z

    if-eqz v4, :cond_8

    .line 330
    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LppAlgorithmRun()V

    .line 333
    :cond_8
    const-string/jumbo v4, "LppAlgorithmRun end"

    invoke-direct {p0, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 335
    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrSetLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    .line 285
    .end local v1    # "mAPDRDeleteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;>;"
    .end local v3    # "sample$iterator":Ljava/util/Iterator;
    :cond_9
    return-void
.end method

.method private LppAlgorithmRun()V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->AlgoLocPPP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->AlgoLocPP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    .line 459
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->AlgoLocPP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    .line 460
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->AlgoLocP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrSetLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    .line 462
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->AlgoLocPPP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "NOPROVIDER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    const-string/jumbo v0, "LppAlgorithmRun - Initial update"

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 464
    return-void

    .line 468
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->estimateSinglePoint()V

    .line 472
    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->makeTrajectory()V

    .line 476
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 477
    const-string/jumbo v0, "ERROR: LppAlgorithmRun() unkwon error - [mLPPPosition.size() < 1]"

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 478
    return-void

    .line 481
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;->onUpdateLPPtraj(Ljava/util/ArrayList;)V

    .line 482
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 485
    return-void
.end method

.method private PositionFiltering(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    .locals 23
    .param p1, "LocMeas"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    .prologue
    .line 712
    move-object/from16 v20, p1

    .line 715
    .local v20, "result":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    const/4 v3, 0x3

    new-array v0, v3, [D

    move-object/from16 v21, v0

    .line 716
    .local v21, "resultENU":[D
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v4, 0x0

    aget-wide v4, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v6, 0x1

    aget-wide v6, v3, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v8, 0x2

    aget-wide v8, v3, v8

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    .line 717
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v4

    const/4 v3, 0x0

    aput-wide v4, v21, v3

    .line 718
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v4

    const/4 v3, 0x1

    aput-wide v4, v21, v3

    .line 719
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosUpLocal()D

    move-result-wide v4

    const/4 v3, 0x2

    aput-wide v4, v21, v3

    .line 721
    const/4 v3, 0x0

    aget-wide v4, v21, v3

    const/4 v3, 0x0

    aget-wide v6, v21, v3

    mul-double/2addr v4, v6

    const/4 v3, 0x1

    aget-wide v6, v21, v3

    const/4 v3, 0x1

    aget-wide v8, v21, v3

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const/4 v3, 0x2

    aget-wide v6, v21, v3

    const/4 v3, 0x2

    aget-wide v8, v21, v3

    mul-double/2addr v6, v8

    add-double v10, v4, v6

    .line 722
    .local v10, "Dist":D
    const-wide v4, 0x41d502f900000000L    # 1.410065408E9

    cmpl-double v3, v10, v4

    if-lez v3, :cond_0

    .line 728
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLatitude()D

    move-result-wide v4

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    .line 729
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x1

    aput-wide v4, v3, v6

    .line 730
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAltitude()D

    move-result-wide v4

    const/4 v6, 0x2

    aput-wide v4, v3, v6

    .line 731
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v4, 0x0

    aget-wide v4, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v6, 0x1

    aget-wide v6, v3, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v8, 0x2

    aget-wide v8, v3, v8

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    .line 733
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PositionFilteringInit()V

    .line 734
    const/4 v3, 0x3

    new-array v0, v3, [D

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v4

    const/4 v3, 0x0

    aput-wide v4, v19, v3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v4

    const/4 v3, 0x1

    aput-wide v4, v19, v3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosUpLocal()D

    move-result-wide v4

    const/4 v3, 0x2

    aput-wide v4, v19, v3

    .line 735
    .local v19, "mStateInit":[D
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setInitialState([D)Z

    .line 737
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v4

    long-to-double v4, v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Prev_StateTime:D

    .line 740
    return-object p1

    .line 744
    .end local v19    # "mStateInit":[D
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Measurement: E : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " N "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " U "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 746
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v4

    long-to-double v4, v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Prev_StateTime:D

    sub-double/2addr v4, v6

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v16, v4, v6

    .line 747
    .local v16, "delT":D
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v4

    long-to-double v4, v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Prev_StateTime:D

    .line 750
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getMovingStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 751
    const/4 v3, 0x3

    new-array v0, v3, [[D

    move-object/from16 v18, v0

    const/4 v3, 0x3

    new-array v3, v3, [D

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->ProcessNoisePerSecondWalk:[D

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    mul-double v4, v4, v16

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    aput-wide v4, v3, v6

    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    aput-wide v4, v3, v6

    const/4 v4, 0x0

    aput-object v3, v18, v4

    const/4 v3, 0x3

    new-array v3, v3, [D

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->ProcessNoisePerSecondWalk:[D

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    mul-double v4, v4, v16

    const/4 v6, 0x1

    aput-wide v4, v3, v6

    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    aput-wide v4, v3, v6

    const/4 v4, 0x1

    aput-object v3, v18, v4

    const/4 v3, 0x3

    new-array v3, v3, [D

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    aput-wide v4, v3, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->ProcessNoisePerSecondWalk:[D

    const/4 v5, 0x2

    aget-wide v4, v4, v5

    mul-double v4, v4, v16

    const/4 v6, 0x2

    aput-wide v4, v3, v6

    const/4 v4, 0x2

    aput-object v3, v18, v4

    .line 752
    .local v18, "mProcessNoise":[[D
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setProcessNoise([[D)Z

    move-result v3

    if-nez v3, :cond_1

    .line 753
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "PositionFiltering - Process noise error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const/4 v3, 0x0

    return-object v3

    .line 759
    .end local v18    # "mProcessNoise":[[D
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getMovingStatus()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 761
    const/4 v3, 0x3

    new-array v0, v3, [[D

    move-object/from16 v18, v0

    const/4 v3, 0x3

    new-array v3, v3, [D

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v18, v4

    const/4 v3, 0x3

    new-array v3, v3, [D

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v18, v4

    const/4 v3, 0x3

    new-array v3, v3, [D

    fill-array-data v3, :array_2

    const/4 v4, 0x2

    aput-object v3, v18, v4

    .line 762
    .restart local v18    # "mProcessNoise":[[D
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setProcessNoise([[D)Z

    move-result v3

    if-nez v3, :cond_2

    .line 763
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "PositionFiltering - Process noise error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    const/4 v3, 0x0

    return-object v3

    .line 766
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->TimePropagation(D)Z

    move-result v3

    if-nez v3, :cond_3

    .line 767
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "PositionFiltering - TimePropagation error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const/4 v3, 0x0

    return-object v3

    .line 772
    .end local v18    # "mProcessNoise":[[D
    :cond_3
    const/4 v3, 0x3

    new-array v13, v3, [[D

    const/4 v3, 0x1

    new-array v3, v3, [D

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v4

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    const/4 v4, 0x0

    aput-object v3, v13, v4

    const/4 v3, 0x1

    new-array v3, v3, [D

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v4

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    const/4 v4, 0x1

    aput-object v3, v13, v4

    const/4 v3, 0x1

    new-array v3, v3, [D

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosUpLocal()D

    move-result-wide v4

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    const/4 v4, 0x2

    aput-object v3, v13, v4

    .line 774
    .local v13, "Meas":[[D
    new-instance v22, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, v22

    invoke-direct {v0, v13}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([[D)V

    .line 775
    .local v22, "z":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    .line 776
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "network"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 777
    const/4 v3, 0x3

    new-array v14, v3, [[D

    const/4 v3, 0x3

    new-array v3, v3, [D

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v4

    const/high16 v5, 0x41a00000    # 20.0f

    div-float/2addr v4, v5

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v5

    const/high16 v6, 0x41a00000    # 20.0f

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-double v4, v4

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    aput-wide v4, v3, v6

    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    aput-wide v4, v3, v6

    const/4 v4, 0x0

    aput-object v3, v14, v4

    const/4 v3, 0x3

    new-array v3, v3, [D

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v4

    const/high16 v5, 0x41a00000    # 20.0f

    div-float/2addr v4, v5

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v5

    const/high16 v6, 0x41a00000    # 20.0f

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-double v4, v4

    const/4 v6, 0x1

    aput-wide v4, v3, v6

    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    aput-wide v4, v3, v6

    const/4 v4, 0x1

    aput-object v3, v14, v4

    const/4 v3, 0x3

    new-array v3, v3, [D

    fill-array-data v3, :array_3

    const/4 v4, 0x2

    aput-object v3, v14, v4

    .line 778
    .local v14, "MeasNoise":[[D
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v3, v14}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setMeasurementNoise([[D)Z

    .line 790
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementUpdate(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 791
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "PositionFiltering - MeasurementUpdate error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const/4 v3, 0x0

    return-object v3

    .line 780
    .end local v14    # "MeasNoise":[[D
    :cond_4
    const/4 v3, 0x3

    new-array v14, v3, [[D

    const/4 v3, 0x3

    new-array v3, v3, [D

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-double v4, v4

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    aput-wide v4, v3, v6

    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    aput-wide v4, v3, v6

    const/4 v4, 0x0

    aput-object v3, v14, v4

    const/4 v3, 0x3

    new-array v3, v3, [D

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-double v4, v4

    const/4 v6, 0x1

    aput-wide v4, v3, v6

    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    aput-wide v4, v3, v6

    const/4 v4, 0x1

    aput-object v3, v14, v4

    const/4 v3, 0x3

    new-array v3, v3, [D

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    aput-wide v4, v3, v6

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v4

    const/high16 v5, 0x40a00000    # 5.0f

    mul-float/2addr v4, v5

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v5

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-double v4, v4

    const/4 v6, 0x2

    aput-wide v4, v3, v6

    const/4 v4, 0x2

    aput-object v3, v14, v4

    .line 781
    .restart local v14    # "MeasNoise":[[D
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v3, v14}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setMeasurementNoise([[D)Z

    goto/16 :goto_0

    .line 785
    .end local v14    # "MeasNoise":[[D
    :cond_5
    const/4 v3, 0x3

    new-array v14, v3, [[D

    const/4 v3, 0x3

    new-array v3, v3, [D

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-double v4, v4

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    aput-wide v4, v3, v6

    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    aput-wide v4, v3, v6

    const/4 v4, 0x0

    aput-object v3, v14, v4

    const/4 v3, 0x3

    new-array v3, v3, [D

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-double v4, v4

    const/4 v6, 0x1

    aput-wide v4, v3, v6

    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    aput-wide v4, v3, v6

    const/4 v4, 0x1

    aput-object v3, v14, v4

    const/4 v3, 0x3

    new-array v3, v3, [D

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    aput-wide v4, v3, v6

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v4, v5

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v5

    const/high16 v6, 0x41200000    # 10.0f

    mul-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-double v4, v4

    const/4 v6, 0x2

    aput-wide v4, v3, v6

    const/4 v4, 0x2

    aput-object v3, v14, v4

    .line 786
    .restart local v14    # "MeasNoise":[[D
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v3, v14}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setMeasurementNoise([[D)Z

    goto/16 :goto_0

    .line 795
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->getCurrentState()[D

    move-result-object v2

    .line 796
    .local v2, "ENU_updated":[D
    const/4 v3, 0x3

    new-array v15, v3, [D

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v4, 0x0

    aget-wide v4, v3, v4

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v6

    const-wide v6, 0x400921fafc8b007aL    # 3.141592

    mul-double/2addr v4, v6

    const/4 v3, 0x0

    aput-wide v4, v15, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v4, 0x1

    aget-wide v4, v3, v4

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v6

    const-wide v6, 0x400921fafc8b007aL    # 3.141592

    mul-double/2addr v4, v6

    const/4 v3, 0x1

    aput-wide v4, v15, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v4, 0x2

    aget-wide v4, v3, v4

    const/4 v3, 0x2

    aput-wide v4, v15, v3

    .line 797
    .local v15, "Origin_LLH_radian":[D
    invoke-static {v2, v15}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->enu2llh([D[D)[D

    move-result-object v12

    .line 799
    .local v12, "LLH_updated":[D
    const/4 v3, 0x0

    aget-wide v4, v12, v3

    const-wide v6, 0x400921fafc8b007aL    # 3.141592

    div-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double/2addr v4, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setLatitude(D)V

    .line 800
    const/4 v3, 0x1

    aget-wide v4, v12, v3

    const-wide v6, 0x400921fafc8b007aL    # 3.141592

    div-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double/2addr v4, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setLongitude(D)V

    .line 801
    const/4 v3, 0x2

    aget-wide v4, v12, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setAltitude(D)V

    .line 804
    return-object p1

    .line 761
    nop

    :array_0
    .array-data 8
        0x406c200000000000L    # 225.0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x406c200000000000L    # 225.0
        0x4059000000000000L    # 100.0
        0x0
    .end array-data

    :array_2
    .array-data 8
        0x0
        0x0
        0x4039000000000000L    # 25.0
    .end array-data

    .line 777
    :array_3
    .array-data 8
        0x0
        0x0
        0x4197d78400000000L    # 1.0E8
    .end array-data
.end method

.method private PositionFilteringInit()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x3

    .line 809
    const-string/jumbo v5, "PositionFilteringInit()"

    invoke-direct {p0, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 813
    new-array v0, v6, [[D

    new-array v5, v6, [D

    fill-array-data v5, :array_0

    aput-object v5, v0, v7

    new-array v5, v6, [D

    fill-array-data v5, :array_1

    aput-object v5, v0, v8

    new-array v5, v6, [D

    fill-array-data v5, :array_2

    aput-object v5, v0, v9

    .line 814
    .local v0, "mCovMatrix":[[D
    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v5, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setInitialCovariance([[D)Z

    .line 816
    new-array v1, v6, [[D

    new-array v5, v6, [D

    fill-array-data v5, :array_3

    aput-object v5, v1, v7

    new-array v5, v6, [D

    fill-array-data v5, :array_4

    aput-object v5, v1, v8

    new-array v5, v6, [D

    fill-array-data v5, :array_5

    aput-object v5, v1, v9

    .line 817
    .local v1, "mMeasMatrix":[[D
    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v5, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setMeasurementMatrix([[D)Z

    .line 819
    new-array v4, v6, [D

    .local v4, "mStateInit":[D
    fill-array-data v4, :array_6

    .line 820
    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v5, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setInitialState([D)Z

    .line 822
    new-array v2, v6, [[D

    new-array v5, v6, [D

    fill-array-data v5, :array_7

    aput-object v5, v2, v7

    new-array v5, v6, [D

    fill-array-data v5, :array_8

    aput-object v5, v2, v8

    new-array v5, v6, [D

    fill-array-data v5, :array_9

    aput-object v5, v2, v9

    .line 823
    .local v2, "mMeasNoise":[[D
    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v5, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setMeasurementNoise([[D)Z

    .line 825
    new-array v3, v6, [[D

    new-array v5, v6, [D

    fill-array-data v5, :array_a

    aput-object v5, v3, v7

    new-array v5, v6, [D

    fill-array-data v5, :array_b

    aput-object v5, v3, v8

    new-array v5, v6, [D

    fill-array-data v5, :array_c

    aput-object v5, v3, v9

    .line 826
    .local v3, "mProcessNoise":[[D
    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v5, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setProcessNoise([[D)Z

    .line 828
    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v5, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setTransitionMatrix([[D)Z

    .line 807
    return-void

    .line 813
    :array_0
    .array-data 8
        0x4059000000000000L    # 100.0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x4059000000000000L    # 100.0
        0x0
    .end array-data

    :array_2
    .array-data 8
        0x0
        0x0
        0x4059000000000000L    # 100.0
    .end array-data

    .line 816
    :array_3
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 8
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
    .end array-data

    :array_5
    .array-data 8
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data

    .line 819
    :array_6
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data

    .line 822
    :array_7
    .array-data 8
        0x4030000000000000L    # 16.0
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 8
        0x0
        0x4030000000000000L    # 16.0
        0x0
    .end array-data

    :array_9
    .array-data 8
        0x0
        0x0
        0x40c3880000000000L    # 10000.0
    .end array-data

    .line 825
    :array_a
    .array-data 8
        0x4069000000000000L    # 200.0
        0x0
        0x0
    .end array-data

    :array_b
    .array-data 8
        0x0
        0x4069000000000000L    # 200.0
        0x0
    .end array-data

    :array_c
    .array-data 8
        0x0
        0x0
        0x4000000000000000L    # 2.0
    .end array-data
.end method

.method private SendStatus(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 971
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LppAlgorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;->status(Ljava/lang/String;)V

    .line 969
    :cond_0
    return-void
.end method

.method private SetTrajStartTime(J)J
    .locals 13
    .param p1, "time"    # J

    .prologue
    .line 667
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 668
    .local v0, "dataLocalTime":Landroid/text/format/Time;
    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 669
    iget v1, v0, Landroid/text/format/Time;->second:I

    int-to-long v6, v1

    iget v1, v0, Landroid/text/format/Time;->second:I

    int-to-long v8, v1

    const-wide/16 v10, 0x14

    div-long/2addr v8, v10

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x14

    mul-long/2addr v8, v10

    sub-long v2, v6, v8

    .line 670
    .local v2, "diff_sec":J
    long-to-double v6, p1

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    double-to-long v6, v6

    iget v1, v0, Landroid/text/format/Time;->second:I

    int-to-long v8, v1

    sub-long/2addr v6, v8

    add-long/2addr v6, v2

    const-wide/16 v8, 0x3e8

    mul-long v4, v6, v8

    .line 671
    .local v4, "result":J
    return-wide v4
.end method

.method private estimateSinglePoint()V
    .locals 5

    .prologue
    .line 676
    const/4 v0, 0x0

    .line 679
    .local v0, "EstResult":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->AlgoLocPP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "NOPROVIDER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 680
    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->AlgoLocPP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    .line 681
    .local v1, "LocMeas":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setMovingStatus(I)V

    .line 682
    invoke-direct {p0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PositionFiltering(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    move-result-object v0

    .line 686
    .end local v0    # "EstResult":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    .end local v1    # "LocMeas":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->FilterdOlderLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->FilterdOldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    .line 689
    if-eqz v0, :cond_1

    .line 691
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->FilterdOldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->AlgoLocPP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    .line 698
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->AlgoLocP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    .line 700
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->FilterdOldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->FilterdOlderLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->estimateVelocity(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    .line 674
    return-void

    .line 694
    :cond_1
    const-string/jumbo v2, "EstimateSinglePoint(), abnormal filter output - null"

    invoke-direct {p0, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 695
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->FilterdOldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->AlgoLocPP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    goto :goto_0
.end method

.method private makeTrajectory()V
    .locals 78

    .prologue
    .line 493
    new-instance v3, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->FilterdOlderLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v3, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    .line 494
    .local v3, "loc1":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    new-instance v56, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->FilterdOldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v0, v56

    invoke-direct {v0, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    .line 495
    .local v56, "loc2":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v10, 0x0

    aget-wide v4, v4, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v11, 0x1

    aget-wide v6, v10, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v11, 0x2

    aget-wide v8, v10, v11

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    .line 496
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v10, 0x0

    aget-wide v6, v4, v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v10, 0x1

    aget-wide v8, v4, v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v10, 0x2

    aget-wide v10, v4, v10

    move-object/from16 v5, v56

    invoke-virtual/range {v5 .. v11}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    .line 498
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->lastTrajTime:J

    const-wide/16 v12, 0x0

    cmp-long v4, v10, v12

    if-nez v4, :cond_1

    .line 499
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->FilterdOlderLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v4, v10, v12

    if-nez v4, :cond_0

    .line 501
    const-string/jumbo v4, "makeTrajectory : No need to update"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 502
    return-void

    .line 505
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->FilterdOlderLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SetTrajStartTime(J)J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->lastTrajTime:J

    .line 508
    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->lastTrajTime:J

    sub-long/2addr v10, v12

    long-to-double v10, v10

    const-wide v12, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4034000000000000L    # 20.0

    sub-double v72, v12, v10

    .line 510
    .local v72, "time_diff":D
    const/16 v45, 0x1

    .line 514
    .local v45, "dataValid":Z
    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v10

    long-to-double v10, v10

    const-wide v12, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v64, v10, v12

    .line 515
    .local v64, "t1":D
    invoke-virtual/range {v56 .. v56}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v10

    long-to-double v10, v10

    const-wide v12, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v70, v10, v12

    .line 516
    .local v70, "t2":D
    sub-double v10, v70, v64

    const-wide v12, 0x3fc999999999999aL    # 0.2

    mul-double v66, v10, v12

    .line 517
    .local v66, "t1_p1":D
    sub-double v10, v70, v64

    const-wide v12, 0x3fe999999999999aL    # 0.8

    mul-double v68, v10, v12

    .line 518
    .local v68, "t1_p2":D
    sub-double v46, v70, v64

    .line 520
    .local v46, "del_t1_t2":D
    const-wide/16 v10, 0x0

    cmpg-double v4, v46, v10

    if-gtz v4, :cond_3

    .line 521
    const-string/jumbo v4, "WARNING: makeTrajectory - abnormal t1, t2"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 522
    const/16 v45, 0x0

    .line 523
    const-wide/16 v30, 0x0

    .line 524
    .local v30, "X_D1_2":D
    const-wide/16 v40, 0x0

    .line 540
    .local v40, "Y_D1_2":D
    :goto_0
    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getFilteredVelocity()[D

    move-result-object v21

    .line 541
    .local v21, "XY_D1_filtered":[D
    invoke-virtual/range {v56 .. v56}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getFilteredVelocity()[D

    move-result-object v26

    .line 543
    .local v26, "XY_D2_filtered":[D
    const/4 v4, 0x0

    aget-wide v10, v21, v4

    const-wide/16 v12, 0x0

    cmpl-double v4, v10, v12

    if-nez v4, :cond_5

    const/4 v4, 0x1

    aget-wide v10, v21, v4

    const-wide/16 v12, 0x0

    cmpl-double v4, v10, v12

    if-nez v4, :cond_5

    .line 545
    :goto_1
    const/16 v45, 0x0

    .line 548
    :cond_2
    if-eqz v45, :cond_6

    .line 550
    mul-double v10, v30, v30

    mul-double v12, v40, v40

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v58

    .line 552
    .local v58, "norm":D
    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v22

    .line 553
    .local v22, "X1":D
    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v34

    .line 554
    .local v34, "Y1":D
    invoke-virtual/range {v56 .. v56}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v24

    .line 555
    .local v24, "X2":D
    invoke-virtual/range {v56 .. v56}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v36

    .line 557
    .local v36, "Y2":D
    const/4 v4, 0x0

    aget-wide v10, v21, v4

    mul-double v28, v10, v58

    .line 558
    .local v28, "X_D1":D
    const/4 v4, 0x1

    aget-wide v10, v21, v4

    mul-double v38, v10, v58

    .line 559
    .local v38, "Y_D1":D
    const/4 v4, 0x0

    aget-wide v10, v26, v4

    mul-double v32, v10, v58

    .line 560
    .local v32, "X_D2":D
    const/4 v4, 0x1

    aget-wide v10, v26, v4

    mul-double v42, v10, v58

    .line 566
    .local v42, "Y_D2":D
    move-wide/from16 v48, v28

    .line 567
    .local v48, "e_x":D
    move-wide/from16 v52, v22

    .line 568
    .local v52, "f_x":D
    move-wide/from16 v50, v38

    .line 569
    .local v50, "e_y":D
    move-wide/from16 v54, v34

    .line 581
    .local v54, "f_y":D
    const/4 v4, 0x4

    new-array v0, v4, [[D

    move-object/from16 v57, v0

    .line 582
    const/4 v4, 0x4

    new-array v4, v4, [D

    const-wide/high16 v10, 0x4014000000000000L    # 5.0

    mul-double v10, v10, v66

    mul-double v10, v10, v66

    mul-double v10, v10, v66

    mul-double v10, v10, v66

    const/4 v12, 0x0

    aput-wide v10, v4, v12

    .line 583
    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    mul-double v10, v10, v66

    mul-double v10, v10, v66

    mul-double v10, v10, v66

    const/4 v12, 0x1

    aput-wide v10, v4, v12

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    mul-double v10, v10, v66

    mul-double v10, v10, v66

    const/4 v12, 0x2

    aput-wide v10, v4, v12

    .line 584
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double v10, v10, v66

    const/4 v12, 0x3

    aput-wide v10, v4, v12

    .line 582
    const/4 v10, 0x0

    aput-object v4, v57, v10

    .line 585
    const/4 v4, 0x4

    new-array v4, v4, [D

    const-wide/high16 v10, 0x4014000000000000L    # 5.0

    mul-double v10, v10, v68

    mul-double v10, v10, v68

    mul-double v10, v10, v68

    mul-double v10, v10, v68

    const/4 v12, 0x0

    aput-wide v10, v4, v12

    .line 586
    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    mul-double v10, v10, v68

    mul-double v10, v10, v68

    mul-double v10, v10, v68

    const/4 v12, 0x1

    aput-wide v10, v4, v12

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    mul-double v10, v10, v68

    mul-double v10, v10, v68

    const/4 v12, 0x2

    aput-wide v10, v4, v12

    .line 587
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double v10, v10, v68

    const/4 v12, 0x3

    aput-wide v10, v4, v12

    .line 585
    const/4 v10, 0x1

    aput-object v4, v57, v10

    .line 588
    const/4 v4, 0x4

    new-array v4, v4, [D

    mul-double v10, v46, v46

    mul-double v10, v10, v46

    mul-double v10, v10, v46

    mul-double v10, v10, v46

    const/4 v12, 0x0

    aput-wide v10, v4, v12

    .line 589
    mul-double v10, v46, v46

    mul-double v10, v10, v46

    mul-double v10, v10, v46

    const/4 v12, 0x1

    aput-wide v10, v4, v12

    .line 590
    mul-double v10, v46, v46

    mul-double v10, v10, v46

    const/4 v12, 0x2

    aput-wide v10, v4, v12

    .line 591
    mul-double v10, v46, v46

    const/4 v12, 0x3

    aput-wide v10, v4, v12

    .line 588
    const/4 v10, 0x2

    aput-object v4, v57, v10

    .line 592
    const/4 v4, 0x4

    new-array v4, v4, [D

    const-wide/high16 v10, 0x4014000000000000L    # 5.0

    mul-double v10, v10, v46

    mul-double v10, v10, v46

    mul-double v10, v10, v46

    mul-double v10, v10, v46

    const/4 v12, 0x0

    aput-wide v10, v4, v12

    .line 593
    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    mul-double v10, v10, v46

    mul-double v10, v10, v46

    mul-double v10, v10, v46

    const/4 v12, 0x1

    aput-wide v10, v4, v12

    .line 594
    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    mul-double v10, v10, v46

    mul-double v10, v10, v46

    const/4 v12, 0x2

    aput-wide v10, v4, v12

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double v10, v10, v46

    const/4 v12, 0x3

    aput-wide v10, v4, v12

    .line 592
    const/4 v10, 0x3

    aput-object v4, v57, v10

    .line 595
    .local v57, "vals":[[D
    new-instance v2, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, v57

    invoke-direct {v2, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([[D)V

    .line 597
    .local v2, "A_mat":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    const/4 v4, 0x4

    new-array v0, v4, [[D

    move-object/from16 v74, v0

    const/4 v4, 0x1

    new-array v4, v4, [D

    sub-double v10, v30, v28

    const/4 v12, 0x0

    aput-wide v10, v4, v12

    const/4 v10, 0x0

    aput-object v4, v74, v10

    const/4 v4, 0x1

    new-array v4, v4, [D

    sub-double v10, v30, v28

    const/4 v12, 0x0

    aput-wide v10, v4, v12

    const/4 v10, 0x1

    aput-object v4, v74, v10

    .line 598
    const/4 v4, 0x1

    new-array v4, v4, [D

    mul-double v10, v28, v46

    sub-double v10, v24, v10

    sub-double v10, v10, v22

    const/4 v12, 0x0

    aput-wide v10, v4, v12

    const/4 v10, 0x2

    aput-object v4, v74, v10

    const/4 v4, 0x1

    new-array v4, v4, [D

    sub-double v10, v32, v28

    const/4 v12, 0x0

    aput-wide v10, v4, v12

    const/4 v10, 0x3

    aput-object v4, v74, v10

    .line 599
    .local v74, "valsX":[[D
    new-instance v76, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, v76

    move-object/from16 v1, v74

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([[D)V

    .line 601
    .local v76, "x_":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    const/4 v4, 0x4

    new-array v0, v4, [[D

    move-object/from16 v75, v0

    const/4 v4, 0x1

    new-array v4, v4, [D

    sub-double v10, v40, v38

    const/4 v12, 0x0

    aput-wide v10, v4, v12

    const/4 v10, 0x0

    aput-object v4, v75, v10

    const/4 v4, 0x1

    new-array v4, v4, [D

    sub-double v10, v40, v38

    const/4 v12, 0x0

    aput-wide v10, v4, v12

    const/4 v10, 0x1

    aput-object v4, v75, v10

    .line 602
    const/4 v4, 0x1

    new-array v4, v4, [D

    mul-double v10, v38, v46

    sub-double v10, v36, v10

    sub-double v10, v10, v34

    const/4 v12, 0x0

    aput-wide v10, v4, v12

    const/4 v10, 0x2

    aput-object v4, v75, v10

    const/4 v4, 0x1

    new-array v4, v4, [D

    sub-double v10, v42, v38

    const/4 v12, 0x0

    aput-wide v10, v4, v12

    const/4 v10, 0x3

    aput-object v4, v75, v10

    .line 603
    .local v75, "valsY":[[D
    new-instance v77, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, v77

    move-object/from16 v1, v75

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([[D)V

    .line 605
    .local v77, "y_":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->inverse()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v4

    move-object/from16 v0, v76

    invoke-virtual {v4, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v27

    .line 606
    .local v27, "X_coef":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->inverse()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v4

    move-object/from16 v0, v77

    invoke-virtual {v4, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v44

    .line 609
    .local v44, "Y_coef":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    new-instance v5, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v0, v56

    invoke-direct {v5, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    .line 612
    .local v5, "LocOut":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v10, 0x0

    aget-wide v6, v4, v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v10, 0x1

    aget-wide v8, v4, v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v10, 0x2

    aget-wide v10, v4, v10

    invoke-virtual/range {v5 .. v11}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    .line 614
    move-wide/from16 v62, v72

    .local v62, "t":D
    :goto_2
    cmpg-double v4, v62, v46

    if-gez v4, :cond_7

    .line 619
    const/4 v4, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v10}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v10

    mul-double v10, v10, v62

    mul-double v10, v10, v62

    mul-double v10, v10, v62

    mul-double v10, v10, v62

    mul-double v10, v10, v62

    .line 620
    const/4 v4, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v12}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v12

    mul-double v12, v12, v62

    mul-double v12, v12, v62

    mul-double v12, v12, v62

    mul-double v12, v12, v62

    .line 619
    add-double/2addr v10, v12

    .line 620
    const/4 v4, 0x2

    const/4 v12, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v12}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v12

    mul-double v12, v12, v62

    mul-double v12, v12, v62

    mul-double v12, v12, v62

    .line 619
    add-double/2addr v10, v12

    .line 621
    const/4 v4, 0x3

    const/4 v12, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v12}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v12

    mul-double v12, v12, v62

    mul-double v12, v12, v62

    .line 619
    add-double/2addr v10, v12

    .line 621
    mul-double v12, v28, v62

    .line 619
    add-double/2addr v10, v12

    add-double v6, v10, v22

    .line 622
    .local v6, "X_traj":D
    const/4 v4, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v10}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v10

    mul-double v10, v10, v62

    mul-double v10, v10, v62

    mul-double v10, v10, v62

    mul-double v10, v10, v62

    mul-double v10, v10, v62

    .line 623
    const/4 v4, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v12}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v12

    mul-double v12, v12, v62

    mul-double v12, v12, v62

    mul-double v12, v12, v62

    mul-double v12, v12, v62

    .line 622
    add-double/2addr v10, v12

    .line 623
    const/4 v4, 0x2

    const/4 v12, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v12}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v12

    mul-double v12, v12, v62

    mul-double v12, v12, v62

    mul-double v12, v12, v62

    .line 622
    add-double/2addr v10, v12

    .line 624
    const/4 v4, 0x3

    const/4 v12, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v12}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v12

    mul-double v12, v12, v62

    mul-double v12, v12, v62

    .line 622
    add-double/2addr v10, v12

    .line 624
    mul-double v12, v38, v62

    .line 622
    add-double/2addr v10, v12

    add-double v8, v10, v34

    .line 626
    .local v8, "Y_traj":D
    invoke-virtual/range {v56 .. v56}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAltitude()D

    move-result-wide v10

    invoke-virtual/range {v5 .. v11}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setPosENU(DDD)V

    .line 627
    invoke-virtual {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v10

    const-wide v12, 0x408f400000000000L    # 1000.0

    mul-double v12, v12, v62

    double-to-long v12, v12

    add-long/2addr v10, v12

    invoke-virtual {v4, v10, v11}, Landroid/location/Location;->setTime(J)V

    .line 628
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    new-instance v10, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v10, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    invoke-virtual {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->lastTrajTime:J

    .line 614
    const-wide/high16 v10, 0x4034000000000000L    # 20.0

    add-double v62, v62, v10

    goto/16 :goto_2

    .line 525
    .end local v2    # "A_mat":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .end local v5    # "LocOut":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    .end local v6    # "X_traj":D
    .end local v8    # "Y_traj":D
    .end local v21    # "XY_D1_filtered":[D
    .end local v22    # "X1":D
    .end local v24    # "X2":D
    .end local v26    # "XY_D2_filtered":[D
    .end local v27    # "X_coef":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .end local v28    # "X_D1":D
    .end local v30    # "X_D1_2":D
    .end local v32    # "X_D2":D
    .end local v34    # "Y1":D
    .end local v36    # "Y2":D
    .end local v38    # "Y_D1":D
    .end local v40    # "Y_D1_2":D
    .end local v42    # "Y_D2":D
    .end local v44    # "Y_coef":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .end local v48    # "e_x":D
    .end local v50    # "e_y":D
    .end local v52    # "f_x":D
    .end local v54    # "f_y":D
    .end local v57    # "vals":[[D
    .end local v58    # "norm":D
    .end local v62    # "t":D
    .end local v74    # "valsX":[[D
    .end local v75    # "valsY":[[D
    .end local v76    # "x_":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .end local v77    # "y_":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    :cond_3
    const-wide v10, 0x4072c00000000000L    # 300.0

    cmpl-double v4, v46, v10

    if-lez v4, :cond_4

    .line 526
    const-string/jumbo v4, "WARNING: makeTrajectory - too much gap between t1 and t2"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 527
    const/16 v45, 0x0

    .line 528
    const-wide/16 v30, 0x0

    .line 529
    .restart local v30    # "X_D1_2":D
    const-wide/16 v40, 0x0

    .restart local v40    # "Y_D1_2":D
    goto/16 :goto_0

    .line 531
    .end local v30    # "X_D1_2":D
    .end local v40    # "Y_D1_2":D
    :cond_4
    invoke-virtual/range {v56 .. v56}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v10

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v12

    sub-double/2addr v10, v12

    .line 532
    sub-double v12, v70, v64

    .line 531
    div-double v30, v10, v12

    .line 533
    .restart local v30    # "X_D1_2":D
    invoke-virtual/range {v56 .. v56}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v10

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v12

    sub-double/2addr v10, v12

    .line 534
    sub-double v12, v70, v64

    .line 533
    div-double v40, v10, v12

    .restart local v40    # "Y_D1_2":D
    goto/16 :goto_0

    .line 544
    .restart local v21    # "XY_D1_filtered":[D
    .restart local v26    # "XY_D2_filtered":[D
    :cond_5
    const/4 v4, 0x0

    aget-wide v10, v26, v4

    const-wide/16 v12, 0x0

    cmpl-double v4, v10, v12

    if-nez v4, :cond_2

    const/4 v4, 0x1

    aget-wide v10, v26, v4

    const-wide/16 v12, 0x0

    cmpl-double v4, v10, v12

    if-nez v4, :cond_2

    goto/16 :goto_1

    .line 635
    :cond_6
    const-wide v10, 0x408c200000000000L    # 900.0

    cmpl-double v4, v46, v10

    if-lez v4, :cond_8

    .line 636
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    new-instance v10, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v0, v56

    invoke-direct {v10, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    invoke-virtual/range {v56 .. v56}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->lastTrajTime:J

    .line 490
    :cond_7
    return-void

    .line 638
    :cond_8
    const-wide/16 v10, 0x0

    cmpl-double v4, v46, v10

    if-lez v4, :cond_7

    .line 639
    new-instance v5, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v5, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    .line 640
    .restart local v5    # "LocOut":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    const/4 v4, 0x2

    new-array v0, v4, [D

    move-object/from16 v18, v0

    .line 641
    .local v18, "EN1":[D
    const/4 v4, 0x2

    new-array v0, v4, [D

    move-object/from16 v19, v0

    .line 642
    .local v19, "EN2":[D
    const/4 v4, 0x2

    new-array v0, v4, [D

    move-object/from16 v20, v0

    .line 644
    .local v20, "EN_new":[D
    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v10

    const/4 v4, 0x0

    aput-wide v10, v18, v4

    .line 645
    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v10

    const/4 v4, 0x1

    aput-wide v10, v18, v4

    .line 646
    invoke-virtual/range {v56 .. v56}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v10

    const/4 v4, 0x0

    aput-wide v10, v19, v4

    .line 647
    invoke-virtual/range {v56 .. v56}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v10

    const/4 v4, 0x1

    aput-wide v10, v19, v4

    .line 649
    move-wide/from16 v62, v72

    .restart local v62    # "t":D
    :goto_3
    cmpg-double v4, v62, v46

    if-gez v4, :cond_7

    .line 651
    div-double v60, v62, v46

    .line 653
    .local v60, "ratio":D
    const/4 v4, 0x0

    aget-wide v10, v18, v4

    const/4 v4, 0x0

    aget-wide v12, v19, v4

    const/4 v4, 0x0

    aget-wide v14, v18, v4

    sub-double/2addr v12, v14

    mul-double v12, v12, v60

    add-double/2addr v10, v12

    const/4 v4, 0x0

    aput-wide v10, v20, v4

    .line 654
    const/4 v4, 0x1

    aget-wide v10, v18, v4

    const/4 v4, 0x1

    aget-wide v12, v19, v4

    const/4 v4, 0x1

    aget-wide v14, v18, v4

    sub-double/2addr v12, v14

    mul-double v12, v12, v60

    add-double/2addr v10, v12

    const/4 v4, 0x1

    aput-wide v10, v20, v4

    .line 656
    const/4 v4, 0x0

    aget-wide v12, v20, v4

    const/4 v4, 0x1

    aget-wide v14, v20, v4

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAltitude()D

    move-result-wide v16

    move-object v11, v5

    invoke-virtual/range {v11 .. v17}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setPosENU(DDD)V

    .line 657
    invoke-virtual {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v10

    const-wide v12, 0x408f400000000000L    # 1000.0

    mul-double v12, v12, v62

    double-to-long v12, v12

    add-long/2addr v10, v12

    invoke-virtual {v4, v10, v11}, Landroid/location/Location;->setTime(J)V

    .line 659
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    new-instance v10, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v10, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    invoke-virtual {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->lastTrajTime:J

    .line 649
    const-wide/high16 v10, 0x4034000000000000L    # 20.0

    add-double v62, v62, v10

    goto :goto_3
.end method

.method private resetwithLastLoc(Landroid/location/Location;)V
    .locals 12
    .param p1, "lastloc"    # Landroid/location/Location;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 117
    if-nez p1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetwithLastLoc() unknown error - lastloc is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LastLMLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    if-nez v0, :cond_1

    .line 123
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LastLMLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Landroid/location/Location;)V

    .line 129
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    aput-wide v2, v0, v4

    .line 130
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    aput-wide v2, v0, v8

    .line 131
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    aput-wide v2, v0, v6

    .line 132
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    aget-wide v2, v0, v4

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    aget-wide v4, v0, v8

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    aget-wide v6, v0, v6

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    .line 136
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 137
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 140
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v1, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBufSync:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 143
    iput-boolean v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagLocInputReady:Z

    .line 145
    iput-wide v10, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->lastTrajTime:J

    .line 146
    iput-wide v10, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Cnt_SameLocSet:J

    .line 115
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LastLMLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Landroid/location/Location;)V

    goto :goto_0
.end method


# virtual methods
.method public deliverAPDRData(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "listAPDR":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;>;"
    const/4 v6, 0x1

    .line 150
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deliverAPDRData(), array size \t\t: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;-><init>()V

    .line 152
    .local v0, "apdrD":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    const/4 v1, 0x0

    .local v1, "inx":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "APDR time - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    iget-wide v4, v2, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 154
    const-string/jumbo v3, " status - "

    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 154
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    iget v2, v2, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    .line 153
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 155
    const-string/jumbo v3, " step length - "

    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 155
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    iget-wide v4, v2, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->stepLength:D

    .line 153
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 156
    const-string/jumbo v3, " step heading - "

    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 156
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    iget-wide v4, v2, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->apdrHeading:D

    .line 153
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    invoke-virtual {v0, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->set(Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;)V

    .line 159
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    new-instance v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    invoke-direct {v3, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    iget v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    if-ne v2, v6, :cond_0

    .line 161
    invoke-virtual {p0, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->setStayingAreaFlag(I)V

    .line 152
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    :cond_1
    return-void
.end method

.method public deliverLocationData(Landroid/location/Location;)V
    .locals 13
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    const/4 v10, 0x0

    const/4 v12, 0x1

    .line 171
    if-nez p1, :cond_0

    .line 172
    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "deliverLocationData - loc is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void

    .line 176
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "LppAlgorithm - PosIn => Time : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " Pos : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 179
    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LastLMLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    if-nez v6, :cond_1

    .line 180
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->resetwithLastLoc(Landroid/location/Location;)V

    .line 184
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBufSync:Ljava/util/ArrayList;

    new-instance v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v7, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Landroid/location/Location;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBufSync:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0x64

    if-le v6, v7, :cond_2

    .line 188
    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBufSync:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 190
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Size of mInputPosBufSync : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBufSync:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 193
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Position filter Status - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagLocInputReady:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 194
    iget-boolean v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagLocInputReady:Z

    if-eqz v6, :cond_5

    .line 195
    iput-boolean v10, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagLocInputReady:Z

    .line 197
    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBufSync:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "lppl$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    .line 198
    .local v2, "lppl":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 200
    .end local v2    # "lppl":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBufSync:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 208
    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    new-instance v7, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm$1;

    invoke-direct {v7, p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm$1;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;)V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 217
    iget-boolean v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagIsGPSBatchMode:Z

    if-nez v6, :cond_a

    .line 220
    const/4 v1, 0x0

    .line 222
    .local v1, "Flag_Stationary":Z
    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "lpploca$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    .line 224
    .local v4, "lpploca":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    const/4 v0, 0x1

    .line 225
    .local v0, "Flag_LocOK":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Fine Location Acq Flag : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_FineLocAcquired:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 228
    iget-boolean v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_FineLocAcquired:Z

    if-eqz v6, :cond_6

    .line 230
    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LastLMLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {p0, v4, v6, v12}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LocValidCheck(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;Z)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 242
    const/4 v0, 0x0

    .line 258
    :goto_2
    if-eqz v0, :cond_8

    .line 260
    invoke-direct {p0, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LppAlgorithmCheckAndRun(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    .line 263
    if-eqz v1, :cond_4

    .line 264
    invoke-virtual {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v6

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v7

    invoke-virtual {v7}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    add-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Landroid/location/Location;->setTime(J)V

    .line 265
    invoke-direct {p0, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LppAlgorithmCheckAndRun(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    .line 268
    :cond_4
    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LastLMLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v6, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    goto :goto_1

    .line 203
    .end local v0    # "Flag_LocOK":Z
    .end local v1    # "Flag_Stationary":Z
    .end local v3    # "lppl$iterator":Ljava/util/Iterator;
    .end local v4    # "lpploca":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    .end local v5    # "lpploca$iterator":Ljava/util/Iterator;
    :cond_5
    const-string/jumbo v6, "Position filter is not ready"

    invoke-direct {p0, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 204
    return-void

    .line 232
    .restart local v0    # "Flag_LocOK":Z
    .restart local v1    # "Flag_Stationary":Z
    .restart local v3    # "lppl$iterator":Ljava/util/Iterator;
    .restart local v4    # "lpploca":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    .restart local v5    # "lpploca$iterator":Ljava/util/Iterator;
    :pswitch_0
    const/4 v0, 0x0

    .line 233
    goto :goto_2

    .line 235
    :pswitch_1
    const/4 v0, 0x1

    .line 236
    goto :goto_2

    .line 238
    :pswitch_2
    const/4 v0, 0x1

    .line 239
    const/4 v1, 0x1

    .line 240
    goto :goto_2

    .line 247
    :cond_6
    invoke-virtual {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v6

    const/high16 v7, 0x42480000    # 50.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_7

    .line 248
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "LppAlgorithm - check Initial Fine location : false - accuracy is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 249
    const/4 v0, 0x0

    goto :goto_2

    .line 252
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "LppAlgorithm - check Initial Fine location : OK - accuracy is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 253
    iput-boolean v12, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_FineLocAcquired:Z

    .line 254
    const/4 v0, 0x1

    goto :goto_2

    .line 271
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Flag_Loc false - loc time is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 275
    .end local v0    # "Flag_LocOK":Z
    .end local v4    # "lpploca":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    :cond_9
    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 282
    .end local v1    # "Flag_Stationary":Z
    .end local v5    # "lpploca$iterator":Ljava/util/Iterator;
    :goto_3
    iput-boolean v12, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagLocInputReady:Z

    .line 168
    return-void

    .line 279
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Position Filtering hold - GPS batching mode , accumulated index : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    goto :goto_3

    .line 230
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public init(Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;)V
    .locals 3
    .param p1, "LPPLnr"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;

    .prologue
    const/4 v2, 0x0

    .line 91
    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;

    .line 92
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->flag_AlgorithmOn:Z

    .line 94
    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_FineLocAcquired:Z

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PositionFilteringInit()V

    .line 90
    return-void
.end method

.method public setGPSBatchingStatus(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 977
    iput-boolean p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagIsGPSBatchMode:Z

    .line 976
    return-void
.end method

.method public setStayingAreaFlag(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 981
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagStayingArea:Z

    .line 980
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->flag_AlgorithmOn:Z

    .line 99
    return-void
.end method

.method public stop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 105
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Stop - mLPPPosition size() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;->onUpdateLPPtraj(Ljava/util/ArrayList;)V

    .line 109
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 111
    :cond_0
    iput-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LastLMLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    .line 112
    iput-boolean v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->flag_AlgorithmOn:Z

    .line 103
    return-void
.end method
