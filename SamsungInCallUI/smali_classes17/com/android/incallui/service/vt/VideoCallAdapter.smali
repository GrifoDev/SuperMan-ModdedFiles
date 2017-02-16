.class public Lcom/android/incallui/service/vt/VideoCallAdapter;
.super Ljava/lang/Object;
.source "VideoCallAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/service/vt/VideoCallAdapter$SecVideoApi;
    }
.end annotation


# static fields
.field public static final SEPERATOR:Ljava/lang/String; = ","

.field private static sDisplaySurface:Landroid/view/Surface;

.field private static sIsInitialize:Z

.field private static sPreviewSurface:Landroid/view/Surface;


# instance fields
.field private mCall:Lcom/android/incallui/Call;

.field private mCallId:Ljava/lang/String;

.field private mRecordFarEnd:Z

.field private mRecordTime:J

.field private mRecordingFileName:Ljava/lang/String;

.field private mTelecommCall:Landroid/telecom/Call;

.field private mVideoCall:Landroid/telecom/InCallService$VideoCall;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    sput-object v0, Lcom/android/incallui/service/vt/VideoCallAdapter;->sPreviewSurface:Landroid/view/Surface;

    .line 51
    sput-object v0, Lcom/android/incallui/service/vt/VideoCallAdapter;->sDisplaySurface:Landroid/view/Surface;

    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/service/vt/VideoCallAdapter;->sIsInitialize:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mRecordFarEnd:Z

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mRecordTime:J

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mRecordingFileName:Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    .line 63
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mTelecommCall:Landroid/telecom/Call;

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setCameraId(I)V

    .line 67
    return-void
.end method

.method private canVideoPause()Z
    .locals 1

    .prologue
    .line 389
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_VIDEO_PAUSE:Z

    return v0
.end method

.method private enterVideoCall()V
    .locals 2

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isVideoCallReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isPS()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->sendStillImage()V

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->startCamera()V

    .line 120
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/service/vt/VideoCallAdapter;->sIsInitialize:Z

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : enterVideoCall - VideoCall is not ready"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private exitVideoCall()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->stopCamera()V

    .line 129
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallAdapter;->sPreviewSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0, v1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setPreviewSurface(Landroid/view/Surface;)V

    .line 132
    :cond_0
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallAdapter;->sDisplaySurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p0, v1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setDisplaySurface(Landroid/view/Surface;)V

    .line 135
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/service/vt/VideoCallAdapter;->sIsInitialize:Z

    .line 136
    return-void
.end method

.method private isPS()Z
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isPSDomain()Z

    move-result v0

    return v0
.end method

.method private isVideoCallReady()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 73
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isVideoCallReady()Z

    move-result v0

    goto :goto_0
.end method

.method private onWindowRotationChanged(I)V
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : onWindowRotationChanged rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeRotation,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "cmd":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/TelecomAdapter;->requestOfSecVideoProvider(Lcom/android/incallui/Call;Ljava/lang/String;)V

    .line 431
    return-void
.end method


# virtual methods
.method public checkAndDestroySurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 211
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallAdapter;->sDisplaySurface:Landroid/view/Surface;

    if-ne v0, p1, :cond_0

    .line 212
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setDisplaySurface(Landroid/view/Surface;)V

    .line 214
    :cond_0
    return-void
.end method

.method public clearCameraEffect()V
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setCameraEffect(I)V

    .line 266
    return-void
.end method

.method public getDisplaySurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 217
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallAdapter;->sDisplaySurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getFarEndRecordFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mRecordingFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 225
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallAdapter;->sPreviewSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getRecordingDuration()J
    .locals 6

    .prologue
    .line 393
    const-wide/16 v0, 0x0

    .line 394
    .local v0, "duration":J
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isFarEndRecord()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 395
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mRecordTime:J

    sub-long v0, v2, v4

    .line 397
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : getRecordingDuration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->adapter(Ljava/lang/String;)V

    .line 398
    return-wide v0
.end method

.method public getVideoCall()Landroid/telecom/InCallService$VideoCall;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    return-object v0
.end method

.method public isFarEndRecord()Z
    .locals 1

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mRecordFarEnd:Z

    return v0
.end method

