.class public Lcom/android/incallui/VideoPauseController;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/VideoPauseController$CallContext;,
        Lcom/android/incallui/VideoPauseController$VideoPauseState;
    }
.end annotation


# static fields
.field private static final MSG_DELAYED_REQUEST:I = 0x64

.field private static final TAG:Ljava/lang/String; = "VideoPauseController - "

.field private static final TIMER_DURATION_1000:I = 0x3e8

.field private static sVideoPauseController:Lcom/android/incallui/VideoPauseController;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mInCallPresenter:Lcom/android/incallui/InCallPresenter;

.field private mIsInBackground:Z

.field private mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    new-instance v0, Lcom/android/incallui/VideoPauseController$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/VideoPauseController$1;-><init>(Lcom/android/incallui/VideoPauseController;)V

    iput-object v0, p0, Lcom/android/incallui/VideoPauseController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/VideoPauseController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/VideoPauseController;->checkAndRequest()V

    return-void
.end method

.method private static areSame(Lcom/android/incallui/Call;Lcom/android/incallui/VideoPauseController$CallContext;)Z
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
    invoke-virtual {p1}, Lcom/android/incallui/VideoPauseController$CallContext;->getCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private bringToForeground()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    :cond_0
    return-void
.end method

.method private bringToForegroundUI()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "VideoPauseController - bringToForegroundUI - Screen is OFF"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

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

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/VideoPauseController;->bringToForeground()V

    :cond_1
    return-void

    :cond_2
    const-string v0, "VideoPauseController - bringToForegroundUI"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static canVideoPause(Lcom/android/incallui/Call;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/VideoUtils;->canVideoPause(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static canVideoPause(Lcom/android/incallui/VideoPauseController$CallContext;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/VideoPauseController$CallContext;->canVideoPause()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkAndRequest()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-virtual {v0}, Lcom/android/incallui/VideoPauseController$CallContext;->getCall()Lcom/android/incallui/Call;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/VideoPauseController;->sendRequest(Lcom/android/incallui/Call;Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkAndRequest(Lcom/android/incallui/Call;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/VideoPauseController;->sendRequest(Lcom/android/incallui/Call;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clear()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/VideoPauseController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    iput-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private delayedRequest()V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/VideoPauseController;
    .locals 2

    const-class v1, Lcom/android/incallui/VideoPauseController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/VideoPauseController;->sVideoPauseController:Lcom/android/incallui/VideoPauseController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/VideoPauseController;

    invoke-direct {v0}, Lcom/android/incallui/VideoPauseController;-><init>()V

    sput-object v0, Lcom/android/incallui/VideoPauseController;->sVideoPauseController:Lcom/android/incallui/VideoPauseController;

    :cond_0
    sget-object v0, Lcom/android/incallui/VideoPauseController;->sVideoPauseController:Lcom/android/incallui/VideoPauseController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static isIncomingCall(Lcom/android/incallui/Call;)Z
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNeedBringToForegroundUI(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;)Z
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    sget-boolean v2, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v2, :cond_0

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v2, :cond_0

    const-string v0, "VideoPauseController - isNeedBringToForegroundUI - PROHIBIT_CANDID_SHOT and InCallState.OUTGOING"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->ui(Ljava/lang/String;)V

    move v0, v1

    :cond_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-virtual {v0}, Lcom/android/incallui/VideoPauseController$CallContext;->getCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/VideoPauseController;->onPause(Lcom/android/incallui/Call;)V

    :cond_0
    return-void
.end method

.method private onPause(Lcom/android/incallui/Call;)V
    .locals 1

    invoke-static {p1}, Lcom/android/incallui/VideoPauseController;->canVideoPause(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/VideoPauseController;->sendRequest(Lcom/android/incallui/Call;Z)V

    :cond_0
    return-void
.end method

.method private onPrimaryCallChanged(Lcom/android/incallui/Call;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-static {p1, v0}, Lcom/android/incallui/VideoPauseController;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/VideoPauseController$CallContext;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/e;->b(Z)V

    invoke-static {p1}, Lcom/android/incallui/VideoPauseController;->canVideoPause(Lcom/android/incallui/Call;)Z

    move-result v0

    invoke-static {p1}, Lcom/android/incallui/VideoPauseController;->isIncomingCall(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-virtual {v0}, Lcom/android/incallui/VideoPauseController$CallContext;->getCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/VideoPauseController;->canVideoPause(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-virtual {v0}, Lcom/android/incallui/VideoPauseController$CallContext;->getCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/android/incallui/VideoPauseController;->sendRequest(Lcom/android/incallui/Call;Z)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoPauseController - onPrimaryCallChanged - New "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/VideoPauseController;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bringToForegroundUI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    :goto_2
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoPauseController;->updatePrimaryCallContext(Lcom/android/incallui/Call;)V

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/VideoPauseController;->delayedRequest()V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v0

    if-nez v0, :cond_4

    move v2, v1

    :cond_4
    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/incallui/VideoPauseController;->bringToForegroundUI()V

    goto :goto_1

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoPauseController;->checkAndRequest(Lcom/android/incallui/Call;)V

    goto :goto_1

    :cond_6
    if-eqz p1, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoPauseController - onPrimaryCallChanged - Swap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/VideoPauseController;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Old "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-virtual {v1}, Lcom/android/incallui/VideoPauseController$CallContext;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bringToForegroundUI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoPauseController - onPrimaryCallChanged - onDisconnect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/VideoPauseController;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Old "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-virtual {v1}, Lcom/android/incallui/VideoPauseController$CallContext;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bringToForegroundUI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private onResume()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-static {v0}, Lcom/android/incallui/VideoPauseController;->canVideoPause(Lcom/android/incallui/VideoPauseController$CallContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-virtual {v0}, Lcom/android/incallui/VideoPauseController$CallContext;->getCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoPauseState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->isPausedTx(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallNotifier;->getInstance()Lcom/android/incallui/InCallNotifier;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallNotifier;->notifyVideoCallUiEvent(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-virtual {v0}, Lcom/android/incallui/VideoPauseController$CallContext;->getCall()Lcom/android/incallui/Call;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/VideoPauseController;->sendRequest(Lcom/android/incallui/Call;Z)V

    :cond_1
    return-void
.end method

.method public static toString(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_0

    const-string v0, "Call {CallId=%s, State=%s, CallType=%d, VideoState=%s, CanVideoPause=%s, VideoPause=%s, VideoCall=%s} "

    const/4 v1, 0x7

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

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v3

    invoke-static {v3}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p0}, Lcom/android/incallui/VideoPauseController;->canVideoPause(Lcom/android/incallui/Call;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoPauseState()I

    move-result v3

    invoke-static {v3}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Call {NULL} "

    goto :goto_0
.end method

.method private updatePrimaryCallContext(Lcom/android/incallui/Call;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-virtual {v0, p1}, Lcom/android/incallui/VideoPauseController$CallContext;->update(Lcom/android/incallui/Call;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-direct {v0, p0, p1}, Lcom/android/incallui/VideoPauseController$CallContext;-><init>(Lcom/android/incallui/VideoPauseController;Lcom/android/incallui/Call;)V

    iput-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    goto :goto_0
.end method


# virtual methods
.method public isUiShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyVideoPauseStateChanged(Lcom/android/incallui/Call;I)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoPauseState()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoPauseController - notifyVideoPauseStateChanged - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/SecCall;->isHeldVideoStateChanged(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallNotifier;->getInstance()Lcom/android/incallui/InCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallNotifier;->notifyVideoDetailsChange(Lcom/android/incallui/Call;)V

    :cond_0
    const-string v0, "update_video_quickpanel_text"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/incallui/InCallUISystemDB;->setSettingDB(Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->updateNotification()V

    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-static {p3, v0}, Lcom/android/incallui/VideoPauseController;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/VideoPauseController$CallContext;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p3}, Lcom/android/incallui/VideoPauseController;->onPrimaryCallChanged(Lcom/android/incallui/Call;)V

    :cond_0
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 4

    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p3, v0, v1}, Lcom/android/incallui/util/VideoCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-static {v1, v0}, Lcom/android/incallui/VideoPauseController;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/VideoPauseController$CallContext;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, v1}, Lcom/android/incallui/VideoPauseController;->onPrimaryCallChanged(Lcom/android/incallui/Call;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-static {v1}, Lcom/android/incallui/VideoPauseController;->canVideoPause(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-static {v2}, Lcom/android/incallui/VideoPauseController;->canVideoPause(Lcom/android/incallui/VideoPauseController$CallContext;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/VideoPauseController;->isNeedBringToForegroundUI(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/incallui/VideoPauseController;->bringToForegroundUI()V

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-virtual {v2, v1}, Lcom/android/incallui/VideoPauseController$CallContext;->canUpdate(Lcom/android/incallui/Call;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VideoPauseController - onStateChange, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/android/incallui/VideoPauseController;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/VideoPauseController;->mPrimaryCallContext:Lcom/android/incallui/VideoPauseController$CallContext;

    invoke-virtual {v3}, Lcom/android/incallui/VideoPauseController$CallContext;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , bringToForegroundUI="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0, v1}, Lcom/android/incallui/VideoPauseController;->updatePrimaryCallContext(Lcom/android/incallui/Call;)V

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/VideoPauseController;->delayedRequest()V

    goto :goto_0

    :cond_5
    invoke-direct {p0, v1}, Lcom/android/incallui/VideoPauseController;->checkAndRequest(Lcom/android/incallui/Call;)V

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v2

    if-nez v2, :cond_2

    sget v2, Lcom/android/incallui/VideoPauseController$VideoPauseState;->NONE:I

    invoke-virtual {v1, v2}, Lcom/android/incallui/Call;->setVideoPauseState(I)V

    goto :goto_1
.end method

.method public onUiShowing(Z)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    if-ne v3, p1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VideoPauseController - onUiShowing : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " canUpdate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    if-nez p1, :cond_3

    :goto_1
    iput-boolean v1, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    :cond_0
    if-eqz v0, :cond_1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/android/incallui/VideoPauseController;->onResume()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/VideoPauseController;->onPause()V

    goto :goto_2
.end method

.method public onVideoPauseStateChanged(Lcom/android/incallui/Call;Z)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoPauseState()I

    move-result v0

    if-eqz p2, :cond_1

    invoke-static {v0}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->isPausedTx(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->pauseRx(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->setVideoPauseState(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/incallui/VideoPauseController;->mIsInBackground:Z

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoPauseController - onVideoPauseStateChanged - Call state is ONHOLD in background Activity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/VideoPauseController;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    sget v0, Lcom/android/incallui/VideoPauseController$VideoPauseState;->NONE:I

    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->setVideoPauseState(I)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->isPausedTx(I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoPauseController - onVideoPauseStateChanged - ignore RX_RESUME "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/VideoPauseController;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoPauseController - onVideoPauseStateChanged - ignore wrong RX_RESUME in background Activity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/VideoPauseController;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget v0, Lcom/android/incallui/VideoPauseController$VideoPauseState;->NONE:I

    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->setVideoPauseState(I)V

    goto :goto_0
.end method

.method public sendRequest(Lcom/android/incallui/Call;Z)V
    .locals 1

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_VIDEO_PAUSE:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    const-string v0, "VideoPauseController - sendRequest failed : call is null"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/android/incallui/VideoPauseController;->canVideoPause(Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "VideoPauseController - sendRequest failed : VideoPause is unavailable"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->requestResumeVideo()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->requestPauseVideo()V

    goto :goto_0
.end method

.method public setUp(Lcom/android/incallui/InCallPresenter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoPauseController - setUp - CAN_VIDEO_PAUSE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_VIDEO_PAUSE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->base(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/a/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallPresenter;

    iput-object v0, p0, Lcom/android/incallui/VideoPauseController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    return-void
.end method

.method public tearDown()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoPauseController - tearDown - CAN_VIDEO_PAUSE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_VIDEO_PAUSE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->base(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    iget-object v0, p0, Lcom/android/incallui/VideoPauseController;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-direct {p0}, Lcom/android/incallui/VideoPauseController;->clear()V

    return-void
.end method
