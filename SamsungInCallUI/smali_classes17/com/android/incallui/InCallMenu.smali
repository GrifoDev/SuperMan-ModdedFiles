.class public Lcom/android/incallui/InCallMenu;
.super Ljava/lang/Object;
.source "InCallMenu.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "InCallMenu"


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mIsMenuOpen:Z

.field private mParticipantUri:Ljava/lang/String;

.field private mUniqueMenuId:I

.field private mUniqueMenuItem:Ljava/lang/String;

.field private menu:Landroid/view/Menu;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallMenu;->mParticipantUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallMenu;->mIsMenuOpen:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/InCallMenu;->mUniqueMenuId:I

    const-string v0, "InCallMenu constructor..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    return-void
.end method

.method private IsActiveRcsFT()Z
    .locals 11

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v8

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v6

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/android/incallui/secrcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10, v2}, Lcom/android/incallui/secrcs/RcsShareUI;->generateTelUri(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallMenu;->mParticipantUri:Ljava/lang/String;

    sget-object v0, Lcom/android/incallui/secrcs/RcsTransferConstants;->SIP_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/InCallMenu;->mParticipantUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/incallui/secrcs/RcsTransferConstants;->INCALL_SERVICE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    :cond_0
    if-eqz v7, :cond_2

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez v8, :cond_1

    move-object v8, v6

    :cond_1
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/incallui/secrcs/RcsShareUI;->isRcsFTAvailable(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    const-string v3, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/secrcs/RcsShareUI;->isOwnCapable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v9, 0x1

    :cond_2
    :goto_0
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    return v9

    :cond_4
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private checkAddCallMenu()Z
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isConnectedMirrorLink()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/TelecomAdapter;->canAddCall()Z

    move-result v0

    const-string v4, "voice_call_recording_button"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "tablet_device"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "no_receiver_in_call"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    const-string v2, "InCallMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "manageAddCallMenu: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const-string v4, "ims_rcs"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secrcs/RcsShareUI;->isVSHButtonAvailable()Z

    move-result v1

    const-string v4, "InCallMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canAdd :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isVSHButtonAvailable :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method private checkAddContactsMenu()Z
    .locals 6

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-boolean v1, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    const-string v4, "support_twophone"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v1, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->canViewContactDetails:Z

    :cond_0
    iget-object v4, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/android/incallui/util/InCallUtils;->isShowContactMenu(Landroid/content/Context;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private checkAddVoiceUserMenu()Z
    .locals 11

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "ims_voice_conference_vzw"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    const-string v9, "ims_voice_conference"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "feature_lgt"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "ims_voice_conference_cmcc"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "feature_kdi"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v2

    if-eqz v2, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "groupcall not support current user id: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    const-string v9, "feature_kdi"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {v3}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsVoicePartyCall(Lcom/android/incallui/Call;)Z

    move-result v6

    invoke-static {v3}, Lcom/android/incallui/util/SecCallExtraUtils;->getReceivedCall(Lcom/android/incallui/Call;)Z

    move-result v5

    if-eqz v6, :cond_4

    if-nez v5, :cond_4

    :goto_1
    move v8, v7

    goto :goto_0

    :cond_4
    move v7, v8

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_0

    const/high16 v9, 0x8000000

    invoke-virtual {v4, v9}, Lcom/android/incallui/Call;->can(I)Z

    move-result v9

    if-eqz v9, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_0

    :cond_6
    move v8, v7

    goto/16 :goto_0
.end method

.method private checkBluetoothMenu()Z
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    const-string v4, "InCallMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " checkBluetoothMenu crane  :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v6, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secrcs/RcsShareUI;->isISHButtonAvailable()Z

    move-result v1

    const-string v4, "InCallMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " isISHButtonAvailable :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private checkCDMAMergeCallMenu()Z
    .locals 5

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkCDMASwapCallMenu()Z
    .locals 5

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkCallTransfer()Z
    .locals 7

    const/4 v4, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getSecondBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v2

    :cond_0
    const-string v5, "jansky_info_for_tmo"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    move-object v2, v0

    const-string v5, "checkCallTransfer : fgCall == null"

    invoke-direct {p0, v5}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    :cond_1
    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasConferenceCall()Z

    move-result v5

    if-nez v5, :cond_5

    :cond_2
    :goto_0
    return v4

    :cond_3
    const-string v5, "support_call_transfer_blind_ect"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v0, :cond_2

    :cond_4
    invoke-virtual {v2, v6}, Lcom/android/incallui/Call;->can(I)Z

    move-result v4

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isSupportCallTransfer()Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasConferenceCall()Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "checkCallTransfer : 1 active & 1 hold case"

    invoke-direct {p0, v4}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    const-string v4, "enabled"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v2, v6}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    :cond_6
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCallTransfer : result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    move v4, v3

    goto :goto_0

    :cond_7
    const/4 v3, 0x0

    goto :goto_1

    :cond_8
    invoke-virtual {v2, v6}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    goto :goto_1
.end method

.method private checkExtraVolumeMenu()Z
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    const-string v5, "InCallMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " checkBluetoothMenu crane  :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v7, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v5, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkExtraVolumeMenu  crane :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/secrcs/RcsShareUI;->isExtraVolumeAvailable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", activeCall : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/secrcs/RcsShareUI;->isISHButtonAvailable()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    return v3

    :cond_1
    const-string v5, "ims_rcs"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isISHButtonAvailable :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/secrcs/RcsShareUI;->isISHButtonAvailable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", activeCall : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/secrcs/RcsShareUI;->isISHButtonAvailable()Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v0, :cond_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v5

    if-nez v5, :cond_3

    if-nez v2, :cond_4

    :cond_3
    move v3, v4

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailablePSVT()Z

    move-result v1

    const-string v5, "usa_gsm_volte_ui"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "psvt_support"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    :cond_5
    :goto_1
    const-string v5, "show_switch_icon_in_button"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez v1, :cond_0

    :cond_6
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isShowVZWVoLTEUI()Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    goto :goto_0

    :cond_7
    const-string v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getDefaultVoiceSubscriptionId()I

    move-result v5

    invoke-static {v5}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailablePSVT(I)Z

    move-result v1

    goto :goto_1
.end method

.method private checkHoldMenu()Z
    .locals 6

    const/16 v5, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v3, "no_receiver_in_call"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "voice_call_recording"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-static {v3}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "china_cdma_call"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v5}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    const-string v3, "ims_voice_conference_kddi"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v0}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->checkPrimaryEmergencyCall()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v1, v5, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    goto :goto_0
