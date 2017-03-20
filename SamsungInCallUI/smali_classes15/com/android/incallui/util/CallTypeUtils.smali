.class public Lcom/android/incallui/util/CallTypeUtils;
.super Ljava/lang/Object;
.source "CallTypeUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CallTypeUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkEmergencyCall(Lcom/android/incallui/Call;)Z
    .locals 5
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 512
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    .line 513
    .local v1, "context":Landroid/content/Context;
    const/4 v2, 0x0

    .line 515
    .local v2, "isEmergency":Z
    if-eqz p0, :cond_0

    .line 516
    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    .line 517
    .local v0, "contactCacheEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v0, :cond_0

    .line 518
    iget-boolean v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    .line 521
    .end local v0    # "contactCacheEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_0
    return v2
.end method

.method public static checkPrimaryEmergencyCall()Z
    .locals 7

    .prologue
    .line 498
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    .line 499
    .local v2, "context":Landroid/content/Context;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 500
    .local v0, "call":Lcom/android/incallui/Call;
    const/4 v3, 0x0

    .line 502
    .local v3, "isEmergency":Z
    if-eqz v0, :cond_0

    .line 503
    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    .line 504
    .local v1, "contactCacheEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v1, :cond_0

    .line 505
    iget-boolean v3, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    .line 508
    .end local v1    # "contactCacheEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_0
    return v3
.end method

.method public static getCallType()I
    .locals 4

    .prologue
    .line 254
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 255
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v1

    return v1
.end method

.method public static getCallType(Lcom/android/incallui/Call;)I
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, "callType":I
    if-eqz p0, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/SecCall;->getVideoState()I

    move-result v0

    .line 263
    :cond_0
    return v0
.end method

.method private static getConferenceCallManagerShowingState()Z
    .locals 5

    .prologue
    .line 310
    const/4 v1, 0x0

    .line 311
    .local v1, "conferenceCallManagerShowingState":Z
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 312
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getConferenceCallManagerShowingState()Z

    move-result v1

    .line 315
    :cond_0
    const-string v2, "CallTypeUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConferenceCallManagerShowingState call: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    return v1
.end method

