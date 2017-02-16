.class Lcom/android/incallui/InCallPresenter$InCallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InCallPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InCallReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallPresenter;


# direct methods
.method private constructor <init>(Lcom/android/incallui/InCallPresenter;)V
    .locals 0

    .prologue
    .line 3613
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$InCallReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/InCallPresenter;Lcom/android/incallui/InCallPresenter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/InCallPresenter;
    .param p2, "x1"    # Lcom/android/incallui/InCallPresenter$1;

    .prologue
    .line 3613
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter$InCallReceiver;-><init>(Lcom/android/incallui/InCallPresenter;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3617
    if-nez p2, :cond_1

    .line 3716
    :cond_0
    :goto_0
    return-void

    .line 3620
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 3621
    .local v1, "action":Ljava/lang/String;
    const-string v12, "InCallPresenter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "InCallReceiver : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3623
    const-string v12, "com.skt.prod.phone.action.FINISH_INCALLUI"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 3624
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v12

    if-nez v12, :cond_0

    .line 3625
    iget-object v12, p0, Lcom/android/incallui/InCallPresenter$InCallReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v12}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    goto :goto_0

    .line 3627
    :cond_2
    const-string v12, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 3628
    const-string v12, "reason"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 3629
    .local v10, "reason":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "EmergencyModeBroadcastReceiver: reason = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {p0, v12, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3630
    iget-object v12, p0, Lcom/android/incallui/InCallPresenter$InCallReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v12, v10}, Lcom/android/incallui/InCallPresenter;->onEmergencyModeChange(I)V

    .line 3631
    const/4 v12, 0x3

    if-eq v10, v12, :cond_3

    const/4 v12, 0x5

    if-ne v10, v12, :cond_4

    :cond_3
    iget-object v12, p0, Lcom/android/incallui/InCallPresenter$InCallReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;
    invoke-static {v12}, Lcom/android/incallui/InCallPresenter;->access$700(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v12

    sget-object v13, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v12, v13, :cond_4

    .line 3632
    iget-object v12, p0, Lcom/android/incallui/InCallPresenter$InCallReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    .line 3635
    :cond_4
    const/4 v12, 0x1

    invoke-static {v12}, Lcom/android/incallui/util/InCallUtils;->setFullScreenMode(Z)V

    .line 3636
    iget-object v12, p0, Lcom/android/incallui/InCallPresenter$InCallReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v12}, Lcom/android/incallui/InCallPresenter;->updateNotification()V

    goto/16 :goto_0

    .line 3637
    .end local v10    # "reason":I
    :cond_5
    const-string v12, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 3638
    const-string v12, "==> ACTION_AUDIO_STATE_CHANGED"

    invoke-static {p0, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3640
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isCSVideoCall()Z

    move-result v12

    if-eqz v12, :cond_6

    iget-object v12, p0, Lcom/android/incallui/InCallPresenter$InCallReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;
    invoke-static {v12}, Lcom/android/incallui/InCallPresenter;->access$300(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallActivity;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 3641
    iget-object v12, p0, Lcom/android/incallui/InCallPresenter$InCallReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;
    invoke-static {v12}, Lcom/android/incallui/InCallPresenter;->access$300(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallActivity;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/InCallActivity;->updatedVideoCallMenu()V

    .line 3645
    :cond_6
    iget-object v12, p0, Lcom/android/incallui/InCallPresenter$InCallReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mBluetoothProfileManager:Lcom/android/incallui/BluetoothProfileManager;
    invoke-static {v12}, Lcom/android/incallui/InCallPresenter;->access$800(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/BluetoothProfileManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/BluetoothProfileManager;->getBluetoothHeadset()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v7

    .line 3646
    .local v7, "headset":Landroid/bluetooth/BluetoothHeadset;
    if-eqz v7, :cond_0

    .line 3649
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v5

    .line 3650
    .local v5, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    const/4 v3, 0x0

    .line 3651
    .local v3, "connectedDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 3652
    .local v4, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v7, v4}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 3653
    move-object v3, v4

    .line 3657
    .end local v4    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_8
    if-eqz v3, :cond_0

    .line 3658
    const/4 v6, 0x0

    .line 3659
    .local v6, "extra":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_9

    .line 3661
    const-string v6, "BLMT"

    .line 3667
    :goto_1
    const-string v12, "com.android.incallui"

    const-string v13, "BLTH"

    .line 3671
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v14

    .line 3667
    move-object/from16 v0, p1

    invoke-static {v0, v12, v13, v6, v14}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3664
    :cond_9
    const-string v6, "BLTC"

    goto :goto_1

    .line 3673
    .end local v3    # "connectedDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v5    # "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v6    # "extra":Ljava/lang/String;
    .end local v7    # "headset":Landroid/bluetooth/BluetoothHeadset;
    :cond_a
    const-string v12, "com.android.intent.action.PSBARRED_FOR_VOLTE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 3674
    const-string v12, "ims_ps_barring"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 3675
    const-string v12, "cmd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3676
    .local v9, "psBarred":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PSBarring action = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", extra cmd = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {p0, v12, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 3677
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v2

    .line 3678
    .local v2, "call":Lcom/android/incallui/Call;
    if-eqz v2, :cond_0

    .line 3679
    const-string v12, "1"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v12

    invoke-static {v12}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 3680
    const/4 v12, 0x1

    invoke-static {v12}, Lcom/android/incallui/util/IMSErrorUtils;->setPSBarringEventReceived(Z)V

    .line 3681
    iget-object v12, p0, Lcom/android/incallui/InCallPresenter$InCallReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/android/incallui/InCallPresenter;->hangUpOngoingCall(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 3685
    .end local v2    # "call":Lcom/android/incallui/Call;
    .end local v9    # "psBarred":Ljava/lang/String;
    :cond_b
    const-string v12, "com.samsung.intent.action.DATAUSAGE_REACH_TO_WARNING"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 3686
    sget-boolean v12, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_DATA_USAGE_LIMITED_CDMA:Z

    if-eqz v12, :cond_0

    .line 3687
    const-string v12, "DATAUSAGE_REACH_TO_WARNING"

    invoke-static {p0, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3688
    iget-object v12, p0, Lcom/android/incallui/InCallPresenter$InCallReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;
    invoke-static {v12}, Lcom/android/incallui/InCallPresenter;->access$300(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallActivity;

    move-result-object v12

    const v13, 0x7f0900e8

    invoke-virtual {v12, v13}, Lcom/android/incallui/InCallActivity;->showDataUsageLimitDialog(I)V

    goto/16 :goto_0

    .line 3691
    :cond_c
    const-string v12, "com.android.intent.action.VIDEO_DATAUSAGE_REACH_TO_LIMIT"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 3692
    const-string v12, "VIDEO_DATAUSAGE_REACH_TO_LIMIT"

    invoke-static {p0, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3693
    const/4 v8, -0x1

    .line 3694
    .local v8, "msgId":I
    sget-boolean v12, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_DATA_USAGE_LIMITED_CDMA:Z

    if-eqz v12, :cond_d

    .line 3695
    const v8, 0x7f0900e7

    .line 3696
    iget-object v12, p0, Lcom/android/incallui/InCallPresenter$InCallReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;
    invoke-static {v12}, Lcom/android/incallui/InCallPresenter;->access$300(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallActivity;

    move-result-object v12

    invoke-virtual {v12, v8}, Lcom/android/incallui/InCallActivity;->showDataUsageLimitDialog(I)V

    goto/16 :goto_0

    .line 3698
    :cond_d
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_TMO()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 3699
    iget-object v12, p0, Lcom/android/incallui/InCallPresenter$InCallReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;
    invoke-static {v12}, Lcom/android/incallui/InCallPresenter;->access$300(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallActivity;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/InCallActivity;->showDataUsageLimitDialogforTMO()V

    goto/16 :goto_0

    .line 3701
    :cond_e
    const v8, 0x7f0900e8

    .line 3702
    iget-object v12, p0, Lcom/android/incallui/InCallPresenter$InCallReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;
    invoke-static {v12}, Lcom/android/incallui/InCallPresenter;->access$300(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallActivity;

    move-result-object v12

    invoke-virtual {v12, v8}, Lcom/android/incallui/InCallActivity;->showDataUsageLimitDialog(I)V

    goto/16 :goto_0

    .line 3705
    .end local v8    # "msgId":I
    :cond_f
    const-string v12, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 3706
    const-string v12, "THEME_APPLY"

    invoke-static {p0, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3707
    iget-object v12, p0, Lcom/android/incallui/InCallPresenter$InCallReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v12}, Lcom/android/incallui/InCallPresenter;->cancelAndUpdateNotification()V

    goto/16 :goto_0

    .line 3708
    :cond_10
    const-string v12, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 3709
    const-string v12, "android.bluetooth.adapter.extra.STATE"

    const/high16 v13, -0x80000000

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 3710
    .local v11, "state":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "BluetoothAdapter.ACTION_STATE_CHANGED "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3711
    iget-object v12, p0, Lcom/android/incallui/InCallPresenter$InCallReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mBluetoothProfileManager:Lcom/android/incallui/BluetoothProfileManager;
    invoke-static {v12}, Lcom/android/incallui/InCallPresenter;->access$800(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/BluetoothProfileManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/BluetoothProfileManager;->getBluetoothHeadset()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v12

    if-nez v12, :cond_0

    const/16 v12, 0xc

    if-ne v11, v12, :cond_0

    .line 3712
    const-string v12, "Get bluetooth profile proxy again after STATE_ON"

    invoke-static {p0, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3713
    iget-object v12, p0, Lcom/android/incallui/InCallPresenter$InCallReceiver;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mBluetoothProfileManager:Lcom/android/incallui/BluetoothProfileManager;
    invoke-static {v12}, Lcom/android/incallui/InCallPresenter;->access$800(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/BluetoothProfileManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/BluetoothProfileManager;->initBluetoothProfileProxy()V

    goto/16 :goto_0
.end method
