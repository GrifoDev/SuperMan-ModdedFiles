.class public Lcom/android/incallui/InCallVideoCallCallback;
.super Landroid/telecom/InCallService$VideoCall$Callback;
.source "InCallVideoCallCallback.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PSTNVT-InCallVideoCallCallback"


# instance fields
.field private mCall:Lcom/android/incallui/Call;


# direct methods
.method public constructor <init>(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/telecom/InCallService$VideoCall$Callback;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    .line 47
    return-void
.end method


# virtual methods
.method public onCallDataUsageChanged(J)V
    .locals 3
    .param p1, "dataUsage"    # J

    .prologue
    .line 185
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

    .line 186
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->callDataUsageChanged(J)V

    .line 187
    return-void
.end method

.method public onCallSessionEvent(I)V
    .locals 3
    .param p1, "event"    # I

    .prologue
    .line 152
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

    .line 153
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1, p1}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->callSessionEvent(Lcom/android/incallui/Call;I)V

    .line 154
    return-void
.end method

.method public onCameraCapabilitiesChanged(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    .locals 4
    .param p1, "cameraCapabilities"    # Landroid/telecom/VideoProfile$CameraCapabilities;

    .prologue
    .line 197
    if-eqz p1, :cond_0

    .line 198
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    .line 199
    invoke-virtual {p1}, Landroid/telecom/VideoProfile$CameraCapabilities;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/telecom/VideoProfile$CameraCapabilities;->getHeight()I

    move-result v3

    .line 198
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->cameraDimensionsChanged(Lcom/android/incallui/Call;II)V

    .line 201
    :cond_0
    return-void
.end method

.method public onPeerDimensionsChanged(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 164
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->peerDimensionsChanged(Lcom/android/incallui/Call;II)V

    .line 165
    return-void
.end method

.method public onSessionModifyRequestReceived(Landroid/telecom/VideoProfile;)V
    .locals 7
    .param p1, "videoProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 56
    const-string v4, "PSTNVT-InCallVideoCallCallback"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " onSessionModifyRequestReceived videoProfile="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v4, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/VideoUtils;->getUnPausedVideoState(I)I

    move-result v2

    .line 58
    .local v2, "previousVideoState":I
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/VideoUtils;->getUnPausedVideoState(I)I

    move-result v1

    .line 60
    .local v1, "newVideoState":I
    invoke-static {v2}, Lcom/android/incallui/VideoUtils;->isVideoCall(I)Z

    move-result v3

    .line 61
    .local v3, "wasVideoCall":Z
    invoke-static {v1}, Lcom/android/incallui/VideoUtils;->isVideoCall(I)Z

    move-result v0

    .line 64
    .local v0, "isVideoCall":Z
    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    if-eq v2, v1, :cond_1

    .line 65
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v4, v5, v1}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->upgradeToVideoRequest(Lcom/android/incallui/Call;I)V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    if-eq v2, v1, :cond_2

    .line 68
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v4, v5, v1}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->changeToVideoRequest(Lcom/android/incallui/Call;I)V

    goto :goto_0

    .line 70
    :cond_2
    if-eqz v3, :cond_0

    if-nez v0, :cond_0

    if-eq v2, v1, :cond_0

    .line 71
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v4, v5, v1}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->downgradeToAudioRequest(Lcom/android/incallui/Call;I)V

    goto :goto_0
.end method

