.class public Lcom/android/incallui/util/ImsCommonUtils;
.super Ljava/lang/Object;
.source "ImsCommonUtils.java"


# static fields
.field private static final IR94_VIDEOCALL_SETTINGDB:Ljava/lang/String; = "videocall_type"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsCommonUtils"

.field private static final VOICECALL_TYPE_CS:I = 0x1

.field private static final VOICECALL_TYPE_KEY:Ljava/lang/String; = "voicecall_type"

.field private static final VOICECALL_TYPE_VOLTE:I = 0x0

.field public static final VOLTE_SETTING_ENABLED:I = 0x0

.field public static final VOLTE_SETTING_MOBILEDATA_OFF:I = 0x3

.field public static final VOLTE_SETTING_VIDEO_OFF:I = 0x1

.field public static final VOLTE_SETTING_VOLTE_OFF:I = 0x2

.field private static mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

.field private static mIsVZWLTEVideoCallMenuShow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/util/ImsCommonUtils;->mIsVZWLTEVideoCallMenuShow:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/sec/ims/options/CapabilityManager;)Lcom/sec/ims/options/CapabilityManager;
    .locals 0
    .param p0, "x0"    # Lcom/sec/ims/options/CapabilityManager;

    .prologue
    .line 45
    sput-object p0, Lcom/android/incallui/util/ImsCommonUtils;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    return-object p0
.end method

