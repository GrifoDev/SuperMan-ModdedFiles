.class public Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;
.super Ljava/lang/Thread;
.source "LppFusion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;
    }
.end annotation


# static fields
.field private static final synthetic -com-samsung-android-contextaware-aggregator-lpp-LppFusion$QMsgSwitchesValues:[I = null

.field private static final PASSIVE_LOC_COLL_FREQ:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "LppFusion"

.field private static final locReqType:J

.field static final vals:[Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;


# instance fields
.field LogFromAPDR:Ljava/lang/String;

.field LogFromLocM:Ljava/lang/String;

.field private apdrStepNumber:J

.field flagGPSAlwaysOn:Z

.field private locRequestInterval:J

.field private final lppQ:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;",
            ">;"
        }
    .end annotation
.end field

.field private final mCfg:Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;

.field private final mLMLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;

.field private final mLPPAloLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;

.field private final mListGPSPos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final mListLPPPos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

.field private final mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

.field private final mLppAlgo:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

.field private final mLppLm:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

.field private mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

.field private sendBrFlag:Z

.field strAlgo:Ljava/lang/String;

.field strLM:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->lppQ:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mCfg:Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLMLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mListGPSPos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mListLPPPos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mListener:Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLppAlgo:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLppLm:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    return-object v0
.end method

.method private static synthetic -getcom-samsung-android-contextaware-aggregator-lpp-LppFusion$QMsgSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-com-samsung-android-contextaware-aggregator-lpp-LppFusion$QMsgSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-com-samsung-android-contextaware-aggregator-lpp-LppFusion$QMsgSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->values()[Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_APDR_DATA_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_a

    :goto_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_APDR_NOTI:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9

    :goto_1
    :try_start_2
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_BATCH_LOC_LIST_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_8

    :goto_2
    :try_start_3
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_BATCH_LOC_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_7

    :goto_3
    :try_start_4
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_LOCATION_LIST_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_6

    :goto_4
    :try_start_5
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_LPPA_PAUSE:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_LPPA_RESUME:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_4

    :goto_6
    :try_start_7
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_LPPA_STOP:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_3

    :goto_7
    :try_start_8
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_PASS_LOC_BATCH_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2

    :goto_8
    :try_start_9
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_PASS_LOC_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    :goto_9
    :try_start_a
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_SLEEP:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_0

    :goto_a
    sput-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-com-samsung-android-contextaware-aggregator-lpp-LppFusion$QMsgSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_a

    :catch_1
    move-exception v1

    goto :goto_9

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_2

    :catch_9
    move-exception v1

    goto :goto_1

    :catch_a
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Landroid/location/Location;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->LocationInfoString(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->addQ(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->addQ(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->updateLppFusionStatus(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->values()[Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->vals:[Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLppAlgo:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLppLm:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mListLPPPos:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mListGPSPos:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iput-boolean v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->flagGPSAlwaysOn:Z

    const-string/jumbo v0, "\n<<LPosition>>\n\n"

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->strAlgo:Ljava/lang/String;

    const-string/jumbo v0, "\n<<LoManager>>\n\n"

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->strLM:Ljava/lang/String;

    const-string/jumbo v0, "0   0   0   0   0   0"

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->LogFromAPDR:Ljava/lang/String;

    const-string/jumbo v0, "0   0   0   0"

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->LogFromLocM:Ljava/lang/String;

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->apdrStepNumber:J

    const-wide/16 v0, 0x2d

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->locRequestInterval:J

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->lppQ:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLMLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLPPAloLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;

    iput-boolean v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->sendBrFlag:Z

    const-string/jumbo v0, "LppFusion"

    const-string/jumbo v1, "LppFusion"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->init(Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLppAlgo:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLPPAloLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->init(Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;)V

    iget v0, p1, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSRequest_APDR:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->apdrStepNumber:J

    iget v0, p1, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSRequest_Timer:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->locRequestInterval:J

    iget-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->locRequestInterval:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->flagGPSAlwaysOn:Z

    :goto_0
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;

    invoke-direct {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mCfg:Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;

    return-void

    :cond_0
    iput-boolean v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->flagGPSAlwaysOn:Z

    goto :goto_0
.end method

.method private LocationInfoString(Landroid/location/Location;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, ""

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Pos : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private addQ(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->addQ(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V

    return-void
.end method

.method private addQ(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;",
            "TE;)V"
        }
    .end annotation

    const-string/jumbo v1, "LppFusion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addQ:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->lppQ:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;

    invoke-direct {v2, p1, p2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_APDR_DATA_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    if-ne p1, v1, :cond_0

    if-eqz p2, :cond_0

    const-string/jumbo v1, "LppFusion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addQ, array size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_SLEEP:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    if-eq p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->TIMED_WAITING:Ljava/lang/Thread$State;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->interrupt()V

    :cond_1
    return-void
.end method

.method private threadSleep()V
    .locals 4

    :try_start_0
    const-string/jumbo v1, "LppFusion"

    const-string/jumbo v2, "Sleep!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->sleep(J)V

    const-string/jumbo v1, "LppFusion"

    const-string/jumbo v2, "Out of Sleep!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LppFusion"

    const-string/jumbo v2, "Out of Sleep! 2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateLppFusionStatus(Ljava/lang/String;)V
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mCfg:Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->sendBrFlag:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "LppFusion"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mCfg:Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.hardware.contextaware.aggregator.lpp.LppFusion"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "LppFusion"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v2, "LppFusion"

    const-string/jumbo v3, "Intent sent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "LppFusion"

    const-string/jumbo v3, "Intent creation failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "LppFusion"

    const-string/jumbo v3, "Context is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "LppFusion"

    const-string/jumbo v3, "Config is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private waitOnQ()V
    .locals 10

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_0
    if-eqz v4, :cond_0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->lppQ:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;

    move-object v5, v0

    const-string/jumbo v6, "LppFusion"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Received msg:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->-get3(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " in Q:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->lppQ:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v8}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-getcom-samsung-android-contextaware-aggregator-lpp-LppFusion$QMsgSwitchesValues()[I

    move-result-object v6

    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->-get3(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    const-string/jumbo v6, "LppFusion"

    const-string/jumbo v7, "unspecified msg id"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :pswitch_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v6, "LppFusion"

    const-string/jumbo v7, "IE in q"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    const-string/jumbo v6, "LppFusion"

    const-string/jumbo v7, "polling stopped"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->threadSleep()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit p0

    throw v6
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :pswitch_2
    const/4 v4, 0x0

    :try_start_5
    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    sget-object v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->STOP:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(I)V

    goto :goto_1

    :pswitch_3
    const-string/jumbo v6, "LppFusion"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "size of APDR data "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->-get0(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_2
    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->-get0(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Location request MovingStatus "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->-get0(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    iget v6, v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->updateLppFusionStatus(Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->apdrStepNumber:J

    add-int/lit8 v6, v3, 0x1

    int-to-long v6, v6

    iget-wide v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->apdrStepNumber:J

    cmp-long v6, v6, v8

    if-gtz v6, :cond_1

    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->-get0(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    iget v6, v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    :cond_1
    const-string/jumbo v6, "LppFusion"

    const-string/jumbo v7, "Location request"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    sget-object v6, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_REQUEST:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v8

    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->-get0(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    iget v6, v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    invoke-virtual {v7, v8, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(II)V

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLppAlgo:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->-get0(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->deliverAPDRData(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :pswitch_4
    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    sget-object v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_FOUND:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v7

    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->-get1(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    sget-object v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_BATCH_LIST_FOUND:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v7

    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->-get1(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_6
    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    sget-object v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_BATCH_FOUND:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v7

    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->-get2(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Landroid/location/Location;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_7
    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    sget-object v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_PASS_FOUND:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v7

    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->-get2(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Landroid/location/Location;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_8
    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    sget-object v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_PASS_IN_BATCH_FOUND:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v7

    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->-get2(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Landroid/location/Location;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(ILjava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_2
        :pswitch_8
        :pswitch_7
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public Debug_LogString(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->LogData(ILjava/lang/String;)V

    return-void
.end method

.method public getLogHandle()Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    return-object v0
.end method

.method public notifyApdrData(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v1, "LppFusion"

    const-string/jumbo v2, "notifyApdrData"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    const/4 v3, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "APDR data from sensor Hub - moving status : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    iget v1, v1, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->LogData(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_APDR_DATA_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->addQ(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V

    return-void
.end method

.method public notifyStayArea(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLppAlgo:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLppAlgo:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->setStayingAreaFlag(I)V

    :cond_0
    return-void
.end method

.method public pauseLPP()V
    .locals 3

    const-string/jumbo v0, "LppFusion"

    const-string/jumbo v1, "pause()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    const/4 v1, 0x6

    const-string/jumbo v2, "LppFusion, pause()"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->LogData(ILjava/lang/String;)V

    return-void
.end method

.method public registerListener(Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mListener:Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->setILppDataProviderListener(Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;)V

    return-void
.end method

.method public resumeLPP()V
    .locals 3

    const-string/jumbo v0, "LppFusion"

    const-string/jumbo v1, "resume()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    const/4 v1, 0x6

    const-string/jumbo v2, "LppFusion, resume()"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->LogData(ILjava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 2

    const-string/jumbo v0, "LppFusion"

    const-string/jumbo v1, "run"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "LPPThread"

    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->setName(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    const-string/jumbo v1, "LppFusion"

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->start()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->START:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(I)V

    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->waitOnQ()V

    return-void
.end method

.method public sendStatusDisable()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->sendBrFlag:Z

    return-void
.end method

.method public sendStatusEnable()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->sendBrFlag:Z

    return-void
.end method

.method public setLppResolution(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLppLm:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLppLm:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->setLppResolution(I)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set property command from APP : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->Debug_LogString(Ljava/lang/String;)V

    return-void
.end method

.method public stopLpp()V
    .locals 2

    const-string/jumbo v0, "LppFusion"

    const-string/jumbo v1, "LPP stop!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_LPPA_STOP:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->addQ(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;)V

    return-void
.end method
