.class public Lcom/android/incallui/service/vt/VideoCallManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/incallui/InCallNotifier$VideoCallUiEventListener;
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/service/vt/VideoCallManager$ActivityState;,
        Lcom/android/incallui/service/vt/VideoCallManager$CallContext;,
        Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;
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

.field private mVideoCallStatus:Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;

.field private mVideoPipService:Lcom/android/incallui/service/VideoPipService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/service/vt/VideoCallManager;->sInstance:Lcom/android/incallui/service/vt/VideoCallManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;-><init>(Lcom/android/incallui/service/vt/VideoCallManager;)V

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoCallStatus:Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;

    new-instance v0, Lcom/android/incallui/service/vt/FullScreenModeManager;

    invoke-direct {v0}, Lcom/android/incallui/service/vt/FullScreenModeManager;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mFullScreenModeManager:Lcom/android/incallui/service/vt/FullScreenModeManager;

    iput-object v1, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallRotationEventListener:Lcom/android/incallui/service/vt/InCallRotationEventListener;

    new-instance v0, Lcom/android/incallui/service/vt/VideoCallCallbackManager;

    invoke-direct {v0}, Lcom/android/incallui/service/vt/VideoCallCallbackManager;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoCallCallbackManager:Lcom/android/incallui/service/vt/VideoCallCallbackManager;

    iput-object v1, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    iput-object v1, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mActivityState:I

    new-instance v0, Lcom/android/incallui/service/vt/VideoCallManager$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/vt/VideoCallManager$1;-><init>(Lcom/android/incallui/service/vt/VideoCallManager;)V

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoCallEventHandler:Lcom/android/incallui/service/vt/VideoCallEventHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/service/vt/VideoCallManager;)Lcom/android/incallui/InCallActivity;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/service/vt/VideoCallManager;)Lcom/android/incallui/service/vt/InCallRotationEventListener;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallRotationEventListener:Lcom/android/incallui/service/vt/InCallRotationEventListener;

    return-object v0
.end method

