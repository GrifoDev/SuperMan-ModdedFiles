.class Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;
.super Lcom/android/internal/util/State;
.source "LppLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Pause"
.end annotation


# static fields
.field private static final synthetic -com-samsung-android-contextaware-aggregator-lpp-LppLocationManager$MsgSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$samsung$android$contextaware$aggregator$lpp$LppLocationManager$Msg:[I

.field batchStart:Z

.field firstTime:Z

.field final synthetic this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;


# direct methods
.method private static synthetic -getcom-samsung-android-contextaware-aggregator-lpp-LppLocationManager$MsgSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->-com-samsung-android-contextaware-aggregator-lpp-LppLocationManager$MsgSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->-com-samsung-android-contextaware-aggregator-lpp-LppLocationManager$MsgSwitchesValues:[I

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

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_14

    :goto_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_AVAILABLE:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_13

    :goto_1
    :try_start_2
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_BATCH_ENDED:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_12

    :goto_2
    :try_start_3
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_BATCH_STARTED:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_11

    :goto_3
    :try_start_4
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_BATCH_TIMEOUT:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_10

    :goto_4
    :try_start_5
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_NOT_AVAILABLE:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_f

    :goto_5
    :try_start_6
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_PASSIVE_AVAILABLE:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_e

    :goto_6
    :try_start_7
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_FOUND_BATCH:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_d

    :goto_7
    :try_start_8
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_FOUND_GPS:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_c

    :goto_8
    :try_start_9
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_FOUND_NETWORK:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_b

    :goto_9
    :try_start_a
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_FOUND_PASSIVE:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :goto_a
    :try_start_b
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_MGR_RETRY:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_9

    :goto_b
    :try_start_c
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_REQ:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_8

    :goto_c
    :try_start_d
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_REQ_GPS_TIMEOUT:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_7

    :goto_d
    :try_start_e
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->LOC_REQ_NLP_TIMEOUT:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_6

    :goto_e
    :try_start_f
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->PASSIVE_INACTIVE_TIMEOUT:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_5

    :goto_f
    :try_start_10
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->START:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_4

    :goto_10
    :try_start_11
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->STATIONARY:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_3

    :goto_11
    :try_start_12
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->STOP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_2

    :goto_12
    :try_start_13
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->VEHICLE:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_1

    :goto_13
    :try_start_14
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->WALK:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_0

    :goto_14
    sput-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->-com-samsung-android-contextaware-aggregator-lpp-LppLocationManager$MsgSwitchesValues:[I

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

.method constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->batchStart:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->firstTime:Z

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v0, "LppLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Entering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->-get2(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->-get2(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->-get4(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->firstTime:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->PASSIVE_INACTIVE_TIMEOUT:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const-wide/32 v2, 0xafc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->sendMessageDelayed(IJ)V

    iput-boolean v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->firstTime:Z

    :goto_0
    iput-boolean v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->batchStart:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->PASSIVE_INACTIVE_TIMEOUT:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->sendMessageDelayed(IJ)V

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8

    const/4 v7, 0x1

    const-string/jumbo v0, "LppLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Handling message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->vals:[Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    iget v3, p1, Landroid/os/Message;->what:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->-getcom-samsung-android-contextaware-aggregator-lpp-LppLocationManager$MsgSwitchesValues()[I

    move-result-object v0

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->vals:[Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    iget v2, p1, Landroid/os/Message;->what:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->batchStart:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->-get1(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Listening;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->transitionTo(Lcom/android/internal/util/IState;)V

    :goto_0
    return v7

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->-get2(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Landroid/location/LocationManager;

    move-result-object v0

    const-string/jumbo v1, "passive"

    const-wide/16 v2, 0x1388

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->-get4(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Landroid/location/LocationListener;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    iget-object v6, v6, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    invoke-static {v6}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->-get12(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->-get3(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$PassGpsBatch;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :pswitch_1
    iput-boolean v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM$Pause;->batchStart:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
