.class final Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "VolumeDialogControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.intent.action.DLNA_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get2(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get10(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v13, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const-string/jumbo v13, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const-string/jumbo v13, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v13, "android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    sget-boolean v13, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v13, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get0()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onReceive SEM_STREAM_DEVICES_CHANGED_ACTION stream = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " devices="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " oldDevices="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v13, v12}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-wrap0(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)Z

    move-result v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    const/4 v14, 0x0

    invoke-static {v13, v12, v14}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-wrap1(Lcom/android/systemui/volume/VolumeDialogControllerImpl;II)Z

    move-result v13

    or-int/2addr v2, v13

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->isSafeWarningVisible()Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v13}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get1(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    move-result-object v13

    const/4 v14, 0x7

    invoke-virtual {v13, v14}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onDismissRequested(I)V

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v13}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get1(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v14}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get9(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/plugins/VolumeDialogController$State;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v13, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    const-string/jumbo v13, "android.media.EXTRA_RINGER_MODE"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    sget-boolean v13, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v13, :cond_4

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get0()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onReceive RINGER_MODE_CHANGED_ACTION rm="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v9}, Lcom/android/systemui/volume/Util;->ringerModeToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v13, v9}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-wrap4(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)Z

    move-result v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    const/4 v14, 0x2

    invoke-static {v13, v14}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-wrap22(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    const/4 v14, 0x5

    invoke-static {v13, v14}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-wrap22(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-wrap22(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V

    goto :goto_0

    :cond_5
    const-string/jumbo v13, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    const-string/jumbo v13, "android.media.EXTRA_RINGER_MODE"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    sget-boolean v13, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v13, :cond_6

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get0()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onReceive INTERNAL_RINGER_MODE_CHANGED_ACTION rm="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v9}, Lcom/android/systemui/volume/Util;->ringerModeToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v13, v9}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-wrap5(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)Z

    move-result v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    const/4 v14, 0x2

    invoke-static {v13, v14}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-wrap22(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    const/4 v14, 0x5

    invoke-static {v13, v14}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-wrap22(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-wrap22(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v13, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    const-string/jumbo v13, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const-string/jumbo v13, "android.media.EXTRA_STREAM_VOLUME_MUTED"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    sget-boolean v13, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v13, :cond_8

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get0()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onReceive STREAM_MUTE_CHANGED_ACTION stream="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " muted="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v13, v12, v5}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-wrap6(Lcom/android/systemui/volume/VolumeDialogControllerImpl;IZ)Z

    move-result v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v13, v12}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-wrap22(Lcom/android/systemui/volume/VolumeDialogControllerImpl;I)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v13, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    sget-boolean v13, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v13, :cond_a

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get0()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "onReceive ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v14}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get6(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Landroid/app/NotificationManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-wrap3(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Landroid/content/ComponentName;)Z

    move-result v2

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v13, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    sget-boolean v13, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v13, :cond_c

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get0()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "onReceive ACTION_CONFIGURATION_CHANGED"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v13}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get1(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onConfigurationChanged()V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v13, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    sget-boolean v13, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v13, :cond_e

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get0()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "onReceive ACTION_CLOSE_SYSTEM_DIALOGS"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const-string/jumbo v13, "reason"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_f

    const-string/jumbo v13, "closeSystemDialogFromTaskBar"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_1

    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-virtual {v13}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->dismiss()V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v13, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    sget-boolean v13, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v13, :cond_11

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get0()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "onReceive THEME_APPLY"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v13}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get1(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onThemeChanged()V

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v13, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    sget-boolean v13, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v13, :cond_13

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get0()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "onReceive Dnd Mode Changed"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$Receiver;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v13}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get1(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onZenModeChanged()V

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v13, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    const-string/jumbo v13, "state"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const-string/jumbo v13, "isSupportDisplayVolumeControl"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    sget-boolean v13, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v13, :cond_15

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get0()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onReceive SEM_WIFI_DISPLAY_SOURCE_STATE = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    const/4 v13, 0x1

    if-ne v10, v13, :cond_16

    if-eqz v4, :cond_16

    const/4 v13, 0x1

    sput-boolean v13, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsSupportTvVolumeControl:Z

    goto/16 :goto_0

    :cond_16
    sget-boolean v13, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsSupportTvVolumeControl:Z

    if-eqz v13, :cond_1

    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsSupportTvVolumeControl:Z

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v13, "com.samsung.intent.action.DLNA_STATUS_CHANGED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    const-string/jumbo v13, "status"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const-string/jumbo v13, "player_type"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const/4 v13, 0x1

    if-ne v11, v13, :cond_1b

    if-eqz v7, :cond_18

    const/4 v13, 0x2

    if-ne v7, v13, :cond_19

    :cond_18
    const/4 v13, 0x1

    :goto_1
    sput-boolean v13, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsDLNAStatus:Z

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get0()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onReceive : set mIsDLNAStatus to :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-boolean v15, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mIsDLNAStatus:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_19
    const/4 v13, 0x3

    if-ne v7, v13, :cond_1a

    const/4 v13, 0x1

    goto :goto_1

    :cond_1a
    const/4 v13, 0x0

    goto :goto_1

    :cond_1b
    const/4 v13, 0x0

    goto :goto_1
.end method