.method private static areSame(Lcom/android/incallui/Call;Lcom/android/incallui/service/vt/VideoCallManager$CallContext;)Z
    .locals 1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->getCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private connectedAsVoiceCall(Lcom/android/incallui/service/vt/VideoCallManager$CallContext;Lcom/android/incallui/Call;)Z
    .locals 7

    const/4 v4, 0x6

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VideoCallManager - connectedAsVoiceCall - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/incallui/service/vt/VideoCallManager;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->base(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->getVideoState()I

    move-result v0

    if-ne v0, v5, :cond_5

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-eq v3, v4, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->getState()I

    move-result v3

    if-ne v3, v4, :cond_6

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v5, :cond_6

    :cond_2
    move v3, v1

    :goto_2
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-eq v4, v6, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->getState()I

    move-result v4

    if-ne v4, v6, :cond_7

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-ne v4, v5, :cond_7

    :cond_3
    move v4, v1

    :goto_3
    if-eqz v0, :cond_0

    if-nez v3, :cond_4

    if-eqz v4, :cond_0

    :cond_4
    move v2, v1

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    move v3, v2

    goto :goto_2

    :cond_7
    move v4, v2

    goto :goto_3
.end method

.method private disableRoationEventListener()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallRotationEventListener:Lcom/android/incallui/service/vt/InCallRotationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallRotationEventListener:Lcom/android/incallui/service/vt/InCallRotationEventListener;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->disable()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallRotationEventListener:Lcom/android/incallui/service/vt/InCallRotationEventListener;

    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/service/vt/VideoCallManager;
    .locals 2

    const-class v1, Lcom/android/incallui/service/vt/VideoCallManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallManager;->sInstance:Lcom/android/incallui/service/vt/VideoCallManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/service/vt/VideoCallManager;

    invoke-direct {v0}, Lcom/android/incallui/service/vt/VideoCallManager;-><init>()V

    sput-object v0, Lcom/android/incallui/service/vt/VideoCallManager;->sInstance:Lcom/android/incallui/service/vt/VideoCallManager;

    :cond_0
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallManager;->sInstance:Lcom/android/incallui/service/vt/VideoCallManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onCallStateChanged(Lcom/android/incallui/Call;)V
    .locals 2

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

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_KOR_COMMON()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    :cond_0
    return-void
.end method

.method private onCallSwapped(Lcom/android/incallui/Call;)V
    .locals 2

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

    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->updateRoationEventListener(Lcom/android/incallui/Call;)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->checkAndUpdateScreenType(Lcom/android/incallui/Call;)V

    return-void
.end method

.method private onCameraRotationStatusChanged(Lcom/android/incallui/Call;)V
    .locals 2

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

    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->updateRoationEventListener(Lcom/android/incallui/Call;)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->checkAndUpdateScreenType(Lcom/android/incallui/Call;)V

    return-void
.end method

.method private onDisconnect(Lcom/android/incallui/Call;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoCallStatus:Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;->clear()V

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallManager;->disableRoationEventListener()V

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

    return-void
.end method

.method private onDomainChanged(Lcom/android/incallui/Call;)V
    .locals 2

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

    return-void
.end method

.method private onModified(Lcom/android/incallui/Call;)V
    .locals 4

    const/4 v3, 0x6

    const/4 v2, 0x3

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

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "video_connected_as_voice"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->getState()I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    if-ne v0, v2, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getShowToastAsConnectVoice()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->getVideoState()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "canada_bmc_volte_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f09023e

    invoke-static {v0, p1}, Lcom/android/incallui/util/NameNumberUtils;->displayToastLongwithName(ILcom/android/incallui/Call;)V

    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->setShowToastAsConnectVoice(Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/ProximitySensor;->forceUpdateProximitySensorMode()V

    goto :goto_0

    :cond_3
    const-string v0, "tmo_volte_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0903b3

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    goto :goto_1

    :cond_4
    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f090374

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    goto :goto_1

    :cond_5
    const v0, 0x7f0903b1

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    goto :goto_1

    :cond_6
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->connectedAsVoiceCall(Lcom/android/incallui/service/vt/VideoCallManager$CallContext;Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/PrivatePolicy;->clearForModifyCall()V

    goto/16 :goto_0
.end method

.method private onModifyProgressing(Lcom/android/incallui/Call;)V
    .locals 2

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

    return-void
.end method

.method private onNewCall(Lcom/android/incallui/Call;)V
    .locals 2

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

    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->updateRoationEventListener(Lcom/android/incallui/Call;)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->checkAndUpdateScreenType(Lcom/android/incallui/Call;)V

    return-void
.end method

.method private onSessionIdChanged(Lcom/android/incallui/Call;)V
    .locals 2

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

    return-void
.end method

.method private onVideoCallChanged(Lcom/android/incallui/Call;)V
    .locals 1

    const-string v0, "VideoCallManager - onVideoCallChanged"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->base(Ljava/lang/String;)V

    return-void
.end method

.method private onVideoSessionChanged(Lcom/android/incallui/Call;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->getVideoState()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/SecCall;->getVideoState()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->onModified(Lcom/android/incallui/Call;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->isVideo()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isModifyProgressing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->onModifyProgressing(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method private setPrimaryCall(Lcom/android/incallui/Call;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    invoke-static {p1, v0}, Lcom/android/incallui/service/vt/VideoCallManager;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/service/vt/VideoCallManager$CallContext;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->updateVideoSeeeion(Lcom/android/incallui/Call;)V

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallList;->isAlive(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->onCallSwapped(Lcom/android/incallui/Call;)V

    :cond_0
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->updatePrimaryCallContext(Lcom/android/incallui/Call;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->onNewCall(Lcom/android/incallui/Call;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallList;->isAlive(Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->onDisconnect(Lcom/android/incallui/Call;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->getDomain()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getDomain()I

    move-result v1

    if-eq v0, v1, :cond_5

    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->onDomainChanged(Lcom/android/incallui/Call;)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    invoke-virtual {v0, p1}, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->isVideoCallChanged(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->onVideoCallChanged(Lcom/android/incallui/Call;)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->getSessionId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/SecCall;->getSessionId()I

    move-result v1

    if-eq v0, v1, :cond_7

    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->onSessionIdChanged(Lcom/android/incallui/Call;)V

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    invoke-virtual {v0, p1}, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->isVideoSessionChanged(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->onVideoSessionChanged(Lcom/android/incallui/Call;)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->getState()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-eq v0, v1, :cond_9

    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->onCallStateChanged(Lcom/android/incallui/Call;)V

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->isSupportCameraRotation()Z

    move-result v0

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallControl;->canUseScreenTypeSensor(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->onCameraRotationStatusChanged(Lcom/android/incallui/Call;)V

    goto :goto_1
.end method

.method public static toString(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_0

    const-string v0, " CallContext {CallId=%s, State=%s, VideoState=%d, SessionId=%d, VideoSession=%s}"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

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

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, " CallContext {NULL}"

    goto :goto_0
.end method

.method private updatePrimaryCallContext(Lcom/android/incallui/Call;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/CallList;->isAlive(Lcom/android/incallui/Call;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p1, v0

    :cond_0
    if-nez p1, :cond_1

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    invoke-virtual {v0, p1}, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->update(Lcom/android/incallui/Call;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    invoke-direct {v0, p0, p1}, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;-><init>(Lcom/android/incallui/service/vt/VideoCallManager;Lcom/android/incallui/Call;)V

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    goto :goto_0
.end method

.method private updateRoationEventListener(Lcom/android/incallui/Call;)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallList;->isAlive(Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallControl;->isSupportOnlyLandscapeUI(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isPSDomain()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->isSupportLandscapeUI()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallRotationEventListener:Lcom/android/incallui/service/vt/InCallRotationEventListener;

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/incallui/service/vt/VideoCallManager$2;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/service/vt/VideoCallManager$2;-><init>(Lcom/android/incallui/service/vt/VideoCallManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallRotationEventListener:Lcom/android/incallui/service/vt/InCallRotationEventListener;

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallRotationEventListener:Lcom/android/incallui/service/vt/InCallRotationEventListener;

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallManager;->isUiShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->onUiShowing(Z)V

    :goto_1
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallManager;->disableRoationEventListener()V

    goto :goto_1
.end method


# virtual methods
.method public checkAndUpdateScreenType(Lcom/android/incallui/Call;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->checkAndUpdateScreenType(Lcom/android/incallui/Call;)V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    const-string v0, "VideoCallManager - clear"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->base(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mFullScreenModeManager:Lcom/android/incallui/service/vt/FullScreenModeManager;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/FullScreenModeManager;->clear()V

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoCallStatus:Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallManager;->disableRoationEventListener()V

    return-void
.end method

.method public disableFullScreenMode()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mFullScreenModeManager:Lcom/android/incallui/service/vt/FullScreenModeManager;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/FullScreenModeManager;->disable()V

    return-void
.end method

.method public enableFullScreenMode()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mFullScreenModeManager:Lcom/android/incallui/service/vt/FullScreenModeManager;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/FullScreenModeManager;->enable()V

    return-void
.end method

.method public fireVideoCallChanged(Lcom/android/incallui/Call;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoCallEventHandler:Lcom/android/incallui/service/vt/VideoCallEventHandler;

    invoke-virtual {v0, p1}, Lcom/android/incallui/service/vt/VideoCallEventHandler;->fireVideoCallChanged(Lcom/android/incallui/Call;)V

    return-void
.end method

.method public getCapturedLocalFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoCallStatus:Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;

    iget-object v0, v0, Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;->capturedHideMeImage:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentDeviceRoation()I
    .locals 2

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getDisplayRotation()I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallRotationEventListener:Lcom/android/incallui/service/vt/InCallRotationEventListener;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallRotationEventListener:Lcom/android/incallui/service/vt/InCallRotationEventListener;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->getDeviceRotation()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getPrimaryCall()Lcom/android/incallui/Call;
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallList;->getFirstCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v0

    return-object v0
.end method

.method public getVideoCallStatus()Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoCallStatus:Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;

    return-object v0
.end method

.method public getVideoPipService()Lcom/android/incallui/service/VideoPipService;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoPipService:Lcom/android/incallui/service/VideoPipService;

    return-object v0
.end method

.method public getVideoTypeIcon(Lcom/android/incallui/Call;)I
    .locals 5

    const v0, 0x7f020395

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/incallui/CallList;->isAlive(Lcom/android/incallui/Call;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVideoTypeIcon - isAlive="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isJpnUX()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/android/incallui/util/InCallUtils;->isHasEVSSWB(Lcom/android/incallui/Call;)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", isHasEVSSWB="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    const v0, 0x7f020407

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->ui(Ljava/lang/String;)V

    return v0

    :cond_1
    const v0, 0x7f020406

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall(Lcom/android/incallui/Call;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", isEpdgCall="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v3

    if-eqz v3, :cond_3

    const v0, 0x7f020397

    :cond_3
    if-eqz v2, :cond_0

    const v0, 0x7f020085

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isModifyProgressing()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f02048c

    goto :goto_0

    :cond_4
    const v0, 0x7f020087

    goto :goto_0
.end method

.method public isEnabledRoationEventListener()Z
    .locals 1

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

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoCallStatus:Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;

    iget-boolean v0, v0, Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;->isEnoughSpaceForAnswer:Z

    return v0
.end method

.method public isExchangedViews()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoCallStatus:Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;

    iget-boolean v0, v0, Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;->isExchangedViews:Z

    return v0
.end method

.method public isLivePreview()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoCallStatus:Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;

    iget-boolean v0, v0, Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;->isLivePreview:Z

    return v0
.end method

.method public isLowQuality()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoCallStatus:Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;

    iget-boolean v0, v0, Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;->isLowQuality:Z

    return v0
.end method

.method public isPipRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoPipService:Lcom/android/incallui/service/VideoPipService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoPipService:Lcom/android/incallui/service/VideoPipService;

    invoke-virtual {v0}, Lcom/android/incallui/service/VideoPipService;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScreenResized()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoCallStatus:Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;

    iget-boolean v0, v0, Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;->isScreenResized:Z

    return v0
.end method

.method public isSwapProgressing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoCallStatus:Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;

    iget-boolean v0, v0, Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;->isSwapProgressing:Z

    return v0
.end method

.method public isSwitchCameraClicked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoCallStatus:Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;

    iget-boolean v0, v0, Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;->isSwitchCameraClicked:Z

    return v0
.end method

.method public isUiShowing()Z
    .locals 2

    iget v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mActivityState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyRotationChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallRotationEventListener:Lcom/android/incallui/service/vt/InCallRotationEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallRotationEventListener:Lcom/android/incallui/service/vt/InCallRotationEventListener;

    invoke-virtual {v0, p1}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->notifyRotationChanged(I)V

    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Lcom/android/incallui/InCallActivity;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/VideoCallManager;->onActivityStateChanged(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    :goto_0
    return-void

    :cond_0
    const-string v0, "onActivityDestroyed - ignored this state"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityPaused(Lcom/android/incallui/InCallActivity;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/VideoCallManager;->onActivityStateChanged(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "onActivityPaused - ignored this state"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityResumed(Lcom/android/incallui/InCallActivity;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/VideoCallManager;->onActivityStateChanged(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "onActivityResumed - ignored this state"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityStarted(Lcom/android/incallui/InCallActivity;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eq v0, p1, :cond_0

    const-string v0, "onActivityStarted - changed activity instance "

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->debug(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/VideoCallManager;->onActivityStateChanged(I)V

    return-void
.end method

.method public onActivityStateChanged(I)V
    .locals 5

    const/4 v4, 0x1

    iget v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mActivityState:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mActivityState:I

    iput p1, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mActivityState:I

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v4}, Lcom/android/incallui/util/VideoCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VideoCallManager - onActivityStateChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallManager$ActivityState;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mActivityState:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallManager$ActivityState;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallManager;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->base(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Lcom/android/incallui/service/vt/VideoCallManager;->updateRoationEventListener(Lcom/android/incallui/Call;)V

    invoke-virtual {p0, v1}, Lcom/android/incallui/service/vt/VideoCallManager;->checkAndUpdateScreenType(Lcom/android/incallui/Call;)V

    :cond_1
    invoke-static {}, Lcom/android/incallui/VideoPauseController;->getInstance()Lcom/android/incallui/VideoPauseController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VideoPauseController;->isUiShowing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/incallui/VideoPauseController;->getInstance()Lcom/android/incallui/VideoPauseController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/incallui/VideoPauseController;->onUiShowing(Z)V

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallManager;->resumeCameraForActivityState()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallManager;->pauseCameraForActivityState()V

    goto :goto_0

    :pswitch_3
    if-eqz v1, :cond_3

    invoke-direct {p0, v1}, Lcom/android/incallui/service/vt/VideoCallManager;->updateRoationEventListener(Lcom/android/incallui/Call;)V

    :cond_3
    invoke-static {}, Lcom/android/incallui/VideoPauseController;->getInstance()Lcom/android/incallui/VideoPauseController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VideoPauseController;->isUiShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/VideoPauseController;->getInstance()Lcom/android/incallui/VideoPauseController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoPauseController;->onUiShowing(Z)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallManager;->pauseCameraForActivityState()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onActivityStopped(Lcom/android/incallui/InCallActivity;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/VideoCallManager;->onActivityStateChanged(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "onActivityStopped - ignored this state"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallList;->getFirstCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/incallui/Call;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/VideoCallManager;->setPrimaryCall(Lcom/android/incallui/Call;)V

    :cond_0
    return-void
.end method

.method public onDisplayRotationChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->onDisplayRotationChanged(I)V

    :cond_0
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/android/incallui/service/vt/VideoCallManager;->setPrimaryCall(Lcom/android/incallui/Call;)V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2

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

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/android/incallui/CallList;->getFirstCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/service/vt/VideoCallManager;->setPrimaryCall(Lcom/android/incallui/Call;)V

    return-void
.end method

.method public onVideoCallUiEvent(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallManager;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallList;->isAlive(Lcom/android/incallui/Call;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    sparse-switch p1, :sswitch_data_0

    :cond_1
    :goto_0
    return-void

    :sswitch_0
    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/android/incallui/service/vt/VideoCallManager;->updateRoationEventListener(Lcom/android/incallui/Call;)V

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallManager;->resetDeviceRotatoin()V

    goto :goto_0

    :cond_2
    const-string v0, "VideoCallManager - ACCELEROMETER_CHANGED : Alive call is NULL"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->base(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->stopCamera()V

    goto :goto_0

    :sswitch_2
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->startCamera()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x67 -> :sswitch_1
        0x68 -> :sswitch_2
        0x1f4 -> :sswitch_0
    .end sparse-switch
.end method

.method public pauseCameraForActivityState()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->getCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->isAliveVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoCallEventHandler:Lcom/android/incallui/service/vt/VideoCallEventHandler;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallEventHandler;->pauseCameraForActivityState()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoCallEventHandler:Lcom/android/incallui/service/vt/VideoCallEventHandler;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallEventHandler;->cancelCameraEvent()V

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/PrivatePolicy;->setStatus(I)V

    goto :goto_0
.end method

.method public resetDeviceRotatoin()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallRotationEventListener:Lcom/android/incallui/service/vt/InCallRotationEventListener;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallManager - resetDeviceRotatoin - isEnabledAutoRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallRotationEventListener:Lcom/android/incallui/service/vt/InCallRotationEventListener;

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->isEnabledAutoRotation()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->rotation(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mInCallRotationEventListener:Lcom/android/incallui/service/vt/InCallRotationEventListener;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/InCallRotationEventListener;->resetDeviceRotatoin()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallList;->getFirstCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallManager;->getCurrentDeviceRoation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setDeviceRotatoin(I)V

    goto :goto_0
.end method

.method public resetFullScreenMode()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mFullScreenModeManager:Lcom/android/incallui/service/vt/FullScreenModeManager;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/FullScreenModeManager;->reset()V

    return-void
.end method

.method public resumeCameraForActivityState()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoCallEventHandler:Lcom/android/incallui/service/vt/VideoCallEventHandler;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallEventHandler;->resumeCameraForActivityState()V

    return-void
.end method

.method public sendEpdgRequest(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendEpdgRequest : resume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->epdg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->getCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mPrimaryCallContext:Lcom/android/incallui/service/vt/VideoCallManager$CallContext;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->getCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/VideoPauseController;->getInstance()Lcom/android/incallui/VideoPauseController;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/android/incallui/VideoPauseController;->sendRequest(Lcom/android/incallui/Call;Z)V

    :cond_0
    return-void
.end method

.method public setCapturedLocalFile(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoCallStatus:Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;

    iput-object p1, v0, Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;->capturedHideMeImage:Ljava/lang/String;

    return-void
.end method

.method public setExchangedViews(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoCallStatus:Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;

    iget-boolean v0, v0, Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;->isExchangedViews:Z

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallManager - setExchangedViews : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->ui(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoCallStatus:Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;

    iput-boolean p1, v0, Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;->isExchangedViews:Z

    :cond_0
    return-void
.end method

.method public setIsEnoughSpaceForAnswer(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallManager - setIsEnoughSpaceForAnswer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoCallStatus:Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;

    iput-boolean p1, v0, Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;->isEnoughSpaceForAnswer:Z

    return-void
.end method

.method public setIsSwapProgressing(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoCallStatus:Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;

    iput-boolean p1, v0, Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;->isSwapProgressing:Z

    return-void
.end method

.method public setLivePreview(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoCallStatus:Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;

    iget-boolean v0, v0, Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;->isLivePreview:Z

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoCallStatus:Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;

    iput-boolean p1, v0, Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;->isLivePreview:Z

    const/16 v0, 0x64

    if-nez p1, :cond_0

    const/16 v0, 0x65

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallNotifier;->getInstance()Lcom/android/incallui/InCallNotifier;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/InCallNotifier;->notifyVideoCallUiEvent(I)V

    :cond_1
    return-void
.end method

.method public setLowQuality(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoCallStatus:Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;

    iput-boolean p1, v0, Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;->isLowQuality:Z

    return-void
.end method

.method public setScreenResized(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoCallStatus:Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;

    iput-boolean p1, v0, Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;->isScreenResized:Z

    return-void
.end method

.method public setSwitchCameraClicked(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoCallStatus:Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;

    iget-boolean v0, v0, Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;->isSwitchCameraClicked:Z

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallManager - setSwitchCameraClicked : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->ui(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoCallStatus:Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;

    iput-boolean p1, v0, Lcom/android/incallui/service/vt/VideoCallManager$VideoCallStatus;->isSwitchCameraClicked:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallNotifier;->getInstance()Lcom/android/incallui/InCallNotifier;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallNotifier;->notifyVideoCallUiEvent(I)V

    :cond_0
    return-void
.end method

.method public setUp(Lcom/android/incallui/InCallPresenter;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    invoke-static {}, Lcom/android/incallui/InCallNotifier;->getInstance()Lcom/android/incallui/InCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallNotifier;->addVideoCallUiEventListener(Lcom/android/incallui/InCallNotifier$VideoCallUiEventListener;)V

    invoke-static {}, Lcom/android/incallui/VideoBanner;->setUp()Lcom/android/incallui/VideoBanner;

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoCallCallbackManager:Lcom/android/incallui/service/vt/VideoCallCallbackManager;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallCallbackManager;->setUp()V

    return-void
.end method

.method public setVideoPipService(Lcom/android/incallui/service/VideoPipService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoPipService:Lcom/android/incallui/service/VideoPipService;

    return-void
.end method

.method public startSwapProgressing()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/VideoCallManager;->setIsSwapProgressing(Z)V

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoCallEventHandler:Lcom/android/incallui/service/vt/VideoCallEventHandler;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallEventHandler;->startSwapProgressing()V

    return-void
.end method

.method public tearDown()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    invoke-static {}, Lcom/android/incallui/InCallNotifier;->getInstance()Lcom/android/incallui/InCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallNotifier;->removeVideoCallUiEventListener(Lcom/android/incallui/InCallNotifier$VideoCallUiEventListener;)V

    invoke-static {}, Lcom/android/incallui/VideoBanner;->tearDown()V

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoCallCallbackManager:Lcom/android/incallui/service/vt/VideoCallCallbackManager;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallCallbackManager;->tearDown()V

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager;->mVideoCallEventHandler:Lcom/android/incallui/service/vt/VideoCallEventHandler;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallEventHandler;->tearDown()V

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallManager;->clear()V

    return-void
.end method

.method public updateVideoSeeeion(Lcom/android/incallui/Call;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallList;->isAlive(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallList;->getFirstCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->onBackgound(Lcom/android/incallui/Call;)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->onForeground()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->onBackgound(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method
