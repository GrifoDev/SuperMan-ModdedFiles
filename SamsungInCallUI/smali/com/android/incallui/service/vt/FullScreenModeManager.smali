.class public Lcom/android/incallui/service/vt/FullScreenModeManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallEventListener;


# static fields
.field private static final MSG_FULLSCREEN_MODE_EXPIRED:I = 0x64

.field private static final TIMER_DURATION_5000:I = 0x1388


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIsReadyInCallEventListener:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/FullScreenModeManager;->mIsReadyInCallEventListener:Z

    new-instance v0, Lcom/android/incallui/service/vt/FullScreenModeManager$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/vt/FullScreenModeManager$1;-><init>(Lcom/android/incallui/service/vt/FullScreenModeManager;)V

    iput-object v0, p0, Lcom/android/incallui/service/vt/FullScreenModeManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/service/vt/FullScreenModeManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/service/vt/FullScreenModeManager;->expiredFullScreenModeTimer()V

    return-void
.end method

.method private cancelTimer(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/FullScreenModeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/vt/FullScreenModeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private expiredFullScreenModeTimer()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expiredFullScreenModeTimer - isAvailableFullScreenMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->isAvailableFullScreenMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->fullscreen(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->isAvailableFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setFullScreen(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setFullScreen(Z)V

    goto :goto_0
.end method

.method private registerInCallEventListener()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/incallui/service/vt/FullScreenModeManager;->mIsReadyInCallEventListener:Z

    if-nez v0, :cond_0

    const-string v0, "enableFullScreenMode - registerInCallEventListener"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->fullscreen(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/FullScreenModeManager;->mIsReadyInCallEventListener:Z

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setFullScreen(Z)V

    :cond_0
    return-void
.end method

.method private removeInCallEventListener()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/incallui/service/vt/FullScreenModeManager;->mIsReadyInCallEventListener:Z

    if-eqz v0, :cond_0

    const-string v0, "disableFullScreenMode - removeInCallEventListener"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->fullscreen(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/incallui/service/vt/FullScreenModeManager;->mIsReadyInCallEventListener:Z

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setFullScreen(Z)V

    :cond_0
    return-void
.end method

.method private startTimer(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/service/vt/FullScreenModeManager;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/FullScreenModeManager;->disable()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/FullScreenModeManager;->mIsReadyInCallEventListener:Z

    return-void
.end method

.method public disable()V
    .locals 1

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/android/incallui/service/vt/FullScreenModeManager;->cancelTimer(I)V

    invoke-direct {p0}, Lcom/android/incallui/service/vt/FullScreenModeManager;->removeInCallEventListener()V

    return-void
.end method

.method public enable()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isModifyProgressing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/service/vt/FullScreenModeManager;->registerInCallEventListener()V

    :cond_0
    return-void
.end method

.method public onFullscreenModeChanged(Z)V
    .locals 2

    const/16 v1, 0x64

    invoke-direct {p0, v1}, Lcom/android/incallui/service/vt/FullScreenModeManager;->cancelTimer(I)V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->isAvailableFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1388

    invoke-direct {p0, v1, v0}, Lcom/android/incallui/service/vt/FullScreenModeManager;->startTimer(II)V

    :cond_0
    return-void
.end method

.method public onSecondaryCallerInfoVisibilityChanged(ZI)V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/incallui/service/vt/FullScreenModeManager;->mIsReadyInCallEventListener:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/FullScreenModeManager;->enable()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setFullScreen(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/incallui/service/vt/FullScreenModeManager;->onFullscreenModeChanged(Z)V

    goto :goto_0
.end method