.end method

.method private checkMuteMenu()Z
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v6, "support_folder_single_lcd"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move v1, v4

    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/16 v7, 0xd

    if-eq v6, v7, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_4

    :cond_2
    move v2, v5

    :goto_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_5

    move v3, v5

    :goto_2
    const/16 v6, 0x40

    invoke-virtual {v0, v6}, Lcom/android/incallui/Call;->can(I)Z

    move-result v6

    if-eqz v6, :cond_6

    if-nez v2, :cond_6

    if-nez v3, :cond_6

    move v1, v5

    :goto_3
    const/16 v4, 0x10

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x0

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkMuteMenu: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_1

    :cond_5
    move v3, v4

    goto :goto_2

    :cond_6
    move v1, v4

    goto :goto_3
.end method

.method private checkRecordStopMenu()Z
    .locals 5

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isKioskMode()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEncryptionMode()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const-string v3, "InCallMenu"

    const-string v4, "isKioskMode or isEncryptionMode, hide record menu"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v1

    if-nez v1, :cond_0

    const-string v3, "voice_call_recording_menu"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkSendMessagesMenu()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isConnectedMirrorLink()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v1}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->checkPrimaryEmergencyCall()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/incallui/util/SystemServiceUtils;->isSmsCapable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private checkViewContactsMenu()Z
    .locals 6

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-boolean v1, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    const-string v4, "support_twophone"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v1, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->canViewContactDetails:Z

    :cond_0
    iget-object v4, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/android/incallui/util/InCallUtils;->isShowContactMenu(Landroid/content/Context;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getHoldMenuTitle()Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v4, :cond_1

    move-object v0, v4

    :cond_0
    :goto_0
    if-nez v0, :cond_3

    const/4 v5, 0x0

    :goto_1
    return-object v5

    :cond_1
    if-eqz v3, :cond_2

    move-object v0, v3

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090058

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09004b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method private getRecordStopMenuTitle()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09028a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090286

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getSecUiAdapter()Lcom/android/incallui/UiAdapter;
    .locals 1

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    return-object v0
.end method

.method private launchRcsFileTransfer()V
    .locals 5

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.samsung.rcs"

    const-string v4, "com.samsung.rcs.filetransfer.TransferContentActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.samsung.rcs.filetransfer.action.FILE_TRANSFER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/incallui/InCallMenu;->mParticipantUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/incallui/InCallApp;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    const v3, 0x7f090576

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FT Failed - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "InCallMenu"

    invoke-static {v0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "InCallMenu"

    invoke-static {v0, p1, p2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private manageAddCallMenu(Landroid/view/MenuItem;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkAddCallMenu()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private manageAddContactsMenu(Landroid/view/MenuItem;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkAddContactsMenu()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private manageAddVoiceUserMenu(Landroid/view/MenuItem;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkAddVoiceUserMenu()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkAddVoiceUserMenu()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private manageBluetoothMenu(Landroid/view/MenuItem;Landroid/view/MenuItem;)V
    .locals 9

    const v8, 0x7f0202b7

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "InCallMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " checkBluetoothMenu crane  :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "InCallMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " manageBluetoothMenu isISHButtonAvailable :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secrcs/RcsShareUI;->isISHButtonAvailable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    if-eqz v2, :cond_4

    invoke-interface {p1, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-interface {p2, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-static {}, Lcom/android/incallui/StringManager;->getInstance()Lcom/android/incallui/StringManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    const-string v4, "onscreenBluetoothTextOn"

    invoke-virtual {v2, v3, v4}, Lcom/android/incallui/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secrcs/RcsShareUI;->isISHButtonAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->getCallButtonPresenter()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v7}, Lcom/android/incallui/CallButtonPresenter;->isSupported(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v7}, Lcom/android/incallui/CallButtonPresenter;->isAudio(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_2
    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_3
    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_4
    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method private manageCallTransfer(Landroid/view/MenuItem;)V
    .locals 1

    const-string v0, "manageCallTransfer"

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkCallTransfer()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private manageExtraVolumeMenu(Landroid/view/MenuItem;Landroid/view/MenuItem;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkExtraVolumeMenu()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/util/SoundEffect;->isExtraVolOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private manageHoldMenu(Landroid/view/MenuItem;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->getHoldMenuTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkHoldMenu()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private manageMuteMenu(Landroid/view/MenuItem;Landroid/view/MenuItem;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkMuteMenu()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private manageRecordStopMenu(Landroid/view/MenuItem;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkRecordStopMenu()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->getRecordStopMenuTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/incallui/InCallMenu;->getRecordStopEnableState()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private manageSendMessagesMenu(Landroid/view/MenuItem;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkSendMessagesMenu()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private manageViewContactsMenu(Landroid/view/MenuItem;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkViewContactsMenu()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method


# virtual methods
.method public addCallClicked()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/CallButtonUi;->addCallClicked()V

    :cond_0
    return-void
.end method

.method public addVoiceUserClicked()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/CallButtonUi;->showAddUserForConferenceCall()V

    :cond_0
    return-void
.end method

.method public bluetoothClicked()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->bluetoothClicked()V

    return-void
.end method

.method public callTransferClicked()V
    .locals 6

    const/high16 v5, 0x30000000

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    const-string v3, "jansky_info_for_tmo"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "support_call_transfer_blind_ect"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/incallui/TransferManager;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callTransferClicked, callId =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/TelecomAdapter;->explicitCallTransfer(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dismissDialogs()V
    .locals 0

    return-void
.end method

.method public extraVolumeClicked()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->extraVolumeClicked()V

    return-void
.end method

.method public getRecordStopEnableState()Z
    .locals 5

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->getHoldMenuTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->getHoldMenuTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090058

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUniqueMenuId()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/InCallMenu;->mUniqueMenuId:I

    return v0
.end method

.method public getUniqueMenuItem()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallMenu;->mUniqueMenuItem:Ljava/lang/String;

    return-object v0
.end method

.method public holdClicked(Z)V
    .locals 5

    const v4, 0x7f090127

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_3

    const-string v1, "common_volte_kor"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isTheOtherPartyOnHold()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    goto :goto_0

    :cond_1
    const-string v1, "feature_dcm"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->checkPrimaryEmergencyCall()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    goto :goto_0

    :cond_2
    const-string v1, "InCallMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Putting the call on hold: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->holdCall(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "InCallMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing the call from hold: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isExistOptionsItem()Z
    .locals 5

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/incallui/InCallMenu;->mUniqueMenuId:I

    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkMuteMenu()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "support_folder_single_lcd"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    const-string v2, "InCallMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isExistOptionsItem mute option present"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkHoldMenu()Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v0, :cond_3

    const-string v2, "china_cdma_call"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getConferencedCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getConferencedCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    const-string v2, "InCallMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isExistOptionsItem hold option present"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_5
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkAddCallMenu()Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez v0, :cond_6

    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "no_receiver_in_call"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    move v0, v1

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x1

    const-string v2, "InCallMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isExistOptionsItem add option present"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_8
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkRecordStopMenu()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v0, :cond_9

    move v0, v1

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x1

    :cond_a
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkExtraVolumeMenu()Z

    move-result v2

    if-eqz v2, :cond_c

    if-eqz v0, :cond_b

    move v0, v1

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isExistOptionsItem extra volume option present"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_c
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkBluetoothMenu()Z

    move-result v2

    if-eqz v2, :cond_e

    if-eqz v0, :cond_d

    move v0, v1

    goto/16 :goto_0

    :cond_d
    const/4 v0, 0x1

    :cond_e
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkViewContactsMenu()Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v0, 0x1

    const-string v2, "InCallMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isExistOptionsItem view contact option present"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v1

    goto/16 :goto_0

    :cond_f
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkAddContactsMenu()Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v0, 0x1

    const-string v2, "InCallMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isExistOptionsItem add contact option present"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v1

    goto/16 :goto_0

    :cond_10
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkSendMessagesMenu()Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v0, 0x1

    const-string v2, "InCallMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isExistOptionsItem send message option present"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v1

    goto/16 :goto_0

    :cond_11
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkCallTransfer()Z

    move-result v2

    if-eqz v2, :cond_13

    if-eqz v0, :cond_12

    move v0, v1

    goto/16 :goto_0

    :cond_12
    const/4 v0, 0x1

    :cond_13
    invoke-static {}, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->getInstance()Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->isExistDeviceList()Z

    move-result v2

    if-eqz v2, :cond_15

    if-eqz v0, :cond_14

    move v0, v1

    goto/16 :goto_0

    :cond_14
    const/4 v0, 0x1

    const v2, 0x7f100466

    iput v2, p0, Lcom/android/incallui/InCallMenu;->mUniqueMenuId:I

    :cond_15
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkAddVoiceUserMenu()Z

    move-result v2

    if-eqz v2, :cond_17

    if-eqz v0, :cond_16

    move v0, v1

    goto/16 :goto_0

    :cond_16
    const/4 v0, 0x1

    :cond_17
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkCDMASwapCallMenu()Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    if-eqz v0, :cond_18

    move v0, v1

    goto/16 :goto_0

    :cond_18
    const/4 v0, 0x1

    :cond_19
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkCDMAMergeCallMenu()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_1a

    move v0, v1

    goto/16 :goto_0

    :cond_1a
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public isMenuOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/InCallMenu;->mIsMenuOpen:Z

    return v0
.end method

.method public menuItemSelected()V
    .locals 2

    iget v0, p0, Lcom/android/incallui/InCallMenu;->mUniqueMenuId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/incallui/InCallMenu;->mUniqueMenuId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->getInstance()Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->showDeviceList()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f100466
        :pswitch_0
    .end packed-switch
.end method

.method public optionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- optionsItemSelected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;Z)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  title: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    const-string v5, "ims_rcs"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/incallui/secrcs/RcsShareUI;->unregisterRcsObserver(I)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    iget-object v5, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_1

    if-nez v1, :cond_2

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "optionsItemSelected("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), but null mContext!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;Z)V

    :goto_0
    return v4

    :cond_2
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/UiAdapter;->getCallButtonPresenter()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    const-string v3, "InCallMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "optionsItemSelected:  unexpected View ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (MenuItem = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\')"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/incallui/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_0
    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_mute(Lcom/android/incallui/Call;)V

    if-eqz v0, :cond_3

    invoke-virtual {v0, v3}, Lcom/android/incallui/CallButtonPresenter;->muteClicked(Z)V

    :cond_3
    :goto_1
    move v4, v3

    goto :goto_0

    :sswitch_1
    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_mute(Lcom/android/incallui/Call;)V

    if-eqz v0, :cond_3

    invoke-virtual {v0, v4}, Lcom/android/incallui/CallButtonPresenter;->muteClicked(Z)V

    goto :goto_1

    :sswitch_2
    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_addCall(Lcom/android/incallui/Call;)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallMenu;->addCallClicked()V

    goto :goto_1

    :sswitch_3
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_5

    move v2, v3

    :goto_2
    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_holdCall(Lcom/android/incallui/Call;)V

    if-nez v2, :cond_4

    move v4, v3

    :cond_4
    invoke-virtual {p0, v4}, Lcom/android/incallui/InCallMenu;->holdClicked(Z)V

    goto :goto_1

    :cond_5
    move v2, v4

    goto :goto_2

    :sswitch_4
    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallMenu;->recordstopClicked(Lcom/android/incallui/Call;)V

    goto :goto_1

    :sswitch_5
    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_extraVolume(Lcom/android/incallui/Call;)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallMenu;->extraVolumeClicked()V

    goto :goto_1

    :sswitch_6
    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_viewContact(Lcom/android/incallui/Call;)V

    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->viewContactClicked()V

    goto :goto_1

    :sswitch_7
    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_addToContact(Lcom/android/incallui/Call;)V

    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->addToContactClicked()V

    goto :goto_1

    :sswitch_8
    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_sendMessage(Lcom/android/incallui/Call;)V

    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->launchMessage()V

    goto :goto_1

    :sswitch_9
    invoke-virtual {p0}, Lcom/android/incallui/InCallMenu;->addVoiceUserClicked()V

    goto :goto_1

    :sswitch_a
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->launchRcsFileTransfer()V

    goto :goto_1

    :sswitch_b
    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_bluetooth(Lcom/android/incallui/Call;)V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->toggleBluetooth()V

    goto :goto_1

    :sswitch_c
    invoke-virtual {p0}, Lcom/android/incallui/InCallMenu;->callTransferClicked()V

    goto :goto_1

    :sswitch_d
    invoke-static {}, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->getInstance()Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->showDeviceList()V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x7f100096 -> :sswitch_0
        0x7f100098 -> :sswitch_3
        0x7f100347 -> :sswitch_4
        0x7f100389 -> :sswitch_2
        0x7f100465 -> :sswitch_c
        0x7f100466 -> :sswitch_d
        0x7f100467 -> :sswitch_5
        0x7f100468 -> :sswitch_5
        0x7f100469 -> :sswitch_6
        0x7f10046a -> :sswitch_7
        0x7f10046b -> :sswitch_8
        0x7f10046c -> :sswitch_9
        0x7f10046e -> :sswitch_a
        0x7f10046f -> :sswitch_b
        0x7f100470 -> :sswitch_b
        0x7f100471 -> :sswitch_1
    .end sparse-switch
.end method

.method public prepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 23

    const-string v20, "prepareOptionsMenu()..."

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    const-string v20, "ims_rcs"

    invoke-static/range {v20 .. v20}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-virtual/range {v20 .. v22}, Lcom/android/incallui/secrcs/RcsShareUI;->registerRcsObserver(Landroid/content/Context;I)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/InCallMenu;->menu:Landroid/view/Menu;

    :cond_0
    const-string v20, "support_folder_single_lcd"

    invoke-static/range {v20 .. v20}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    const v20, 0x7f100096

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const v20, 0x7f100471

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v14, v1}, Lcom/android/incallui/InCallMenu;->manageMuteMenu(Landroid/view/MenuItem;Landroid/view/MenuItem;)V

    const/16 v20, 0x1

    :goto_0
    return v20

    :cond_1
    const/4 v12, 0x0

    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/view/Menu;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v12, v0, :cond_6

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/view/MenuItem;->getItemId()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    :goto_2
    :sswitch_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :sswitch_1
    const v20, 0x7f100389

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/incallui/InCallMenu;->manageAddCallMenu(Landroid/view/MenuItem;)V

    goto :goto_2

    :sswitch_2
    const v20, 0x7f100098

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/incallui/InCallMenu;->manageHoldMenu(Landroid/view/MenuItem;)V

    goto :goto_2

    :sswitch_3
    const v20, 0x7f100347

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallMenu;->manageRecordStopMenu(Landroid/view/MenuItem;)V

    goto :goto_2

    :sswitch_4
    const v20, 0x7f100467

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const v20, 0x7f100468

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v9}, Lcom/android/incallui/InCallMenu;->manageExtraVolumeMenu(Landroid/view/MenuItem;Landroid/view/MenuItem;)V

    goto :goto_2

    :sswitch_5
    const v20, 0x7f100469

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallMenu;->manageViewContactsMenu(Landroid/view/MenuItem;)V

    goto :goto_2

    :sswitch_6
    const v20, 0x7f10046a

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/incallui/InCallMenu;->manageAddContactsMenu(Landroid/view/MenuItem;)V

    goto :goto_2

    :sswitch_7
    const v20, 0x7f10046b

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallMenu;->manageSendMessagesMenu(Landroid/view/MenuItem;)V

    goto/16 :goto_2

    :sswitch_8
    const v20, 0x7f10046c

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const-string v20, "ims_voice_conference_kddi"

    invoke-static/range {v20 .. v20}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2

    const v20, 0x7f090257

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/incallui/InCallMenu;->manageAddVoiceUserMenu(Landroid/view/MenuItem;)V

    goto/16 :goto_2

    :sswitch_9
    const v20, 0x7f10046e

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v20, 0x7f0202b8

    move/from16 v0, v20

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const-string v20, "ims_rcs"

    invoke-static/range {v20 .. v20}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    const-string v20, "ims_rcs_bb"

    invoke-static/range {v20 .. v20}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_5

    const-string v20, "feature_org"

    invoke-static/range {v20 .. v20}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_5

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/secrcs/RcsShareUI;->isRcsServiceAvailable()Z

    move-result v20

    if-eqz v20, :cond_4

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/InCallMenu;->IsActiveRcsFT()Z

    move-result v20

    if-eqz v20, :cond_3

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_3
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_4
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_5
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :sswitch_a
    const v20, 0x7f10046f

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    const v20, 0x7f100470

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/android/incallui/InCallMenu;->manageBluetoothMenu(Landroid/view/MenuItem;Landroid/view/MenuItem;)V

    goto/16 :goto_2

    :sswitch_b
    const v20, 0x7f100465

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/incallui/InCallMenu;->manageCallTransfer(Landroid/view/MenuItem;)V

    goto/16 :goto_2

    :sswitch_c
    const v20, 0x7f100466

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    invoke-static {}, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->getInstance()Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->isExistDeviceList()Z

    move-result v20

    move/from16 v0, v20

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_6
    const/16 v20, 0x1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f100098 -> :sswitch_2
        0x7f100347 -> :sswitch_3
        0x7f100389 -> :sswitch_1
        0x7f100465 -> :sswitch_b
        0x7f100466 -> :sswitch_c
        0x7f100467 -> :sswitch_0
        0x7f100468 -> :sswitch_4
        0x7f100469 -> :sswitch_5
        0x7f10046a -> :sswitch_6
        0x7f10046b -> :sswitch_7
        0x7f10046c -> :sswitch_8
        0x7f10046e -> :sswitch_9
        0x7f10046f -> :sswitch_0
        0x7f100470 -> :sswitch_a
    .end sparse-switch
.end method

.method public recordstopClicked(Lcom/android/incallui/Call;)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_record(Lcom/android/incallui/Call;Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;)V

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->toggleRecord()V

    :cond_0
    return-void
.end method

.method public setMenuOpen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/InCallMenu;->mIsMenuOpen:Z

    return-void
.end method
