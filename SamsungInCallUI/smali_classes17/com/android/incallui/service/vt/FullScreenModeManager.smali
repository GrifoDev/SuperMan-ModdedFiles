.class public Lcom/android/incallui/service/vt/FullScreenModeManager;
.super Ljava/lang/Object;
.source "FullScreenModeManager.java"

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

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/FullScreenModeManager;->mIsReadyInCallEventListener:Z

    .line 38
    new-instance v0, Lcom/android/incallui/service/vt/FullScreenModeManager$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/vt/FullScreenModeManager$1;-><init>(Lcom/android/incallui/service/vt/FullScreenModeManager;)V

    iput-object v0, p0, Lcom/android/incallui/service/vt/FullScreenModeManager;->mHandler:Landroid/os/Handler;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/service/vt/FullScreenModeManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/service/vt/FullScreenModeManager;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/incallui/service/vt/FullScreenModeManager;->expiredFullScreenModeTimer()V

    return-void
.end method

.method private cancelTimer(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/incallui/service/vt/FullScreenModeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/incallui/service/vt/FullScreenModeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 63
    :cond_0
    return-void
.end method

.method private expiredFullScreenModeTimer()V
    .locals 2

    .prologue
    .line 92
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

    .line 93
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->isAvailableFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setFullScreen(Z)V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setFullScreen(Z)V

    goto :goto_0
.end method

.method private registerInCallEventListener()V
    .locals 2

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/incallui/service/vt/FullScreenModeManager;->mIsReadyInCallEventListener:Z

    if-nez v0, :cond_0

    .line 102
    const-string v0, "enableFullScreenMode - registerInCallEventListener"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->fullscreen(Ljava/lang/String;)V

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/FullScreenModeManager;->mIsReadyInCallEventListener:Z

    .line 104
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V

    .line 105
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setFullScreen(Z)V

    .line 107
    :cond_0
    return-void
.end method

.method private removeInCallEventListener()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    iget-boolean v0, p0, Lcom/android/incallui/service/vt/FullScreenModeManager;->mIsReadyInCallEventListener:Z

    if-eqz v0, :cond_0

    .line 111
    const-string v0, "disableFullScreenMode - removeInCallEventListener"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->fullscreen(Ljava/lang/String;)V

    .line 112
    iput-boolean v1, p0, Lcom/android/incallui/service/vt/FullScreenModeManager;->mIsReadyInCallEventListener:Z

    .line 113
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V

    .line 114
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setFullScreen(Z)V

    .line 116
    :cond_0
    return-void
.end method

.method private startTimer(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "duration"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/incallui/service/vt/FullScreenModeManager;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 57
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/FullScreenModeManager;->disable()V

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/FullScreenModeManager;->mIsReadyInCallEventListener:Z

    .line 121
    return-void
.end method

.method public disable()V
    .locals 1

    .prologue
    .line 75
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/android/incallui/service/vt/FullScreenModeManager;->cancelTimer(I)V

    .line 76
    invoke-direct {p0}, Lcom/android/incallui/service/vt/FullScreenModeManager;->removeInCallEventListener()V

    .line 77
    return-void
.end method

.method public enable()V
    .locals 2

    .prologue
    .line 66
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 67
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isModifyProgressing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/android/incallui/service/vt/FullScreenModeManager;->registerInCallEventListener()V

    .line 72
    :cond_0
    return-void
.end method

.method public onFullscreenModeChanged(Z)V
    .locals 2
    .param p1, "isFullScreenVideo"    # Z

    .prologue
    const/16 v1, 0x64

    .line 125
    invoke-direct {p0, v1}, Lcom/android/incallui/service/vt/FullScreenModeManager;->cancelTimer(I)V

    .line 126
    if-nez p1, :cond_0

    .line 127
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->isAvailableFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const/16 v0, 0x1388

    invoke-direct {p0, v1, v0}, Lcom/android/incallui/service/vt/FullScreenModeManager;->startTimer(II)V

    .line 131
    :cond_0
    return-void
.end method

.method public onSecondaryCallerInfoVisibilityChanged(ZI)V
    .locals 0
    .param p1, "isVisible"    # Z
    .param p2, "height"    # I

    .prologue
    .line 136
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-boolean v0, p0, Lcom/android/incallui/service/vt/FullScreenModeManager;->mIsReadyInCallEventListener:Z

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/FullScreenModeManager;->enable()V

    .line 89
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setFullScreen(Z)V

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/incallui/service/vt/FullScreenModeManager;->onFullscreenModeChanged(Z)V

    goto :goto_0
.end method
