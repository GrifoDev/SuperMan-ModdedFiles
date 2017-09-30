.class public Lcom/android/incallui/service/vt/VideoCallCallbackManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;
.implements Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;
.implements Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = " VideoCallCallbackManager - "


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleSessionEvent(Lcom/android/incallui/Call;I)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    sparse-switch p2, :sswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    :sswitch_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallNotifier;->getInstance()Lcom/android/incallui/InCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/android/incallui/InCallNotifier;->notifyVideoSessionEvent(ILcom/android/incallui/Call;)V

    :cond_1
    return-void

    :sswitch_1
    sget-boolean v2, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoDetails()Lcom/android/incallui/service/vt/VideoDetails;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/incallui/service/vt/VideoDetails;->setNoVideoState(Z)V

    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoDetails()Lcom/android/incallui/service/vt/VideoDetails;

    move-result-object v1

    sget v2, Lcom/android/incallui/service/vt/VideoDetails$SurfaceState;->RESUMED:I

    invoke-virtual {v1, v2}, Lcom/android/incallui/service/vt/VideoDetails;->setPeerVideoState(I)V

    goto :goto_0

    :sswitch_2
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoDetails()Lcom/android/incallui/service/vt/VideoDetails;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/service/vt/VideoDetails;->setNoVideoState(Z)V

    :cond_3
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoDetails()Lcom/android/incallui/service/vt/VideoDetails;

    move-result-object v1

    sget v2, Lcom/android/incallui/service/vt/VideoDetails$SurfaceState;->PAUSE:I

    invoke-virtual {v1, v2}, Lcom/android/incallui/service/vt/VideoDetails;->setPeerVideoState(I)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoDetails()Lcom/android/incallui/service/vt/VideoDetails;

    move-result-object v0

    sget v2, Lcom/android/incallui/service/vt/VideoDetails$SurfaceState;->RESUMING:I

    invoke-virtual {v0, v2}, Lcom/android/incallui/service/vt/VideoDetails;->setPeerVideoState(I)V

    invoke-static {}, Lcom/android/incallui/VideoPauseController;->getInstance()Lcom/android/incallui/VideoPauseController;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/android/incallui/VideoPauseController;->onVideoPauseStateChanged(Lcom/android/incallui/Call;Z)V

    move v0, v1

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoDetails()Lcom/android/incallui/service/vt/VideoDetails;

    move-result-object v2

    sget v3, Lcom/android/incallui/service/vt/VideoDetails$SurfaceState;->HELD:I

    invoke-virtual {v2, v3}, Lcom/android/incallui/service/vt/VideoDetails;->setPeerVideoState(I)V

    invoke-static {}, Lcom/android/incallui/VideoPauseController;->getInstance()Lcom/android/incallui/VideoPauseController;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/android/incallui/VideoPauseController;->onVideoPauseStateChanged(Lcom/android/incallui/Call;Z)V

    move v0, v1

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoDetails()Lcom/android/incallui/service/vt/VideoDetails;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/service/vt/VideoDetails;->setPreviewState(Z)V

    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/PrivatePolicy;->setIsReady(Z)V

    goto :goto_0

    :sswitch_6
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoDetails()Lcom/android/incallui/service/vt/VideoDetails;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/service/vt/VideoDetails;->setPreviewState(Z)V

    goto :goto_0

    :sswitch_7
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoDetails()Lcom/android/incallui/service/vt/VideoDetails;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/incallui/service/vt/VideoDetails;->setPreviewState(Z)V

    goto/16 :goto_0

    :sswitch_8
    const v2, 0x7f090103

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoDetails()Lcom/android/incallui/service/vt/VideoDetails;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/incallui/service/vt/VideoDetails;->setPreviewState(Z)V

    :cond_4
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/PrivatePolicy;->setCameraStartFailed(Z)V

    goto/16 :goto_0

    :cond_5
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_USE_SEND_STILL_IMAGE:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->sendStillImage()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0xc9 -> :sswitch_2
        0x12c -> :sswitch_5
        0x12d -> :sswitch_6
        0x12e -> :sswitch_7
        0x12f -> :sswitch_8
        0x3e8 -> :sswitch_3
        0x3e9 -> :sswitch_4
        0x7d1 -> :sswitch_0
        0x7d2 -> :sswitch_0
        0x7d3 -> :sswitch_0
        0x7d4 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public onCallDataUsageChange(J)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " VideoCallCallbackManager - onCallDataUsageChange : dataUsage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    return-void
.end method

.method public onCallSessionEvent(I)V
    .locals 0

    return-void
.end method

