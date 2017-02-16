.class public Lcom/android/incallui/service/vt/VideoCallManager;
.super Ljava/lang/Object;
.source "VideoCallManager.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallUiEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/service/vt/VideoCallManager$ActivityState;,
        Lcom/android/incallui/service/vt/VideoCallManager$CallContext;,
        Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCallManager - "

.field private static sInstance:Lcom/android/incallui/service/vt/VideoCallManager;


# instance fields
.field private mActivityState:I

.field private mFullScreenModeManager:Lcom/android/incallui/service/vt/FullScreenModeManager;

.field private mInCallActivity:Lcom/android/incallui/InCallActivity;

.field private mInCallRotationEventListener:Lcom/android/incallui/service/vt/InCallRotationEventListener;

.field private mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

.field private mVideoCallCallbackManager:Lcom/android/incallui/service/vt/VideoCallCallbackManager;

.field private mVideoCallEventHandler:Lcom/android/incallui/service/vt/VideoCallEventHandler;

.field private mVideoDetails:Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/service/vt/VideoCallManager;->sInstance:Lcom/android/incallui/service/vt/VideoCallManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;-><init>(Lcom/android/incallui/service/vt/VideoCallManager;)V

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoDetails:Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;

    .line 43
    new-instance v0, Lcom/android/incallui/service/vt/FullScreenModeManager;

    invoke-direct {v0}, Lcom/android/incallui/service/vt/FullScreenModeManager;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mFullScreenModeManager:Lcom/android/incallui/service/vt/FullScreenModeManager;

    .line 44
    iput-object v1, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallRotationEventListener:Lcom/android/incallui/service/vt/InCallRotationEventListener;

    .line 45
    new-instance v0, Lcom/android/incallui/service/vt/VideoCallCallbackManager;

    invoke-direct {v0}, Lcom/android/incallui/service/vt/VideoCallCallbackManager;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoCallCallbackManager:Lcom/android/incallui/service/vt/VideoCallCallbackManager;

    .line 46
    iput-object v1, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    .line 47
    iput-object v1, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mActivityState:I

    .line 50
    new-instance v0, Lcom/android/incallui/service/vt/VideoCallManager$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/vt/VideoCallManager$1;-><init>(Lcom/android/incallui/service/vt/VideoCallManager;)V

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoCallEventHandler:Lcom/android/incallui/service/vt/VideoCallEventHandler;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/service/vt/VideoCallManager;)Lcom/android/incallui/service/vt/InCallRotationEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/service/vt/VideoCallManager;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallRotationEventListener:Lcom/android/incallui/service/vt/InCallRotationEventListener;

    return-object v0
.end method

