.class public final Lcom/android/incallui/Call;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Lcom/android/incallui/util/CallUpdateUtil$UpdateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/Call$LogState;,
        Lcom/android/incallui/Call$VideoSettings;,
        Lcom/android/incallui/Call$SessionModificationState;,
        Lcom/android/incallui/Call$State;
    }
.end annotation


# static fields
.field private static final ID_PREFIX:Ljava/lang/String;

.field private static sIdCounter:I


# instance fields
.field private final mCallDetails:Lcom/android/incallui/CallDetails;

.field private mCallSubject:Ljava/lang/String;

.field private final mChildCallIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChildNumber:Ljava/lang/String;

.field private mDisconnectByUser:Z

.field private mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private mEmergencyCallUpdateState:Z

.field private mHandle:Landroid/net/Uri;

.field private final mId:Ljava/lang/String;

.field private mIsCallSubjectSupported:Z

.field private mIsEmergencyCall:Z

.field private mIsIllusion:Z

.field private mIsSmartCallLogInfoUpdated:Z

.field private mLastForwardedNumber:Ljava/lang/String;

.field private mLogState:Lcom/android/incallui/Call$LogState;

.field private mNsriSecureContentObserver:Landroid/database/ContentObserver;

.field private mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private mPhoneNumberLocator:Ljava/lang/String;

.field private mPhoneType:I

.field private mPreviousParentId:Ljava/lang/String;

.field private mRequestedVideoState:I

.field private mRequestingVideoState:I

.field private final mSecCall:Lcom/android/incallui/SecCall;

.field private mSessionModificationState:I

.field private mShowMessageVoiceFromVideo:I

.field private mShowToastAsConnectVoice:Z

.field private mSmartCallIsSearching:Z

.field private mState:I

.field private mSubId:I

.field private final mTelecomCall:Landroid/telecom/Call;

.field private final mTelecomCallCallback:Landroid/telecom/Call$Callback;

.field private mTimeAddedMs:J

.field private mUpdateUtil:Lcom/android/incallui/util/CallUpdateUtil;

.field private mVideoCallAdapter:Lcom/android/incallui/service/vt/VideoCallAdapter;

.field private mVideoCallCallback:Lcom/android/incallui/InCallVideoCallCallback;

.field private final mVideoSettings:Lcom/android/incallui/Call$VideoSettings;

.field private mVideoState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/incallui/Call;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/Call;->ID_PREFIX:Ljava/lang/String;

    .line 347
    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/Call;->sIdCounter:I

    return-void
.end method

