.class Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;
.super Lcom/android/internal/util/State;
.source "LppLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GpsBatch"
.end annotation


# static fields
.field private static final synthetic -com-samsung-android-contextaware-aggregator-lpp-LppLocationManager$MsgSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$samsung$android$contextaware$aggregator$lpp$LppLocationManager$Msg:[I

.field private deliveredT:J

.field private exit:Z

.field private final mListBatchLoc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private period:I

.field private final requestId:I

.field final synthetic this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

.field private walk:Z


# direct methods
.method private static synthetic -getcom-samsung-android-contextaware-aggregator-lpp-LppLocationManager$MsgSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->-com-samsung-android-contextaware-aggregator-lpp-LppLocationManager$MsgSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->-com-samsung-android-contextaware-aggregator-lpp-LppLocationManager$MsgSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->values()[Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->CHECK_GPS_WIFI:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_14

    :goto_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_AVAILABLE:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_13

    :goto_1
    :try_start_2
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_BATCH_ENDED:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_12

    :goto_2
    :try_start_3
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_BATCH_STARTED:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_11

    :goto_3
    :try_start_4
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_BATCH_TIMEOUT:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_10

    :goto_4
    :try_start_5
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_NOT_AVAILABLE:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_f

    :goto_5
    :try_start_6
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_PASSIVE_AVAILABLE:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_e

    :goto_6
    :try_start_7
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_FOUND_BATCH:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_d

    :goto_7
    :try_start_8
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_FOUND_GPS:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_c

    :goto_8
    :try_start_9
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_FOUND_NETWORK:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_b

    :goto_9
    :try_start_a
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_FOUND_PASSIVE:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :goto_a
    :try_start_b
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_MGR_RETRY:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_9

    :goto_b
    :try_start_c
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_REQ:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_8

    :goto_c
    :try_start_d
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_REQ_GPS_TIMEOUT:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_7

    :goto_d
    :try_start_e
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_REQ_NLP_TIMEOUT:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_6

    :goto_e
    :try_start_f
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->PASSIVE_INACTIVE_TIMEOUT:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_5

    :goto_f
    :try_start_10
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->START:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_4

    :goto_10
    :try_start_11
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->STATIONARY:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_3

    :goto_11
    :try_start_12
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->STOP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_2

    :goto_12
    :try_start_13
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->VEHICLE:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_1

    :goto_13
    :try_start_14
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->WALK:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_0

    :goto_14
    sput-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->-com-samsung-android-contextaware-aggregator-lpp-LppLocationManager$MsgSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_14

    :catch_1
    move-exception v1

    goto :goto_13

    :catch_2
    move-exception v1

    goto :goto_12

    :catch_3
    move-exception v1

    goto :goto_11

    :catch_4
    move-exception v1

    goto :goto_10

    :catch_5
    move-exception v1

    goto :goto_f

    :catch_6
    move-exception v1

    goto :goto_e

    :catch_7
    move-exception v1

    goto :goto_d

    :catch_8
    move-exception v1

    goto :goto_c

    :catch_9
    move-exception v1

    goto :goto_b

    :catch_a
    move-exception v1

    goto :goto_a

    :catch_b
    move-exception v1

    goto/16 :goto_9

    :catch_c
    move-exception v1

    goto/16 :goto_8

    :catch_d
    move-exception v1

    goto/16 :goto_7

    :catch_e
    move-exception v1

    goto/16 :goto_6

    :catch_f
    move-exception v1

    goto/16 :goto_5

    :catch_10
    move-exception v1

    goto/16 :goto_4

    :catch_11
    move-exception v1

    goto/16 :goto_3

    :catch_12
    move-exception v1

    goto/16 :goto_2

    :catch_13
    move-exception v1

    goto/16 :goto_1

    :catch_14
    move-exception v1

    goto/16 :goto_0
.end method

.method constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    iput v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->requestId:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->period:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->mListBatchLoc:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->deliveredT:J

    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->exit:Z

    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->walk:Z

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "LppLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Entering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->-get13(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->period:I

    :goto_0
    const-string/jumbo v0, "LppLocationManager"

    const-string/jumbo v1, "error in start batch:0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->-get6(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V

    iput-boolean v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->exit:Z

    iput-boolean v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->walk:Z

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->mListBatchLoc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->deliveredT:J

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->-get13(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)I

    move-result v0

    if-ne v0, v4, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->period:I

    goto :goto_0

    :cond_1
    iput v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->period:I

    goto :goto_0
.end method

.method public exit()V
    .locals 6

    const-string/jumbo v0, "LppLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exiting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_BATCH_TIMEOUT:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->-wrap3(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;I)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->-get7(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;->gpsBatchStopped()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->-get9(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/LocationManager;

    move-result-object v0

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->-get7(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;->gpsOffBatchStopped()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->-get14(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_BATCH_ENDED:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->sendMessage(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->-get9(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/LocationManager;

    move-result-object v0

    const-string/jumbo v1, "gps"

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v2, v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->-get1(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/LocationListener;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v3, v3, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    invoke-static {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->-get12(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_NOT_AVAILABLE:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v2, v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->-get3(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->sendMessageDelayed(IJ)V

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 12

    const-string/jumbo v7, "LppLocationManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Handling message "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->vals:[Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    iget v10, p1, Landroid/os/Message;->what:I

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->-getcom-samsung-android-contextaware-aggregator-lpp-LppLocationManager$MsgSwitchesValues()[I

    move-result-object v7

    sget-object v8, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->vals:[Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    iget v9, p1, Landroid/os/Message;->what:I

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    const/4 v7, 0x0

    return v7

    :pswitch_0
    iget-boolean v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->exit:Z

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v8, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_BATCH_TIMEOUT:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v8

    const-wide/16 v10, 0x1388

    invoke-virtual {v7, v8, v10, v11}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->sendMessageDelayed(IJ)V

    :cond_0
    :goto_0
    :pswitch_1
    const/4 v7, 0x1

    return v7

    :pswitch_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v8, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_BATCH_TIMEOUT:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v8

    invoke-static {v7, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->-wrap3(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->mListBatchLoc:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string/jumbo v7, "LppLocationManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "num of batch locs:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->mListBatchLoc:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v7, v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    invoke-static {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->-get6(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v7, v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    invoke-static {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->-get6(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v7, v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    invoke-static {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->-get6(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    :cond_1
    new-instance v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch$1;

    invoke-direct {v7, p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch$1;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;)V

    invoke-static {v2, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const-string/jumbo v7, "LppLocationManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "deliveredT:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->deliveredT:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->deliveredT:J

    cmp-long v7, v8, v10

    if-ltz v7, :cond_3

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_4

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->mListBatchLoc:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_7

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->mListBatchLoc:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/Location;

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->mListBatchLoc:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-lez v7, :cond_5

    move-object v5, v3

    goto :goto_3

    :cond_6
    new-instance v6, Landroid/location/Location;

    invoke-direct {v6, v5}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->mListBatchLoc:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v7, v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    invoke-static {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->-get7(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;->batchLocUpdate(Landroid/location/Location;)V

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v7, v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    invoke-static {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->-get7(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;

    move-result-object v7

    invoke-interface {v7, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;->batchLocListUpdate(Ljava/util/ArrayList;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->deliveredT:J

    :cond_7
    iget-boolean v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->exit:Z

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->walk:Z

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    invoke-static {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->-get7(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$WalkNM;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :cond_8
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    invoke-static {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->-get5(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$StatNM;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :pswitch_3
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->walk:Z

    :pswitch_4
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v8, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_BATCH_TIMEOUT:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v8

    invoke-static {v7, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->-wrap3(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;I)V

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v8, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_BATCH_TIMEOUT:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v8

    const-wide/16 v10, 0x1388

    invoke-virtual {v7, v8, v10, v11}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->sendMessageDelayed(IJ)V

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->exit:Z

    goto/16 :goto_0

    :pswitch_5
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v7, v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    invoke-static {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->-get7(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;

    move-result-object v7

    invoke-interface {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;->locationNotFound()V

    iget-boolean v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->exit:Z

    if-eqz v7, :cond_a

    iget-boolean v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->walk:Z

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    invoke-static {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->-get7(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$WalkNM;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :cond_9
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    invoke-static {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->-get5(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$StatNM;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :cond_a
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    invoke-static {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->-get6(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v7, v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    invoke-static {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->-get15(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->-wrap2(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
