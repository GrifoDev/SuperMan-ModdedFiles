.class public Lcom/android/incallui/service/vt/VideoCallControl;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "SECVT-VideoCallControl"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canUseScreenTypeSensor()Z
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallList;->getFirstCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->canUseScreenTypeSensor(Lcom/android/incallui/Call;)Z

    move-result v0

    return v0
.end method

.method public static canUseScreenTypeSensor(Lcom/android/incallui/Call;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->isPSDomain()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->DEVICE_ROTATION:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->isEnabledAutoRotation()Z

    move-result v1

    invoke-static {p0}, Lcom/android/incallui/service/vt/VideoCallControl;->isCVODisabled(Lcom/android/incallui/Call;)Z

    move-result v2

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

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/service/vt/VideoCallControl;->log(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isAvailableFullScreenMode()Z
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/VideoCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->isActiveOrBackgroundCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isModifyProgressing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VideoBanner;->isShowingVideoBanner()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isAvailableFullScreenMode()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAvailableVideoRx(Lcom/android/incallui/Call;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

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

    :cond_0
    return v0
.end method

.method public static isAvailableVideoTx(Lcom/android/incallui/Call;)Z
    .locals 3

    const/4 v0, 0x0

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

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoTxEnabled(Lcom/android/incallui/Call;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->isModifyProgressing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static isCVODisabled(Lcom/android/incallui/Call;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->SUPPORT_CVO:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/incallui/util/SecCallExtraUtils;->getCVOStatus(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    move v0, v1

    :goto_0
    const-string v3, "phoneapp.cvo.simulation"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_1
    return v2

    :cond_1
    const-string v3, "phoneapp.cvo.simulation"

    invoke-static {v3, v2}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v0

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public static isEnabledAutoRotation()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSecVT()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportLandscapeUI()Z
    .locals 3

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isUltraPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->isSupportLandscapeUI(Lcom/android/incallui/Call;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isSupportLandscapeUI(Lcom/android/incallui/Call;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/android/incallui/util/VideoCallUtils;->getVideoResolution(Lcom/android/incallui/Call;)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    move v1, v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportLandUI: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->log(Ljava/lang/String;)V

    return v1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isSupportOnlyLandscapeUI()Z
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->isSupportOnlyLandscapeUI(Lcom/android/incallui/Call;)Z

    move-result v0

    return v0
.end method

.method public static isSupportOnlyLandscapeUI(Lcom/android/incallui/Call;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/android/incallui/util/VideoCallUtils;->getVideoResolution(Lcom/android/incallui/Call;)I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportOnlyLandscapeUI : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallControl;->log(Ljava/lang/String;)V

    :cond_2
    return v0

    :cond_3
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public static isSupportOnlyPortraitUI(Lcom/android/incallui/Call;)Z
    .locals 1

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

    const-string v0, "SECVT-VideoCallControl"

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static needToShowDataDialog(Lcom/android/incallui/Call;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoState(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/SecCall;->needToShowDataDialog()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasIncoming(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->isModifyProgressing()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToTwoWay(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToOneWay(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->needToShowDataDialog()Z

    move-result v0

    :cond_1
    return v0
.end method

.method public static needToShowMenu(Lcom/android/incallui/Call;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isKorUX()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p0, :cond_4

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v3, 0x9

    if-eq v0, v3, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v3, 0xa

    if-eq v0, v3, :cond_4

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isLostPhoneLock()Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    :cond_1
    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isUltraPowerSavingMode()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_2
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isOutgoingVideoCall()Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_1
    const-string v0, "SECVT-VideoCallControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needToShowMenu - bShowMenuForVT="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return v2

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/Call;->isModifyProgressing()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_7

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_0

    :cond_8
    move v2, v0

    goto :goto_1
.end method

.method public static sendLiveVideo()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallList;->getFirstCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->sendLiveVideo(Lcom/android/incallui/Call;)V

    return-void
.end method

.method public static sendLiveVideo(Lcom/android/incallui/Call;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallManager;->setLivePreview(Z)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/service/vt/VideoCallManager;->setCapturedLocalFile(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setPauseImage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static sendSessionModifyRequest(I)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getForegroundCallForVT()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->sendSessionModifyRequest(I)V

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/PrivatePolicy;->removeStatus(I)V

    :cond_0
    return-void
.end method

.method public static sendSessionModifyResponse(Lcom/android/incallui/Call;I)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->sendSessionModifyResponse(I)V

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-static {p1}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/PrivatePolicy;->clearForModifyCall()V

    :cond_0
    return-void
.end method

.method public static sendStillImage()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->getCapturedLocalFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->needToShowHideMeByUi(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->sendStillImage(Z)V

    return-void
.end method

.method public static sendStillImage(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getForegroundCallForVT()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->setLivePreview(Z)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setPauseImage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static sendStillImage(Z)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/UiAdapter;->showIncomingHideMeImage(Z)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/incallui/service/vt/VideoCallManager;->setLivePreview(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->getCapturedLocalFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/service/vt/VideoCallManager;->setCapturedLocalFile(Ljava/lang/String;)V

    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    invoke-static {v0, v3}, Lcom/android/incallui/service/vt/VideoCallControl;->sendStillImage(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getPreviewDefaultImage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static shouldAcceptRequest(II)Z
    .locals 4

    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    if-ne p1, v3, :cond_4

    :cond_0
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWayTx(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CCT()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-ne p0, v3, :cond_3

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_HKTW_COMMON()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_3

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isUsaUX()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public static shouldRejectRequest(II)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    :cond_0
    if-nez p0, :cond_9

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isUltraPowerSavingMode()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isCarModeOn()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isMirrorLinkModeOn()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    const-string v3, "automatic_answering_machine"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    :cond_3
    sget-boolean v3, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_DATA_USAGE_LIMITED_GSM:Z

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->checkAndNotifyDataUsageLimit()Z

    move-result v3

    if-nez v3, :cond_4

    move v0, v1

    :cond_4
    const-string v3, "power_planning_support"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "reserve_battery_on"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_7

    move v3, v1

    :goto_1
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enable_reserve_max_mode"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_5

    move v2, v1

    :cond_5
    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    move v0, v1

    :cond_6
    :goto_2
    return v0

    :cond_7
    move v3, v2

    goto :goto_1

    :cond_8
    move v0, v2

    goto :goto_0

    :cond_9
    move v0, v2

    goto :goto_2
.end method

.method public static showModifyCallException(ILcom/android/incallui/Call;Landroid/telecom/VideoProfile;)V
    .locals 3

    const v2, 0x7f090357

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "us_volte_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    :cond_2
    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "SECVT-VideoCallControl"

    const-string v1, "onResultModifyCallRequest - MESSAGE_FAREND_STAY_ON_VOICE "

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->setMessageVoiceFromVideo(I)V

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_MODIFY_SWITCH_REJECT_POPUP:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isJpnUX()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    goto :goto_0

    :cond_4
    invoke-static {v2}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/VideoUtils;->isVideoCall(I)Z

    move-result v0

    if-nez v0, :cond_6

    const v0, 0x7f09035a

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/VideoUtils;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "tmo_volte_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f090359

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    goto :goto_0

    :cond_7
    const v0, 0x7f090358

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    goto :goto_0
.end method

.method public static switchCamera()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getForegroundCallForVT()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->switchCamera()V

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/PrivatePolicy;->playStartSound()V

    :cond_0
    return-void
.end method

.method public static toogglePreview()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->sendStillImage()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->sendLiveVideo()V

    goto :goto_0
.end method