.method private static areSame(Lcom/android/incallui/Call;Lcom/android/incallui/service/vt/VideoCallManager$CallContext;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;
    .param p1, "callContext"    # Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    .prologue
    .line 583
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 584
    const/4 v0, 0x1

    .line 588
    :goto_0
    return v0

    .line 585
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 586
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 588
    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->getCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private checkForVideoResolutionChange(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 397
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v1, :cond_0

    .line 398
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v0

    .line 399
    .local v0, "metrics":Lcom/android/incallui/service/vt/VideoCallMetrics;
    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {v0, p1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->checkForVideoResolution(Lcom/android/incallui/Call;)V

    .line 403
    .end local v0    # "metrics":Lcom/android/incallui/service/vt/VideoCallMetrics;
    :cond_0
    return-void
.end method

.method private disableRoationEventListener()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallRotationEventListener:Lcom/android/incallui/service/vt/InCallRotationEventListener;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallRotationEventListener:Lcom/android/incallui/service/vt/InCallRotationEventListener;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->disable()V

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallRotationEventListener:Lcom/android/incallui/service/vt/InCallRotationEventListener;

    .line 366
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/service/vt/VideoCallManager;
    .locals 2

    .prologue
    .line 80
    const-class v1, Lcom/android/incallui/service/vt/VideoCallManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallManager;->sInstance:Lcom/android/incallui/service/vt/VideoCallManager;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/android/incallui/service/vt/VideoCallManager;

    invoke-direct {v0}, Lcom/android/incallui/service/vt/VideoCallManager;-><init>()V

    sput-object v0, Lcom/android/incallui/service/vt/VideoCallManager;->sInstance:Lcom/android/incallui/service/vt/VideoCallManager;

    .line 83
    :cond_0
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallManager;->sInstance:Lcom/android/incallui/service/vt/VideoCallManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isInMultiWindowMode()Z
    .locals 2

    .prologue
    .line 410
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v1, :cond_0

    .line 411
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v0

    .line 412
    .local v0, "metrics":Lcom/android/incallui/service/vt/VideoCallMetrics;
    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isInMultiWindowMode()Z

    move-result v1

    .line 416
    .end local v0    # "metrics":Lcom/android/incallui/service/vt/VideoCallMetrics;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSupportRotationTemporary()Z
    .locals 1

    .prologue
    .line 406
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->DEVICE_ROTATION:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallManager;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCallStateChanged(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallManager - onCallStateChanged - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallManager;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->base(Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method private onCallSwapped(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallManager - onCallSwapped - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallManager;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->base(Ljava/lang/String;)V

    .line 199
    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->updateRoationEventListener(Lcom/android/incallui/Call;)V

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->checkAndUpdateScreenType(Lcom/android/incallui/Call;)V

    .line 201
    return-void
.end method

.method private onCameraRotationStatusChanged(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallManager - onCameraRotationStatusChanged - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallManager;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->base(Ljava/lang/String;)V

    .line 245
    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->updateRoationEventListener(Lcom/android/incallui/Call;)V

    .line 246
    invoke-virtual {p0, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->checkAndUpdateScreenType(Lcom/android/incallui/Call;)V

    .line 247
    return-void
.end method

.method private onDisconnect(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoDetails:Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;->clear()V

    .line 205
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallManager;->disableRoationEventListener()V

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallManager - onDisconnect - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallManager;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->base(Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method private onDomainChanged(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallManager - onDomainChanged - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallManager;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->base(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method private onModified(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallManager - onModified - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallManager;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->base(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method private onModifyProgressing(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallManager - onModifyProgressing - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallManager;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->base(Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method private onNewCall(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallManager - onNewCall - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallManager;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->base(Ljava/lang/String;)V

    .line 193
    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->updateRoationEventListener(Lcom/android/incallui/Call;)V

    .line 194
    invoke-virtual {p0, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->checkAndUpdateScreenType(Lcom/android/incallui/Call;)V

    .line 195
    return-void
.end method

.method private onSessionIdChanged(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallManager - onSessionIdChanged - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallManager;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->base(Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method private onStateChange(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 137
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    invoke-static {p1, v1}, Lcom/android/incallui/service/vt/VideoCallManager;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/service/vt/VideoCallManager$CallContext;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 138
    .local v0, "isPrimaryCallChanged":Z
    :goto_0
    if-eqz p1, :cond_1

    .line 139
    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/CallList;->isAlive(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 140
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    if-eqz v1, :cond_3

    .line 141
    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->onCallSwapped(Lcom/android/incallui/Call;)V

    .line 171
    :cond_0
    :goto_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/CallList;->isAlive(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->checkForVideoResolutionChange(Lcom/android/incallui/Call;)V

    .line 175
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->updatePrimaryCallContext(Lcom/android/incallui/Call;)V

    .line 176
    return-void

    .line 137
    .end local v0    # "isPrimaryCallChanged":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 143
    .restart local v0    # "isPrimaryCallChanged":Z
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->onNewCall(Lcom/android/incallui/Call;)V

    goto :goto_1

    .line 146
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    if-eqz v1, :cond_0

    .line 147
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/CallList;->isAlive(Lcom/android/incallui/Call;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 148
    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->onDisconnect(Lcom/android/incallui/Call;)V

    goto :goto_1

    .line 150
    :cond_5
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->getDomain()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getDomain()I

    move-result v2

    if-eq v1, v2, :cond_6

    .line 151
    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->onDomainChanged(Lcom/android/incallui/Call;)V

    .line 153
    :cond_6
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    invoke-virtual {v1, p1}, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->isVideoCallChanged(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 154
    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->onVideoCallChanged(Lcom/android/incallui/Call;)V

    .line 156
    :cond_7
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->getSessionId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->getSessionId()I

    move-result v2

    if-eq v1, v2, :cond_8

    .line 157
    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->onSessionIdChanged(Lcom/android/incallui/Call;)V

    .line 159
    :cond_8
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    invoke-virtual {v1, p1}, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->isVideoSessionChanged(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 160
    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->onVideoSessionChanged(Lcom/android/incallui/Call;)V

    .line 162
    :cond_9
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->getState()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    if-eq v1, v2, :cond_a

    .line 163
    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->onCallStateChanged(Lcom/android/incallui/Call;)V

    .line 165
    :cond_a
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->isSupportCameraRotation()Z

    move-result v1

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallControl;->canUseScreenTypeSensor(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 166
    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->onCameraRotationStatusChanged(Lcom/android/incallui/Call;)V

    goto/16 :goto_1
.end method

.method private onVideoCallChanged(Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 210
    const-string v0, "VideoCallManager - onVideoCallChanged"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->base(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method private onVideoSessionChanged(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->getVideoState()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/SecCall;->getVideoState()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 215
    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->onModified(Lcom/android/incallui/Call;)V

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->isVideo()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isModifyProgressing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->onModifyProgressing(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method public static toString(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 4
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 545
    if-eqz p0, :cond_0

    .line 546
    const-string v0, " CallContext {CallId=%s, State=%s, VideoState=%d, SessionId=%d, VideoSession=%s}"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 547
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-static {v3}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/SecCall;->getVideoState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/SecCall;->getSessionId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 546
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 549
    :goto_0
    return-object v0

    :cond_0
    const-string v0, " CallContext {NULL}"

    goto :goto_0
.end method

.method private updatePrimaryCallContext(Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 179
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallList;->isAlive(Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    const/4 p1, 0x0

    .line 182
    :cond_0
    if-nez p1, :cond_1

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    .line 189
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    invoke-virtual {v0, p1}, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->update(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 187
    :cond_2
    new-instance v0, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    invoke-direct {v0, p0, p1}, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;-><init>(Lcom/android/incallui/service/vt/VideoCallManager;Lcom/android/incallui/Call;)V

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    goto :goto_0
.end method

.method private updateRoationEventListener(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 329
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/CallList;->isAlive(Lcom/android/incallui/Call;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 330
    const/4 p1, 0x0

    .line 332
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallControl;->isSupportOnlyLandscapeUI(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 333
    .local v0, "isOnlyLandUI":Z
    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isPSDomain()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 334
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallRotationEventListener:Lcom/android/incallui/service/vt/InCallRotationEventListener;

    if-nez v1, :cond_2

    .line 335
    new-instance v1, Lcom/android/incallui/service/vt/VideoCallManager$2;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/incallui/service/vt/VideoCallManager$2;-><init>(Lcom/android/incallui/service/vt/VideoCallManager;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallRotationEventListener:Lcom/android/incallui/service/vt/InCallRotationEventListener;

    .line 349
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallRotationEventListener:Lcom/android/incallui/service/vt/InCallRotationEventListener;

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallManager;->isUiShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->onUiShowing(Z)V

    .line 353
    :goto_1
    return-void

    .line 332
    .end local v0    # "isOnlyLandUI":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 351
    .restart local v0    # "isOnlyLandUI":Z
    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallManager;->disableRoationEventListener()V

    goto :goto_1
.end method


# virtual methods
.method public checkAndUpdateScreenType(Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->checkAndUpdateScreenType(Lcom/android/incallui/Call;)V

    .line 394
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 420
    const-string v0, "VideoCallManager - clear"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->base(Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mFullScreenModeManager:Lcom/android/incallui/service/vt/FullScreenModeManager;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/FullScreenModeManager;->clear()V

    .line 422
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoDetails:Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;->clear()V

    .line 423
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    .line 424
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallManager;->disableRoationEventListener()V

    .line 425
    return-void
.end method

.method public disableFullScreenMode()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mFullScreenModeManager:Lcom/android/incallui/service/vt/FullScreenModeManager;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/FullScreenModeManager;->disable()V

    .line 310
    return-void
.end method

.method public enableFullScreenMode()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mFullScreenModeManager:Lcom/android/incallui/service/vt/FullScreenModeManager;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/FullScreenModeManager;->enable()V

    .line 306
    return-void
.end method

.method public getCapturedLocalFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoDetails:Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;

    iget-object v0, v0, Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;->capturedHideMeImage:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentDeviceRoation()I
    .locals 2

    .prologue
    .line 369
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getDisplayRotation()I

    move-result v0

    .line 370
    .local v0, "rotation":I
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallRotationEventListener:Lcom/android/incallui/service/vt/InCallRotationEventListener;

    if-eqz v1, :cond_0

    .line 371
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallRotationEventListener:Lcom/android/incallui/service/vt/InCallRotationEventListener;

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->getDeviceRotation()I

    move-result v0

    .line 373
    :cond_0
    return v0
.end method

.method public getVideoDetails()Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoDetails:Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;

    return-object v0
.end method

.method public isEnabledRoationEventListener()Z
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallRotationEventListener:Lcom/android/incallui/service/vt/InCallRotationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallRotationEventListener:Lcom/android/incallui/service/vt/InCallRotationEventListener;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnoughSpaceForAnswer()Z
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoDetails:Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;

    iget-boolean v0, v0, Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;->isEnoughSpaceForAnswer:Z

    return v0
.end method

.method public isExchangedViews()Z
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoDetails:Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;

    iget-boolean v0, v0, Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;->isExchangedViews:Z

    return v0
.end method

.method public isIsSwapProgressing()Z
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoDetails:Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;

    iget-boolean v0, v0, Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;->isSwapProgressing:Z

    return v0
.end method

.method public isLivePreview()Z
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoDetails:Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;

    iget-boolean v0, v0, Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;->isLivePreview:Z

    return v0
.end method

.method public isScreenResized()Z
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoDetails:Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;

    iget-boolean v0, v0, Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;->isScreenResized:Z

    return v0
.end method

.method public isSwitchCameraClicked()Z
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoDetails:Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;

    iget-boolean v0, v0, Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;->isSwitchCameraClicked:Z

    return v0
.end method

.method public isUiShowing()Z
    .locals 2

    .prologue
    .line 521
    iget v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mActivityState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mActivityState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityDestroyed(Lcom/android/incallui/InCallActivity;)V
    .locals 1
    .param p1, "inCallActivity"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-ne v0, p1, :cond_0

    .line 465
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/VideoCallManager;->onActivityStateChanged(I)V

    .line 466
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 470
    :goto_0
    return-void

    .line 468
    :cond_0
    const-string v0, "onActivityDestroyed - ignored this state"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityPaused(Lcom/android/incallui/InCallActivity;)V
    .locals 1
    .param p1, "inCallActivity"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-ne v0, p1, :cond_0

    .line 449
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/VideoCallManager;->onActivityStateChanged(I)V

    .line 453
    :goto_0
    return-void

    .line 451
    :cond_0
    const-string v0, "onActivityPaused - ignored this state"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityResumed(Lcom/android/incallui/InCallActivity;)V
    .locals 1
    .param p1, "inCallActivity"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-ne v0, p1, :cond_0

    .line 441
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/VideoCallManager;->onActivityStateChanged(I)V

    .line 445
    :goto_0
    return-void

    .line 443
    :cond_0
    const-string v0, "onActivityResumed - ignored this state"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityStarted(Lcom/android/incallui/InCallActivity;)V
    .locals 1
    .param p1, "inCallActivity"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eq v0, p1, :cond_0

    .line 433
    const-string v0, "onActivityStarted - changed activity instance "

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->debug(Ljava/lang/String;)V

    .line 435
    :cond_0
    iput-object p1, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 436
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/VideoCallManager;->onActivityStateChanged(I)V

    .line 437
    return-void
.end method

.method public onActivityStateChanged(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v4, 0x1

    .line 477
    iget v2, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mActivityState:I

    if-eq v2, p1, :cond_0

    .line 478
    iget v1, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mActivityState:I

    .line 479
    .local v1, "oldActivityState":I
    iput p1, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mActivityState:I

    .line 480
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/VideoCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 481
    .local v0, "aliveCall":Lcom/android/incallui/Call;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VideoCallManager - onActivityStateChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallManager$ActivityState;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mActivityState:I

    invoke-static {v3}, Lcom/android/incallui/service/vt/VideoCallManager$ActivityState;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->base(Ljava/lang/String;)V

    .line 482
    packed-switch p1, :pswitch_data_0

    .line 510
    .end local v0    # "aliveCall":Lcom/android/incallui/Call;
    .end local v1    # "oldActivityState":I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 485
    .restart local v0    # "aliveCall":Lcom/android/incallui/Call;
    .restart local v1    # "oldActivityState":I
    :pswitch_1
    if-eqz v0, :cond_1

    .line 486
    invoke-direct {p0, v0}, Lcom/android/incallui/service/vt/VideoCallManager;->updateRoationEventListener(Lcom/android/incallui/Call;)V

    .line 487
    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/VideoCallManager;->checkAndUpdateScreenType(Lcom/android/incallui/Call;)V

    .line 489
    :cond_1
    invoke-static {}, Lcom/android/incallui/VideoPauseController;->getInstance()Lcom/android/incallui/VideoPauseController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/VideoPauseController;->isUiShowing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 490
    invoke-static {}, Lcom/android/incallui/VideoPauseController;->getInstance()Lcom/android/incallui/VideoPauseController;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/incallui/VideoPauseController;->onUiShowing(Z)V

    .line 492
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallManager;->resumeCameraForActivityState()V

    goto :goto_0

    .line 500
    :pswitch_2
    if-eqz v0, :cond_3

    .line 501
    invoke-direct {p0, v0}, Lcom/android/incallui/service/vt/VideoCallManager;->updateRoationEventListener(Lcom/android/incallui/Call;)V

    .line 503
    :cond_3
    invoke-static {}, Lcom/android/incallui/VideoPauseController;->getInstance()Lcom/android/incallui/VideoPauseController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/VideoPauseController;->isUiShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 504
    invoke-static {}, Lcom/android/incallui/VideoPauseController;->getInstance()Lcom/android/incallui/VideoPauseController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/incallui/VideoPauseController;->onUiShowing(Z)V

    .line 506
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallManager;->pauseCameraForActivityState()V

    goto :goto_0

    .line 482
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onActivityStopped(Lcom/android/incallui/InCallActivity;)V
    .locals 1
    .param p1, "inCallActivity"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-ne v0, p1, :cond_0

    .line 457
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/VideoCallManager;->onActivityStateChanged(I)V

    .line 461
    :goto_0
    return-void

    .line 459
    :cond_0
    const-string v0, "onActivityStopped - ignored this state"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDisplayRotationChanged(I)V
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->onDisplayRotationChanged(I)V

    .line 359
    :cond_0
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 132
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->updateVideoSeeeion()V

    .line 133
    invoke-direct {p0, p3}, Lcom/android/incallui/service/vt/VideoCallManager;->onStateChange(Lcom/android/incallui/Call;)V

    .line 134
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMultiWindowModeChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->debug(Ljava/lang/String;)V

    .line 474
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 3
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 125
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->updateVideoSeeeion()V

    .line 126
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p3, v1, v2}, Lcom/android/incallui/util/VideoCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 127
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-direct {p0, v0}, Lcom/android/incallui/service/vt/VideoCallManager;->onStateChange(Lcom/android/incallui/Call;)V

    .line 128
    return-void
.end method

.method public onVideoCallUiEvent(I)V
    .locals 4
    .param p1, "event"    # I

    .prologue
    .line 107
    packed-switch p1, :pswitch_data_0

    .line 121
    :goto_0
    return-void

    .line 109
    :pswitch_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/VideoCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 110
    .local v0, "aliveCall":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 111
    invoke-direct {p0, v0}, Lcom/android/incallui/service/vt/VideoCallManager;->updateRoationEventListener(Lcom/android/incallui/Call;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallManager;->resetDeviceRotatoin()V

    goto :goto_0

    .line 114
    :cond_0
    const-string v1, "VideoCallManager - ACCELEROMETER_CHANGED : Alive call is NULL"

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->base(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
    .end packed-switch
.end method

.method public pauseCameraForActivityState()V
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->getCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->isAliveVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoCallEventHandler:Lcom/android/incallui/service/vt/VideoCallEventHandler;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallEventHandler;->pauseCameraForActivityState()V

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoCallEventHandler:Lcom/android/incallui/service/vt/VideoCallEventHandler;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallEventHandler;->cancelCameraEvent()V

    .line 538
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v0, :cond_0

    .line 539
    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/incallui/PrivatePolicy;->setStatus(I)V

    goto :goto_0
.end method

.method public resetDeviceRotatoin()V
    .locals 3

    .prologue
    .line 377
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallRotationEventListener:Lcom/android/incallui/service/vt/InCallRotationEventListener;

    if-eqz v1, :cond_1

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoCallManager - resetDeviceRotatoin - isEnabledAutoRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallRotationEventListener:Lcom/android/incallui/service/vt/InCallRotationEventListener;

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->isEnabledAutoRotation()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->rotation(Ljava/lang/String;)V

    .line 379
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallRotationEventListener:Lcom/android/incallui/service/vt/InCallRotationEventListener;

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->resetDeviceRotatoin()V

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallList;->getFirstCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v0

    .line 382
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {v0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallManager;->getCurrentDeviceRoation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setDeviceRotatoin(I)V

    goto :goto_0
.end method

.method public resetFullScreenMode()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mFullScreenModeManager:Lcom/android/incallui/service/vt/FullScreenModeManager;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/FullScreenModeManager;->reset()V

    .line 314
    return-void
.end method

.method public resumeCameraForActivityState()V
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoCallEventHandler:Lcom/android/incallui/service/vt/VideoCallEventHandler;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallEventHandler;->resumeCameraForActivityState()V

    .line 531
    return-void
.end method

.method public sendEpdgRequest(Z)V
    .locals 3
    .param p1, "resume"    # Z

    .prologue
    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendEpdgRequest : resume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->epdg(Ljava/lang/String;)V

    .line 514
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->getCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 515
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->getCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 516
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/VideoPauseController;->getInstance()Lcom/android/incallui/VideoPauseController;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/android/incallui/VideoPauseController;->sendRequest(Lcom/android/incallui/Call;Z)V

    .line 518
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_0
    return-void
.end method

.method public setCapturedLocalFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoDetails:Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;

    iput-object p1, v0, Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;->capturedHideMeImage:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setExchangedViews(Z)V
    .locals 1
    .param p1, "isExchanged"    # Z

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoDetails:Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;

    iput-boolean p1, v0, Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;->isExchangedViews:Z

    .line 290
    return-void
.end method

.method public setIsEnoughSpaceForAnswer(Z)V
    .locals 1
    .param p1, "isEnough"    # Z

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoDetails:Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;

    iput-boolean p1, v0, Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;->isEnoughSpaceForAnswer:Z

    .line 298
    return-void
.end method

.method public setIsSwapProgressing(Z)V
    .locals 1
    .param p1, "swap"    # Z

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoDetails:Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;

    iput-boolean p1, v0, Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;->isSwapProgressing:Z

    .line 322
    return-void
.end method

.method public setLivePreview(Z)V
    .locals 2
    .param p1, "livePreview"    # Z

    .prologue
    .line 250
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoDetails:Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;

    iget-boolean v1, v1, Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;->isLivePreview:Z

    if-eq v1, p1, :cond_1

    .line 251
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoDetails:Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;

    iput-boolean p1, v1, Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;->isLivePreview:Z

    .line 252
    const/16 v0, 0x64

    .line 253
    .local v0, "event":I
    if-nez p1, :cond_0

    .line 254
    const/16 v0, 0x65

    .line 256
    :cond_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->notifyVideoCallUiEvent(I)V

    .line 258
    .end local v0    # "event":I
    :cond_1
    return-void
.end method

.method public setScreenResized(Z)V
    .locals 1
    .param p1, "isResized"    # Z

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoDetails:Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;

    iput-boolean p1, v0, Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;->isScreenResized:Z

    .line 282
    return-void
.end method

.method public setSwitchCameraClicked(Z)V
    .locals 1
    .param p1, "isClicked"    # Z

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoDetails:Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;

    iput-boolean p1, v0, Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;->isSwitchCameraClicked:Z

    .line 270
    return-void
.end method

.method public setUp(Lcom/android/incallui/InCallPresenter;)V
    .locals 1
    .param p1, "inCallPresenter"    # Lcom/android/incallui/InCallPresenter;

    .prologue
    .line 87
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 88
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 89
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->addVideoCallUiEventListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallUiEventListener;)V

    .line 90
    invoke-static {}, Lcom/android/incallui/VideoBanner;->setUp()Lcom/android/incallui/VideoBanner;

    .line 91
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoCallCallbackManager:Lcom/android/incallui/service/vt/VideoCallCallbackManager;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallCallbackManager;->setUp()V

    .line 92
    return-void
.end method

.method public startSwapProgressing()V
    .locals 1

    .prologue
    .line 525
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/VideoCallManager;->setIsSwapProgressing(Z)V

    .line 526
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoCallEventHandler:Lcom/android/incallui/service/vt/VideoCallEventHandler;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallEventHandler;->startSwapProgressing()V

    .line 527
    return-void
.end method

.method public tearDown()V
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 96
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 97
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->removeVideoCallUiEventListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallUiEventListener;)V

    .line 98
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->tearDown()V

    .line 99
    invoke-static {}, Lcom/android/incallui/VideoBanner;->tearDown()V

    .line 100
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoCallCallbackManager:Lcom/android/incallui/service/vt/VideoCallCallbackManager;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallCallbackManager;->tearDown()V

    .line 101
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoCallEventHandler:Lcom/android/incallui/service/vt/VideoCallEventHandler;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallEventHandler;->tearDown()V

    .line 102
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallManager;->clear()V

    .line 103
    return-void
.end method
