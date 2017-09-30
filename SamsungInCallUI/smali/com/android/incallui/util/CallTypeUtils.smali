.class public Lcom/android/incallui/util/CallTypeUtils;
.super Ljava/lang/Object;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CallTypeUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkEmergencyCall(Lcom/android/incallui/Call;)Z
    .locals 3

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    :cond_0
    return v0
.end method

.method public static checkPrimaryEmergencyCall()Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    :cond_0
    return v0
.end method

.method public static getCallType()I
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v0

    return v0
.end method

.method public static getCallType(Lcom/android/incallui/Call;)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getVideoState()I

    move-result v0

    :cond_0
    return v0
.end method

.method private static getConferenceCallManagerShowingState()Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getConferenceCallManagerShowingState()Z

    move-result v0

    :cond_0
    const-string v1, "CallTypeUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConferenceCallManagerShowingState call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static getConnectionCallId(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/util/SecCallExtraUtils;->getConnectionCallId(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHasBeenVideoCall()Z
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isHasBeenVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    return v0
.end method

.method public static getLineMSISDN()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getLineMSISDN(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLineMSISDN(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/util/SecCallExtraUtils;->getLineMSISDN(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasActiveEpdgCall()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsEpdgCall(Lcom/android/incallui/Call;)Z

    move-result v0

    return v0
.end method

.method public static hasOtherCallTTYvalue()Z
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-static {v2, v4, v0}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/incallui/CallList;->getBgCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v3

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/android/incallui/util/SecCallExtraUtils;->getTtyType(Lcom/android/incallui/Call;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/android/incallui/util/SecCallExtraUtils;->getTtyType(Lcom/android/incallui/Call;)I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    const-string v2, "CallTypeUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasOtherCallTTYvalue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public static hasVideoOneway()Z
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWay(Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWay(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "CallTypeUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasOnewayVideoCall: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasVideoState()Z
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallList;->getFirstCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoState(Lcom/android/incallui/Call;)Z

    move-result v0

    return v0
.end method

.method public static hasVideoState(Lcom/android/incallui/Call;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public static isActiveVideoCall()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    return v0
.end method

.method public static isAliveVideoCall()Z
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    return v0
.end method

.method public static isCDMAPhoneType()Z
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isCDMAPhoneType(Lcom/android/incallui/Call;)Z

    move-result v0

    return v0
.end method

.method public static isCDMAPhoneType(Lcom/android/incallui/Call;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCSDomain(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCSVideoCall()Z
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isCSVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    return v0
.end method

.method public static isCSVideoCall(Lcom/android/incallui/Call;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCdmaMultipartyCall()Z
    .locals 4

    const/4 v3, 0x2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getSecondBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v1

    const-string v2, "china_cdma_call"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v0

    if-eq v0, v3, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCommonHDConfCall(Lcom/android/incallui/Call;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "display_hd_icon"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "display_cshd_icon"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CallTypeUtils"

    const-string v3, "isCommonHDConfCall : HDicon not support : "

    invoke-static {v0, v3, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v1

    :cond_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v0, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->isShowHDVoiceIcon(Lcom/android/incallui/Call;)Z
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :cond_1
    move v1, v0

    :cond_2
    :goto_2
    const-string v0, "CallTypeUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCommonHDConfCall, retValue : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "CallTypeUtils"

    const-string v3, "ConcurrentModificationException"

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static isEnhancedVoiceConferenceCall()Z
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isEnhancedVoiceConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v0

    return v0
.end method

.method public static isEnhancedVoiceConferenceCall(Lcom/android/incallui/Call;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "ims_voice_conference_vzw"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIMSConferenceParticipantCount(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v1, "CallTypeUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEnhancedConferenceCall call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public static isEpdgCall()Z
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall(Lcom/android/incallui/Call;)Z

    move-result v0

    return v0
.end method

.method public static isEpdgCall(Lcom/android/incallui/Call;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsEpdgCall(Lcom/android/incallui/Call;)Z

    move-result v0

    return v0
.end method

.method public static isEpdgConferenceCall(Lcom/android/incallui/Call;)Z
    .locals 5

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    move v3, v1

    move v2, v1

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->isShowCallDetailsEpdgIcon(Lcom/android/incallui/Call;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    :goto_1
    move v1, v0

    :cond_1
    :goto_2
    const-string v0, "CallTypeUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEpdgConferenceCall, retValue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 v2, 0x1

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "CallTypeUtils"

    const-string v1, " isEpdgConferenceCall - IndexOutOfBoundsException..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public static isHDConferenceCall(Lcom/android/incallui/Call;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "display_hd_icon"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "display_cshd_icon"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CallTypeUtils"

    const-string v1, "isHDConferenceCall : HDicon not support : "

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v2

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    move v1, v2

    move v0, v2

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->isShowCallDetailsHDIcon(Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_2
    const-string v0, "CallTypeUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isHDConferenceCall, retValue : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_1

    :cond_3
    move v2, v0

    goto :goto_2
.end method

.method public static isHasBeenVideoCall(Lcom/android/incallui/Call;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/util/SecCallExtraUtils;->getHasBeenVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    return v0
.end method

.method public static isIncomingAcceptOrRejectByOtherDevice(Lcom/android/incallui/Call;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "multiend_point"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/IMSErrorUtils;->getSIPErrorFromDisconnectCause(Landroid/telecom/DisconnectCause;)I

    move-result v2

    const/16 v3, 0x9c8

    if-eq v2, v3, :cond_1

    const/16 v3, 0x9c9

    if-ne v2, v3, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    const-string v2, "CallTypeUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isIncomingAcceptOrRejectByOtherDevice : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static isIncomingVideoCall()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    return v0
.end method

.method public static isIncomingVideoCall(Lcom/android/incallui/Call;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isModifyProgressing()Z
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isModifyProgressing(Lcom/android/incallui/Call;)Z

    move-result v0

    return v0
.end method

.method public static isModifyProgressing(Lcom/android/incallui/Call;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->isModifyProgressing()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public static isMtConfCall(Lcom/android/incallui/Call;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "enable_conference_info_banner"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsVolteConference(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "CallTypeUtils"

    const-string v2, "isMtConfCall call is null"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isOutgoingVideoCall()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    return v0
.end method

.method public static isPSDomain()Z
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v0

    return v0
.end method

.method public static isPSDomain(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPSDomain(Lcom/android/incallui/Call;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->isPSDomain()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPSVideoCall()Z
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isPSVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    return v0
.end method

.method public static isPSVideoCall(Lcom/android/incallui/Call;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPSVoiceCall()Z
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isPSVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v0

    return v0
.end method

.method public static isPSVoiceCall(Lcom/android/incallui/Call;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPrimaryConferenceCall()Z
    .locals 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getSecondActiveCall()Lcom/android/incallui/Call;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v5

    if-nez v5, :cond_5

    move v0, v1

    :goto_0
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    :cond_0
    if-nez v7, :cond_6

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_1
    move v6, v1

    :goto_1
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v0, :cond_7

    move v0, v1

    :goto_2
    const-string v3, "vzw_volte_ui"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v7, :cond_8

    invoke-static {v7}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v7}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v9, 0x3

    if-ne v3, v9, :cond_8

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->getConferenceCallManagerShowingState()Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v1

    :goto_3
    const-string v9, "vzw_volte_ui_conf"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    if-eqz v7, :cond_2

    invoke-static {v7}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v7}, Lcom/android/incallui/Call;->getParentId()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_3

    invoke-virtual {v7}, Lcom/android/incallui/Call;->getPreviousParentId()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_3

    :cond_2
    if-eqz v5, :cond_9

    invoke-static {v5}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getParentId()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_3

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getPreviousParentId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    :cond_3
    move v5, v1

    :goto_4
    if-eqz v6, :cond_a

    invoke-virtual {v4, v7}, Lcom/android/incallui/CallList;->isCallDisconnectingOrDisconnected(Lcom/android/incallui/Call;)Z

    move-result v9

    if-eqz v9, :cond_a

    :cond_4
    :goto_5
    return v2

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    move v6, v2

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_2

    :cond_8
    move v3, v2

    goto :goto_3

    :cond_9
    move v5, v2

    goto :goto_4

    :cond_a
    if-eqz v0, :cond_b

    invoke-virtual {v4, v8}, Lcom/android/incallui/CallList;->isCallDisconnectingOrDisconnected(Lcom/android/incallui/Call;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_b
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->hasTwoActiveCall()Z

    move-result v4

    const-string v8, "CallTypeUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isPrimaryConferenceWithTwoActiveCall: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_c

    invoke-static {v7}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v7

    if-nez v7, :cond_c

    move v4, v2

    :cond_c
    const-string v7, "CallTypeUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isPrimaryConferenceCall isPrimaryConference:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ,isPrimaryConference2:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ,wasConfCall:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ,wasNewConfCall:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ,isPrimaryConferenceWithTwoActiveCall:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_d

    if-nez v0, :cond_d

    if-nez v3, :cond_d

    if-nez v5, :cond_d

    if-eqz v4, :cond_4

    :cond_d
    move v2, v1

    goto/16 :goto_5
.end method

.method public static isSrvccConference(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v2, "Conference call"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    const-string v2, "CallTypeUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSrvccConference : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static isVideoCall()Z
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    return v0
.end method

.method public static isVideoCall(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoCall(Lcom/android/incallui/Call;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoEnabled(I)Z
    .locals 1

    invoke-static {p0}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v0

    return v0
.end method

.method public static isVideoEnabled(Lcom/android/incallui/Call;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoEnabled(I)Z

    move-result v0

    return v0
.end method

.method public static isVideoOneWay(I)Z
    .locals 1

    invoke-static {p0}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/telecom/VideoProfile;->isBidirectional(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoOneWay(Lcom/android/incallui/Call;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWay(I)Z

    move-result v0

    return v0
.end method

.method public static isVideoOneWayRx(I)Z
    .locals 1

    invoke-static {p0}, Landroid/telecom/VideoProfile;->isReceptionEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/telecom/VideoProfile;->isBidirectional(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoOneWayRx(Lcom/android/incallui/Call;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWayRx(I)Z

    move-result v0

    return v0
.end method

.method public static isVideoOneWayTx(I)Z
    .locals 1

    invoke-static {p0}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/telecom/VideoProfile;->isBidirectional(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoOneWayTx(Lcom/android/incallui/Call;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWayTx(I)Z

    move-result v0

    return v0
.end method

.method public static isVideoPause(I)Z
    .locals 1

    invoke-static {p0}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v0

    return v0
.end method

.method public static isVideoPause(Lcom/android/incallui/Call;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoPause(I)Z

    move-result v0

    return v0
.end method

.method public static isVideoRxEnabled(I)Z
    .locals 1

    invoke-static {p0}, Landroid/telecom/VideoProfile;->isReceptionEnabled(I)Z

    move-result v0

    return v0
.end method

.method public static isVideoRxEnabled(Lcom/android/incallui/Call;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoRxEnabled(I)Z

    move-result v0

    return v0
.end method

.method public static isVideoTwoWay(I)Z
    .locals 1

    invoke-static {p0}, Landroid/telecom/VideoProfile;->isBidirectional(I)Z

    move-result v0

    return v0
.end method

.method public static isVideoTwoWay(Lcom/android/incallui/Call;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoTwoWay(I)Z

    move-result v0

    return v0
.end method

.method public static isVideoTxEnabled(I)Z
    .locals 1

    invoke-static {p0}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v0

    return v0
.end method

.method public static isVideoTxEnabled(Lcom/android/incallui/Call;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoTxEnabled(I)Z

    move-result v0

    return v0
.end method

.method public static isVoiceCall()Z
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v0

    return v0
.end method

.method public static isVoiceCall(I)Z
    .locals 1

    invoke-static {p0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v0

    return v0
.end method

.method public static isVoiceCall(Lcom/android/incallui/Call;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(I)Z

    move-result v0

    return v0
.end method

.method public static isVolteGroupCall(Lcom/android/incallui/Call;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsVolteGroupCall(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
