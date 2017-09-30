.class public Lcom/android/incallui/InCallVideoCallCallback;
.super Landroid/telecom/InCallService$VideoCall$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "PSTNVT-InCallVideoCallCallback"


# instance fields
.field private mCall:Lcom/android/incallui/Call;


# direct methods
.method public constructor <init>(Lcom/android/incallui/Call;)V
    .locals 0

    invoke-direct {p0}, Landroid/telecom/InCallService$VideoCall$Callback;-><init>()V

    iput-object p1, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    return-void
.end method


# virtual methods
.method public onCallDataUsageChanged(J)V
    .locals 3

    const-string v0, "PSTNVT-InCallVideoCallCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallDataUsageChanged: dataUsage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->callDataUsageChanged(J)V

    return-void
.end method

.method public onCallSessionEvent(I)V
    .locals 3

    const-string v0, "PSTNVT-InCallVideoCallCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallSessionEvent event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1, p1}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->callSessionEvent(Lcom/android/incallui/Call;I)V

    return-void
.end method

.method public onCameraCapabilitiesChanged(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {p1}, Landroid/telecom/VideoProfile$CameraCapabilities;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/telecom/VideoProfile$CameraCapabilities;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->cameraDimensionsChanged(Lcom/android/incallui/Call;II)V

    :cond_0
    return-void
.end method

.method public onPeerDimensionsChanged(II)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->peerDimensionsChanged(Lcom/android/incallui/Call;II)V

    return-void
.end method

.method public onSessionModifyRequestReceived(Landroid/telecom/VideoProfile;)V
    .locals 6

    const-string v0, "PSTNVT-InCallVideoCallCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onSessionModifyRequestReceived videoProfile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/VideoUtils;->getUnPausedVideoState(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/VideoUtils;->getUnPausedVideoState(I)I

    move-result v1

    invoke-static {v0}, Lcom/android/incallui/VideoUtils;->isVideoCall(I)Z

    move-result v2

    invoke-static {v1}, Lcom/android/incallui/VideoUtils;->isVideoCall(I)Z

    move-result v3

    if-eq v0, v1, :cond_0

    iget-object v4, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    :cond_0
    const-string v1, "PSTNVT-InCallVideoCallCallback"

    const-string v2, "previousVideoState and newVideoState are same"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-static {v1, v0}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyResponse(Lcom/android/incallui/Call;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    if-eq v0, v1, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->changeToVideoRequest(Lcom/android/incallui/Call;I)V

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    if-nez v3, :cond_4

    if-eq v0, v1, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->downgradeToAudioRequest(Lcom/android/incallui/Call;I)V

    goto :goto_0

    :cond_4
    const-string v4, "bike_mode"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOn()Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v2, :cond_1

    if-eqz v3, :cond_1

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-static {v1, v0}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyResponse(Lcom/android/incallui/Call;I)V

    goto :goto_0

    :cond_5
    if-nez v2, :cond_1

    if-eqz v3, :cond_1

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->upgradeToVideoRequest(Lcom/android/incallui/Call;I)V

    goto :goto_0
.end method

.method public onSessionModifyResponseReceived(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "PSTNVT-InCallVideoCallCallback"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSessionModifyResponseReceived status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requestedProfile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " responseProfile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eq p1, v1, :cond_3

    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-static {p1, v0, p2}, Lcom/android/incallui/service/vt/VideoCallControl;->showModifyCallException(ILcom/android/incallui/Call;Landroid/telecom/VideoProfile;)V

    if-ne p1, v5, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v5, v1}, Lcom/android/incallui/Call;->setSessionModificationState(IZ)V

    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, p1, v1}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->upgradeToVideoFail(ILcom/android/incallui/Call;)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v2}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    return-void

    :cond_1
    if-ne p1, v6, :cond_2

    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v6, v1}, Lcom/android/incallui/Call;->setSessionModificationState(IZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Lcom/android/incallui/Call;->setSessionModificationState(IZ)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_b

    if-eqz p3, :cond_b

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v3

    if-ne v0, v3, :cond_7

    move v0, v1

    :goto_2
    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v3

    invoke-static {v3}, Lcom/android/incallui/VideoUtils;->isVideoCall(I)Z

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v4

    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v5

    const-string v6, "us_volte_ui"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    :cond_4
    if-eqz v0, :cond_a

    if-eqz v3, :cond_9

    invoke-static {v4, v5}, Lcom/android/incallui/VideoUtils;->getVideoStateDifferential(II)I

    move-result v0

    invoke-static {v4, v5}, Lcom/android/incallui/VideoUtils;->isPeerPausedState(II)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v3, v4, v1}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->peerPausedStateChanged(Lcom/android/incallui/Call;Z)V

    :cond_5
    :goto_3
    invoke-static {v0}, Lcom/android/incallui/VideoUtils;->isVideoCall(I)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v5}, Lcom/android/incallui/VideoUtils;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->upgradeToVideoSuccess(Lcom/android/incallui/Call;)V

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_2

    :cond_8
    invoke-static {v4, v5}, Lcom/android/incallui/VideoUtils;->isPeerResumedState(II)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v1

    iget-object v3, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1, v3, v2}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->peerPausedStateChanged(Lcom/android/incallui/Call;Z)V

    goto :goto_3

    :cond_9
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->downgradeToAudio(Lcom/android/incallui/Call;)V

    goto/16 :goto_1

    :cond_a
    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, p1, v1}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->upgradeToVideoFail(ILcom/android/incallui/Call;)V

    goto/16 :goto_1

    :cond_b
    const-string v0, "PSTNVT-InCallVideoCallCallback"

    const-string v1, "onSessionModifyResponseReceived request and response Profiles are null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onVideoQualityChanged(I)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1, p1}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->videoQualityChanged(Lcom/android/incallui/Call;I)V

    return-void
.end method
