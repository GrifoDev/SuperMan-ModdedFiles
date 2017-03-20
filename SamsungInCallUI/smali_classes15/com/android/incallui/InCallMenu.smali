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
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/android/incallui/InCallMenu;->mParticipantUri:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallMenu;->mIsMenuOpen:Z

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/InCallMenu;->mUniqueMenuId:I

    .line 74
    const-string v0, "InCallMenu constructor..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;Z)V

    .line 75
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

    .line 77
    iput-object p1, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    .line 78
    return-void
.end method

.method private IsActiveRcsFT()Z
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 896
    const/4 v7, 0x0

    .line 897
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v8

    .line 898
    .local v8, "fgCall":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v6

    .line 899
    .local v6, "bgCall":Lcom/android/incallui/Call;
    const/4 v9, 0x0

    .line 900
    .local v9, "isAvailableFT":Z
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/android/incallui/secrcs/RcsShareUI;->getPhoneNumber(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v10

    .line 902
    .local v10, "telNum":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 903
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10, v2}, Lcom/android/incallui/secrcs/RcsShareUI;->generateTelUri(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallMenu;->mParticipantUri:Ljava/lang/String;

    .line 904
    sget-object v0, Lcom/android/incallui/secrcs/RcsTransferConstants;->SIP_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/InCallMenu;->mParticipantUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 905
    .local v1, "queryUri":Landroid/net/Uri;
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/incallui/secrcs/RcsTransferConstants;->INCALL_SERVICE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 907
    .end local v1    # "queryUri":Landroid/net/Uri;
    :cond_0
    if-eqz v7, :cond_2

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 908
    if-nez v8, :cond_1

    .line 909
    move-object v8, v6

    .line 910
    :cond_1
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    if-nez v0, :cond_2

    .line 911
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/incallui/secrcs/RcsShareUI;->isRcsFTAvailable(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 912
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    const-string v3, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/secrcs/RcsShareUI;->isOwnCapable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v9, 0x1

    .line 916
    :cond_2
    :goto_0
    if-eqz v7, :cond_3

    .line 917
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 918
    :cond_3
    return v9

    .line 912
    :cond_4
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private checkAddCallMenu()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 134
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isConnectedMirrorLink()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 154
    :goto_0
    return v0

    .line 138
    :cond_0
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/TelecomAdapter;->canAddCall()Z

    move-result v0

    .line 139
    .local v0, "canAdd":Z
    const-string v4, "voice_call_recording_button"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "tablet_device"

    .line 140
    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "no_receiver_in_call"

    .line 141
    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 142
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

    .line 144
    :cond_2
    const-string v4, "ims_rcs"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 145
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secrcs/RcsShareUI;->isVSHButtonAvailable()Z

    move-result v1

    .line 147
    .local v1, "isVSHButtonAvailable":Z
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

    .line 148
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    move v0, v3

    .line 149
    goto :goto_0

    :cond_3
    move v0, v2

    .line 151
    goto :goto_0

    .end local v1    # "isVSHButtonAvailable":Z
    :cond_4
    move v0, v2

    .line 154
    goto :goto_0
.end method

.method private checkAddContactsMenu()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 386
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 387
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    .line 388
    iget-object v4, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    .line 389
    .local v2, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v2, :cond_1

    .line 390
    iget-boolean v1, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    .line 391
    .local v1, "contactExists":Z
    const-string v4, "support_twophone"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 392
    iget-boolean v1, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->canViewContactDetails:Z

    .line 394
    :cond_0
    iget-object v4, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/android/incallui/util/InCallUtils;->isShowContactMenu(Landroid/content/Context;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    .line 397
    .end local v1    # "contactExists":Z
    .end local v2    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private checkAddVoiceUserMenu()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 421
    const-string v9, "ims_voice_conference_vzw"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 455
    :cond_0
    :goto_0
    return v8

    .line 424
    :cond_1
    const-string v9, "ims_voice_conference"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "feature_lgt"

    .line 425
    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "ims_voice_conference_cmcc"

    .line 426
    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "feature_kdi"

    .line 427
    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 431
    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v2

    .line 432
    .local v2, "currentUser":I
    if-eqz v2, :cond_3

    .line 433
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

    .line 437
    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 438
    .local v1, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v4

    .line 439
    .local v4, "inCall":Lcom/android/incallui/Call;
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v3

    .line 440
    .local v3, "fgCall":Lcom/android/incallui/Call;
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 442
    .local v0, "bgCall":Lcom/android/incallui/Call;
    const-string v9, "feature_kdi"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 443
    invoke-static {v3}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsVoicePartyCall(Lcom/android/incallui/Call;)Z

    move-result v6

    .line 444
    .local v6, "isVoiceParty":Z
    invoke-static {v3}, Lcom/android/incallui/util/SecCallExtraUtils;->getReceivedCall(Lcom/android/incallui/Call;)Z

    move-result v5

    .line 445
    .local v5, "isReceivedCall":Z
    if-eqz v6, :cond_4

    if-nez v5, :cond_4

    :goto_1
    move v8, v7

    goto :goto_0

    :cond_4
    move v7, v8

    goto :goto_1

    .line 447
    .end local v5    # "isReceivedCall":Z
    .end local v6    # "isVoiceParty":Z
    :cond_5
    if-eqz v4, :cond_0

    const/high16 v9, 0x8000000

    invoke-virtual {v4, v9}, Lcom/android/incallui/Call;->can(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 448
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_0

    if-eqz v0, :cond_6

    .line 449
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_0

    :cond_6
    move v8, v7

    .line 450
    goto/16 :goto_0
.end method

.method private checkBluetoothMenu()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 322
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 323
    .local v0, "activeCall":Lcom/android/incallui/Call;
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

    .line 324
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v4, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    if-eqz v4, :cond_1

    .line 325
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secrcs/RcsShareUI;->isISHButtonAvailable()Z

    move-result v1

    .line 326
    .local v1, "isISHButtonAvailable":Z
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

    .line 327
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 329
    .end local v1    # "isISHButtonAvailable":Z
    :goto_0
    return v2

    .restart local v1    # "isISHButtonAvailable":Z
    :cond_0
    move v2, v3

    .line 327
    goto :goto_0

    .end local v1    # "isISHButtonAvailable":Z
    :cond_1
    move v2, v3

    .line 329
    goto :goto_0
.end method

.method private checkCDMAMergeCallMenu()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    .line 94
    .local v0, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 95
    .local v1, "fgCall":Lcom/android/incallui/Call;
    if-nez v1, :cond_1

    .line 97
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

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    .line 86
    .local v0, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 87
    .local v1, "fgCall":Lcom/android/incallui/Call;
    if-nez v1, :cond_1

    .line 89
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

    .prologue
    const/4 v4, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    .line 825
    const/4 v3, 0x0

    .line 827
    .local v3, "result":Z
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 828
    .local v1, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v2

    .line 829
    .local v2, "fgCall":Lcom/android/incallui/Call;
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 831
    .local v0, "bgCall":Lcom/android/incallui/Call;
    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getSecondBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v2

    .line 833
    :cond_0
    const-string v5, "jansky_info_for_tmo"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 834
    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 835
    move-object v2, v0

    .line 836
    const-string v5, "checkCallTransfer : fgCall == null"

    invoke-direct {p0, v5}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    .line 838
    :cond_1
    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasConferenceCall()Z

    move-result v5

    if-nez v5, :cond_6

    .line 868
    :cond_2
    :goto_0
    return v4

    .line 841
    :cond_3
    const-string v5, "support_call_transfer_blind_ect"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUIConfig;->isNEESupportBlindECT()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 842
    :cond_4
    if-eqz v2, :cond_6

    .line 843
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain()Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v0, :cond_2

    .line 846
    :cond_5
    invoke-virtual {v2, v6}, Lcom/android/incallui/Call;->can(I)Z

    move-result v4

    goto :goto_0

    .line 850
    :cond_6
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isSupportCallTransfer()Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    .line 851
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 852
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasConferenceCall()Z

    move-result v4

    if-nez v4, :cond_7

    .line 854
    const-string v4, "checkCallTransfer : 1 active & 1 hold case"

    invoke-direct {p0, v4}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    .line 855
    const-string v4, "enabled"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 856
    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 857
    invoke-virtual {v2, v6}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    .line 867
    :cond_7
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

    .line 868
    goto :goto_0

    .line 859
    :cond_8
    const/4 v3, 0x0

    goto :goto_1

    .line 862
    :cond_9
    invoke-virtual {v2, v6}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    goto :goto_1
.end method

.method private checkExtraVolumeMenu()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 275
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 276
    .local v0, "activeCall":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    .line 277
    .local v2, "call":Lcom/android/incallui/Call;
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

    .line 278
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v5, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    if-eqz v5, :cond_1

    .line 279
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

    .line 281
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/secrcs/RcsShareUI;->isISHButtonAvailable()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v0, :cond_2

    .line 302
    :cond_0
    :goto_0
    return v3

    .line 283
    :cond_1
    const-string v5, "ims_rcs"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 284
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

    .line 286
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/secrcs/RcsShareUI;->isISHButtonAvailable()Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v0, :cond_0

    .line 289
    :cond_2
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v5

    if-nez v5, :cond_3

    if-nez v2, :cond_4

    :cond_3
    move v3, v4

    goto :goto_0

    .line 290
    :cond_4
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailablePSVT()Z

    move-result v1

    .line 291
    .local v1, "availablePSVT":Z
    const-string v5, "usa_gsm_volte_ui"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 292
    const-string v5, "psvt_support"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    .line 296
    :cond_5
    :goto_1
    const-string v5, "show_switch_icon_in_button"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez v1, :cond_0

    .line 299
    :cond_6
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isShowVZWVoLTEUI()Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    .line 302
    goto :goto_0

    .line 293
    :cond_7
    const-string v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 294
    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getDefaultVoiceSubscriptionId()I

    move-result v5

    invoke-static {v5}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailablePSVT(I)Z

    move-result v1

    goto :goto_1
.end method

.method private checkHoldMenu()Z
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 163
    const-string v3, "no_receiver_in_call"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "voice_call_recording"

    .line 164
    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 196
    :cond_0
    :goto_0
    return v1

    .line 168
    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 169
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-static {v3}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 171
    const-string v3, "china_cdma_call"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 172
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v5}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 176
    :cond_2
    const-string v3, "ims_voice_conference_kddi"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 177
    invoke-static {v0}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 182
    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/CallList;->isNotUpdatingCall(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 183
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->checkPrimaryEmergencyCall()Z

    move-result v3

    if-nez v3, :cond_0

    .line 187
    const-string v3, "vzw_volte_ui"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 188
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 189
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v5, :cond_4

    move v1, v2

    .line 190
    goto :goto_0

    .line 193
    :cond_4
    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->needToShowSwapButton()Z

    move-result v3

    if-nez v3, :cond_0

    .line 196
    invoke-virtual {v0, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    goto :goto_0
.end method

.method private checkMuteMenu()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 101
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 102
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    const-string v6, "support_folder_single_lcd"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move v1, v4

    .line 113
    :goto_0
    return v1

    .line 105
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

    .line 106
    .local v2, "isDialing":Z
    :goto_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_5

    move v3, v5

    .line 108
    .local v3, "isHolding":Z
    :goto_2
    const/16 v6, 0x40

    invoke-virtual {v0, v6}, Lcom/android/incallui/Call;->can(I)Z

    move-result v6

    if-eqz v6, :cond_6

    if-nez v2, :cond_6

    if-nez v3, :cond_6

    move v1, v5

    .line 109
    .local v1, "canMute":Z
    :goto_3
    const/16 v4, 0x10

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->needToDisableForKnox(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 110
    const/4 v1, 0x0

    .line 112
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

    .end local v1    # "canMute":Z
    .end local v2    # "isDialing":Z
    .end local v3    # "isHolding":Z
    :cond_4
    move v2, v4

    .line 105
    goto :goto_1

    .restart local v2    # "isDialing":Z
    :cond_5
    move v3, v4

    .line 106
    goto :goto_2

    .restart local v3    # "isHolding":Z
    :cond_6
    move v1, v4

    .line 108
    goto :goto_3
.end method

.method private checkRecordStopMenu()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 227
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 228
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    .line 241
    :cond_0
    :goto_0
    return v2

    .line 233
    :cond_1
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isKioskMode()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEncryptionMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 234
    :cond_2
    const-string v3, "InCallMenu"

    const-string v4, "isKioskMode or isEncryptionMode, hide record menu"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_3
    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v1

    .line 238
    .local v1, "currentUser":I
    if-nez v1, :cond_0

    const-string v3, "voice_call_recording_menu"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 239
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkSendMessagesMenu()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 405
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isConnectedMirrorLink()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 413
    :cond_0
    :goto_0
    return v2

    .line 409
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isSetupWizardComplete()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 412
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v1}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 413
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->checkPrimaryEmergencyCall()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/incallui/util/SystemServiceUtils;->isSmsCapable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private checkViewContactsMenu()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 367
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 368
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    .line 369
    iget-object v4, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    .line 370
    .local v2, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v2, :cond_1

    .line 371
    iget-boolean v1, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    .line 372
    .local v1, "contactExists":Z
    const-string v4, "support_twophone"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 373
    iget-boolean v1, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->canViewContactDetails:Z

    .line 375
    :cond_0
    iget-object v4, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/android/incallui/util/InCallUtils;->isShowContactMenu(Landroid/content/Context;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 378
    .end local v1    # "contactExists":Z
    .end local v2    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getHoldMenuTitle()Ljava/lang/String;
    .locals 7

    .prologue
    .line 200
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 201
    .local v1, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v4

    .line 202
    .local v4, "pendingOutgoingCall":Lcom/android/incallui/Call;
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v3

    .line 203
    .local v3, "outgoingCall":Lcom/android/incallui/Call;
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v2

    .line 204
    .local v2, "inCall":Lcom/android/incallui/Call;
    const/4 v0, 0x0

    .line 205
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v4, :cond_1

    .line 206
    move-object v0, v4

    .line 212
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    const/4 v5, 0x0

    .line 217
    :goto_1
    return-object v5

    .line 207
    :cond_1
    if-eqz v3, :cond_2

    .line 208
    move-object v0, v3

    goto :goto_0

    .line 209
    :cond_2
    if-eqz v2, :cond_0

    .line 210
    move-object v0, v2

    goto :goto_0

    .line 214
    :cond_3
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_4

    .line 215
    iget-object v5, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090058

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 217
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

    .prologue
    .line 245
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v0

    .line 246
    .local v0, "recorderMgr":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090295

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 251
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090291

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getSecUiAdapter()Lcom/android/incallui/UiAdapter;
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    return-object v0
.end method

.method private launchRcsFileTransfer()V
    .locals 5

    .prologue
    .line 923
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 924
    .local v2, "file_intent":Landroid/content/Intent;
    const-string v3, "com.samsung.rcs"

    const-string v4, "com.samsung.rcs.filetransfer.TransferContentActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 926
    const-string v3, "com.samsung.rcs.filetransfer.action.FILE_TRANSFER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 927
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 928
    iget-object v3, p0, Lcom/android/incallui/InCallMenu;->mParticipantUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 929
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 930
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/incallui/InCallApp;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 939
    .end local v2    # "file_intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 931
    :catch_0
    move-exception v0

    .line 932
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    .line 933
    .local v1, "callToastContext":Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 934
    const v3, 0x7f090575

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 935
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 937
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
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 817
    const-string v0, "InCallMenu"

    invoke-static {v0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "always"    # Z

    .prologue
    .line 821
    const-string v0, "InCallMenu"

    invoke-static {v0, p1, p2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 822
    return-void
.end method

.method private manageAddCallMenu(Landroid/view/MenuItem;)V
    .locals 1
    .param p1, "addCallItem"    # Landroid/view/MenuItem;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkAddCallMenu()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 160
    return-void
.end method

.method private manageAddContactsMenu(Landroid/view/MenuItem;)V
    .locals 1
    .param p1, "addContactsItem"    # Landroid/view/MenuItem;

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkAddContactsMenu()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 402
    return-void
.end method

.method private manageAddVoiceUserMenu(Landroid/view/MenuItem;)V
    .locals 1
    .param p1, "addVoiceUserItem"    # Landroid/view/MenuItem;

    .prologue
    .line 459
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkAddVoiceUserMenu()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 460
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkAddVoiceUserMenu()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 461
    return-void
.end method

.method private manageBluetoothMenu(Landroid/view/MenuItem;Landroid/view/MenuItem;)V
    .locals 9
    .param p1, "btHeadsetOnItem"    # Landroid/view/MenuItem;
    .param p2, "btHeadsetOffItem"    # Landroid/view/MenuItem;

    .prologue
    const v8, 0x7f0202b6

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 333
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 334
    .local v0, "activeCall":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    .line 364
    :goto_0
    return-void

    .line 335
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

    .line 336
    const-string v2, "InCallMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " manageBluetoothMenu isISHButtonAvailable :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 337
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secrcs/RcsShareUI;->isISHButtonAvailable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 336
    invoke-static {v2, v3, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 338
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    sget-boolean v2, Lcom/android/incallui/secrcs/RcsShareUI;->isCrane:Z

    if-eqz v2, :cond_4

    .line 339
    invoke-interface {p1, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 340
    invoke-interface {p2, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 341
    invoke-static {}, Lcom/android/incallui/StringManager;->getInstance()Lcom/android/incallui/StringManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    const-string v4, "onscreenBluetoothTextOn"

    invoke-virtual {v2, v3, v4}, Lcom/android/incallui/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 342
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/secrcs/RcsShareUI;->isISHButtonAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 343
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->getCallButtonPresenter()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v1

    .line 344
    .local v1, "presenter":Lcom/android/incallui/CallButtonPresenter;
    if-eqz v1, :cond_2

    invoke-virtual {v1, v7}, Lcom/android/incallui/CallButtonPresenter;->isSupported(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 345
    invoke-virtual {v1, v7}, Lcom/android/incallui/CallButtonPresenter;->isAudio(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 346
    invoke-interface {p1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 347
    invoke-interface {p2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 349
    :cond_1
    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 350
    invoke-interface {p2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 353
    :cond_2
    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 354
    invoke-interface {p2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 357
    .end local v1    # "presenter":Lcom/android/incallui/CallButtonPresenter;
    :cond_3
    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 358
    invoke-interface {p2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 361
    :cond_4
    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 362
    invoke-interface {p2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method private manageCallTransfer(Landroid/view/MenuItem;)V
    .locals 1
    .param p1, "callTransfer"    # Landroid/view/MenuItem;

    .prologue
    .line 872
    const-string v0, "manageCallTransfer"

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    .line 873
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkCallTransfer()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 874
    return-void
.end method

.method private manageExtraVolumeMenu(Landroid/view/MenuItem;Landroid/view/MenuItem;)V
    .locals 4
    .param p1, "enableExtraVolumeItem"    # Landroid/view/MenuItem;
    .param p2, "disableExtraVolumeItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 306
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkExtraVolumeMenu()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    invoke-static {}, Lcom/android/incallui/util/SoundEffect;->isExtraVolOn()Z

    move-result v0

    .line 308
    .local v0, "isExtraVolOn":Z
    if-eqz v0, :cond_0

    .line 309
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 310
    invoke-interface {p2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 319
    .end local v0    # "isExtraVolOn":Z
    :goto_0
    return-void

    .line 312
    .restart local v0    # "isExtraVolOn":Z
    :cond_0
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 313
    invoke-interface {p2, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 316
    .end local v0    # "isExtraVolOn":Z
    :cond_1
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 317
    invoke-interface {p2, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private manageHoldMenu(Landroid/view/MenuItem;)V
    .locals 1
    .param p1, "holdItem"    # Landroid/view/MenuItem;

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->getHoldMenuTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 223
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkHoldMenu()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 224
    return-void
.end method

.method private manageMuteMenu(Landroid/view/MenuItem;Landroid/view/MenuItem;)V
    .locals 4
    .param p1, "muteItem"    # Landroid/view/MenuItem;
    .param p2, "unmuteItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 118
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkMuteMenu()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v0

    .line 120
    .local v0, "isMuted":Z
    if-eqz v0, :cond_0

    .line 121
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 122
    invoke-interface {p2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 131
    .end local v0    # "isMuted":Z
    :goto_0
    return-void

    .line 124
    .restart local v0    # "isMuted":Z
    :cond_0
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 125
    invoke-interface {p2, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 128
    .end local v0    # "isMuted":Z
    :cond_1
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 129
    invoke-interface {p2, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private manageRecordStopMenu(Landroid/view/MenuItem;)V
    .locals 1
    .param p1, "recordstopItem"    # Landroid/view/MenuItem;

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkRecordStopMenu()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 270
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->getRecordStopMenuTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 271
    invoke-virtual {p0}, Lcom/android/incallui/InCallMenu;->getRecordStopEnableState()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 272
    return-void
.end method

.method private manageSendMessagesMenu(Landroid/view/MenuItem;)V
    .locals 1
    .param p1, "sendMessagesItem"    # Landroid/view/MenuItem;

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkSendMessagesMenu()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 418
    return-void
.end method

.method private manageViewContactsMenu(Landroid/view/MenuItem;)V
    .locals 1
    .param p1, "viewContactsItem"    # Landroid/view/MenuItem;

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkViewContactsMenu()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 383
    return-void
.end method


# virtual methods
.method public addCallClicked()V
    .locals 2

    .prologue
    .line 783
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    .line 784
    .local v0, "callButtonUi":Lcom/android/incallui/CallButtonUi;
    if-eqz v0, :cond_0

    .line 785
    invoke-interface {v0}, Lcom/android/incallui/CallButtonUi;->addCallClicked()V

    .line 787
    :cond_0
    return-void
.end method

.method public addVoiceUserClicked()V
    .locals 2

    .prologue
    .line 806
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 807
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 808
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/incallui/CallButtonUi;->showAddUserForConferenceCall()V

    .line 810
    :cond_0
    return-void
.end method

.method public bluetoothClicked()V
    .locals 1

    .prologue
    .line 802
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->bluetoothClicked()V

    .line 803
    return-void
.end method

.method public callTransferClicked()V
    .locals 6

    .prologue
    const/high16 v5, 0x30000000

    .line 877
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    .line 878
    .local v0, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 880
    .local v1, "fgCall":Lcom/android/incallui/Call;
    const-string v3, "jansky_info_for_tmo"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 881
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 882
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 883
    iget-object v3, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 892
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 884
    :cond_1
    const-string v3, "support_call_transfer_blind_ect"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUIConfig;->isNEESupportBlindECT()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 885
    :cond_2
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/incallui/TransferManager;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 886
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 887
    iget-object v3, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 888
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    if-eqz v1, :cond_0

    .line 889
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

    .line 890
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/TelecomAdapter;->explicitCallTransfer(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dismissDialogs()V
    .locals 0

    .prologue
    .line 814
    return-void
.end method

.method public extraVolumeClicked()V
    .locals 1

    .prologue
    .line 798
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->getSecUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->extraVolumeClicked()V

    .line 799
    return-void
.end method

.method public getRecordStopEnableState()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 255
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v0

    .line 256
    .local v0, "recorderMgr":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 265
    :cond_0
    :goto_0
    return v1

    .line 262
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

    .line 263
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUniqueMenuId()I
    .locals 1

    .prologue
    .line 469
    iget v0, p0, Lcom/android/incallui/InCallMenu;->mUniqueMenuId:I

    return v0
.end method

.method public getUniqueMenuItem()Ljava/lang/String;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/incallui/InCallMenu;->mUniqueMenuItem:Ljava/lang/String;

    return-object v0
.end method

.method public holdClicked(Z)V
    .locals 5
    .param p1, "checked"    # Z

    .prologue
    const v4, 0x7f09012c

    .line 758
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 759
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    .line 780
    :goto_0
    return-void

    .line 760
    :cond_0
    if-eqz p1, :cond_3

    .line 761
    const-string v1, "common_volte_kor"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 762
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isTheOtherPartyOnHold()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 763
    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    goto :goto_0

    .line 768
    :cond_1
    const-string v1, "feature_dcm"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 769
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->checkPrimaryEmergencyCall()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 770
    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    goto :goto_0

    .line 774
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

    .line 775
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->holdCall(Ljava/lang/String;)V

    goto :goto_0

    .line 777
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

    .line 778
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isExistOptionsItem()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 474
    iget-object v2, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 475
    const/4 v0, 0x0

    .line 568
    :cond_0
    :goto_0
    return v0

    .line 479
    :cond_1
    const/4 v0, 0x0

    .line 480
    .local v0, "isExistOptionsItem":Z
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/incallui/InCallMenu;->mUniqueMenuId:I

    .line 481
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkMuteMenu()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "support_folder_single_lcd"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 482
    const/4 v0, 0x1

    .line 483
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

    .line 484
    goto :goto_0

    .line 486
    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkHoldMenu()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 487
    if-nez v0, :cond_3

    const-string v2, "china_cdma_call"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 488
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

    .line 490
    goto :goto_0

    .line 492
    :cond_4
    const/4 v0, 0x1

    .line 493
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

    .line 495
    :cond_5
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkAddCallMenu()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 496
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

    .line 498
    goto/16 :goto_0

    .line 500
    :cond_7
    const/4 v0, 0x1

    .line 501
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

    .line 503
    :cond_8
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkRecordStopMenu()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 504
    if-eqz v0, :cond_9

    move v0, v1

    .line 505
    goto/16 :goto_0

    .line 507
    :cond_9
    const/4 v0, 0x1

    .line 509
    :cond_a
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkExtraVolumeMenu()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 510
    if-eqz v0, :cond_b

    move v0, v1

    .line 511
    goto/16 :goto_0

    .line 513
    :cond_b
    const/4 v0, 0x1

    .line 514
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

    .line 516
    :cond_c
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkBluetoothMenu()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 517
    if-eqz v0, :cond_d

    move v0, v1

    .line 518
    goto/16 :goto_0

    .line 520
    :cond_d
    const/4 v0, 0x1

    .line 522
    :cond_e
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkViewContactsMenu()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 523
    const/4 v0, 0x1

    .line 524
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

    .line 525
    goto/16 :goto_0

    .line 527
    :cond_f
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkAddContactsMenu()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 528
    const/4 v0, 0x1

    .line 529
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

    .line 530
    goto/16 :goto_0

    .line 532
    :cond_10
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkSendMessagesMenu()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 533
    const/4 v0, 0x1

    .line 534
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

    .line 535
    goto/16 :goto_0

    .line 537
    :cond_11
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkCallTransfer()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 538
    if-eqz v0, :cond_12

    move v0, v1

    .line 539
    goto/16 :goto_0

    .line 541
    :cond_12
    const/4 v0, 0x1

    .line 543
    :cond_13
    invoke-static {}, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->getInstance()Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->isExistDeviceList()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 544
    if-eqz v0, :cond_14

    move v0, v1

    .line 545
    goto/16 :goto_0

    .line 547
    :cond_14
    const/4 v0, 0x1

    .line 548
    const v2, 0x7f100468

    iput v2, p0, Lcom/android/incallui/InCallMenu;->mUniqueMenuId:I

    .line 550
    :cond_15
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkAddVoiceUserMenu()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 551
    if-eqz v0, :cond_16

    move v0, v1

    .line 552
    goto/16 :goto_0

    .line 554
    :cond_16
    const/4 v0, 0x1

    .line 556
    :cond_17
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkCDMASwapCallMenu()Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 557
    if-eqz v0, :cond_18

    move v0, v1

    .line 558
    goto/16 :goto_0

    .line 560
    :cond_18
    const/4 v0, 0x1

    .line 562
    :cond_19
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->checkCDMAMergeCallMenu()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 563
    if-eqz v0, :cond_1a

    move v0, v1

    .line 564
    goto/16 :goto_0

    .line 566
    :cond_1a
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public isMenuOpen()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/incallui/InCallMenu;->mIsMenuOpen:Z

    return v0
.end method

.method public menuItemSelected()V
    .locals 2

    .prologue
    .line 671
    iget v0, p0, Lcom/android/incallui/InCallMenu;->mUniqueMenuId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 677
    :goto_0
    return-void

    .line 672
    :cond_0
    iget v0, p0, Lcom/android/incallui/InCallMenu;->mUniqueMenuId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 674
    :pswitch_0
    invoke-static {}, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->getInstance()Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->showDeviceList()V

    goto :goto_0

    .line 672
    :pswitch_data_0
    .packed-switch 0x7f100468
        :pswitch_0
    .end packed-switch
.end method

.method public optionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 680
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

    .line 681
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

    .line 682
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

    .line 684
    const-string v5, "ims_rcs"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 685
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/incallui/secrcs/RcsShareUI;->unregisterRcsObserver(I)V

    .line 688
    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    .line 689
    .local v1, "call":Lcom/android/incallui/Call;
    iget-object v5, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_1

    if-nez v1, :cond_2

    .line 690
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

    .line 754
    :goto_0
    return v4

    .line 693
    :cond_2
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/UiAdapter;->getCallButtonPresenter()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    .line 694
    .local v0, "buttonPresenter":Lcom/android/incallui/CallButtonPresenter;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 750
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

    .line 696
    :sswitch_0
    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_mute(Lcom/android/incallui/Call;)V

    .line 697
    if-eqz v0, :cond_3

    invoke-virtual {v0, v3}, Lcom/android/incallui/CallButtonPresenter;->muteClicked(Z)V

    :cond_3
    :goto_1
    move v4, v3

    .line 754
    goto :goto_0

    .line 700
    :sswitch_1
    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_mute(Lcom/android/incallui/Call;)V

    .line 701
    if-eqz v0, :cond_3

    invoke-virtual {v0, v4}, Lcom/android/incallui/CallButtonPresenter;->muteClicked(Z)V

    goto :goto_1

    .line 704
    :sswitch_2
    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_addCall(Lcom/android/incallui/Call;)V

    .line 705
    invoke-virtual {p0}, Lcom/android/incallui/InCallMenu;->addCallClicked()V

    goto :goto_1

    .line 708
    :sswitch_3
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_5

    move v2, v3

    .line 709
    .local v2, "holdState":Z
    :goto_2
    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_holdCall(Lcom/android/incallui/Call;)V

    .line 710
    if-nez v2, :cond_4

    move v4, v3

    :cond_4
    invoke-virtual {p0, v4}, Lcom/android/incallui/InCallMenu;->holdClicked(Z)V

    goto :goto_1

    .end local v2    # "holdState":Z
    :cond_5
    move v2, v4

    .line 708
    goto :goto_2

    .line 713
    :sswitch_4
    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallMenu;->recordstopClicked(Lcom/android/incallui/Call;)V

    goto :goto_1

    .line 717
    :sswitch_5
    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_extraVolume(Lcom/android/incallui/Call;)V

    .line 718
    invoke-virtual {p0}, Lcom/android/incallui/InCallMenu;->extraVolumeClicked()V

    goto :goto_1

    .line 721
    :sswitch_6
    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_viewContact(Lcom/android/incallui/Call;)V

    .line 722
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->viewContactClicked()V

    goto :goto_1

    .line 725
    :sswitch_7
    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_addToContact(Lcom/android/incallui/Call;)V

    .line 726
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->addToContactClicked()V

    goto :goto_1

    .line 729
    :sswitch_8
    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_sendMessage(Lcom/android/incallui/Call;)V

    .line 730
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->launchMessage()V

    goto :goto_1

    .line 733
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/incallui/InCallMenu;->addVoiceUserClicked()V

    goto :goto_1

    .line 736
    :sswitch_a
    invoke-direct {p0}, Lcom/android/incallui/InCallMenu;->launchRcsFileTransfer()V

    goto :goto_1

    .line 740
    :sswitch_b
    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_bluetooth(Lcom/android/incallui/Call;)V

    .line 741
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->toggleBluetooth()V

    goto :goto_1

    .line 744
    :sswitch_c
    invoke-virtual {p0}, Lcom/android/incallui/InCallMenu;->callTransferClicked()V

    goto :goto_1

    .line 747
    :sswitch_d
    invoke-static {}, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->getInstance()Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->showDeviceList()V

    goto :goto_1

    .line 694
    :sswitch_data_0
    .sparse-switch
        0x7f100096 -> :sswitch_0
        0x7f100098 -> :sswitch_3
        0x7f100348 -> :sswitch_4
        0x7f10038a -> :sswitch_2
        0x7f100467 -> :sswitch_c
        0x7f100468 -> :sswitch_d
        0x7f100469 -> :sswitch_5
        0x7f10046a -> :sswitch_5
        0x7f10046b -> :sswitch_6
        0x7f10046c -> :sswitch_7
        0x7f10046d -> :sswitch_8
        0x7f10046e -> :sswitch_9
        0x7f100470 -> :sswitch_a
        0x7f100471 -> :sswitch_b
        0x7f100472 -> :sswitch_b
        0x7f100473 -> :sswitch_1
    .end sparse-switch
.end method

.method public prepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 23
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 572
    const-string v20, "prepareOptionsMenu()..."

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallMenu;->log(Ljava/lang/String;)V

    .line 574
    const-string v20, "ims_rcs"

    invoke-static/range {v20 .. v20}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 575
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-virtual/range {v20 .. v22}, Lcom/android/incallui/secrcs/RcsShareUI;->registerRcsObserver(Landroid/content/Context;I)V

    .line 576
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/InCallMenu;->menu:Landroid/view/Menu;

    .line 579
    :cond_0
    const-string v20, "support_folder_single_lcd"

    invoke-static/range {v20 .. v20}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 580
    const v20, 0x7f100096

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    .line 581
    .local v14, "muteItem":Landroid/view/MenuItem;
    const v20, 0x7f100473

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v18

    .line 582
    .local v18, "unmuteItem":Landroid/view/MenuItem;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v14, v1}, Lcom/android/incallui/InCallMenu;->manageMuteMenu(Landroid/view/MenuItem;Landroid/view/MenuItem;)V

    .line 583
    const/16 v20, 0x1

    .line 667
    .end local v14    # "muteItem":Landroid/view/MenuItem;
    .end local v18    # "unmuteItem":Landroid/view/MenuItem;
    :goto_0
    return v20

    .line 586
    :cond_1
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/view/Menu;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v12, v0, :cond_6

    .line 587
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/view/MenuItem;->getItemId()I

    move-result v13

    .line 588
    .local v13, "itemId":I
    sparse-switch v13, :sswitch_data_0

    .line 586
    :goto_2
    :sswitch_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 590
    :sswitch_1
    const v20, 0x7f10038a

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 591
    .local v3, "addCallItem":Landroid/view/MenuItem;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/incallui/InCallMenu;->manageAddCallMenu(Landroid/view/MenuItem;)V

    goto :goto_2

    .line 594
    .end local v3    # "addCallItem":Landroid/view/MenuItem;
    :sswitch_2
    const v20, 0x7f100098

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    .line 595
    .local v11, "holdItem":Landroid/view/MenuItem;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/incallui/InCallMenu;->manageHoldMenu(Landroid/view/MenuItem;)V

    goto :goto_2

    .line 598
    .end local v11    # "holdItem":Landroid/view/MenuItem;
    :sswitch_3
    const v20, 0x7f100348

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v16

    .line 599
    .local v16, "recordstopItem":Landroid/view/MenuItem;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallMenu;->manageRecordStopMenu(Landroid/view/MenuItem;)V

    goto :goto_2

    .line 604
    .end local v16    # "recordstopItem":Landroid/view/MenuItem;
    :sswitch_4
    const v20, 0x7f100469

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 605
    .local v10, "enableExtraVolumeItem":Landroid/view/MenuItem;
    const v20, 0x7f10046a

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    .line 606
    .local v9, "disableExtraVolumeItem":Landroid/view/MenuItem;
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v9}, Lcom/android/incallui/InCallMenu;->manageExtraVolumeMenu(Landroid/view/MenuItem;Landroid/view/MenuItem;)V

    goto :goto_2

    .line 609
    .end local v9    # "disableExtraVolumeItem":Landroid/view/MenuItem;
    .end local v10    # "enableExtraVolumeItem":Landroid/view/MenuItem;
    :sswitch_5
    const v20, 0x7f10046b

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    .line 610
    .local v19, "viewContactsItem":Landroid/view/MenuItem;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallMenu;->manageViewContactsMenu(Landroid/view/MenuItem;)V

    goto :goto_2

    .line 613
    .end local v19    # "viewContactsItem":Landroid/view/MenuItem;
    :sswitch_6
    const v20, 0x7f10046c

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 614
    .local v4, "addContactsItem":Landroid/view/MenuItem;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/incallui/InCallMenu;->manageAddContactsMenu(Landroid/view/MenuItem;)V

    goto :goto_2

    .line 617
    .end local v4    # "addContactsItem":Landroid/view/MenuItem;
    :sswitch_7
    const v20, 0x7f10046d

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v17

    .line 618
    .local v17, "sendMessagesItem":Landroid/view/MenuItem;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallMenu;->manageSendMessagesMenu(Landroid/view/MenuItem;)V

    goto/16 :goto_2

    .line 621
    .end local v17    # "sendMessagesItem":Landroid/view/MenuItem;
    :sswitch_8
    const v20, 0x7f10046e

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 622
    .local v5, "addVoiceUserItem":Landroid/view/MenuItem;
    const-string v20, "ims_voice_conference_kddi"

    invoke-static/range {v20 .. v20}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 623
    const v20, 0x7f090262

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 625
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/incallui/InCallMenu;->manageAddVoiceUserMenu(Landroid/view/MenuItem;)V

    goto/16 :goto_2

    .line 628
    .end local v5    # "addVoiceUserItem":Landroid/view/MenuItem;
    :sswitch_9
    const v20, 0x7f100470

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 629
    .local v2, "RcsFileTransferItem":Landroid/view/MenuItem;
    const v20, 0x7f0202b7

    move/from16 v0, v20

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 631
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 632
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

    .line 633
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->getInstance()Lcom/android/incallui/secrcs/RcsShareUI;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/secrcs/RcsShareUI;->isRcsServiceAvailable()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 634
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 635
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/InCallMenu;->IsActiveRcsFT()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 636
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 638
    :cond_3
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 641
    :cond_4
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 644
    :cond_5
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 651
    .end local v2    # "RcsFileTransferItem":Landroid/view/MenuItem;
    :sswitch_a
    const v20, 0x7f100471

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 652
    .local v7, "btHeadsetOnItem":Landroid/view/MenuItem;
    const v20, 0x7f100472

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 653
    .local v6, "btHeadsetOffItem":Landroid/view/MenuItem;
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/android/incallui/InCallMenu;->manageBluetoothMenu(Landroid/view/MenuItem;Landroid/view/MenuItem;)V

    goto/16 :goto_2

    .line 656
    .end local v6    # "btHeadsetOffItem":Landroid/view/MenuItem;
    .end local v7    # "btHeadsetOnItem":Landroid/view/MenuItem;
    :sswitch_b
    const v20, 0x7f100467

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 657
    .local v8, "callTransfer":Landroid/view/MenuItem;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/incallui/InCallMenu;->manageCallTransfer(Landroid/view/MenuItem;)V

    goto/16 :goto_2

    .line 660
    .end local v8    # "callTransfer":Landroid/view/MenuItem;
    :sswitch_c
    const v20, 0x7f100468

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    .line 661
    .local v15, "pushSoftPhone":Landroid/view/MenuItem;
    invoke-static {}, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->getInstance()Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->isExistDeviceList()Z

    move-result v20

    move/from16 v0, v20

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 667
    .end local v13    # "itemId":I
    .end local v15    # "pushSoftPhone":Landroid/view/MenuItem;
    :cond_6
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 588
    :sswitch_data_0
    .sparse-switch
        0x7f100098 -> :sswitch_2
        0x7f100348 -> :sswitch_3
        0x7f10038a -> :sswitch_1
        0x7f100467 -> :sswitch_b
        0x7f100468 -> :sswitch_c
        0x7f100469 -> :sswitch_0
        0x7f10046a -> :sswitch_4
        0x7f10046b -> :sswitch_5
        0x7f10046c -> :sswitch_6
        0x7f10046d -> :sswitch_7
        0x7f10046e -> :sswitch_8
        0x7f100470 -> :sswitch_9
        0x7f100471 -> :sswitch_0
        0x7f100472 -> :sswitch_a
    .end sparse-switch
.end method

.method public recordstopClicked(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 790
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getRecorderMgr()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v0

    .line 791
    .local v0, "recorderMgr":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    if-eqz v0, :cond_0

    .line 792
    invoke-static {p1, v0}, Lcom/android/incallui/util/VoiceCallAppLogging;->fullScreen_record(Lcom/android/incallui/Call;Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;)V

    .line 793
    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->toggleRecord()V

    .line 795
    :cond_0
    return-void
.end method

.method public setMenuOpen(Z)V
    .locals 0
    .param p1, "mIsMenuOpen"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/incallui/InCallMenu;->mIsMenuOpen:Z

    .line 71
    return-void
.end method