.method public isSameDisplaySurface(Landroid/view/Surface;)Z
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 221
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallAdapter;->sDisplaySurface:Landroid/view/Surface;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSamePreviewSurface(Landroid/view/Surface;)Z
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 229
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallAdapter;->sPreviewSurface:Landroid/view/Surface;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackgound(Z)V
    .locals 3
    .param p1, "downgrade"    # Z

    .prologue
    .line 92
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallAdapter;->sIsInitialize:Z

    if-eqz v1, :cond_0

    .line 93
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-eqz v1, :cond_1

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : onBackgound - exitVideoCall : Downgrade"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    .line 95
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->exitVideoCall()V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallList;->getFirstCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v0

    .line 98
    .local v0, "foreground":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallList;->isAlive(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    invoke-virtual {v0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : onBackgound - exitVideoCall : foreground is Audio"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->exitVideoCall()V

    goto :goto_0

    .line 105
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : onBackgound - exitVideoCall : onDisconnect"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->exitVideoCall()V

    goto :goto_0
.end method

.method public onForeground(Landroid/telecom/InCallService$VideoCall;)V
    .locals 3
    .param p1, "videoCall"    # Landroid/telecom/InCallService$VideoCall;

    .prologue
    .line 77
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-eq p1, v1, :cond_2

    const/4 v0, 0x1

    .line 79
    .local v0, "isVideoCallChanged":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : onForeground - enterVideoCall : Changed VideoCall"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    .line 81
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->enterVideoCall()V

    .line 88
    :cond_1
    :goto_2
    iput-object p1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    goto :goto_0

    .line 78
    .end local v0    # "isVideoCallChanged":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 83
    .restart local v0    # "isVideoCallChanged":Z
    :cond_3
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallAdapter;->sIsInitialize:Z

    if-nez v1, :cond_1

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : onForeground - enterVideoCall : Initialize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->enterVideoCall()V

    goto :goto_2
.end method

.method public requestPauseVideo()V
    .locals 5

    .prologue
    const/high16 v4, 0x100000

    .line 269
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v2}, Lcom/android/incallui/VideoPauseController;->canVideoPause(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->isPSDomain()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 270
    .local v0, "canPauseVideo":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 271
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getVideoPauseState()I

    move-result v1

    .line 272
    .local v1, "videoPauseState":I
    invoke-static {v1}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->isPausedTx(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 273
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->pauseTx(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/Call;->setVideoPauseState(I)V

    .line 274
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isVideoCallReady()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->canVideoPause()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : requestPauseVideo : CAPABILITY_CAN_PAUSE_VIDEO="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    .line 276
    invoke-virtual {v3, v4}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 275
    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v3}, Lcom/android/incallui/VideoUtils;->makeVideoPauseProfile(Lcom/android/incallui/Call;)Landroid/telecom/VideoProfile;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 289
    .end local v1    # "videoPauseState":I
    :goto_1
    return-void

    .line 269
    .end local v0    # "canPauseVideo":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 279
    .restart local v0    # "canPauseVideo":Z
    .restart local v1    # "videoPauseState":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : requestPauseVideo - VideoCall is not ready, CAPABILITY_CAN_PAUSE_VIDEO="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    .line 280
    invoke-virtual {v3, v4}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 279
    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    goto :goto_1

    .line 283
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : requestPauseVideo : skipped  VideoPauseState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 284
    invoke-static {v1}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 283
    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    goto :goto_1

    .line 287
    .end local v1    # "videoPauseState":I
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : requestPauseVideo : skipped  canVideoPause is false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v3}, Lcom/android/incallui/VideoPauseController;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public requestResumeVideo()V
    .locals 5

    .prologue
    const/high16 v4, 0x100000

    .line 292
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v2}, Lcom/android/incallui/VideoPauseController;->canVideoPause(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->isPSDomain()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 293
    .local v0, "canVideoPause":Z
    :goto_0
    if-eqz v0, :cond_4

    .line 294
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getVideoPauseState()I

    move-result v1

    .line 295
    .local v1, "videoPauseState":I
    invoke-static {v1}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->isNone(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 296
    invoke-static {v1}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->isPausedTx(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 297
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->unPauseTx(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/Call;->setVideoPauseState(I)V

    .line 299
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isVideoCallReady()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->canVideoPause()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : requestResumeVideo : CAPABILITY_CAN_PAUSE_VIDEO="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    .line 301
    invoke-virtual {v3, v4}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", State="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 300
    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v3}, Lcom/android/incallui/VideoUtils;->makeVideoUnPauseProfile(Lcom/android/incallui/Call;)Landroid/telecom/VideoProfile;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 314
    .end local v1    # "videoPauseState":I
    :goto_1
    return-void

    .line 292
    .end local v0    # "canVideoPause":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 304
    .restart local v0    # "canVideoPause":Z
    .restart local v1    # "videoPauseState":I
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :  requestResumeVideo - VideoCall is not ready, CAPABILITY_CAN_PAUSE_VIDEO="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    .line 305
    invoke-virtual {v3, v4}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 304
    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    goto :goto_1

    .line 308
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : requestResumeVideo : skipped  VideoPauseState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 309
    invoke-static {v1}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 308
    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    goto :goto_1

    .line 312
    .end local v1    # "videoPauseState":I
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : requestResumeVideo : skipped  canVideoPause is false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v3}, Lcom/android/incallui/VideoPauseController;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public resetRecordInfo()V
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mRecordFarEnd:Z

    .line 411
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mRecordingFileName:Ljava/lang/String;

    .line 412
    return-void
.end method

.method public sendDTMF(Ljava/lang/String;)V
    .locals 3
    .param p1, "dtmfMsg"    # Ljava/lang/String;

    .prologue
    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDTMF,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, "cmd":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/TelecomAdapter;->requestOfSecVideoProvider(Lcom/android/incallui/Call;Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method public sendSessionModifyRequest(I)V
    .locals 5
    .param p1, "videoState"    # I

    .prologue
    const/4 v4, 0x0

    .line 330
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isVideoCallReady()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : sendSessionModifyRequest  videoState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    .line 332
    new-instance v1, Landroid/telecom/VideoProfile;

    invoke-direct {v1, p1}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 333
    .local v1, "videoProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 334
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    if-eqz v2, :cond_0

    .line 335
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    .line 336
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2, p1}, Lcom/android/incallui/Call;->setRequestingVideoState(I)V

    .line 338
    :cond_0
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->isDialpadVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 339
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->hideDialpadForModifyCall()V

    .line 342
    :cond_1
    if-nez p1, :cond_2

    .line 343
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 344
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    .line 345
    .local v0, "secCall":Lcom/android/incallui/SecCall;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->isChangedToTwoWayVideo()Z

    move-result v2

    if-nez v2, :cond_3

    .line 346
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/android/incallui/Call;->setMessageVoiceFromVideo(I)V

    .line 360
    .end local v0    # "secCall":Lcom/android/incallui/SecCall;
    .end local v1    # "videoProfile":Landroid/telecom/VideoProfile;
    :cond_2
    :goto_0
    return-void

    .line 348
    .restart local v0    # "secCall":Lcom/android/incallui/SecCall;
    .restart local v1    # "videoProfile":Landroid/telecom/VideoProfile;
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2, v4}, Lcom/android/incallui/Call;->setMessageVoiceFromVideo(I)V

    goto :goto_0

    .line 350
    .end local v0    # "secCall":Lcom/android/incallui/SecCall;
    :cond_4
    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "feature_chn"

    .line 351
    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "feature_hktw"

    .line 352
    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "feature_dcm"

    .line 353
    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 354
    :cond_5
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    const v3, 0x7f0902d2

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 358
    .end local v1    # "videoProfile":Landroid/telecom/VideoProfile;
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : sendSessionModifyRequest - VideoCall is not ready"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendSessionModifyResponse(I)V
    .locals 4
    .param p1, "videoState"    # I

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isVideoCallReady()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : sendSessionModifyResponse  videoState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    .line 365
    new-instance v1, Landroid/telecom/VideoProfile;

    invoke-direct {v1, p1}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 366
    .local v1, "videoProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 367
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    if-eqz v2, :cond_1

    .line 368
    const/4 v0, 0x0

    .line 369
    .local v0, "forceUpdate":Z
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 371
    const/4 v0, 0x1

    .line 373
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/android/incallui/Call;->setSessionModificationState(IZ)V

    .line 378
    .end local v0    # "forceUpdate":Z
    .end local v1    # "videoProfile":Landroid/telecom/VideoProfile;
    :cond_1
    :goto_0
    return-void

    .line 376
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : sendSessionModifyResponse - VideoCall is not ready"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCamera(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isVideoCallReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : setCamera - id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService$VideoCall;->setCamera(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0, p1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setCameraId(I)V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : setCamera - VideoCall is not ready"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCameraEffect(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 253
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->CAMERA_EFFECT:Z

    if-eqz v1, :cond_0

    .line 254
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isVideoCallReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "effect,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "effect":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telecom/InCallService$VideoCall;->setCamera(Ljava/lang/String;)V

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : setCameraEffect - effect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    .line 262
    .end local v0    # "effect":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : setCameraEffect - VideoCall is not ready"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCameraId(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  : setCameraId - id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoSettings()Lcom/android/incallui/Call$VideoSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/Call$VideoSettings;->setCameraId(I)V

    .line 250
    :cond_0
    return-void
.end method

.method public setDeviceRotatoin(I)V
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isPS()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isVideoCallReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : setDeviceRotatoin - rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telecom/InCallService$VideoCall;->setDeviceOrientation(I)V

    .line 243
    :goto_0
    return-void

    .line 238
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : setDeviceRotatoin - VideoCall is not ready"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->onWindowRotationChanged(I)V

    goto :goto_0
.end method

.method public setDisplaySurface(Landroid/view/Surface;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isVideoCallReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    invoke-virtual {p0, p1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isSameDisplaySurface(Landroid/view/Surface;)Z

    move-result v0

    .line 198
    .local v0, "isSameSurface":Z
    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/incallui/service/vt/VideoCallAdapter;->sDisplaySurface:Landroid/view/Surface;

    if-nez v1, :cond_0

    .line 208
    .end local v0    # "isSameSurface":Z
    :goto_0
    return-void

    .line 201
    .restart local v0    # "isSameSurface":Z
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : setDisplaySurface - isSameSurface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telecom/InCallService$VideoCall;->setDisplaySurface(Landroid/view/Surface;)V

    .line 203
    sput-object p1, Lcom/android/incallui/service/vt/VideoCallAdapter;->sDisplaySurface:Landroid/view/Surface;

    goto :goto_0

    .line 205
    .end local v0    # "isSameSurface":Z
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : setDisplaySurface - VideoCall is not ready"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    .line 206
    const/4 v1, 0x0

    sput-object v1, Lcom/android/incallui/service/vt/VideoCallAdapter;->sDisplaySurface:Landroid/view/Surface;

    goto :goto_0
.end method

.method public setPauseImage(Ljava/lang/String;)V
    .locals 3
    .param p1, "file_path"    # Ljava/lang/String;

    .prologue
    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, "file_uri":Landroid/net/Uri;
    if-eqz p1, :cond_0

    .line 319
    invoke-static {p1}, Lcom/android/incallui/util/VideoCallUtils;->makeFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 321
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isVideoCallReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : setPauseImage  file_uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telecom/InCallService$VideoCall;->setPauseImage(Landroid/net/Uri;)V

    .line 327
    :goto_0
    return-void

    .line 325
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : setPauseImage - VideoCall is not ready"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPreviewSurface(Landroid/view/Surface;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isVideoCallReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    invoke-virtual {p0, p1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isSamePreviewSurface(Landroid/view/Surface;)Z

    move-result v0

    .line 183
    .local v0, "isSameSurface":Z
    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/incallui/service/vt/VideoCallAdapter;->sPreviewSurface:Landroid/view/Surface;

    if-nez v1, :cond_0

    .line 193
    .end local v0    # "isSameSurface":Z
    :goto_0
    return-void

    .line 186
    .restart local v0    # "isSameSurface":Z
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : setPreviewSurface - isSameSurface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telecom/InCallService$VideoCall;->setPreviewSurface(Landroid/view/Surface;)V

    .line 188
    sput-object p1, Lcom/android/incallui/service/vt/VideoCallAdapter;->sPreviewSurface:Landroid/view/Surface;

    goto :goto_0

    .line 190
    .end local v0    # "isSameSurface":Z
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : setPreviewSurface - VideoCall is not ready"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    .line 191
    const/4 v1, 0x0

    sput-object v1, Lcom/android/incallui/service/vt/VideoCallAdapter;->sPreviewSurface:Landroid/view/Surface;

    goto :goto_0
.end method

.method public startCamera()V
    .locals 2

    .prologue
    .line 139
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->getCameraId(Lcom/android/incallui/Call;)I

    move-result v0

    .line 140
    .local v0, "cameraDir":I
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager;->resetDeviceRotatoin()V

    .line 141
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->isModifyProgressing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/util/CallTypeUtils;->isVideoTxEnabled(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->isModifyDummy()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setCamera(I)V

    .line 145
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setCamera(I)V

    .line 147
    :cond_2
    return-void
.end method

.method public startRecord(Z)V
    .locals 4
    .param p1, "isFarEnd"    # Z

    .prologue
    const/4 v1, 0x1

    .line 415
    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mRecordFarEnd:Z

    .line 416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mRecordTime:J

    .line 417
    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->getValidFileName(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mRecordingFileName:Ljava/lang/String;

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecord,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mRecordingFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, "cmd":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/TelecomAdapter;->requestOfSecVideoProvider(Lcom/android/incallui/Call;Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method public stopCamera()V
    .locals 2

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isVideoCallReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : stopCamera "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService$VideoCall;->setCamera(Ljava/lang/String;)V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : stopCamera - VideoCall is not ready"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopRecord()V
    .locals 3

    .prologue
    .line 423
    const-string v0, "stopRecord"

    .line 424
    .local v0, "cmd":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/TelecomAdapter;->requestOfSecVideoProvider(Lcom/android/incallui/Call;Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method public switchCamera()V
    .locals 3

    .prologue
    .line 169
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getVideoSettings()Lcom/android/incallui/Call$VideoSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/Call$VideoSettings;->getToggledCameraId()I

    move-result v0

    .line 170
    .local v0, "switchedId":I
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isVideoCallReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : switchCamera - id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telecom/InCallService$VideoCall;->setCamera(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setCameraId(I)V

    .line 178
    :goto_0
    return-void

    .line 175
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : switchCamera - VideoCall is not ready"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    goto :goto_0
.end method