.method public onSessionModifyResponseReceived(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 12
    .param p1, "status"    # I
    .param p2, "requestedProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 89
    const-string v7, "PSTNVT-InCallVideoCallCallback"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onSessionModifyResponseReceived status="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " requestedProfile="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " responseProfile="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    if-eq p1, v5, :cond_3

    .line 92
    iget-object v7, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-static {p1, v7, p2}, Lcom/android/incallui/service/vt/VideoCallControl;->showModifyCallException(ILcom/android/incallui/Call;Landroid/telecom/VideoProfile;)V

    .line 94
    if-ne p1, v10, :cond_1

    .line 95
    iget-object v7, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v7, v10, v5}, Lcom/android/incallui/Call;->setSessionModificationState(IZ)V

    .line 106
    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v5

    iget-object v7, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v5, p1, v7}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->upgradeToVideoFail(ILcom/android/incallui/Call;)V

    .line 142
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v5, v6}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    .line 143
    return-void

    .line 98
    :cond_1
    if-ne p1, v11, :cond_2

    .line 99
    iget-object v7, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v7, v11, v5}, Lcom/android/incallui/Call;->setSessionModificationState(IZ)V

    goto :goto_0

    .line 102
    :cond_2
    iget-object v7, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    const/4 v8, 0x2

    invoke-virtual {v7, v8, v5}, Lcom/android/incallui/Call;->setSessionModificationState(IZ)V

    goto :goto_0

    .line 107
    :cond_3
    if-eqz p2, :cond_b

    if-eqz p3, :cond_b

    .line 108
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v7

    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v8

    if-ne v7, v8, :cond_7

    move v2, v5

    .line 109
    .local v2, "modifySucceeded":Z
    :goto_2
    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v7

    invoke-static {v7}, Lcom/android/incallui/VideoUtils;->isVideoCall(I)Z

    move-result v1

    .line 110
    .local v1, "isVideoCall":Z
    iget-object v7, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v7}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v4

    .line 111
    .local v4, "prevVideoState":I
    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v3

    .line 112
    .local v3, "newVideoState":I
    const-string v7, "us_volte_ui"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 113
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 114
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    .line 118
    :cond_4
    if-eqz v2, :cond_a

    .line 119
    if-eqz v1, :cond_9

    .line 120
    invoke-static {v4, v3}, Lcom/android/incallui/VideoUtils;->getVideoStateDifferential(II)I

    move-result v0

    .line 121
    .local v0, "differential":I
    invoke-static {v4, v3}, Lcom/android/incallui/VideoUtils;->isPeerPausedState(II)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 122
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v7

    iget-object v8, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v7, v8, v5}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->peerPausedStateChanged(Lcom/android/incallui/Call;Z)V

    .line 127
    :cond_5
    :goto_3
    invoke-static {v0}, Lcom/android/incallui/VideoUtils;->isVideoCall(I)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {v3}, Lcom/android/incallui/VideoUtils;->isVideoCall(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 128
    :cond_6
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v5

    iget-object v7, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v5, v7}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->upgradeToVideoSuccess(Lcom/android/incallui/Call;)V

    goto :goto_1

    .end local v0    # "differential":I
    .end local v1    # "isVideoCall":Z
    .end local v2    # "modifySucceeded":Z
    .end local v3    # "newVideoState":I
    .end local v4    # "prevVideoState":I
    :cond_7
    move v2, v6

    .line 108
    goto :goto_2

    .line 123
    .restart local v0    # "differential":I
    .restart local v1    # "isVideoCall":Z
    .restart local v2    # "modifySucceeded":Z
    .restart local v3    # "newVideoState":I
    .restart local v4    # "prevVideoState":I
    :cond_8
    invoke-static {v4, v3}, Lcom/android/incallui/VideoUtils;->isPeerResumedState(II)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 124
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v5

    iget-object v7, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v5, v7, v6}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->peerPausedStateChanged(Lcom/android/incallui/Call;Z)V

    goto :goto_3

    .line 131
    .end local v0    # "differential":I
    :cond_9
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v5

    iget-object v7, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v5, v7}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->downgradeToAudio(Lcom/android/incallui/Call;)V

    goto/16 :goto_1

    .line 134
    :cond_a
    if-eqz v1, :cond_0

    .line 135
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v5

    iget-object v7, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v5, p1, v7}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->upgradeToVideoFail(ILcom/android/incallui/Call;)V

    goto/16 :goto_1

    .line 139
    .end local v1    # "isVideoCall":Z
    .end local v2    # "modifySucceeded":Z
    .end local v3    # "newVideoState":I
    .end local v4    # "prevVideoState":I
    :cond_b
    const-string v5, "PSTNVT-InCallVideoCallCallback"

    const-string v7, "onSessionModifyResponseReceived request and response Profiles are null"

    invoke-static {v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onVideoQualityChanged(I)V
    .locals 2
    .param p1, "videoQuality"    # I

    .prologue
    .line 174
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallVideoCallCallback;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1, p1}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->videoQualityChanged(Lcom/android/incallui/Call;I)V

    .line 175
    return-void
.end method