.method public onCallSessionEvent(Lcom/android/incallui/Call;I)V
    .locals 6

    const/4 v4, 0x1

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sparse-switch p2, :sswitch_data_0

    const-string v0, "unknown event = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallList;->isAlive(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " VideoCallCallbackManager -  onCallSessionEvent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallLog;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/service/vt/VideoCallCallbackManager;->handleSessionEvent(Lcom/android/incallui/Call;I)V

    :goto_1
    return-void

    :sswitch_0
    sget v1, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/android/incallui/util/VideoCallUtils;->hasVideoPauseState(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_2
    const-string v1, "video_resume(%s)"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/incallui/service/vt/VideoCallConstants$SessionEvent;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_1
    const/16 v1, 0xc9

    sget v3, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    invoke-static {v3}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v1, 0x3e9

    :cond_0
    const-string v3, "rx_pause(%s)"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallConstants$SessionEvent;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p2, v1

    goto :goto_0

    :sswitch_2
    const/16 p2, 0xc8

    const-string v1, "rx_resume(%s)"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/incallui/service/vt/VideoCallConstants$SessionEvent;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :sswitch_3
    const/16 p2, 0x12d

    const-string v1, "tx_start(%s)"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/incallui/service/vt/VideoCallConstants$SessionEvent;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :sswitch_4
    const/16 p2, 0x12e

    const-string v1, "tx_stop(%s)"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/incallui/service/vt/VideoCallConstants$SessionEvent;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :sswitch_5
    const/16 p2, 0x12f

    const-string v1, "camera_failure(%s)"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/incallui/service/vt/VideoCallConstants$SessionEvent;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :sswitch_6
    const/16 p2, 0x12c

    const-string v1, "camera_ready(%s)"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/incallui/service/vt/VideoCallConstants$SessionEvent;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " VideoCallCallbackManager -  onCallSessionEvent - ignored : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallLog;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    move p2, v0

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCameraDimensionsChange(Lcom/android/incallui/Call;II)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallList;->isAlive(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_USE_PREVIEW_DIMENSION:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_USE_PREVIEW_DIMENSION:Z

    const-string v0, "CAN_USE_PREVIEW_DIMENSION is enabled from now"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->config(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " VideoCallCallbackManager - onCameraDimensionsChange :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " X "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallLog;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoDetails()Lcom/android/incallui/service/vt/VideoDetails;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/incallui/service/vt/VideoDetails;->setPreviewDimension(II)V

    invoke-static {}, Lcom/android/incallui/InCallNotifier;->getInstance()Lcom/android/incallui/InCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallNotifier;->notifyVideoDetailsChange(Lcom/android/incallui/Call;)V

    :cond_1
    return-void
.end method

.method public onChangeToVideoRequest(Lcom/android/incallui/Call;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " VideoCallCallbackManager - onChangeToVideoRequest  : VideoState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallLog;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    return-void
.end method

.method public onDowngradeToAudio(Lcom/android/incallui/Call;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " VideoCallCallbackManager - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "onDowngradeToAudio : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallLog;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    return-void
.end method

.method public onDowngradeToAudioRequest(Lcom/android/incallui/Call;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " VideoCallCallbackManager - onDowngradeToAudioRequest  : VideoState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallLog;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    return-void
.end method

.method public onPeerPauseStateChanged(Lcom/android/incallui/Call;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " VideoCallCallbackManager - onPeerPauseStateChanged : paused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallLog;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    return-void
.end method

.method public onUpdatePeerDimensions(Lcom/android/incallui/Call;II)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallList;->isAlive(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_3

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_USE_PEER_DIMENSION:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_USE_PEER_DIMENSION:Z

    const-string v0, "CAN_USE_PEER_DIMENSION is enabled from now"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->config(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " VideoCallCallbackManager - onUpdatePeerDimensions  Invalid dimension : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " X "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallLog;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " VideoCallCallbackManager - onUpdatePeerDimensions :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " X "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallLog;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoDetails()Lcom/android/incallui/service/vt/VideoDetails;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/incallui/service/vt/VideoDetails;->setPeerDimension(II)V

    invoke-static {}, Lcom/android/incallui/InCallNotifier;->getInstance()Lcom/android/incallui/InCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallNotifier;->notifyVideoDetailsChange(Lcom/android/incallui/Call;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " VideoCallCallbackManager - onUpdatePeerDimensions -  ignored : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " X "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallLog;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUpgradeToVideoFail(ILcom/android/incallui/Call;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " VideoCallCallbackManager - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "onUpgradeToVideoFail : status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/incallui/service/vt/VideoCallLog;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgradeToVideoRequest(Lcom/android/incallui/Call;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " VideoCallCallbackManager - onUpgradeToVideoRequest  : VideoState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallLog;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgradeToVideoSuccess(Lcom/android/incallui/Call;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " VideoCallCallbackManager - onUpgradeToVideoSuccess  : VideoState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallLog;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoQualityChanged(Lcom/android/incallui/Call;I)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoDetails()Lcom/android/incallui/service/vt/VideoDetails;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/incallui/service/vt/VideoDetails;->setVideoQuality(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " VideoCallCallbackManager - onVideoQualityChanged  :  videoQuality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallLog;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallNotifier;->getInstance()Lcom/android/incallui/InCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallNotifier;->notifyVideoDetailsChange(Lcom/android/incallui/Call;)V

    :cond_0
    return-void
.end method

.method public setUp()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->addVideoEventListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;)V

    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->addSurfaceChangeListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;)V

    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->addSessionModificationListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;)V

    return-void
.end method

.method public tearDown()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->removeVideoEventListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;)V

    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->removeSurfaceChangeListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;)V

    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->removeSessionModificationListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;)V

    return-void
.end method
