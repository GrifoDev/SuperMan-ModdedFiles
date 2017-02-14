.class public abstract Lcom/android/incallui/service/vt/VideoCallEventHandler;
.super Ljava/lang/Object;
.source "VideoCallEventHandler.java"


# static fields
.field private static final MSG_PAUSE_CAMERA_FOR_ACTIVITY_STATE_EXPIRED:I = 0x66

.field private static final MSG_RESUME_CAMERA_FOR_ACTIVITY_STATE_EXPIRED:I = 0x65

.field private static final MSG_SWAP_PROGRESSING_EXPIRED:I = 0x64

.field private static final TIMER_DURATION_1500:I = 0x5dc

.field private static final TIMER_DURATION_500:I = 0x1f4

.field private static final TIMER_DURATION_5000:I = 0x1388


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/incallui/service/vt/VideoCallEventHandler$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/vt/VideoCallEventHandler$1;-><init>(Lcom/android/incallui/service/vt/VideoCallEventHandler;)V

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallEventHandler;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private cancelTimer(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallEventHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallEventHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private restartTimer(II)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/VideoCallEventHandler;->cancelTimer(I)V

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallEventHandler;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private startTimer(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallEventHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallEventHandler;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelCameraEvent()V
    .locals 1

    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcom/android/incallui/service/vt/VideoCallEventHandler;->cancelTimer(I)V

    const/16 v0, 0x66

    invoke-direct {p0, v0}, Lcom/android/incallui/service/vt/VideoCallEventHandler;->cancelTimer(I)V

    return-void
.end method

.method public cancelSwapProgressing()V
    .locals 1

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/android/incallui/service/vt/VideoCallEventHandler;->cancelTimer(I)V

    return-void
.end method

.method public abstract expiredPauseCameraForActivityState()V
.end method

.method public abstract expiredResumeCameraForActivityState()V
.end method

.method public abstract expiredSwapProgressing()V
.end method

.method public pauseCameraForActivityState()V
    .locals 2

    const/16 v1, 0x65

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallEventHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/android/incallui/service/vt/VideoCallEventHandler;->cancelTimer(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x66

    const/16 v1, 0x1f4

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/service/vt/VideoCallEventHandler;->restartTimer(II)V

    goto :goto_0
.end method

.method public resumeCameraForActivityState()V
    .locals 2

    const/16 v1, 0x66

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallEventHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/android/incallui/service/vt/VideoCallEventHandler;->cancelTimer(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x65

    const/16 v1, 0x1f4

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/service/vt/VideoCallEventHandler;->restartTimer(II)V

    goto :goto_0
.end method

.method public startSwapProgressing()V
    .locals 2

    const/16 v0, 0x64

    const/16 v1, 0x5dc

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/service/vt/VideoCallEventHandler;->startTimer(II)V

    return-void
.end method

.method public tearDown()V
    .locals 1

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/android/incallui/service/vt/VideoCallEventHandler;->cancelTimer(I)V

    const/16 v0, 0x66

    invoke-direct {p0, v0}, Lcom/android/incallui/service/vt/VideoCallEventHandler;->cancelTimer(I)V

    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcom/android/incallui/service/vt/VideoCallEventHandler;->cancelTimer(I)V

    return-void
.end method