.method public static connectCapabilityManager(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 377
    sget-object v1, Lcom/android/incallui/util/ImsCommonUtils;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    if-eqz v1, :cond_0

    .line 387
    :goto_0
    return-void

    .line 378
    :cond_0
    const-string v1, "ImsCommonUtils"

    const-string v2, "connectCapabilityManager()"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    new-instance v0, Lcom/android/incallui/util/ImsCommonUtils$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/util/ImsCommonUtils$1;-><init>(Landroid/content/Context;)V

    .line 386
    .local v0, "asyncTask":Landroid/os/AsyncTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static disconnectCapabilityManager()V
    .locals 2

    .prologue
    .line 390
    const-string v0, "ImsCommonUtils"

    const-string v1, "disconnectCapabilityManager()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    sget-object v0, Lcom/android/incallui/util/ImsCommonUtils;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/util/ImsCommonUtils;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    invoke-virtual {v0}, Lcom/sec/ims/options/CapabilityManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    sget-object v0, Lcom/android/incallui/util/ImsCommonUtils;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    invoke-virtual {v0}, Lcom/sec/ims/options/CapabilityManager;->disconnect()V

    .line 393
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/util/ImsCommonUtils;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    .line 395
    :cond_0
    return-void
.end method

.method public static getCreateTimeForIMSConference(I)J
    .locals 7
    .param p0, "index"    # I

    .prologue
    .line 113
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 114
    .local v0, "call":Lcom/android/incallui/Call;
    const-wide/16 v2, 0x0

    .line 115
    .local v2, "createTimeForIMSConference":J
    invoke-static {v0, p0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIMSConferenceParticipantCreateTime(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "imsConferenceParticipantCreateTime":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 117
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 119
    :cond_0
    return-wide v2
.end method

.method public static getIMSCapabilities(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/ims/options/Capabilities;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 398
    const-string v2, "ImsCommonUtils"

    const-string v3, "getIMSCapabilities()"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const/4 v0, 0x0

    .line 401
    .local v0, "capabilities":Lcom/sec/ims/options/Capabilities;
    :try_start_0
    sget-object v2, Lcom/android/incallui/util/ImsCommonUtils;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    if-nez v2, :cond_0

    .line 402
    invoke-static {p0}, Lcom/android/incallui/util/ImsCommonUtils;->connectCapabilityManager(Landroid/content/Context;)V

    .line 404
    :cond_0
    sget-object v2, Lcom/android/incallui/util/ImsCommonUtils;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    if-eqz v2, :cond_1

    .line 405
    sget-object v2, Lcom/android/incallui/util/ImsCommonUtils;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    sget-object v3, Lcom/sec/ims/options/CapabilityRefreshType;->DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

    invoke-virtual {v3}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/sec/ims/options/CapabilityManager;->getCapabilitiesByNumber(Ljava/lang/String;I)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    .line 406
    const-string v2, "ImsCommonUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIMSCapabilities() capabilities = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :cond_1
    :goto_0
    return-object v0

    .line 408
    :catch_0
    move-exception v1

    .line 409
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getIMSConfCallLiveParticipantCount()I
    .locals 11

    .prologue
    .line 350
    const/4 v4, 0x0

    .line 351
    .local v4, "participantCount":I
    const-string v8, "ims_voice_conference_vzw"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 352
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 354
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getType(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v7

    .line 355
    .local v7, "type":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIMSConferenceParticipantCount(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v2

    .line 356
    .local v2, "imsConferenceParticipantCount":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIMSConferenceParticipantState(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v3

    .line 358
    .local v3, "imsConferenceParticipantState":Ljava/lang/String;
    if-eqz v2, :cond_2

    if-eqz v7, :cond_2

    if-eqz v3, :cond_2

    .line 360
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 361
    .local v5, "partycount":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_2

    if-lez v5, :cond_2

    .line 362
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 363
    invoke-static {v0, v1}, Lcom/android/incallui/util/SecCallExtraUtils;->getIMSConferenceParticipantState(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v6

    .line 364
    .local v6, "state":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 365
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x7

    if-eq v8, v9, :cond_0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_1

    .line 366
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 362
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 372
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "i":I
    .end local v2    # "imsConferenceParticipantCount":Ljava/lang/String;
    .end local v3    # "imsConferenceParticipantState":Ljava/lang/String;
    .end local v5    # "partycount":I
    .end local v6    # "state":Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    :cond_2
    const-string v8, "ImsCommonUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "live participantCount: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    return v4
.end method

.method public static getIMSConferenceCallCounts(Lcom/android/incallui/Call;)I
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 166
    invoke-static {p0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIMSConferenceParticipantCount(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "imsConferenceParticipantCount":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 168
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 170
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getIMSConferenceMaxCallCounts()I
    .locals 1

    .prologue
    .line 174
    const-string v0, "ims_voice_conference_cmcc"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const/4 v0, 0x6

    .line 179
    :goto_0
    return v0

    .line 176
    :cond_0
    const-string v0, "ims_voice_conference_vzw"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    const/4 v0, 0x5

    goto :goto_0

    .line 179
    :cond_1
    const/16 v0, 0x9

    goto :goto_0
.end method

.method public static getLookupKeyForIMSConference(I)Ljava/lang/String;
    .locals 4
    .param p0, "index"    # I

    .prologue
    .line 100
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 101
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0, p0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIMSConferenceParticipantLookupKey(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getNameForIMSConference()Ljava/lang/String;
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
    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getNameForIMSConference(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getNameForIMSConference(I)Ljava/lang/String;
    .locals 4
    .param p0, "index"    # I

    .prologue
    .line 66
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 67
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0, p0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIMSConferenceParticipantName(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getNameForIMSConference(ILcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 71
    invoke-static {p1, p0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIMSConferenceParticipantName(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNumberForIMSConference()Ljava/lang/String;
    .locals 4

    .prologue
    .line 85
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 86
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getNumberForIMSConference(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getNumberForIMSConference(I)Ljava/lang/String;
    .locals 4
    .param p0, "index"    # I

    .prologue
    .line 75
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 76
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0, p0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIMSConferenceCallParticipantNumber(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPhotoUriForIMSConference(I)Landroid/net/Uri;
    .locals 5
    .param p0, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 92
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0, p0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIMSConferenceParticipantPhotoUri(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "photoUriForIMSConference":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 94
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 96
    :cond_0
    return-object v2
.end method

.method public static getStartDurationForIMSConference(I)J
    .locals 7
    .param p0, "index"    # I

    .prologue
    .line 123
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 124
    .local v0, "call":Lcom/android/incallui/Call;
    const-wide/16 v2, 0x0

    .line 125
    .local v2, "startDurationForIMSConference":J
    invoke-static {v0, p0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIMSConferenceParticipantStartDuration(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "imsConferenceParticipantStartDuration":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 127
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 129
    :cond_0
    return-wide v2
.end method

.method public static getStateForIMSConference(I)I
    .locals 4
    .param p0, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 106
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIMSConferenceParticipantState(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 107
    invoke-static {v0, p0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIMSConferenceParticipantState(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 109
    :cond_0
    return v1
.end method

.method public static isAvailableIMSConferenceInfo()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 133
    const/4 v1, 0x0

    .line 134
    .local v1, "isAvailable":Z
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-static {v3, v4, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 135
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 136
    invoke-static {v0}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 137
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-static {v3, v4, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/util/SecCallExtraUtils;->getReceivedCall(Lcom/android/incallui/Call;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 139
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 137
    goto :goto_0
.end method

.method public static isAvailablePSVT()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 226
    const-string v1, "psvt_support"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    const-string v1, "mmtel-video"

    invoke-static {v1, v0}, Lcom/android/incallui/util/ImsCommonUtils;->isServiceRegistered(Ljava/lang/String;Z)Z

    move-result v0

    .line 229
    :cond_0
    return v0
.end method

.method public static isAvailablePSVT(I)Z
    .locals 4
    .param p0, "subId"    # I

    .prologue
    .line 233
    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 235
    .local v0, "dataSubId":I
    const-string v1, "ImsCommonUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailablePSVT getDefaultDataSubscriptionId():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " default subID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    if-eq p0, v0, :cond_0

    .line 237
    const/4 v1, 0x0

    .line 240
    .end local v0    # "dataSubId":I
    :goto_0
    return v1

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailablePSVT()Z

    move-result v1

    goto :goto_0
.end method

.method public static isAvailableVoLTE()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 212
    const-string v1, "enabled"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    const-string v1, "mmtel"

    invoke-static {v1, v0}, Lcom/android/incallui/util/ImsCommonUtils;->isServiceRegistered(Ljava/lang/String;Z)Z

    move-result v0

    .line 215
    :cond_0
    return v0
.end method

.method public static isAvailableVoWFi()Z
    .locals 2

    .prologue
    .line 219
    const-string v0, "support_vowifi"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    const-string v0, "mmtel"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/incallui/util/ImsCommonUtils;->isServiceRegistered(Ljava/lang/String;Z)Z

    move-result v0

    .line 222
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIMSConferenceCall()Z
    .locals 4

    .prologue
    .line 157
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 158
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {v0}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isIMSConferenceCall(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 162
    invoke-static {p0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v0

    return v0
.end method

.method public static isIMSConferenceCallForContactInfoCache(Ljava/lang/String;)Z
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "result":Z
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/TelecomAdapter;->getParticipantsCount()I

    move-result v1

    if-lez v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailableIMSConferenceInfo()Z

    move-result v1

    if-nez v1, :cond_2

    .line 145
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "$"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 146
    :cond_2
    const/4 v0, 0x1

    .line 149
    :cond_3
    const-string v1, "ims_voice_conference_vzw"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "$"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 150
    const/4 v0, 0x0

    .line 153
    :cond_4
    return v0
.end method

.method public static isLTEVideoCallEnabled(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 269
    const/4 v2, 0x0

    .line 270
    .local v2, "isLTEVideoCallEnabled":Z
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallApp;->getIMSManagerWrapper()Lcom/android/incallui/service/ims/IMSManagerWrapper;

    move-result-object v1

    .line 271
    .local v1, "imsManager":Lcom/android/incallui/service/ims/IMSManagerWrapper;
    if-nez v1, :cond_0

    move v3, v2

    .line 289
    .end local v2    # "isLTEVideoCallEnabled":Z
    .local v3, "isLTEVideoCallEnabled":I
    :goto_0
    return v3

    .line 272
    .end local v3    # "isLTEVideoCallEnabled":I
    .restart local v2    # "isLTEVideoCallEnabled":Z
    :cond_0
    const-string v7, "mmtel-video"

    invoke-virtual {v1, v7}, Lcom/android/incallui/service/ims/IMSManagerWrapper;->isServiceAvailable(Ljava/lang/String;)Z

    move-result v4

    .line 274
    .local v4, "isLvcAvailable":Z
    const/4 v5, 0x0

    .line 275
    .local v5, "isLvcDmEnabled":Z
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/String;

    const-string v7, "94"

    aput-object v7, v0, v9

    .line 276
    .local v0, "fields":[Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/android/incallui/service/ims/IMSManagerWrapper;->getConfigValues([Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v6

    .line 277
    .local v6, "value":Landroid/content/ContentValues;
    if-eqz v6, :cond_1

    .line 278
    const-string v8, "1"

    const-string v7, "94"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 281
    :cond_1
    const-string v7, "videocall_type"

    invoke-static {v7, v9}, Lcom/android/incallui/InCallUISystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_2

    .line 283
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    .line 285
    const/4 v2, 0x1

    :cond_2
    move v3, v2

    .line 289
    .restart local v3    # "isLTEVideoCallEnabled":I
    goto :goto_0
.end method

.method public static isServiceRegistered(Ljava/lang/String;Z)Z
    .locals 6
    .param p0, "feature"    # Ljava/lang/String;
    .param p1, "isCheckVoWifi"    # Z

    .prologue
    const/4 v5, 0x1

    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "isServiceRegistered":Z
    const-string v2, "enabled"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getIMSManagerWrapper()Lcom/android/incallui/service/ims/IMSManagerWrapper;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 187
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getIMSManagerWrapper()Lcom/android/incallui/service/ims/IMSManagerWrapper;

    move-result-object v2

    const-string v3, "volte"

    invoke-virtual {v2, v3}, Lcom/android/incallui/service/ims/IMSManagerWrapper;->getRegistrationInfoByServiceType(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    .line 188
    .local v1, "regi":Lcom/sec/ims/ImsRegistration;
    if-eqz v1, :cond_1

    .line 189
    if-eqz p1, :cond_3

    .line 190
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v2

    if-ne v2, v5, :cond_0

    .line 192
    if-eqz p0, :cond_2

    .line 193
    invoke-virtual {v1, p0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v0

    .line 203
    :cond_0
    :goto_0
    const-string v2, "ImsCommonUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRegistered : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 207
    .end local v1    # "regi":Lcom/sec/ims/ImsRegistration;
    :cond_1
    return v0

    .line 195
    .restart local v1    # "regi":Lcom/sec/ims/ImsRegistration;
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 201
    :cond_3
    invoke-virtual {v1, p0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isVZWLTEVideoCallMenuShow()Z
    .locals 1

    .prologue
    .line 245
    sget-boolean v0, Lcom/android/incallui/util/ImsCommonUtils;->mIsVZWLTEVideoCallMenuShow:Z

    return v0
.end method

.method public static isVoLTEFeatureEnabled()Z
    .locals 2

    .prologue
    .line 295
    const/4 v0, 0x1

    .line 296
    .local v0, "default_value":I
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "default_volte"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 297
    :cond_0
    const/4 v0, 0x0

    .line 299
    :cond_1
    const-string v1, "voicecall_type"

    invoke-static {v1, v0}, Lcom/android/incallui/InCallUISystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isVoLTESettingsEnabled()I
    .locals 9

    .prologue
    .line 304
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 305
    .local v0, "context":Landroid/content/Context;
    const-string v6, "phone"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 306
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isVoLTEFeatureEnabled()Z

    move-result v3

    .line 307
    .local v3, "isVoLTEFeatureEnabled":Z
    invoke-static {v0}, Lcom/android/incallui/util/ImsCommonUtils;->isLTEVideoCallEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 308
    .local v1, "isLTEVideoCallEnabled":Z
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->semGetDataEnabled()Z

    move-result v2

    .line 309
    .local v2, "isMobileDataEnabled":Z
    const-string v6, "ImsCommonUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isVoLTESettingsEnabled isVoLTEFeatureEnabled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / isLTEVideoCallEnabled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / isMobileDataEnabled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 311
    const/4 v5, 0x0

    .line 312
    .local v5, "volteSettingsEnabled":I
    if-nez v3, :cond_1

    .line 313
    const/4 v5, 0x2

    .line 318
    :cond_0
    :goto_0
    return v5

    .line 314
    :cond_1
    if-nez v1, :cond_2

    .line 315
    const/4 v5, 0x1

    goto :goto_0

    .line 316
    :cond_2
    if-nez v2, :cond_0

    .line 317
    const/4 v5, 0x3

    goto :goto_0
.end method

.method public static isVolteIconPossible()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 323
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailableVoLTE()Z

    move-result v7

    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailablePSVT()Z

    move-result v8

    and-int v3, v7, v8

    .line 325
    .local v3, "isRegistered":Z
    const/4 v1, 0x1

    .line 326
    .local v1, "default_value":I
    const-string v7, "feature_lgt"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "default_volte"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 327
    :cond_0
    const/4 v1, 0x0

    .line 330
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 331
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "voicecall_type"

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 332
    .local v5, "voicecall_type":I
    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isDeviceOnLTE()Z

    move-result v2

    .line 334
    .local v2, "isLTEConnected":Z
    const-string v7, "enabled"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 335
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isAvailableVoLTE()Z

    move-result v4

    .line 336
    .local v4, "isVolteSupported":Z
    const-string v7, "ImsCommonUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isRegistered = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isVolteSupported = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " voicecall_type = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isLTEConnected = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    if-nez v5, :cond_2

    if-eqz v2, :cond_2

    .line 339
    const/4 v6, 0x1

    .line 345
    .end local v4    # "isVolteSupported":Z
    :cond_2
    :goto_0
    return v6

    .line 344
    :cond_3
    const-string v7, "ImsCommonUtils"

    const-string v8, "isVolteIconPossible end false "

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updateVZWLTEVideoCallMenuShow()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 249
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallApp;->getIMSManagerWrapper()Lcom/android/incallui/service/ims/IMSManagerWrapper;

    move-result-object v1

    .line 250
    .local v1, "imsManager":Lcom/android/incallui/service/ims/IMSManagerWrapper;
    const/4 v7, 0x3

    new-array v0, v7, [Ljava/lang/String;

    const-string v7, "93"

    aput-object v7, v0, v9

    const-string v7, "94"

    aput-object v7, v0, v8

    const/4 v7, 0x2

    const-string v10, "31"

    aput-object v10, v0, v7

    .line 251
    .local v0, "fields":[Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 252
    invoke-virtual {v1, v0}, Lcom/android/incallui/service/ims/IMSManagerWrapper;->getConfigValues([Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v6

    .line 253
    .local v6, "value":Landroid/content/ContentValues;
    if-eqz v6, :cond_1

    .line 254
    const-string v10, "1"

    const-string v7, "93"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 255
    .local v5, "isVolteEnabled":Z
    const-string v10, "1"

    const-string v7, "94"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 256
    .local v4, "isLvcEnabled":Z
    const-string v10, "1"

    const-string v7, "31"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 257
    .local v2, "isEabSetting":Z
    invoke-virtual {v1}, Lcom/android/incallui/service/ims/IMSManagerWrapper;->isForbidden()Z

    move-result v3

    .line 258
    .local v3, "isForbidden":Z
    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    move v7, v8

    :goto_0
    sput-boolean v7, Lcom/android/incallui/util/ImsCommonUtils;->mIsVZWLTEVideoCallMenuShow:Z

    .line 265
    .end local v2    # "isEabSetting":Z
    .end local v3    # "isForbidden":Z
    .end local v4    # "isLvcEnabled":Z
    .end local v5    # "isVolteEnabled":Z
    .end local v6    # "value":Landroid/content/ContentValues;
    :goto_1
    return-void

    .restart local v2    # "isEabSetting":Z
    .restart local v3    # "isForbidden":Z
    .restart local v4    # "isLvcEnabled":Z
    .restart local v5    # "isVolteEnabled":Z
    .restart local v6    # "value":Landroid/content/ContentValues;
    :cond_0
    move v7, v9

    .line 258
    goto :goto_0

    .line 260
    .end local v2    # "isEabSetting":Z
    .end local v3    # "isForbidden":Z
    .end local v4    # "isLvcEnabled":Z
    .end local v5    # "isVolteEnabled":Z
    :cond_1
    sput-boolean v9, Lcom/android/incallui/util/ImsCommonUtils;->mIsVZWLTEVideoCallMenuShow:Z

    goto :goto_1

    .line 263
    .end local v6    # "value":Landroid/content/ContentValues;
    :cond_2
    sput-boolean v9, Lcom/android/incallui/util/ImsCommonUtils;->mIsVZWLTEVideoCallMenuShow:Z

    goto :goto_1
.end method