.method public constructor <init>(Landroid/telecom/Call;)V
    .locals 3
    .param p1, "telecommCall"    # Landroid/telecom/Call;

    .prologue
    const/4 v2, 0x0

    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    new-instance v0, Lcom/android/incallui/Call$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/Call$1;-><init>(Lcom/android/incallui/Call;)V

    iput-object v0, p0, Lcom/android/incallui/Call;->mTelecomCallCallback:Landroid/telecom/Call$Callback;

    .line 447
    iput v2, p0, Lcom/android/incallui/Call;->mState:I

    .line 450
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/Call;->mChildCallIds:Ljava/util/List;

    .line 451
    new-instance v0, Lcom/android/incallui/Call$VideoSettings;

    invoke-direct {v0}, Lcom/android/incallui/Call$VideoSettings;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/Call;->mVideoSettings:Lcom/android/incallui/Call$VideoSettings;

    .line 457
    iput v2, p0, Lcom/android/incallui/Call;->mRequestedVideoState:I

    .line 458
    iput v2, p0, Lcom/android/incallui/Call;->mRequestingVideoState:I

    .line 474
    new-instance v0, Lcom/android/incallui/Call$LogState;

    invoke-direct {v0}, Lcom/android/incallui/Call$LogState;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/Call;->mLogState:Lcom/android/incallui/Call$LogState;

    .line 477
    new-instance v0, Lcom/android/incallui/CallDetails;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallDetails;-><init>(Lcom/android/incallui/Call;)V

    iput-object v0, p0, Lcom/android/incallui/Call;->mCallDetails:Lcom/android/incallui/CallDetails;

    .line 481
    iput-boolean v2, p0, Lcom/android/incallui/Call;->mEmergencyCallUpdateState:Z

    .line 487
    iput v2, p0, Lcom/android/incallui/Call;->mSubId:I

    .line 489
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/Call;->mPhoneType:I

    .line 492
    iput-boolean v2, p0, Lcom/android/incallui/Call;->mDisconnectByUser:Z

    .line 493
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/Call;->mPreviousParentId:Ljava/lang/String;

    .line 494
    iput-boolean v2, p0, Lcom/android/incallui/Call;->mIsIllusion:Z

    .line 498
    iput-boolean v2, p0, Lcom/android/incallui/Call;->mSmartCallIsSearching:Z

    .line 499
    iput-boolean v2, p0, Lcom/android/incallui/Call;->mIsSmartCallLogInfoUpdated:Z

    .line 505
    new-instance v0, Lcom/android/incallui/util/CallUpdateUtil;

    const-string v1, "Call"

    invoke-direct {v0, v1, p0}, Lcom/android/incallui/util/CallUpdateUtil;-><init>(Ljava/lang/String;Lcom/android/incallui/util/CallUpdateUtil$UpdateCallback;)V

    iput-object v0, p0, Lcom/android/incallui/Call;->mUpdateUtil:Lcom/android/incallui/util/CallUpdateUtil;

    .line 507
    iput v2, p0, Lcom/android/incallui/Call;->mShowMessageVoiceFromVideo:I

    .line 508
    iput-boolean v2, p0, Lcom/android/incallui/Call;->mShowToastAsConnectVoice:Z

    .line 1282
    new-instance v0, Lcom/android/incallui/Call$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/Call$3;-><init>(Lcom/android/incallui/Call;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/incallui/Call;->mNsriSecureContentObserver:Landroid/database/ContentObserver;

    .line 511
    iput-object p1, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/incallui/Call;->ID_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/incallui/Call;->sIdCounter:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/android/incallui/Call;->sIdCounter:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/Call;->mId:Ljava/lang/String;

    .line 513
    new-instance v0, Lcom/android/incallui/SecCall;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecCall;-><init>(Lcom/android/incallui/Call;)V

    iput-object v0, p0, Lcom/android/incallui/Call;->mSecCall:Lcom/android/incallui/SecCall;

    .line 514
    new-instance v0, Lcom/android/incallui/service/vt/VideoCallAdapter;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;-><init>(Lcom/android/incallui/Call;)V

    iput-object v0, p0, Lcom/android/incallui/Call;->mVideoCallAdapter:Lcom/android/incallui/service/vt/VideoCallAdapter;

    .line 515
    invoke-direct {p0}, Lcom/android/incallui/Call;->updateFromTelecomCall()V

    .line 516
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    iget-object v1, p0, Lcom/android/incallui/Call;->mTelecomCallCallback:Landroid/telecom/Call$Callback;

    invoke-virtual {v0, v1}, Landroid/telecom/Call;->registerCallback(Landroid/telecom/Call$Callback;)V

    .line 517
    invoke-direct {p0}, Lcom/android/incallui/Call;->registerNsriSecureContentObserver()V

    .line 518
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/incallui/Call;->mTimeAddedMs:J

    .line 519
    invoke-virtual {p0}, Lcom/android/incallui/Call;->resetInCallUIFeature()V

    .line 520
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/Call;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/Call;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/incallui/Call;->update()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/Call;)Landroid/telecom/Call;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/Call;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/Call;)Lcom/android/incallui/InCallVideoCallCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/Call;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/incallui/Call;->mVideoCallCallback:Lcom/android/incallui/InCallVideoCallCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/Call;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/incallui/Call;->mId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroid/telecom/Call;)I
    .locals 1
    .param p0, "x0"    # Landroid/telecom/Call;

    .prologue
    .line 64
    invoke-static {p0}, Lcom/android/incallui/Call;->translateState(Landroid/telecom/Call;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/incallui/Call;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/Call;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/incallui/Call;->unregisterNsriSecureContentObserver()V

    return-void
.end method

.method public static areSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z
    .locals 2
    .param p0, "call1"    # Lcom/android/incallui/Call;
    .param p1, "call2"    # Lcom/android/incallui/Call;

    .prologue
    .line 1210
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 1211
    const/4 v0, 0x1

    .line 1217
    :goto_0
    return v0

    .line 1212
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 1213
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1217
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private maybeCancelVideoUpgrade(I)V
    .locals 4
    .param p1, "newVideoState"    # I

    .prologue
    const/4 v1, 0x0

    .line 749
    iget v2, p0, Lcom/android/incallui/Call;->mVideoState:I

    if-eq v2, p1, :cond_1

    const/4 v0, 0x1

    .line 751
    .local v0, "isVideoStateChanged":Z
    :goto_0
    iget v2, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    if-eqz v0, :cond_0

    .line 754
    const-string v2, "maybeCancelVideoUpgrade : cancelling upgrade notification"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 755
    invoke-virtual {p0, v1}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    .line 757
    :cond_0
    iput p1, p0, Lcom/android/incallui/Call;->mVideoState:I

    .line 758
    return-void

    .end local v0    # "isVideoStateChanged":Z
    :cond_1
    move v0, v1

    .line 749
    goto :goto_0
.end method

.method private maybeClearSessionModificationState(I)V
    .locals 5
    .param p1, "newVideoState"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 761
    iget v3, p0, Lcom/android/incallui/Call;->mVideoState:I

    if-eq v3, p1, :cond_2

    move v0, v1

    .line 763
    .local v0, "isVideoStateChanged":Z
    :goto_0
    iget v3, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    if-eqz v0, :cond_0

    .line 766
    const-string v3, "maybeCancelVideoUpgrade : cancelling upgrade notification"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 767
    invoke-virtual {p0, v2}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    .line 770
    :cond_0
    iget v3, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    if-ne v3, v1, :cond_1

    if-eqz v0, :cond_1

    .line 772
    const-string v1, "maybeAcceptVideoUpgrade : accepting upgrade notification"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 773
    invoke-virtual {p0, v2}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    .line 776
    :cond_1
    iput p1, p0, Lcom/android/incallui/Call;->mVideoState:I

    .line 777
    return-void

    .end local v0    # "isVideoStateChanged":Z
    :cond_2
    move v0, v2

    .line 761
    goto :goto_0
.end method

.method private registerNsriSecureContentObserver()V
    .locals 5

    .prologue
    .line 1295
    const-string v1, "support_nsri_secure"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1296
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1297
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nsri_secure_call_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/incallui/Call;->mNsriSecureContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1300
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    return-void
.end method

.method private static translateState(I)I
    .locals 3
    .param p0, "state"    # I

    .prologue
    const/4 v0, 0x1

    .line 790
    packed-switch p0, :pswitch_data_0

    .line 816
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    :pswitch_1
    return v0

    .line 794
    :pswitch_2
    const/16 v0, 0xd

    goto :goto_0

    .line 796
    :pswitch_3
    const/16 v0, 0xc

    goto :goto_0

    .line 798
    :pswitch_4
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 799
    const-string v1, "GATE"

    const-string v2, "<GATE-M>CALL_MO_ALERT_IND</GATE-M>"

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 801
    :cond_0
    const/4 v0, 0x6

    goto :goto_0

    .line 803
    :pswitch_5
    const/4 v0, 0x4

    goto :goto_0

    .line 805
    :pswitch_6
    const/4 v0, 0x3

    goto :goto_0

    .line 807
    :pswitch_7
    const/16 v0, 0x8

    goto :goto_0

    .line 809
    :pswitch_8
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 810
    const-string v1, "GATE"

    const-string v2, "<GATE-M>DISCONNECT_CALL</GATE-M>"

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 812
    :cond_1
    const/16 v0, 0xa

    goto :goto_0

    .line 814
    :pswitch_9
    const/16 v0, 0x9

    goto :goto_0

    .line 790
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_3
        :pswitch_2
        :pswitch_9
    .end packed-switch
.end method

.method private static translateState(Landroid/telecom/Call;)I
    .locals 3
    .param p0, "call"    # Landroid/telecom/Call;

    .prologue
    .line 780
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 786
    :goto_0
    return v1

    .line 781
    :cond_0
    invoke-virtual {p0}, Landroid/telecom/Call;->getState()I

    move-result v0

    .line 782
    .local v0, "state":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsRedialCall(Landroid/telecom/Call;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 783
    const-string v1, "CallUI"

    const-string v2, "translate state REDIALING"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    const/4 v1, 0x7

    goto :goto_0

    .line 786
    :cond_1
    invoke-virtual {p0}, Landroid/telecom/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/Call;->translateState(I)I

    move-result v1

    goto :goto_0
.end method

.method private unregisterNsriSecureContentObserver()V
    .locals 3

    .prologue
    .line 1303
    const-string v1, "support_nsri_secure"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1304
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1305
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/Call;->mNsriSecureContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1307
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    return-void
.end method

.method private update()V
    .locals 3

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    .line 536
    .local v0, "oldState":I
    invoke-direct {p0}, Lcom/android/incallui/Call;->updateFromTelecomCall()V

    .line 537
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 538
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/CallList;->onDisconnect(Lcom/android/incallui/Call;)V

    .line 544
    :goto_0
    return-void

    .line 539
    :cond_0
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 540
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 542
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/Call;->mUpdateUtil:Lcom/android/incallui/util/CallUpdateUtil;

    invoke-virtual {v1, p0}, Lcom/android/incallui/util/CallUpdateUtil;->update(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateEmergencyCallState()V
    .locals 1

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-static {v0}, Lcom/android/incallui/util/TelecomCallUtil;->isEmergencyCall(Landroid/telecom/Call;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/Call;->mIsEmergencyCall:Z

    .line 1194
    return-void
.end method

.method private updateFromTelecomCall()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 547
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateFromTelecomCall: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {p0, v11, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 548
    iget-object v11, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-static {v11}, Lcom/android/incallui/Call;->translateState(Landroid/telecom/Call;)I

    move-result v10

    .line 549
    .local v10, "translatedState":I
    iget v11, p0, Lcom/android/incallui/Call;->mState:I

    const/16 v12, 0xe

    if-eq v11, v12, :cond_0

    .line 550
    invoke-virtual {p0, v10}, Lcom/android/incallui/Call;->setState(I)V

    .line 551
    iget-object v11, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v11}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telecom/Call$Details;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/incallui/Call;->setDisconnectCause(Landroid/telecom/DisconnectCause;)V

    .line 552
    iget-object v11, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v11}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v11

    invoke-direct {p0, v11}, Lcom/android/incallui/Call;->maybeClearSessionModificationState(I)V

    .line 555
    :cond_0
    iget-object v11, p0, Lcom/android/incallui/Call;->mSecCall:Lcom/android/incallui/SecCall;

    if-eqz v11, :cond_1

    .line 556
    iget-object v11, p0, Lcom/android/incallui/Call;->mSecCall:Lcom/android/incallui/SecCall;

    invoke-virtual {v11}, Lcom/android/incallui/SecCall;->update()V

    .line 558
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 559
    iget-object v11, p0, Lcom/android/incallui/Call;->mVideoCallCallback:Lcom/android/incallui/InCallVideoCallCallback;

    if-nez v11, :cond_2

    .line 560
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/incallui/Call;->mId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " : updateFromTelecomCall - registerCallback"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    .line 561
    new-instance v11, Lcom/android/incallui/InCallVideoCallCallback;

    invoke-direct {v11, p0}, Lcom/android/incallui/InCallVideoCallCallback;-><init>(Lcom/android/incallui/Call;)V

    iput-object v11, p0, Lcom/android/incallui/Call;->mVideoCallCallback:Lcom/android/incallui/InCallVideoCallCallback;

    .line 562
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v11

    iget-object v12, p0, Lcom/android/incallui/Call;->mVideoCallCallback:Lcom/android/incallui/InCallVideoCallCallback;

    invoke-virtual {v11, v12}, Landroid/telecom/InCallService$VideoCall;->registerCallback(Landroid/telecom/InCallService$VideoCall$Callback;)V

    .line 565
    :cond_2
    iget-object v11, p0, Lcom/android/incallui/Call;->mChildCallIds:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 566
    iget-object v11, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v11}, Landroid/telecom/Call;->getChildren()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v6

    .line 567
    .local v6, "numChildCalls":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_4

    .line 568
    iget-object v11, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v11}, Landroid/telecom/Call;->getChildren()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 569
    iget-object v12, p0, Lcom/android/incallui/Call;->mChildCallIds:Ljava/util/List;

    .line 570
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v13

    iget-object v11, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    .line 571
    invoke-virtual {v11}, Landroid/telecom/Call;->getChildren()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telecom/Call;

    .line 570
    invoke-virtual {v13, v11}, Lcom/android/incallui/CallList;->getCallByTelecomCall(Landroid/telecom/Call;)Lcom/android/incallui/Call;

    move-result-object v11

    .line 571
    invoke-virtual {v11}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v11

    .line 569
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 575
    :cond_4
    const-string v11, "vzw_volte_ui_conf"

    invoke-static {v11}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 576
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getParentId()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_a

    .line 577
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getParentId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/incallui/Call;->setPreviousParentId(Ljava/lang/String;)V

    .line 591
    :cond_5
    :goto_1
    const-string v11, "phone_number_locator"

    invoke-static {v11}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    iget v11, p0, Lcom/android/incallui/Call;->mState:I

    const/4 v12, 0x4

    if-eq v11, v12, :cond_6

    iget v11, p0, Lcom/android/incallui/Call;->mState:I

    const/4 v12, 0x5

    if-eq v11, v12, :cond_6

    iget v11, p0, Lcom/android/incallui/Call;->mState:I

    const/4 v12, 0x6

    if-ne v11, v12, :cond_7

    .line 593
    :cond_6
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v9

    .line 594
    .local v9, "phoneIndex":I
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v7

    .line 595
    .local v7, "number":Ljava/lang/String;
    const-string v11, "ctc_country_code_locator"

    invoke-static {v11}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 596
    invoke-static {v9}, Lcom/android/incallui/operator/chn/PNLUtils;->checkRoamingCondition(I)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 597
    invoke-static {v7, v9}, Lcom/android/incallui/operator/chn/PNLUtils;->getCountryCodeLocator(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/incallui/Call;->mPhoneNumberLocator:Ljava/lang/String;

    .line 617
    .end local v7    # "number":Ljava/lang/String;
    .end local v9    # "phoneIndex":I
    :cond_7
    :goto_2
    iget-object v11, p0, Lcom/android/incallui/Call;->mLogState:Lcom/android/incallui/Call$LogState;

    iget-object v12, p0, Lcom/android/incallui/Call;->mLogState:Lcom/android/incallui/Call$LogState;

    iget v12, v12, Lcom/android/incallui/Call$LogState;->conferencedCalls:I

    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    iput v12, v11, Lcom/android/incallui/Call$LogState;->conferencedCalls:I

    .line 619
    iget-object v11, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v11}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/incallui/Call;->updateFromCallExtras(Landroid/os/Bundle;)V

    .line 622
    iget-object v11, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v11}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v4

    .line 623
    .local v4, "newHandle":Landroid/net/Uri;
    iget-object v11, p0, Lcom/android/incallui/Call;->mHandle:Landroid/net/Uri;

    invoke-static {v11, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 624
    iput-object v4, p0, Lcom/android/incallui/Call;->mHandle:Landroid/net/Uri;

    .line 625
    invoke-direct {p0}, Lcom/android/incallui/Call;->updateEmergencyCallState()V

    .line 630
    :cond_8
    iget-object v11, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v11}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telecom/Call$Details;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v5

    .line 631
    .local v5, "newPhoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    iget-object v11, p0, Lcom/android/incallui/Call;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v11, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 632
    iput-object v5, p0, Lcom/android/incallui/Call;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 634
    iget-object v11, p0, Lcom/android/incallui/Call;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    if-eqz v11, :cond_9

    .line 635
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/InCallPresenter;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v3

    .line 636
    .local v3, "mgr":Landroid/telecom/TelecomManager;
    iget-object v11, p0, Lcom/android/incallui/Call;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 637
    invoke-static {v3, v11}, Lcom/android/contacts/common/compat/telecom/TelecomManagerCompat;->getPhoneAccount(Landroid/telecom/TelecomManager;Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v8

    .line 638
    .local v8, "phoneAccount":Landroid/telecom/PhoneAccount;
    if-eqz v8, :cond_9

    .line 639
    const/16 v11, 0x40

    invoke-virtual {v8, v11}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/incallui/Call;->mIsCallSubjectSupported:Z

    .line 644
    .end local v3    # "mgr":Landroid/telecom/TelecomManager;
    .end local v8    # "phoneAccount":Landroid/telecom/PhoneAccount;
    :cond_9
    return-void

    .line 579
    .end local v4    # "newHandle":Landroid/net/Uri;
    .end local v5    # "newPhoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    :cond_a
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v14, v12}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    .line 580
    .local v1, "call":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 581
    .local v0, "bgCall":Lcom/android/incallui/Call;
    if-eqz v1, :cond_b

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->needToDisplayVzwNewConfCallUI(Lcom/android/incallui/Call;)Z

    move-result v11

    if-nez v11, :cond_c

    :cond_b
    if-eqz v0, :cond_d

    .line 582
    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->needToDisplayVzwNewConfCallUI(Lcom/android/incallui/Call;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 583
    :cond_c
    const-string v11, "keep previouParentId"

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 585
    :cond_d
    invoke-virtual {p0, v14}, Lcom/android/incallui/Call;->setPreviousParentId(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 598
    .end local v0    # "bgCall":Lcom/android/incallui/Call;
    .end local v1    # "call":Lcom/android/incallui/Call;
    .restart local v7    # "number":Ljava/lang/String;
    .restart local v9    # "phoneIndex":I
    :cond_e
    invoke-static {}, Lcom/android/incallui/operator/chn/PNLUtils;->isPhoneNumberLocatorActivited()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 599
    const-string v11, "phone_number_locator_tencent"

    invoke-static {v11}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 600
    invoke-static {}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->getInstance()Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr;->isServiceConnected()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 601
    invoke-static {v7}, Lcom/android/incallui/operator/chn/PNLUtils;->getPhoneNumberLocator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/incallui/Call;->mPhoneNumberLocator:Ljava/lang/String;

    goto/16 :goto_2

    .line 603
    :cond_f
    new-instance v11, Lcom/android/incallui/Call$2;

    invoke-direct {v11, p0, v7}, Lcom/android/incallui/Call$2;-><init>(Lcom/android/incallui/Call;Ljava/lang/String;)V

    invoke-static {v11}, Lcom/android/incallui/operator/chn/PNLUtils;->bindTencentPLNServer(Lcom/android/incallui/operator/chn/PhoneNumberLocatorServerMgr$IBindServerListener;)V

    goto/16 :goto_2

    .line 610
    :cond_10
    invoke-static {v7}, Lcom/android/incallui/operator/chn/PNLUtils;->getPhoneNumberLocator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/incallui/Call;->mPhoneNumberLocator:Ljava/lang/String;

    goto/16 :goto_2
.end method


# virtual methods
.method protected areCallExtrasCorrupted(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "callExtras"    # Landroid/os/Bundle;

    .prologue
    .line 669
    :try_start_0
    const-string v1, "android.telecom.extra.CHILD_ADDRESS"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    const/4 v1, 0x0

    .line 673
    :goto_0
    return v1

    .line 671
    :catch_0
    move-exception v0

    .line 672
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "CallExtras is corrupted, ignoring exception"

    invoke-static {p0, v1, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 673
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public blockCall()V
    .locals 3

    .prologue
    .line 833
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telecom/Call;->reject(ZLjava/lang/String;)V

    .line 834
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/android/incallui/Call;->setState(I)V

    .line 835
    return-void
.end method

.method public can(I)Z
    .locals 7
    .param p1, "capabilities"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 951
    iget-object v5, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v5}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telecom/Call$Details;->getCallCapabilities()I

    move-result v2

    .line 953
    .local v2, "supportedCapabilities":I
    and-int/lit8 v5, p1, 0x4

    if-eqz v5, :cond_1

    .line 956
    iget-object v5, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v5}, Landroid/telecom/Call;->getConferenceableCalls()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    and-int/lit8 v5, v2, 0x4

    if-nez v5, :cond_1

    .line 1003
    :cond_0
    :goto_0
    return v4

    .line 971
    :cond_1
    const/4 v5, 0x2

    and-int/lit8 v6, p1, 0x2

    if-ne v5, v6, :cond_2

    .line 972
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->canSupportHoldForVoLTE()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 976
    :cond_2
    and-int/lit8 v5, p1, 0x1

    if-ne v3, v5, :cond_4

    .line 977
    const-string v5, "feature_lgt"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 980
    const-string v5, "vzw_volte_ui"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain()Z

    move-result v5

    if-nez v5, :cond_0

    .line 981
    :cond_3
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v5

    if-nez v5, :cond_0

    .line 986
    :cond_4
    const-string v5, "ims_voice_conference_kddi"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x4

    and-int/lit8 v6, p1, 0x4

    if-ne v5, v6, :cond_6

    .line 989
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 990
    .local v0, "bgCall":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 992
    .local v1, "fgCall":Lcom/android/incallui/Call;
    if-eqz v0, :cond_5

    .line 993
    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsVoicePartyCall(Lcom/android/incallui/Call;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 997
    :cond_5
    if-eqz v1, :cond_6

    .line 998
    invoke-static {v1}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsVoicePartyCall(Lcom/android/incallui/Call;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1003
    .end local v0    # "bgCall":Lcom/android/incallui/Call;
    .end local v1    # "fgCall":Lcom/android/incallui/Call;
    :cond_6
    iget-object v5, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v5}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telecom/Call$Details;->getCallCapabilities()I

    move-result v5

    and-int/2addr v5, p1

    if-ne p1, v5, :cond_7

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_7
    move v3, v4

    goto :goto_1
.end method

.method public cancelModifyRequestDummy()V
    .locals 2

    .prologue
    .line 1344
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getModifyType()I

    move-result v0

    sget v1, Lcom/android/incallui/SecCall$ModifyType;->REQUEST_DUMMY:I

    if-ne v0, v1, :cond_0

    .line 1345
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    sget v1, Lcom/android/incallui/SecCall$ModifyType;->NONE:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecCall;->setModifyType(I)V

    .line 1347
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->onForceUpdateAsSecVideoState()V

    .line 1348
    return-void
.end method

.method public clearSelfChildCallIds()V
    .locals 1

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/android/incallui/Call;->mChildCallIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1052
    return-void
.end method

.method public getAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    return-object v0
.end method

.method public getCallSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lcom/android/incallui/Call;->mCallSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getCannedSmsResponses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 944
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getCannedTextResponses()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChildCallIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/android/incallui/Call;->mChildCallIds:Ljava/util/List;

    return-object v0
.end method

.method public getChildNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lcom/android/incallui/Call;->mChildNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 884
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCnapNamePresentation()I
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    .line 879
    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getCallerDisplayNamePresentation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getConnectTimeMillis()J
    .locals 2

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getConnectTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 2

    .prologue
    .line 928
    iget v0, p0, Lcom/android/incallui/Call;->mState:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/incallui/Call;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 929
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/Call;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 932
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/telecom/DisconnectCause;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telecom/DisconnectCause;-><init>(I)V

    goto :goto_0
.end method

.method public getDisconnectedByUser()Z
    .locals 1

    .prologue
    .line 1060
    iget-boolean v0, p0, Lcom/android/incallui/Call;->mDisconnectByUser:Z

    return v0
.end method

.method public getDomain()I
    .locals 1

    .prologue
    .line 1121
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    iget v0, v0, Lcom/android/incallui/SecCall;->domain:I

    return v0
.end method

.method public getEmergencyCallUpdateState()Z
    .locals 1

    .prologue
    .line 866
    iget-boolean v0, p0, Lcom/android/incallui/Call;->mEmergencyCallUpdateState:Z

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 892
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public getGatewayInfo()Landroid/telecom/GatewayInfo;
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v0

    return-object v0
.end method

.method public getHandle()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/android/incallui/Call;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getIllusion()Z
    .locals 1

    .prologue
    .line 1068
    iget-boolean v0, p0, Lcom/android/incallui/Call;->mIsIllusion:Z

    return v0
.end method

.method public getIntentExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getLastForwardedNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lcom/android/incallui/Call;->mLastForwardedNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getLogState()Lcom/android/incallui/Call$LogState;
    .locals 1

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/android/incallui/Call;->mLogState:Lcom/android/incallui/Call$LogState;

    return-object v0
.end method

.method public getMessageVoiceFromVideo()I
    .locals 1

    .prologue
    .line 1409
    iget v0, p0, Lcom/android/incallui/Call;->mShowMessageVoiceFromVideo:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-static {v0}, Lcom/android/incallui/util/TelecomCallUtil;->getNumber(Landroid/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getHandlePresentation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getOutgoingCallMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getOutgoingCallMessage(Landroid/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1081
    iget-object v2, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v2}, Landroid/telecom/Call;->getParent()Landroid/telecom/Call;

    move-result-object v0

    .line 1082
    .local v0, "parentCall":Landroid/telecom/Call;
    if-eqz v0, :cond_0

    .line 1083
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/incallui/CallList;->getCallByTelecomCall(Landroid/telecom/Call;)Lcom/android/incallui/Call;

    move-result-object v1

    .line 1084
    .local v1, "returnCall":Lcom/android/incallui/Call;
    if-eqz v1, :cond_0

    .line 1085
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    .line 1087
    .end local v1    # "returnCall":Lcom/android/incallui/Call;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getPhoneNumberLocator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/android/incallui/Call;->mPhoneNumberLocator:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 1331
    iget v0, p0, Lcom/android/incallui/Call;->mPhoneType:I

    if-ltz v0, :cond_0

    .line 1332
    iget v0, p0, Lcom/android/incallui/Call;->mPhoneType:I

    .line 1335
    :goto_0
    return v0

    .line 1334
    :cond_0
    invoke-static {p0}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getPhoneType(Lcom/android/incallui/Call;)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/Call;->mPhoneType:I

    .line 1335
    iget v0, p0, Lcom/android/incallui/Call;->mPhoneType:I

    goto :goto_0
.end method

.method public getPreviousParentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/android/incallui/Call;->mPreviousParentId:Ljava/lang/String;

    return-object v0
.end method

.method public getRadNumber()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1260
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 1261
    .local v0, "number":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isRoamingArea()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1264
    const/4 v1, 0x0

    .line 1265
    .local v1, "radNumber":Ljava/lang/String;
    const-string v2, "feature_skt"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "feature_ktt"

    .line 1266
    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1267
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1268
    invoke-static {v0}, Lcom/android/incallui/util/NameNumberUtils;->getRadDisplayNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1276
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRadNumber: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1279
    .end local v1    # "radNumber":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 1269
    .restart local v1    # "radNumber":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-static {v2}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsRadNumberConverted(Landroid/telecom/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1270
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1271
    iget-object v2, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-static {v2}, Lcom/android/incallui/util/SecCallExtraUtils;->getRadOriginalNumber(Landroid/telecom/Call;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1273
    :cond_3
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1274
    move-object v1, v0

    goto :goto_0

    .line 1279
    .end local v1    # "radNumber":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getRequestedVideoState()I
    .locals 1

    .prologue
    .line 1202
    iget v0, p0, Lcom/android/incallui/Call;->mRequestedVideoState:I

    return v0
.end method

.method public getRequestingVideoState()I
    .locals 1

    .prologue
    .line 1206
    iget v0, p0, Lcom/android/incallui/Call;->mRequestingVideoState:I

    return v0
.end method

.method public getSecCall()Lcom/android/incallui/SecCall;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/incallui/Call;->mSecCall:Lcom/android/incallui/SecCall;

    return-object v0
.end method

.method public getSessionModificationState()I
    .locals 1

    .prologue
    .line 1226
    iget v0, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    return v0
.end method

.method public getShowToastAsConnectVoice()Z
    .locals 1

    .prologue
    .line 1438
    iget-boolean v0, p0, Lcom/android/incallui/Call;->mShowToastAsConnectVoice:Z

    return v0
.end method

.method public getSmartCallLogInfoUpdated()Z
    .locals 1

    .prologue
    .line 1397
    iget-boolean v0, p0, Lcom/android/incallui/Call;->mIsSmartCallLogInfoUpdated:Z

    return v0
.end method

.method public getSmartCallSearching()Z
    .locals 1

    .prologue
    .line 1375
    iget-boolean v0, p0, Lcom/android/incallui/Call;->mSmartCallIsSearching:Z

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getParent()Landroid/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 847
    const/16 v0, 0xb

    .line 849
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/incallui/Call;->mState:I

    goto :goto_0
.end method

.method public getTelecomCall()Landroid/telecom/Call;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    return-object v0
.end method

.method public getTimeAddedMs()J
    .locals 2

    .prologue
    .line 825
    iget-wide v0, p0, Lcom/android/incallui/Call;->mTimeAddedMs:J

    return-wide v0
.end method

.method public getTwoPhoneNumber()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1360
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 1361
    .local v0, "number":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1362
    invoke-static {v0}, Lcom/android/incallui/util/NameNumberUtils;->getTwoPhoneDisplayNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1363
    .local v1, "twoPhoneNumber":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "twoPhoneNumber : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1366
    .end local v1    # "twoPhoneNumber":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/incallui/Call;->mVideoCallAdapter:Lcom/android/incallui/service/vt/VideoCallAdapter;

    return-object v0
.end method

.method public getVideoCall()Landroid/telecom/InCallService$VideoCall;
    .locals 1

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    return-object v0
.end method

.method public getVideoCallCallback()Lcom/android/incallui/InCallVideoCallCallback;
    .locals 1

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/android/incallui/Call;->mVideoCallCallback:Lcom/android/incallui/InCallVideoCallCallback;

    return-object v0
.end method

.method public getVideoPauseState()I
    .locals 1

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/android/incallui/Call;->mCallDetails:Lcom/android/incallui/CallDetails;

    iget v0, v0, Lcom/android/incallui/CallDetails;->videoPauseState:I

    return v0
.end method

.method public getVideoSettings()Lcom/android/incallui/Call$VideoSettings;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/incallui/Call;->mVideoSettings:Lcom/android/incallui/Call$VideoSettings;

    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v0

    return v0
.end method

.method public hasProperty(I)Z
    .locals 1
    .param p1, "property"    # I

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telecom/Call$Details;->hasProperty(I)Z

    move-result v0

    return v0
.end method

.method public hasVideoState()Z
    .locals 1

    .prologue
    .line 1101
    invoke-virtual {p0}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->isModifyProgressing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCallSubjectSupported()Z
    .locals 1

    .prologue
    .line 921
    iget-boolean v0, p0, Lcom/android/incallui/Call;->mIsCallSubjectSupported:Z

    return v0
.end method

.method public isConferenceCall()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1018
    invoke-virtual {p0, v0}, Lcom/android/incallui/Call;->hasProperty(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/incallui/util/CallTypeUtils;->isEnhancedVoiceConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmergencyCall()Z
    .locals 1

    .prologue
    .line 842
    iget-boolean v0, p0, Lcom/android/incallui/Call;->mIsEmergencyCall:Z

    return v0
.end method

.method public isEpdgCall()Z
    .locals 1

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsEpdgCall(Landroid/telecom/Call;)Z

    move-result v0

    return v0
.end method

.method public isModifyDummy()Z
    .locals 2

    .prologue
    .line 1113
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getModifyType()I

    move-result v0

    sget v1, Lcom/android/incallui/SecCall$ModifyType;->REQUEST_DUMMY:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isModifyProgressing()Z
    .locals 2

    .prologue
    .line 1109
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getModifyType()I

    move-result v0

    sget v1, Lcom/android/incallui/SecCall$ModifyType;->NONE:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPSDomain()Z
    .locals 2

    .prologue
    .line 1117
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    iget v0, v0, Lcom/android/incallui/SecCall;->domain:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTheOtherPartyOnHold()Z
    .locals 1

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/android/incallui/Call;->mSecCall:Lcom/android/incallui/SecCall;

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->isHoldedByTheOtherParty()Z

    move-result v0

    return v0
.end method

.method public isVideoCall()Z
    .locals 1

    .prologue
    .line 1105
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getVideoState()I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoCall(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1095
    invoke-virtual {p0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v0

    return v0
.end method

.method public isVideoCallReady()Z
    .locals 2

    .prologue
    .line 1039
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/incallui/Call;->mState:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logCallInitiationType()V
    .locals 4

    .prologue
    .line 1237
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1238
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getLogState()Lcom/android/incallui/Call$LogState;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/incallui/Call$LogState;->callInitiationMethod:I

    .line 1244
    :cond_0
    :goto_0
    return-void

    .line 1239
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1240
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getLogState()Lcom/android/incallui/Call$LogState;

    move-result-object v0

    .line 1241
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.android.dialer.EXTRA_CALL_INITIATION_TYPE"

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/incallui/Call$LogState;->callInitiationMethod:I

    goto :goto_0
.end method

.method protected onBackground()V
    .locals 2

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/android/incallui/Call;->mVideoCallAdapter:Lcom/android/incallui/service/vt/VideoCallAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->onBackgound(Z)V

    .line 740
    :cond_0
    return-void
.end method

.method public onForceUpdateAsSecVideoState()V
    .locals 1

    .prologue
    .line 1351
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->setSecVideoState()V

    .line 1352
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    .line 1353
    return-void
.end method

.method protected onForeground()V
    .locals 2

    .prologue
    .line 727
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 728
    invoke-virtual {p0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 729
    iget-object v0, p0, Lcom/android/incallui/Call;->mVideoCallAdapter:Lcom/android/incallui/service/vt/VideoCallAdapter;

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->onForeground(Landroid/telecom/InCallService$VideoCall;)V

    .line 734
    :cond_0
    :goto_0
    return-void

    .line 731
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/Call;->mVideoCallAdapter:Lcom/android/incallui/service/vt/VideoCallAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->onBackgound(Z)V

    goto :goto_0
.end method

.method public resetInCallUIFeature()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1384
    iget-object v0, p0, Lcom/android/incallui/Call;->mSecCall:Lcom/android/incallui/SecCall;

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getFakeSalesCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSecCall.getFakeSalesCode(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/Call;->mSecCall:Lcom/android/incallui/SecCall;

    invoke-virtual {v1}, Lcom/android/incallui/SecCall;->getFakeSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1386
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/Call;->mSecCall:Lcom/android/incallui/SecCall;

    invoke-virtual {v1}, Lcom/android/incallui/SecCall;->getFakeSalesCode()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/InCallUIFeature;->makeFeature(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1387
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->makeConfig()V

    .line 1390
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/Call;->mSecCall:Lcom/android/incallui/SecCall;

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getFakeSmartCallFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSecCall.getFakeSmartCallFeature(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/Call;->mSecCall:Lcom/android/incallui/SecCall;

    invoke-virtual {v1}, Lcom/android/incallui/SecCall;->getFakeSmartCallFeature()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1392
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/Call;->mSecCall:Lcom/android/incallui/SecCall;

    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->getFakeSmartCallFeature()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/incallui/InCallUIFeature;->makeFeature(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1394
    :cond_1
    return-void
.end method

.method public setDisconnectCause(Landroid/telecom/DisconnectCause;)V
    .locals 2
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 936
    iput-object p1, p0, Lcom/android/incallui/Call;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 937
    iget-object v0, p0, Lcom/android/incallui/Call;->mLogState:Lcom/android/incallui/Call$LogState;

    iget-object v1, p0, Lcom/android/incallui/Call;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    iput-object v1, v0, Lcom/android/incallui/Call$LogState;->disconnectCause:Landroid/telecom/DisconnectCause;

    .line 938
    return-void
.end method

.method public setDisconnectedByUser(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 1056
    iput-boolean p1, p0, Lcom/android/incallui/Call;->mDisconnectByUser:Z

    .line 1057
    return-void
.end method

.method public setEmergencyCallUpdateState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 870
    iput-boolean p1, p0, Lcom/android/incallui/Call;->mEmergencyCallUpdateState:Z

    .line 871
    return-void
.end method

.method public setIllusion(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 1064
    iput-boolean p1, p0, Lcom/android/incallui/Call;->mIsIllusion:Z

    .line 1065
    return-void
.end method

.method public setMessageVoiceFromVideo(I)V
    .locals 0
    .param p1, "message"    # I

    .prologue
    .line 1405
    iput p1, p0, Lcom/android/incallui/Call;->mShowMessageVoiceFromVideo:I

    .line 1406
    return-void
.end method

.method public setModifyRequestDummy()V
    .locals 2

    .prologue
    .line 1339
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    sget v1, Lcom/android/incallui/SecCall$ModifyType;->REQUEST_DUMMY:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecCall;->setModifyType(I)V

    .line 1340
    invoke-virtual {p0}, Lcom/android/incallui/Call;->onForceUpdateAsSecVideoState()V

    .line 1341
    return-void
.end method

.method public setPhoneNumberLocator(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumberLocator"    # Ljava/lang/String;

    .prologue
    .line 1252
    iput-object p1, p0, Lcom/android/incallui/Call;->mPhoneNumberLocator:Ljava/lang/String;

    .line 1253
    return-void
.end method

.method public setPreviousParentId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1072
    iput-object p1, p0, Lcom/android/incallui/Call;->mPreviousParentId:Ljava/lang/String;

    .line 1073
    return-void
.end method

.method public setRequestedVideoState(I)V
    .locals 2
    .param p1, "videoState"    # I

    .prologue
    .line 1135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRequestedVideoState - video state= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1136
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 1137
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    .line 1138
    const-string v0, "setRequestedVideoState - Clearing session modification state"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1151
    :cond_0
    :goto_0
    return-void

    .line 1142
    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    .line 1143
    iput p1, p0, Lcom/android/incallui/Call;->mRequestedVideoState:I

    .line 1144
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallList;->onUpgradeToVideo(Lcom/android/incallui/Call;)V

    .line 1146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRequestedVideoState - mSessionModificationState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " video state= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1148
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/incallui/util/VideoCallUtils;->needToUpdateModificationState(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1149
    invoke-direct {p0}, Lcom/android/incallui/Call;->update()V

    goto :goto_0
.end method

.method public setRequestingVideoState(I)V
    .locals 2
    .param p1, "videoState"    # I

    .prologue
    .line 1154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRequestingVideoState - video state= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1156
    iput p1, p0, Lcom/android/incallui/Call;->mRequestingVideoState:I

    .line 1158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRequestingVideoState - mSessionModificationState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " video state= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1160
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/incallui/util/VideoCallUtils;->needToUpdateModificationState(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1161
    invoke-direct {p0}, Lcom/android/incallui/Call;->update()V

    .line 1163
    :cond_0
    return-void
.end method

.method public setSelfChildCallIds()V
    .locals 2

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/android/incallui/Call;->mChildCallIds:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1048
    return-void
.end method

.method public setSessionModificationState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 1172
    iget v1, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 1173
    .local v0, "hasChanged":Z
    :goto_0
    iput p1, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    .line 1174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSessionModificationState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSessionModificationState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1176
    if-eqz v0, :cond_0

    .line 1177
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/android/incallui/CallList;->onSessionModificationStateChange(Lcom/android/incallui/Call;I)V

    .line 1179
    :cond_0
    return-void

    .line 1172
    .end local v0    # "hasChanged":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSessionModificationState(IZ)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "forceUpdate"    # Z

    .prologue
    .line 1182
    invoke-virtual {p0, p1}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    .line 1183
    if-eqz p2, :cond_0

    .line 1184
    invoke-direct {p0}, Lcom/android/incallui/Call;->update()V

    .line 1186
    :cond_0
    return-void
.end method

.method public setShowToastAsConnectVoice(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 1434
    iput-boolean p1, p0, Lcom/android/incallui/Call;->mShowToastAsConnectVoice:Z

    .line 1435
    return-void
.end method

.method public setSmartCallLogInfoUpdated(Z)V
    .locals 2
    .param p1, "mUpdate"    # Z

    .prologue
    .line 1379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSmartCallLogInfoUpdated  mUpdate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1380
    iput-boolean p1, p0, Lcom/android/incallui/Call;->mIsSmartCallLogInfoUpdated:Z

    .line 1381
    return-void
.end method

.method public setSmartCallSearching(Z)V
    .locals 2
    .param p1, "mIsSearching"    # Z

    .prologue
    .line 1370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSmartCallSearching  mIsSearching : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1371
    iput-boolean p1, p0, Lcom/android/incallui/Call;->mSmartCallIsSearching:Z

    .line 1372
    return-void
.end method

.method public setState(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    const-wide/16 v0, 0x0

    const/4 v4, 0x1

    .line 854
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 855
    iput p1, p0, Lcom/android/incallui/Call;->mState:I

    .line 856
    iget v2, p0, Lcom/android/incallui/Call;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 857
    iget-object v0, p0, Lcom/android/incallui/Call;->mLogState:Lcom/android/incallui/Call$LogState;

    iput-boolean v4, v0, Lcom/android/incallui/Call$LogState;->isIncoming:Z

    .line 862
    :cond_0
    :goto_0
    return-void

    .line 858
    :cond_1
    iget v2, p0, Lcom/android/incallui/Call;->mState:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 859
    iget-object v2, p0, Lcom/android/incallui/Call;->mLogState:Lcom/android/incallui/Call$LogState;

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v4

    cmp-long v3, v4, v0

    if-nez v3, :cond_2

    .line 860
    :goto_1
    iput-wide v0, v2, Lcom/android/incallui/Call$LogState;->duration:J

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v4

    sub-long/2addr v0, v4

    goto :goto_1
.end method

.method public setVideoPauseState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1418
    iget-object v1, p0, Lcom/android/incallui/Call;->mCallDetails:Lcom/android/incallui/CallDetails;

    iget v1, v1, Lcom/android/incallui/CallDetails;->videoPauseState:I

    if-eq p1, v1, :cond_0

    .line 1419
    iget-object v1, p0, Lcom/android/incallui/Call;->mCallDetails:Lcom/android/incallui/CallDetails;

    iget v0, v1, Lcom/android/incallui/CallDetails;->videoPauseState:I

    .line 1420
    .local v0, "before":I
    iget-object v1, p0, Lcom/android/incallui/Call;->mCallDetails:Lcom/android/incallui/CallDetails;

    iput p1, v1, Lcom/android/incallui/CallDetails;->videoPauseState:I

    .line 1421
    invoke-static {}, Lcom/android/incallui/VideoPauseController;->getInstance()Lcom/android/incallui/VideoPauseController;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/incallui/VideoPauseController;->notifyVideoPauseStateChanged(Lcom/android/incallui/Call;I)V

    .line 1423
    .end local v0    # "before":I
    :cond_0
    return-void
.end method

.method public toSimpleString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1401
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    if-nez v0, :cond_0

    .line 1314
    iget-object v0, p0, Lcom/android/incallui/Call;->mId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1317
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "[%s, %s, %s, children:%s, parent:%s, conferenceable:%s, videoState:%s, mSessionModificationState:%d, VideoSettings:%s]"

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/incallui/Call;->mId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 1320
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    .line 1321
    invoke-virtual {v4}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/Call$Details;->getCallCapabilities()I

    move-result v4

    invoke-static {v4}, Landroid/telecom/Call$Details;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/incallui/Call;->mChildCallIds:Ljava/util/List;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    .line 1323
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getParentId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    .line 1324
    invoke-virtual {v4}, Landroid/telecom/Call;->getConferenceableCalls()Ljava/util/List;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/android/incallui/Call;->mTelecomCall:Landroid/telecom/Call;

    .line 1325
    invoke-virtual {v4}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v4

    invoke-static {v4}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget v4, p0, Lcom/android/incallui/Call;->mSessionModificationState:I

    .line 1326
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    .line 1327
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoSettings()Lcom/android/incallui/Call$VideoSettings;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1317
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected updateFromCallExtras(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "callExtras"    # Landroid/os/Bundle;

    .prologue
    .line 678
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/Call;->areCallExtrasCorrupted(Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 724
    :cond_0
    :goto_0
    return-void

    .line 685
    :cond_1
    iget-object v4, p0, Lcom/android/incallui/Call;->mCallDetails:Lcom/android/incallui/CallDetails;

    invoke-virtual {v4, p1}, Lcom/android/incallui/CallDetails;->updateFromCallExtras(Landroid/os/Bundle;)V

    .line 687
    const-string v4, "android.telecom.extra.CHILD_ADDRESS"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 688
    const-string v4, "android.telecom.extra.CHILD_ADDRESS"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 689
    .local v1, "childNumber":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/incallui/Call;->mChildNumber:Ljava/lang/String;

    invoke-static {v1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 690
    iput-object v1, p0, Lcom/android/incallui/Call;->mChildNumber:Ljava/lang/String;

    .line 691
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/incallui/CallList;->onChildNumberChange(Lcom/android/incallui/Call;)V

    .line 698
    .end local v1    # "childNumber":Ljava/lang/String;
    :cond_2
    const-string v4, "android.telecom.extra.LAST_FORWARDED_NUMBER"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 699
    const-string v4, "android.telecom.extra.LAST_FORWARDED_NUMBER"

    .line 700
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 702
    .local v3, "lastForwardedNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_4

    .line 703
    const/4 v2, 0x0

    .line 704
    .local v2, "lastForwardedNumber":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 706
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 705
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "lastForwardedNumber":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 709
    .restart local v2    # "lastForwardedNumber":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/incallui/Call;->mLastForwardedNumber:Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 710
    iput-object v2, p0, Lcom/android/incallui/Call;->mLastForwardedNumber:Ljava/lang/String;

    .line 711
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/incallui/CallList;->onLastForwardedNumberChange(Lcom/android/incallui/Call;)V

    .line 718
    .end local v2    # "lastForwardedNumber":Ljava/lang/String;
    .end local v3    # "lastForwardedNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const-string v4, "android.telecom.extra.CALL_SUBJECT"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 719
    const-string v4, "android.telecom.extra.CALL_SUBJECT"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 720
    .local v0, "callSubject":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/incallui/Call;->mCallSubject:Ljava/lang/String;

    invoke-static {v4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 721
    iput-object v0, p0, Lcom/android/incallui/Call;->mCallSubject:Ljava/lang/String;

    goto :goto_0
.end method

.method public updateRightNow(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 502
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    .line 503
    return-void
.end method
