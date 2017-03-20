.class public Lcom/android/incallui/service/vt/VideoCallControl;
.super Ljava/lang/Object;
.source "VideoCallControl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SECVT-VideoCallControl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canUseScreenTypeSensor()Z
    .locals 3

    .prologue
    .line 83
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallList;->getFirstCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v0

    .line 84
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->canUseScreenTypeSensor(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static canUseScreenTypeSensor(Lcom/android/incallui/Call;)Z
    .locals 5
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v2, 0x0

    .line 88
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->isPSDomain()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    sget-boolean v3, Lcom/android/incallui/service/vt/VideoCallConfig;->DEVICE_ROTATION:Z

    if-eqz v3, :cond_0

    .line 90
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->isEnabledAutoRotation()Z

    move-result v1

    .line 91
    .local v1, "isEnabledAutoRotation":Z
    invoke-static {p0}, Lcom/android/incallui/service/vt/VideoCallControl;->isCVODisabled(Lcom/android/incallui/Call;)Z

    move-result v0

    .line 92
    .local v0, "isCVODisabled":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canUseScreenTypeSensor - AutoRotation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isCVODisabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/service/vt/VideoCallControl;->log(Ljava/lang/String;)V

    .line 93
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    .line 96
    .end local v0    # "isCVODisabled":Z
    .end local v1    # "isEnabledAutoRotation":Z
    :cond_0
    return v2
.end method

.method public static isAvailableFullScreenMode()Z
    .locals 4

    .prologue
    .line 133
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/VideoCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 134
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->isActiveOrBackgroundCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isModifyProgressing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->isAvailableFullScreenMode()Z

    move-result v1

    .line 139
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isAvailableVideoRx(Lcom/android/incallui/Call;)Z
    .locals 3
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v0, 0x0

    .line 275
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 276
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoRxEnabled(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasPausedDisplayState(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 278
    :cond_0
    return v0
.end method

.method public static isAvailableVideoTx(Lcom/android/incallui/Call;)Z
    .locals 3
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v0, 0x0

    .line 282
    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/CallList;->isAlive(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 283
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoTxEnabled(Lcom/android/incallui/Call;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->isModifyProgressing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 285
    :cond_1
    return v0
.end method

.method private static isCVODisabled(Lcom/android/incallui/Call;)Z
    .locals 5
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v4, 0x0

    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, "disabled":Z
    sget v2, Lcom/android/incallui/service/vt/VideoCallCapability;->SUPPORT_CVO:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    invoke-static {p0}, Lcom/android/incallui/util/SecCallExtraUtils;->getCVOStatus(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "cvoStatus":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 104
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 105
    const/4 v1, 0x1

    .line 110
    :cond_0
    const-string v2, "phoneapp.cvo.simulation"

    invoke-static {v2, v4}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_2

    .line 111
    const/4 v1, 0x0

    .line 116
    .end local v0    # "cvoStatus":Ljava/lang/String;
    :cond_1
    :goto_0
    return v1

    .line 112
    .restart local v0    # "cvoStatus":Ljava/lang/String;
    :cond_2
    const-string v2, "phoneapp.cvo.simulation"

    invoke-static {v2, v4}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    .line 113
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isEnabledAutoRotation()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 79
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isSecVT()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportOnlyLandscapeUI()Z
    .locals 4

    .prologue
    .line 53
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 54
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->isSupportOnlyLandscapeUI(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isSupportOnlyLandscapeUI(Lcom/android/incallui/Call;)Z
    .locals 4
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "isOnlyLandscapeUI":Z
    if-eqz p0, :cond_1

    .line 60
    invoke-static {p0}, Lcom/android/incallui/util/VideoCallUtils;->getVideoResolution(Lcom/android/incallui/Call;)I

    move-result v1

    .line 61
    .local v1, "videoResolution":I
    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 63
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    const/4 v0, 0x0

    .line 67
    .end local v1    # "videoResolution":I
    :cond_1
    if-eqz v0, :cond_2

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportOnlyLandscapeUI : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallControl;->log(Ljava/lang/String;)V

    .line 70
    :cond_2
    return v0

    .line 61
    .restart local v1    # "videoResolution":I
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportOnlyPortraitUI(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 74
    invoke-static {p0}, Lcom/android/incallui/service/vt/VideoCallControl;->canUseScreenTypeSensor(Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/incallui/service/vt/VideoCallControl;->isSupportOnlyLandscapeUI(Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 197
    const-string v0, "SECVT-VideoCallControl"

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 198
    return-void
.end method

.method public static needToShowDataDialog(Lcom/android/incallui/Call;)Z
    .locals 3
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 122
    .local v0, "needToShodDataDialog":Z
    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoState(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->needToShowDataDialog()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v1

    .line 124
    .local v1, "secVideoState":I
    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasIncoming(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/android/incallui/Call;->isModifyProgressing()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToTwoWay(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToOneWay(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->needToShowDataDialog()Z

    move-result v0

    .line 129
    .end local v1    # "secVideoState":I
    :cond_1
    return v0
.end method

.method public static needToShowMenu(Lcom/android/incallui/Call;)Z
    .locals 5
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 289
    if-eqz p0, :cond_8

    .line 290
    const/4 v0, 0x0

    .line 292
    .local v0, "bShowMenuForVT":Z
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isKorUX()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 293
    if-eqz p0, :cond_4

    .line 294
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 295
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_4

    .line 296
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_4

    move v0, v1

    .line 304
    :goto_0
    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    const/4 v0, 0x0

    .line 307
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isLostPhoneLock()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 308
    const/4 v0, 0x0

    .line 311
    :cond_1
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isUltraPowerSavingMode()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 312
    :cond_2
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isOutgoingVideoCall()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    .line 315
    :cond_3
    const-string v1, "SECVT-VideoCallControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needToShowMenu - bShowMenuForVT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    .end local v0    # "bShowMenuForVT":Z
    :goto_1
    return v0

    .restart local v0    # "bShowMenuForVT":Z
    :cond_4
    move v0, v2

    .line 296
    goto :goto_0

    .line 298
    :cond_5
    if-eqz p0, :cond_7

    .line 299
    invoke-virtual {p0}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 300
    invoke-virtual {p0}, Lcom/android/incallui/Call;->isModifyProgressing()Z

    move-result v3

    if-nez v3, :cond_7

    .line 301
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_7

    :cond_6
    move v0, v1

    :goto_2
    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_2

    .end local v0    # "bShowMenuForVT":Z
    :cond_8
    move v0, v2

    .line 318
    goto :goto_1
.end method

.method public static sendLiveVideo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 180
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getForegroundCallForVT()Lcom/android/incallui/Call;

    move-result-object v0

    .line 181
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 182
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/incallui/service/vt/VideoCallManager;->setLivePreview(Z)V

    .line 183
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/incallui/service/vt/VideoCallManager;->setCapturedLocalFile(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setPauseImage(Ljava/lang/String;)V

    .line 186
    :cond_0
    return-void
.end method

.method public static sendSessionModifyRequest(I)V
    .locals 3
    .param p0, "videoState"    # I

    .prologue
    .line 256
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getForegroundCallForVT()Lcom/android/incallui/Call;

    move-result-object v0

    .line 257
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->sendSessionModifyRequest(I)V

    .line 259
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v1, :cond_0

    .line 260
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/incallui/PrivatePolicy;->removeStatus(I)V

    .line 265
    :cond_0
    return-void
.end method

.method public static sendSessionModifyResponse(I)V
    .locals 2
    .param p0, "videoState"    # I

    .prologue
    .line 268
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getForegroundCallForVT()Lcom/android/incallui/Call;

    move-result-object v0

    .line 269
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->sendSessionModifyResponse(I)V

    .line 272
    :cond_0
    return-void
.end method

.method public static sendStillImage()V
    .locals 3

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "displayByUi":Z
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallManager;->getCapturedLocalFile()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "imageFile":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->needToShowHideMeByUi(Ljava/lang/String;)Z

    move-result v0

    .line 146
    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->sendStillImage(Z)V

    .line 147
    return-void
.end method

.method public static sendStillImage(Ljava/lang/String;Z)V
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "isLivePreview"    # Z

    .prologue
    .line 170
    if-eqz p0, :cond_0

    .line 171
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getForegroundCallForVT()Lcom/android/incallui/Call;

    move-result-object v0

    .line 172
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 173
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->setLivePreview(Z)V

    .line 174
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setPauseImage(Ljava/lang/String;)V

    .line 177
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_0
    return-void
.end method

.method public static sendStillImage(Z)V
    .locals 4
    .param p0, "displayByUi"    # Z

    .prologue
    const/4 v3, 0x0

    .line 150
    if-eqz p0, :cond_1

    .line 151
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/incallui/UiAdapter;->showIncomingHideMeImage(Z)V

    .line 152
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/incallui/service/vt/VideoCallManager;->setLivePreview(Z)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager;->getCapturedLocalFile()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "imageFile":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 158
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/service/vt/VideoCallManager;->setCapturedLocalFile(Ljava/lang/String;)V

    .line 164
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 165
    invoke-static {v0, v3}, Lcom/android/incallui/service/vt/VideoCallControl;->sendStillImage(Ljava/lang/String;Z)V

    goto :goto_0

    .line 162
    :cond_3
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getPreviewDefaultImage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static shouldAcceptRequest(II)Z
    .locals 3
    .param p0, "prevVideoState"    # I
    .param p1, "newVideoState"    # I

    .prologue
    const/4 v2, 0x2

    .line 232
    const/4 v0, 0x0

    .line 234
    .local v0, "shouldAccept":Z
    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    if-ne p1, v2, :cond_4

    .line 235
    :cond_0
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWayTx(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 236
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CCT()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 237
    :cond_1
    const/4 v0, 0x1

    .line 252
    :cond_2
    :goto_0
    return v0

    .line 239
    :cond_3
    if-ne p0, v2, :cond_2

    .line 240
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_HKTW_COMMON()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 241
    const/4 v0, 0x1

    goto :goto_0

    .line 244
    :cond_4
    if-nez p1, :cond_5

    .line 245
    const/4 v0, 0x1

    goto :goto_0

    .line 246
    :cond_5
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 247
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isUsaUX()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 248
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static shouldRejectRequest(II)Z
    .locals 2
    .param p0, "prevVideoState"    # I
    .param p1, "newVideoState"    # I

    .prologue
    .line 211
    const/4 v0, 0x0

    .line 213
    .local v0, "shouldReject":Z
    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 214
    :cond_0
    if-nez p0, :cond_4

    .line 215
    invoke-static {}, Lcom/android/incallui/util/BatteryUtils;->isLowBatt()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/incallui/util/BatteryUtils;->isCriticalLowBatt()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 216
    :cond_1
    invoke-static {}, Lcom/android/incallui/util/BatteryUtils;->isCriticalLowBatt()Z

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/util/BatteryUtils;->showLowBattToast(Z)V

    .line 217
    const/4 v0, 0x1

    .line 219
    :cond_2
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isUltraPowerSavingMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 220
    const/4 v0, 0x1

    .line 222
    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isCarModeOn()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 223
    const/4 v0, 0x1

    .line 228
    :cond_4
    return v0
.end method

.method public static showModifyCallException(ILcom/android/incallui/Call;Landroid/telecom/VideoProfile;)V
    .locals 3
    .param p0, "status"    # I
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "requestedProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    const v2, 0x7f0902da

    .line 322
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    const-string v0, "us_volte_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 326
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/VideoUtils;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 327
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    .line 330
    :cond_2
    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 333
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 334
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 335
    const-string v0, "SECVT-VideoCallControl"

    const-string v1, "onResultModifyCallRequest - MESSAGE_FAREND_STAY_ON_VOICE "

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->setMessageVoiceFromVideo(I)V

    goto :goto_0

    .line 337
    :cond_3
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_MODIFY_SWITCH_REJECT_POPUP:Z

    if-eqz v0, :cond_0

    .line 338
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isJpnUX()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 339
    invoke-static {v2}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    goto :goto_0

    .line 341
    :cond_4
    invoke-static {v2}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    goto :goto_0

    .line 344
    :cond_5
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 345
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/VideoUtils;->isVideoCall(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 346
    const v0, 0x7f0902dd

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    goto :goto_0

    .line 347
    :cond_6
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/VideoUtils;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    const-string v0, "tmo_volte_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 349
    const v0, 0x7f0902dc

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    goto :goto_0

    .line 351
    :cond_7
    const v0, 0x7f0902db

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    goto :goto_0
.end method

.method public static switchCamera()V
    .locals 2

    .prologue
    .line 201
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getForegroundCallForVT()Lcom/android/incallui/Call;

    move-result-object v0

    .line 202
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->switchCamera()V

    .line 204
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v1, :cond_0

    .line 205
    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/PrivatePolicy;->playStartSound()V

    .line 208
    :cond_0
    return-void
.end method

.method public static toogglePreview()V
    .locals 1

    .prologue
    .line 189
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->sendStillImage()V

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->sendLiveVideo()V

    goto :goto_0
.end method