.method public static getConnectionCallId(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 525
    invoke-static {p0}, Lcom/android/incallui/util/SecCallExtraUtils;->getConnectionCallId(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHasBeenVideoCall()Z
    .locals 4

    .prologue
    .line 462
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 463
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isHasBeenVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static getLineMSISDN()Ljava/lang/String;
    .locals 4

    .prologue
    .line 564
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 565
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getLineMSISDN(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLineMSISDN(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 569
    invoke-static {p0}, Lcom/android/incallui/util/SecCallExtraUtils;->getLineMSISDN(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasActiveEpdgCall()Z
    .locals 1

    .prologue
    .line 494
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsEpdgCall(Lcom/android/incallui/Call;)Z

    move-result v0

    return v0
.end method

.method public static hasOtherCallTTYvalue()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 529
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v5, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    .line 530
    .local v1, "primaryCall":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/incallui/CallList;->getBgCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v2

    .line 531
    .local v2, "secondaryCall":Lcom/android/incallui/Call;
    const/4 v0, 0x0

    .line 533
    .local v0, "otherCallTTYvalue":Z
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/incallui/util/SecCallExtraUtils;->getTtyType(Lcom/android/incallui/Call;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 534
    const/4 v0, 0x1

    .line 537
    :cond_0
    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/android/incallui/util/SecCallExtraUtils;->getTtyType(Lcom/android/incallui/Call;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 538
    const/4 v0, 0x1

    .line 540
    :cond_1
    const-string v3, "CallTypeUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasOtherCallTTYvalue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 541
    return v0
.end method

.method public static hasVideoOneway()Z
    .locals 6

    .prologue
    .line 213
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 214
    .local v1, "firstCall":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 215
    .local v0, "backgroundCall":Lcom/android/incallui/Call;
    invoke-static {v1}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWay(Lcom/android/incallui/Call;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWay(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 216
    .local v2, "hasOneway":Z
    :goto_0
    const-string v3, "CallTypeUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasOnewayVideoCall: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return v2

    .line 215
    .end local v2    # "hasOneway":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static hasVideoState()Z
    .locals 3

    .prologue
    .line 144
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallList;->getFirstCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v0

    .line 145
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoState(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static hasVideoState(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "hasState":Z
    if-eqz p0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v0

    .line 153
    :cond_0
    return v0
.end method

.method public static isActiveVideoCall()Z
    .locals 2

    .prologue
    .line 139
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 140
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isAliveVideoCall()Z
    .locals 4

    .prologue
    .line 85
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 86
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isCDMAPhoneType()Z
    .locals 4

    .prologue
    .line 573
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 574
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isCDMAPhoneType(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isCDMAPhoneType(Lcom/android/incallui/Call;)Z
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 578
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
    .param p0, "domain"    # I

    .prologue
    const/4 v0, 0x1

    .line 250
    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCSVideoCall()Z
    .locals 4

    .prologue
    .line 98
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 99
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isCSVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isCSVideoCall(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 103
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

    .prologue
    const/4 v3, 0x2

    .line 321
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 322
    .local v0, "bgCall":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getSecondBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 323
    .local v1, "secondBgCall":Lcom/android/incallui/Call;
    const-string v2, "china_cdma_call"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 324
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v2

    if-eq v2, v3, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    .line 325
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 326
    :cond_1
    const/4 v2, 0x1

    .line 329
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isCommonHDConfCall(Lcom/android/incallui/Call;)Z
    .locals 9
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v8, 0x1

    .line 434
    const/4 v4, 0x0

    .line 435
    .local v4, "retValue":Z
    const-string v5, "display_hd_icon"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "display_cshd_icon"

    .line 436
    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 437
    const-string v5, "CallTypeUtils"

    const-string v6, "isCommonHDConfCall : HDicon not support : "

    invoke-static {v5, v6, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 438
    const/4 v5, 0x0

    .line 458
    :goto_0
    return v5

    .line 441
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 442
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v1

    .line 444
    .local v1, "childCalls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 445
    .local v3, "id":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v0

    .line 446
    .local v0, "childCall":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->isShowHDVoiceIcon(Lcom/android/incallui/Call;)Z
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_2

    .line 447
    const/4 v4, 0x0

    .line 457
    .end local v0    # "childCall":Lcom/android/incallui/Call;
    .end local v1    # "childCalls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "id":Ljava/lang/String;
    :cond_1
    :goto_2
    const-string v5, "CallTypeUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isCommonHDConfCall, retValue : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    move v5, v4

    .line 458
    goto :goto_0

    .line 450
    .restart local v0    # "childCall":Lcom/android/incallui/Call;
    .restart local v1    # "childCalls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "id":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    .line 451
    goto :goto_1

    .line 452
    .end local v0    # "childCall":Lcom/android/incallui/Call;
    .end local v3    # "id":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 453
    .local v2, "e":Ljava/util/ConcurrentModificationException;
    const-string v5, "CallTypeUtils"

    const-string v6, "ConcurrentModificationException"

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public static isEnhancedVoiceConferenceCall()Z
    .locals 4

    .prologue
    .line 333
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 334
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isEnhancedVoiceConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isEnhancedVoiceConferenceCall(Lcom/android/incallui/Call;)Z
    .locals 5
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 338
    const/4 v1, 0x0

    .line 339
    .local v1, "isEnhancedConferenceCall":Z
    const-string v2, "ims_voice_conference_vzw"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 340
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 341
    invoke-static {p0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIMSConferenceParticipantCount(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "imsConferenceParticipantCount":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    .line 343
    const/4 v1, 0x1

    .line 346
    .end local v0    # "imsConferenceParticipantCount":Ljava/lang/String;
    :cond_0
    const-string v2, "CallTypeUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEnhancedConferenceCall call: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_1
    return v1
.end method

.method public static isEpdgCall()Z
    .locals 4

    .prologue
    .line 485
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 486
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isEpdgCall(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 490
    invoke-static {p0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsEpdgCall(Lcom/android/incallui/Call;)Z

    move-result v0

    return v0
.end method

.method public static isEpdgConferenceCall(Lcom/android/incallui/Call;)Z
    .locals 7
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 385
    const/4 v3, 0x0

    .line 387
    .local v3, "retValue":Z
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 388
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    .line 389
    .local v0, "callList":Lcom/android/incallui/CallList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 390
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v1

    .line 391
    .local v1, "childCall":Lcom/android/incallui/Call;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->isShowCallDetailsEpdgIcon(Lcom/android/incallui/Call;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 392
    :cond_0
    const/4 v3, 0x0

    .line 398
    .end local v0    # "callList":Lcom/android/incallui/CallList;
    .end local v1    # "childCall":Lcom/android/incallui/Call;
    .end local v2    # "i":I
    :cond_1
    const-string v4, "CallTypeUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isEpdgConferenceCall, retValue : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    return v3

    .line 395
    .restart local v0    # "callList":Lcom/android/incallui/CallList;
    .restart local v1    # "childCall":Lcom/android/incallui/Call;
    .restart local v2    # "i":I
    :cond_2
    const/4 v3, 0x1

    .line 389
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static isHDConferenceCall(Lcom/android/incallui/Call;)Z
    .locals 8
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v7, 0x1

    .line 411
    const/4 v3, 0x0

    .line 412
    .local v3, "retValue":Z
    const-string v4, "display_hd_icon"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "display_cshd_icon"

    .line 413
    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 414
    const-string v4, "CallTypeUtils"

    const-string v5, "isHDConferenceCall : HDicon not support : "

    invoke-static {v4, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 415
    const/4 v4, 0x0

    .line 430
    :goto_0
    return v4

    .line 418
    :cond_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 419
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    .line 420
    .local v0, "callList":Lcom/android/incallui/CallList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 421
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v1

    .line 422
    .local v1, "childCall":Lcom/android/incallui/Call;
    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->isShowCallDetailsHDIcon(Lcom/android/incallui/Call;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 423
    :cond_1
    const/4 v3, 0x0

    .line 429
    .end local v0    # "callList":Lcom/android/incallui/CallList;
    .end local v1    # "childCall":Lcom/android/incallui/Call;
    .end local v2    # "i":I
    :cond_2
    const-string v4, "CallTypeUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isHDConferenceCall, retValue : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    move v4, v3

    .line 430
    goto :goto_0

    .line 426
    .restart local v0    # "callList":Lcom/android/incallui/CallList;
    .restart local v1    # "childCall":Lcom/android/incallui/Call;
    .restart local v2    # "i":I
    :cond_3
    const/4 v3, 0x1

    .line 420
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isHasBeenVideoCall(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 468
    invoke-static {p0}, Lcom/android/incallui/util/SecCallExtraUtils;->getHasBeenVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    return v0
.end method

.method public static isIncomingAcceptOrRejectByOtherDevice(Lcom/android/incallui/Call;)Z
    .locals 5
    .param p0, "disconnectedCall"    # Lcom/android/incallui/Call;

    .prologue
    .line 545
    const-string v2, "multiend_point"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 546
    const/4 v0, 0x0

    .line 560
    :goto_0
    return v0

    .line 548
    :cond_0
    const/4 v1, 0x0

    .line 549
    .local v1, "sipError":I
    const/4 v0, 0x0

    .line 551
    .local v0, "isRejectedCall":Z
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 552
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/IMSErrorUtils;->getSIPErrorFromDisconnectCause(Landroid/telecom/DisconnectCause;)I

    move-result v1

    .line 553
    const/16 v2, 0x9c8

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9c9

    if-ne v1, v2, :cond_2

    .line 555
    :cond_1
    const/4 v0, 0x1

    .line 559
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

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static isIncomingVideoCall()Z
    .locals 2

    .prologue
    .line 124
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 125
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isIncomingVideoCall(Lcom/android/incallui/Call;)Z
    .locals 3
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "isIncomingVideoCall":Z
    if-eqz p0, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 132
    :cond_0
    const/4 v0, 0x1

    .line 135
    :cond_1
    return v0
.end method

.method public static isModifyProgressing()Z
    .locals 4

    .prologue
    .line 221
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 222
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isModifyProgressing(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isModifyProgressing(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, "isModifyProgressing":Z
    if-eqz p0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/android/incallui/Call;->isModifyProgressing()Z

    move-result v0

    .line 230
    :cond_0
    return v0
.end method

.method public static isMtConfCall(Lcom/android/incallui/Call;)Z
    .locals 3
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 362
    const-string v1, "enable_conference_info_banner"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 363
    const/4 v0, 0x0

    .line 373
    :cond_0
    :goto_0
    return v0

    .line 365
    :cond_1
    const/4 v0, 0x0

    .line 366
    .local v0, "result":Z
    if-eqz p0, :cond_2

    .line 367
    invoke-static {p0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsVolteConference(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    const/4 v0, 0x1

    goto :goto_0

    .line 371
    :cond_2
    const-string v1, "CallTypeUtils"

    const-string v2, "isMtConfCall call is null"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isOutgoingVideoCall()Z
    .locals 2

    .prologue
    .line 116
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 117
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    .line 118
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 120
    :cond_0
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isPSDomain()Z
    .locals 4

    .prologue
    .line 234
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 235
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isPSDomain(I)Z
    .locals 1
    .param p0, "domain"    # I

    .prologue
    .line 246
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
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 239
    if-eqz p0, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/android/incallui/Call;->isPSDomain()Z

    move-result v0

    .line 242
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPSVideoCall()Z
    .locals 4

    .prologue
    .line 107
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 108
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isPSVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isPSVideoCall(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 112
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
    .locals 4

    .prologue
    .line 71
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 72
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isPSVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isPSVoiceCall(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 76
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
    .locals 15

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 268
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 269
    .local v1, "callList":Lcom/android/incallui/CallList;
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v3

    .line 270
    .local v3, "fgCall":Lcom/android/incallui/Call;
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getSecondActiveCall()Lcom/android/incallui/Call;

    move-result-object v2

    .line 271
    .local v2, "fg2ndCall":Lcom/android/incallui/Call;
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 272
    .local v0, "bgCall":Lcom/android/incallui/Call;
    if-nez v0, :cond_5

    move v7, v10

    .line 273
    .local v7, "noBgCall":Z
    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v12

    if-eqz v12, :cond_0

    if-nez v7, :cond_1

    :cond_0
    if-nez v3, :cond_6

    if-eqz v0, :cond_6

    .line 274
    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v12

    if-eqz v12, :cond_6

    :cond_1
    move v4, v10

    .line 275
    .local v4, "isPrimaryConference":Z
    :goto_1
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v12

    if-eqz v12, :cond_7

    if-eqz v7, :cond_7

    move v5, v10

    .line 276
    .local v5, "isPrimaryConference2":Z
    :goto_2
    const-string v12, "vzw_volte_ui"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    if-eqz v3, :cond_8

    .line 277
    invoke-static {v3}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_8

    .line 278
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->getConferenceCallManagerShowingState()Z

    move-result v12

    if-eqz v12, :cond_8

    move v8, v10

    .line 280
    .local v8, "vzwConfCall":Z
    :goto_3
    const-string v12, "vzw_volte_ui_conf"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    if-eqz v3, :cond_2

    .line 281
    invoke-static {v3}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getParentId()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_3

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getPreviousParentId()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_3

    :cond_2
    if-eqz v0, :cond_9

    .line 282
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getParentId()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPreviousParentId()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_9

    :cond_3
    move v9, v10

    .line 284
    .local v9, "vzwNewConfCall":Z
    :goto_4
    if-eqz v4, :cond_a

    invoke-virtual {v1, v3}, Lcom/android/incallui/CallList;->isCallDisconnectingOrDisconnected(Lcom/android/incallui/Call;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 305
    :cond_4
    :goto_5
    return v11

    .end local v4    # "isPrimaryConference":Z
    .end local v5    # "isPrimaryConference2":Z
    .end local v7    # "noBgCall":Z
    .end local v8    # "vzwConfCall":Z
    .end local v9    # "vzwNewConfCall":Z
    :cond_5
    move v7, v11

    .line 272
    goto :goto_0

    .restart local v7    # "noBgCall":Z
    :cond_6
    move v4, v11

    .line 274
    goto :goto_1

    .restart local v4    # "isPrimaryConference":Z
    :cond_7
    move v5, v11

    .line 275
    goto :goto_2

    .restart local v5    # "isPrimaryConference2":Z
    :cond_8
    move v8, v11

    .line 278
    goto :goto_3

    .restart local v8    # "vzwConfCall":Z
    :cond_9
    move v9, v11

    .line 282
    goto :goto_4

    .line 288
    .restart local v9    # "vzwNewConfCall":Z
    :cond_a
    if-eqz v5, :cond_b

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallList;->isCallDisconnectingOrDisconnected(Lcom/android/incallui/Call;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 292
    :cond_b
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/CallList;->hasTwoActiveCall()Z

    move-result v6

    .line 293
    .local v6, "isPrimaryConferenceWithTwoActiveCall":Z
    const-string v12, "CallTypeUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isPrimaryConferenceWithTwoActiveCall: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_c

    invoke-static {v3}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 295
    const/4 v6, 0x0

    .line 299
    :cond_c
    const-string v12, "CallTypeUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isPrimaryConferenceCall isPrimaryConference:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ,isPrimaryConference2:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ,wasConfCall:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ,wasNewConfCall:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ,isPrimaryConferenceWithTwoActiveCall:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    if-nez v4, :cond_d

    if-nez v5, :cond_d

    if-nez v8, :cond_d

    if-nez v9, :cond_d

    if-eqz v6, :cond_4

    :cond_d
    move v11, v10

    goto/16 :goto_5
.end method

.method public static isSrvccConference(Ljava/lang/String;)Z
    .locals 4
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 473
    if-nez p0, :cond_0

    .line 474
    const/4 v0, 0x0

    .line 481
    :goto_0
    return v0

    .line 477
    :cond_0
    const/4 v0, 0x0

    .line 478
    .local v0, "isSrvccConference":Z
    const-string v1, "Conference call"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 479
    const/4 v0, 0x1

    .line 480
    :cond_1
    const-string v1, "CallTypeUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSrvccConference : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static isVideoCall()Z
    .locals 4

    .prologue
    .line 80
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 81
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isVideoCall(I)Z
    .locals 1
    .param p0, "video_state"    # I

    .prologue
    .line 94
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
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 90
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
    .param p0, "video_state"    # I

    .prologue
    .line 161
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v0

    return v0
.end method

.method public static isVideoEnabled(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 157
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoEnabled(I)Z

    move-result v0

    return v0
.end method

.method public static isVideoOneWay(I)Z
    .locals 1
    .param p0, "video_state"    # I

    .prologue
    .line 193
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
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 189
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWay(I)Z

    move-result v0

    return v0
.end method

.method public static isVideoOneWayRx(I)Z
    .locals 1
    .param p0, "video_state"    # I

    .prologue
    .line 201
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
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 197
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWayRx(I)Z

    move-result v0

    return v0
.end method

.method public static isVideoOneWayTx(I)Z
    .locals 1
    .param p0, "video_state"    # I

    .prologue
    .line 209
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
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 205
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWayTx(I)Z

    move-result v0

    return v0
.end method

.method public static isVideoRxEnabled(I)Z
    .locals 1
    .param p0, "video_state"    # I

    .prologue
    .line 177
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isReceptionEnabled(I)Z

    move-result v0

    return v0
.end method

.method public static isVideoRxEnabled(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 173
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoRxEnabled(I)Z

    move-result v0

    return v0
.end method

.method public static isVideoTwoWay(I)Z
    .locals 1
    .param p0, "video_state"    # I

    .prologue
    .line 185
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isBidirectional(I)Z

    move-result v0

    return v0
.end method

.method public static isVideoTwoWay(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 181
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoTwoWay(I)Z

    move-result v0

    return v0
.end method

.method public static isVideoTxEnabled(I)Z
    .locals 1
    .param p0, "video_state"    # I

    .prologue
    .line 169
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v0

    return v0
.end method

.method public static isVideoTxEnabled(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 165
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoTxEnabled(I)Z

    move-result v0

    return v0
.end method

.method public static isVoiceCall()Z
    .locals 4

    .prologue
    .line 58
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 59
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isVoiceCall(I)Z
    .locals 1
    .param p0, "video_state"    # I

    .prologue
    .line 67
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v0

    return v0
.end method

.method public static isVoiceCall(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 63
    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(I)Z

    move-result v0

    return v0
.end method

.method public static isVolteGroupCall(Lcom/android/incallui/Call;)Z
    .locals 4
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 352
    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 353
    invoke-static {p0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsVolteGroupCall(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "isVolteGroupCall":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 355
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 358
    .end local v0    # "isVolteGroupCall":Ljava/lang/String;
    :goto_0
    return v1

    .restart local v0    # "isVolteGroupCall":Ljava/lang/String;
    :cond_0
    move v1, v2

    .line 355
    goto :goto_0

    .end local v0    # "isVolteGroupCall":Ljava/lang/String;
    :cond_1
    move v1, v2

    .line 358
    goto :goto_0
.end method
