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

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/android/incallui/service/vt/VideoCallEventHandler$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/vt/VideoCallEventHandler$1;-><init>(Lcom/android/incallui/service/vt/VideoCallEventHandler;)V

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallEventHandler;->mHandler:Landroid/os/Handler;

    .line 76
    return-void
.end method

.method private cancelTimer(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallEventHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallEventHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 73
    :cond_0
    return-void
.end method

.method private restartTimer(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "duration"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/VideoCallEventHandler;->cancelTimer(I)V

    .line 66
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallEventHandler;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 67
    return-void
.end method

.method private startTimer(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "duration"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallEventHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallEventHandler;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelCameraEvent()V
    .locals 1

    .prologue
    .line 113
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcom/android/incallui/service/vt/VideoCallEventHandler;->cancelTimer(I)V

    .line 114
    const/16 v0, 0x66

    invoke-direct {p0, v0}, Lcom/android/incallui/service/vt/VideoCallEventHandler;->cancelTimer(I)V

    .line 115
    return-void
.end method

.method public cancelSwapProgressing()V
    .locals 1

    .prologue
    .line 118
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/android/incallui/service/vt/VideoCallEventHandler;->cancelTimer(I)V

    .line 119
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

    .prologue
    const/16 v1, 0x65

    .line 101
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-nez v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallEventHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    invoke-direct {p0, v1}, Lcom/android/incallui/service/vt/VideoCallEventHandler;->cancelTimer(I)V

    goto :goto_0

    .line 108
    :cond_1
    const/16 v0, 0x66

    const/16 v1, 0x1f4

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/service/vt/VideoCallEventHandler;->restartTimer(II)V

    goto :goto_0
.end method

.method public resumeCameraForActivityState()V
    .locals 2

    .prologue
    const/16 v1, 0x66

    .line 89
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallEventHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    invoke-direct {p0, v1}, Lcom/android/incallui/service/vt/VideoCallEventHandler;->cancelTimer(I)V

    goto :goto_0

    .line 96
    :cond_1
    const/16 v0, 0x65

    const/16 v1, 0x1f4

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/service/vt/VideoCallEventHandler;->restartTimer(II)V

    goto :goto_0
.end method

.method public startSwapProgressing()V
    .locals 2

    .prologue
    .line 85
    const/16 v0, 0x64

    const/16 v1, 0x5dc

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/service/vt/VideoCallEventHandler;->startTimer(II)V

    .line 86
    return-void
.end method

.method public tearDown()V
    .locals 1

    .prologue
    .line 79
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/android/incallui/service/vt/VideoCallEventHandler;->cancelTimer(I)V

    .line 80
    const/16 v0, 0x66

    invoke-direct {p0, v0}, Lcom/android/incallui/service/vt/VideoCallEventHandler;->cancelTimer(I)V

    .line 81
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcom/android/incallui/service/vt/VideoCallEventHandler;->cancelTimer(I)V

    .line 82
    return-void
.end method
