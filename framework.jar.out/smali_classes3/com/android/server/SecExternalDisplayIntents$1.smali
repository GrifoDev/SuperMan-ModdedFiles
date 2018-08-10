.class Lcom/android/server/SecExternalDisplayIntents$1;
.super Landroid/content/BroadcastReceiver;
.source "SecExternalDisplayIntents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SecExternalDisplayIntents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final synthetic -com-android-server-SecExternalDisplayIntents$EDSRecievedIntentSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$android$server$SecExternalDisplayIntents$EDSRecievedIntent:[I

.field final synthetic this$0:Lcom/android/server/SecExternalDisplayIntents;


# direct methods
.method private static synthetic -getcom-android-server-SecExternalDisplayIntents$EDSRecievedIntentSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/SecExternalDisplayIntents$1;->-com-android-server-SecExternalDisplayIntents$EDSRecievedIntentSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/SecExternalDisplayIntents$1;->-com-android-server-SecExternalDisplayIntents$EDSRecievedIntentSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->values()[Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_AlarmStart:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1a

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_AlarmStart2:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_19

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_AlarmStart3:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_18

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_AlarmStop:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_17

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_AlarmStop2:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_16

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_AlarmStop3:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_15

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_CameraNothing:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_14

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_CameraStart:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_13

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_CameraStop:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_12

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_ENTER_KNOX_DESKTOP_MODE:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_11

    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_EXIT_KNOX_DESKTOP_MODE:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_10

    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_HDMI:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_f

    :goto_b
    :try_start_c
    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_KddiAuShareLinkConnect:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_e

    :goto_c
    :try_start_d
    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_KddiAuShareLinkDisconnect:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :goto_d
    :try_start_e
    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_PresentationStart:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_c

    :goto_e
    :try_start_f
    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_PresentationStop:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_b

    :goto_f
    :try_start_10
    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_RVF:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_a

    :goto_10
    :try_start_11
    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_ScreenLocked:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_9

    :goto_11
    :try_start_12
    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_ScreenRecorder:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_8

    :goto_12
    :try_start_13
    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_ScreenRecorder2:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_7

    :goto_13
    :try_start_14
    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_ScreenUnlocked:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_6

    :goto_14
    :try_start_15
    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_SideSync:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_5

    :goto_15
    :try_start_16
    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_SideSyncDC:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_4

    :goto_16
    :try_start_17
    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_SmartDock:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_3

    :goto_17
    :try_start_18
    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_VideoStart:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_2

    :goto_18
    :try_start_19
    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_VideoStop:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_1

    :goto_19
    :try_start_1a
    sget-object v1, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->EDS_INTENT_WFD:Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_0

    :goto_1a
    sput-object v0, Lcom/android/server/SecExternalDisplayIntents$1;->-com-android-server-SecExternalDisplayIntents$EDSRecievedIntentSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1a

    :catch_1
    move-exception v1

    goto :goto_19

    :catch_2
    move-exception v1

    goto :goto_18

    :catch_3
    move-exception v1

    goto :goto_17

    :catch_4
    move-exception v1

    goto :goto_16

    :catch_5
    move-exception v1

    goto :goto_15

    :catch_6
    move-exception v1

    goto :goto_14

    :catch_7
    move-exception v1

    goto :goto_13

    :catch_8
    move-exception v1

    goto :goto_12

    :catch_9
    move-exception v1

    goto :goto_11

    :catch_a
    move-exception v1

    goto :goto_10

    :catch_b
    move-exception v1

    goto/16 :goto_f

    :catch_c
    move-exception v1

    goto/16 :goto_e

    :catch_d
    move-exception v1

    goto/16 :goto_d

    :catch_e
    move-exception v1

    goto/16 :goto_c

    :catch_f
    move-exception v1

    goto/16 :goto_b

    :catch_10
    move-exception v1

    goto/16 :goto_a

    :catch_11
    move-exception v1

    goto/16 :goto_9

    :catch_12
    move-exception v1

    goto/16 :goto_8

    :catch_13
    move-exception v1

    goto/16 :goto_7

    :catch_14
    move-exception v1

    goto/16 :goto_6

    :catch_15
    move-exception v1

    goto/16 :goto_5

    :catch_16
    move-exception v1

    goto/16 :goto_4

    :catch_17
    move-exception v1

    goto/16 :goto_3

    :catch_18
    move-exception v1

    goto/16 :goto_2

    :catch_19
    move-exception v1

    goto/16 :goto_1

    :catch_1a
    move-exception v1

    goto/16 :goto_0
.end method

.method constructor <init>(Lcom/android/server/SecExternalDisplayIntents;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/4 v8, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v9, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    invoke-static {v9}, Lcom/android/server/SecExternalDisplayIntents;->-get0(Lcom/android/server/SecExternalDisplayIntents;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v9, "SecExternalDisplayIntents_Java"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Intent Recieved ..  -"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "BroadCast Map value - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->toStatus(I)Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    move-result-object v9

    if-nez v9, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/SecExternalDisplayIntents$1;->-getcom-android-server-SecExternalDisplayIntents$EDSRecievedIntentSwitchesValues()[I

    move-result-object v9

    invoke-static {v0}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->toStatus(I)Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    sget-boolean v9, Lcom/android/server/SecExternalDisplayIntents;->bIsLogEnabled:Z

    if-eqz v9, :cond_1

    const-string/jumbo v9, "SecExternalDisplayIntents_Java"

    const-string/jumbo v10, "entered HDMI Case"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    const-string/jumbo v9, "SecExternalDisplayIntents_Java"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception at :: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    :try_start_1
    sget-boolean v9, Lcom/android/server/SecExternalDisplayIntents;->bIsLogEnabled:Z

    if-eqz v9, :cond_2

    const-string/jumbo v9, "SecExternalDisplayIntents_Java"

    const-string/jumbo v10, "entered Camera Start Case"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v9, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    sget-object v10, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->START:Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    invoke-virtual {v10}, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->ordinal()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/SecExternalDisplayIntents;->handleCameraConnection(I)Z

    goto :goto_0

    :pswitch_2
    sget-boolean v9, Lcom/android/server/SecExternalDisplayIntents;->bIsLogEnabled:Z

    if-eqz v9, :cond_3

    const-string/jumbo v9, "SecExternalDisplayIntents_Java"

    const-string/jumbo v10, "entered Camera Stop Case"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v9, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    sget-object v10, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->STOP:Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    invoke-virtual {v10}, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->ordinal()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/SecExternalDisplayIntents;->handleCameraConnection(I)Z

    goto :goto_0

    :pswitch_3
    sget-boolean v9, Lcom/android/server/SecExternalDisplayIntents;->bIsLogEnabled:Z

    if-eqz v9, :cond_4

    const-string/jumbo v9, "SecExternalDisplayIntents_Java"

    const-string/jumbo v10, "entered RVF Case"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string/jumbo v9, "running"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iget-object v9, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    invoke-virtual {v9, v6}, Lcom/android/server/SecExternalDisplayIntents;->handleRVFConnection(Z)Z

    goto :goto_0

    :pswitch_4
    sget-boolean v9, Lcom/android/server/SecExternalDisplayIntents;->bIsLogEnabled:Z

    if-eqz v9, :cond_5

    const-string/jumbo v9, "SecExternalDisplayIntents_Java"

    const-string/jumbo v10, "entered WFD Case"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string/jumbo v9, "state"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v9, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v9, v9, Lcom/android/server/SecExternalDisplayIntents;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v9, v3}, Lcom/android/server/SecExternalDisplayService;->handleWFDConnection(I)Z

    goto/16 :goto_0

    :pswitch_5
    sget-boolean v9, Lcom/android/server/SecExternalDisplayIntents;->bIsLogEnabled:Z

    if-eqz v9, :cond_6

    const-string/jumbo v9, "SecExternalDisplayIntents_Java"

    const-string/jumbo v10, "entered Camera Start Case"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v9, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v9, v9, Lcom/android/server/SecExternalDisplayIntents;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/SecExternalDisplayService;->handleAlarm(Z)Z

    goto/16 :goto_0

    :pswitch_6
    sget-boolean v9, Lcom/android/server/SecExternalDisplayIntents;->bIsLogEnabled:Z

    if-eqz v9, :cond_7

    const-string/jumbo v9, "SecExternalDisplayIntents_Java"

    const-string/jumbo v10, "entered Camera Stop Case"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v9, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v9, v9, Lcom/android/server/SecExternalDisplayIntents;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/SecExternalDisplayService;->handleAlarm(Z)Z

    goto/16 :goto_0

    :pswitch_7
    sget-boolean v9, Lcom/android/server/SecExternalDisplayIntents;->bIsLogEnabled:Z

    if-eqz v9, :cond_8

    const-string/jumbo v9, "SecExternalDisplayIntents_Java"

    const-string/jumbo v10, "entered SideSync Connected Case"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v9, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/SecExternalDisplayIntents;->handleSideSyncConnection(Z)Z

    goto/16 :goto_0

    :pswitch_8
    sget-boolean v9, Lcom/android/server/SecExternalDisplayIntents;->bIsLogEnabled:Z

    if-eqz v9, :cond_9

    const-string/jumbo v9, "SecExternalDisplayIntents_Java"

    const-string/jumbo v10, "entered SideSync DC Case"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v9, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/SecExternalDisplayIntents;->handleSideSyncConnection(Z)Z

    goto/16 :goto_0

    :pswitch_9
    sget-boolean v9, Lcom/android/server/SecExternalDisplayIntents;->bIsLogEnabled:Z

    if-eqz v9, :cond_a

    const-string/jumbo v9, "SecExternalDisplayIntents_Java"

    const-string/jumbo v10, "entered ScreenRecorder Case"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const/4 v1, 0x0

    const-string/jumbo v9, "IsRunning"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v9, "SecExternalDisplayIntents_Java"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ScreenRecorder State is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "run"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v9, v9, Lcom/android/server/SecExternalDisplayIntents;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v10, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SCREENRECORDING:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v10}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v10

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v9, "stop"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v9, v9, Lcom/android/server/SecExternalDisplayIntents;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v10, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SCREENRECORDING:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v10}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    goto/16 :goto_0

    :pswitch_a
    sget-boolean v9, Lcom/android/server/SecExternalDisplayIntents;->bIsLogEnabled:Z

    if-eqz v9, :cond_c

    const-string/jumbo v9, "SecExternalDisplayIntents_Java"

    const-string/jumbo v10, "entered SmartDock Case"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const-string/jumbo v9, "android.intent.extra.device_state"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v9, "sys.hmt.connected"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string/jumbo v9, "SecExternalDisplayIntents_Java"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Smart Dock Event Received !!!!!  Dock Status :  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " HMT Status :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_1

    iget-object v9, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v9, v9, Lcom/android/server/SecExternalDisplayIntents;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v9, v5}, Lcom/android/server/SecExternalDisplayService;->handleSmartDockConnection(I)Z

    goto/16 :goto_0

    :pswitch_b
    sget-boolean v9, Lcom/android/server/SecExternalDisplayIntents;->bIsLogEnabled:Z

    if-eqz v9, :cond_1

    const-string/jumbo v9, "SecExternalDisplayIntents_Java"

    const-string/jumbo v10, "entered ScreenLock Case"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_c
    sget-boolean v9, Lcom/android/server/SecExternalDisplayIntents;->bIsLogEnabled:Z

    if-eqz v9, :cond_1

    const-string/jumbo v9, "SecExternalDisplayIntents_Java"

    const-string/jumbo v10, "entered Screen Unlocked Case"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_d
    sget-boolean v9, Lcom/android/server/SecExternalDisplayIntents;->bIsLogEnabled:Z

    if-eqz v9, :cond_d

    const-string/jumbo v9, "SecExternalDisplayIntents_Java"

    const-string/jumbo v10, "Entered Video Start Case"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v9, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v9, v9, Lcom/android/server/SecExternalDisplayIntents;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/SecExternalDisplayService;->handleVideo(Z)Z

    goto/16 :goto_0

    :pswitch_e
    sget-boolean v9, Lcom/android/server/SecExternalDisplayIntents;->bIsLogEnabled:Z

    if-eqz v9, :cond_e

    const-string/jumbo v9, "SecExternalDisplayIntents_Java"

    const-string/jumbo v10, "Entered Video Stop Case"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object v9, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v9, v9, Lcom/android/server/SecExternalDisplayIntents;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/SecExternalDisplayService;->handleVideo(Z)Z

    goto/16 :goto_0

    :pswitch_f
    sget-boolean v9, Lcom/android/server/SecExternalDisplayIntents;->bIsLogEnabled:Z

    if-eqz v9, :cond_f

    const-string/jumbo v9, "SecExternalDisplayIntents_Java"

    const-string/jumbo v10, "entered Presentation Start Case"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v9, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v9, v9, Lcom/android/server/SecExternalDisplayIntents;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/SecExternalDisplayService;->handlePresentation(Z)V

    goto/16 :goto_0

    :pswitch_10
    sget-boolean v9, Lcom/android/server/SecExternalDisplayIntents;->bIsLogEnabled:Z

    if-eqz v9, :cond_10

    const-string/jumbo v9, "SecExternalDisplayIntents_Java"

    const-string/jumbo v10, "entered Presentation Stop Case"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v9, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v9, v9, Lcom/android/server/SecExternalDisplayIntents;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/SecExternalDisplayService;->handlePresentation(Z)V

    goto/16 :goto_0

    :pswitch_11
    sget-boolean v9, Lcom/android/server/SecExternalDisplayIntents;->bIsLogEnabled:Z

    if-eqz v9, :cond_11

    const-string/jumbo v9, "SecExternalDisplayIntents_Java"

    const-string/jumbo v10, "Entered Kddi auShareLink connect case"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object v9, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/SecExternalDisplayIntents;->handleKddiAuShareLink(Z)Z

    goto/16 :goto_0

    :pswitch_12
    sget-boolean v9, Lcom/android/server/SecExternalDisplayIntents;->bIsLogEnabled:Z

    if-eqz v9, :cond_12

    const-string/jumbo v9, "SecExternalDisplayIntents_Java"

    const-string/jumbo v10, "Entered Kddi auShareLink disconnect case"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    iget-object v9, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/SecExternalDisplayIntents;->handleKddiAuShareLink(Z)Z

    goto/16 :goto_0

    :pswitch_13
    sget-boolean v9, Lcom/android/server/SecExternalDisplayIntents;->bIsLogEnabled:Z

    if-eqz v9, :cond_13

    const-string/jumbo v9, "SecExternalDisplayIntents_Java"

    const-string/jumbo v10, "Entered KNOX_DESKTOP_MODE"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    iget-object v9, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v9, v9, Lcom/android/server/SecExternalDisplayIntents;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetWakeLock(Z)V

    goto/16 :goto_0

    :pswitch_14
    sget-boolean v9, Lcom/android/server/SecExternalDisplayIntents;->bIsLogEnabled:Z

    if-eqz v9, :cond_14

    const-string/jumbo v9, "SecExternalDisplayIntents_Java"

    const-string/jumbo v10, "Exited KNOX_DESKTOP_MODE"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    iget-object v9, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v9, v9, Lcom/android/server/SecExternalDisplayIntents;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v10, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v10}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v9, v9, Lcom/android/server/SecExternalDisplayIntents;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetWakeLock(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_13
        :pswitch_14
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_f
        :pswitch_10
        :pswitch_3
        :pswitch_b
        :pswitch_9
        :pswitch_9
        :pswitch_c
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_d
        :pswitch_e
        :pswitch_4
    .end packed-switch
.end method
