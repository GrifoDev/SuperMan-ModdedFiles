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

    .line 51
    sput-object v0, Lcom/android/incallui/service/vt/VideoCallAdapter;->sPreviewSurface:Landroid/view/Surface;

    .line 52
    sput-object v0, Lcom/android/incallui/service/vt/VideoCallAdapter;->sDisplaySurface:Landroid/view/Surface;

    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/service/vt/VideoCallAdapter;->sIsInitialize:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mRecordFarEnd:Z

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mRecordTime:J

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mRecordingFileName:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    .line 64
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mTelecommCall:Landroid/telecom/Call;

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setCameraId(I)V

    .line 68
    return-void
.end method

.method private canVideoPause()Z
    .locals 1

    .prologue
    .line 393
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_VIDEO_PAUSE:Z

    return v0
.end method

.method private enterVideoCall()V
    .locals 2

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isVideoCallReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isPS()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->sendStillImage()V

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->startCamera()V

    .line 121
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/service/vt/VideoCallAdapter;->sIsInitialize:Z

    .line 125
    :goto_0
    return-void

    .line 123
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

    .line 128
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v0, :cond_0

    .line 129
    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/PrivatePolicy;->clearForModifyCall()V

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->stopCamera()V

    .line 133
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallAdapter;->sPreviewSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {p0, v1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setPreviewSurface(Landroid/view/Surface;)V

    .line 136
    :cond_1
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallAdapter;->sDisplaySurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    .line 137
    invoke-virtual {p0, v1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setDisplaySurface(Landroid/view/Surface;)V

    .line 139
    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/service/vt/VideoCallAdapter;->sIsInitialize:Z

    .line 140
    return-void
.end method

.method private isPS()Z
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isPSDomain()Z

    move-result v0

    return v0
.end method

.method private isVideoCallReady()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 74
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
    .line 432
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

    .line 433
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

    .line 434
    .local v0, "cmd":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/TelecomAdapter;->requestOfSecVideoProvider(Lcom/android/incallui/Call;Ljava/lang/String;)V

    .line 435
    return-void
.end method


# virtual methods
.method public checkAndDestroySurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 215
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallAdapter;->sDisplaySurface:Landroid/view/Surface;

    if-ne v0, p1, :cond_0

    .line 216
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setDisplaySurface(Landroid/view/Surface;)V

    .line 218
    :cond_0
    return-void
.end method

.method public clearCameraEffect()V
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setCameraEffect(I)V

    .line 270
    return-void
.end method

.method public getDisplaySurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 221
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallAdapter;->sDisplaySurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getFarEndRecordFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mRecordingFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 229
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallAdapter;->sPreviewSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getRecordingDuration()J
    .locals 6

    .prologue
    .line 397
    const-wide/16 v0, 0x0

    .line 398
    .local v0, "duration":J
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isFarEndRecord()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mRecordTime:J

    sub-long v0, v2, v4

    .line 401
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

    .line 402
    return-wide v0
.end method

.method public getVideoCall()Landroid/telecom/InCallService$VideoCall;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    return-object v0
.end method

.method public isFarEndRecord()Z
    .locals 1

    .prologue
    .line 406
    iget-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mRecordFarEnd:Z

    return v0
.end method

.method public isSameDisplaySurface(Landroid/view/Surface;)Z
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 225
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
    .line 233
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
    .line 93
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallAdapter;->sIsInitialize:Z

    if-eqz v1, :cond_0

    .line 94
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-eqz v1, :cond_1

    .line 95
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

    .line 96
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->exitVideoCall()V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallList;->getFirstCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v0

    .line 99
    .local v0, "foreground":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallList;->isAlive(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    invoke-virtual {v0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
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

    .line 103
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->exitVideoCall()V

    goto :goto_0

    .line 106
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

    .line 107
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->exitVideoCall()V

    goto :goto_0
.end method

.method public onForeground(Landroid/telecom/InCallService$VideoCall;)V
    .locals 3
    .param p1, "videoCall"    # Landroid/telecom/InCallService$VideoCall;

    .prologue
    .line 78
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-eq p1, v1, :cond_2

    const/4 v0, 0x1

    .line 80
    .local v0, "isVideoCallChanged":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 81
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

    .line 82
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->enterVideoCall()V

    .line 89
    :cond_1
    :goto_2
    iput-object p1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    goto :goto_0

    .line 79
    .end local v0    # "isVideoCallChanged":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 84
    .restart local v0    # "isVideoCallChanged":Z
    :cond_3
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallAdapter;->sIsInitialize:Z

    if-nez v1, :cond_1

    .line 85
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

    .line 86
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->enterVideoCall()V

    goto :goto_2
.end method

.method public requestPauseVideo()V
    .locals 5

    .prologue
    const/high16 v4, 0x100000

    .line 273
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v2}, Lcom/android/incallui/VideoPauseController;->canVideoPause(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->isPSDomain()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 274
    .local v0, "canPauseVideo":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 275
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getVideoPauseState()I

    move-result v1

    .line 276
    .local v1, "videoPauseState":I
    invoke-static {v1}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->isPausedTx(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 277
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->pauseTx(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/Call;->setVideoPauseState(I)V

    .line 278
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isVideoCallReady()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->canVideoPause()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : requestPauseVideo : CAPABILITY_CAN_PAUSE_VIDEO="

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

    .line 281
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v3}, Lcom/android/incallui/VideoUtils;->makeVideoPauseProfile(Lcom/android/incallui/Call;)Landroid/telecom/VideoProfile;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 293
    .end local v1    # "videoPauseState":I
    :goto_1
    return-void

    .line 273
    .end local v0    # "canPauseVideo":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 283
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

    .line 284
    invoke-virtual {v3, v4}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 283
    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    goto :goto_1

    .line 287
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : requestPauseVideo : skipped  VideoPauseState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 288
    invoke-static {v1}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 287
    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    goto :goto_1

    .line 291
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

    .line 296
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v2}, Lcom/android/incallui/VideoPauseController;->canVideoPause(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->isPSDomain()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 297
    .local v0, "canVideoPause":Z
    :goto_0
    if-eqz v0, :cond_4

    .line 298
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getVideoPauseState()I

    move-result v1

    .line 299
    .local v1, "videoPauseState":I
    invoke-static {v1}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->isNone(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 300
    invoke-static {v1}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->isPausedTx(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->unPauseTx(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/Call;->setVideoPauseState(I)V

    .line 303
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isVideoCallReady()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->canVideoPause()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : requestResumeVideo : CAPABILITY_CAN_PAUSE_VIDEO="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    .line 305
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

    .line 304
    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v3}, Lcom/android/incallui/VideoUtils;->makeVideoUnPauseProfile(Lcom/android/incallui/Call;)Landroid/telecom/VideoProfile;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 318
    .end local v1    # "videoPauseState":I
    :goto_1
    return-void

    .line 296
    .end local v0    # "canVideoPause":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 308
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

    .line 309
    invoke-virtual {v3, v4}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 308
    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    goto :goto_1

    .line 312
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : requestResumeVideo : skipped  VideoPauseState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 313
    invoke-static {v1}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 312
    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    goto :goto_1

    .line 316
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
    .line 414
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mRecordFarEnd:Z

    .line 415
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mRecordingFileName:Ljava/lang/String;

    .line 416
    return-void
.end method

.method public sendDTMF(Ljava/lang/String;)V
    .locals 3
    .param p1, "dtmfMsg"    # Ljava/lang/String;

    .prologue
    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDTMF,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "cmd":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/TelecomAdapter;->requestOfSecVideoProvider(Lcom/android/incallui/Call;Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method public sendSessionModifyRequest(I)V
    .locals 5
    .param p1, "videoState"    # I

    .prologue
    const/4 v4, 0x0

    .line 334
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isVideoCallReady()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 335
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

    .line 336
    new-instance v1, Landroid/telecom/VideoProfile;

    invoke-direct {v1, p1}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 337
    .local v1, "videoProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 338
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    if-eqz v2, :cond_0

    .line 339
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    .line 340
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2, p1}, Lcom/android/incallui/Call;->setRequestingVideoState(I)V

    .line 342
    :cond_0
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->isDialpadVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 343
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->hideDialpadForModifyCall()V

    .line 346
    :cond_1
    if-nez p1, :cond_2

    .line 347
    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 348
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    .line 349
    .local v0, "secCall":Lcom/android/incallui/SecCall;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->isChangedToTwoWayVideo()Z

    move-result v2

    if-nez v2, :cond_3

    .line 350
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/android/incallui/Call;->setMessageVoiceFromVideo(I)V

    .line 364
    .end local v0    # "secCall":Lcom/android/incallui/SecCall;
    .end local v1    # "videoProfile":Landroid/telecom/VideoProfile;
    :cond_2
    :goto_0
    return-void

    .line 352
    .restart local v0    # "secCall":Lcom/android/incallui/SecCall;
    .restart local v1    # "videoProfile":Landroid/telecom/VideoProfile;
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2, v4}, Lcom/android/incallui/Call;->setMessageVoiceFromVideo(I)V

    goto :goto_0

    .line 354
    .end local v0    # "secCall":Lcom/android/incallui/SecCall;
    :cond_4
    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "feature_chn"

    .line 355
    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "feature_hktw"

    .line 356
    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "feature_dcm"

    .line 357
    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 358
    :cond_5
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    const v3, 0x7f0902de

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 362
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
    .line 367
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isVideoCallReady()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 368
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

    .line 369
    new-instance v1, Landroid/telecom/VideoProfile;

    invoke-direct {v1, p1}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 370
    .local v1, "videoProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 371
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    if-eqz v2, :cond_1

    .line 372
    const/4 v0, 0x0

    .line 373
    .local v0, "forceUpdate":Z
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 375
    const/4 v0, 0x1

    .line 377
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/android/incallui/Call;->setSessionModificationState(IZ)V

    .line 382
    .end local v0    # "forceUpdate":Z
    .end local v1    # "videoProfile":Landroid/telecom/VideoProfile;
    :cond_1
    :goto_0
    return-void

    .line 380
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
    .line 163
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isVideoCallReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
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

    .line 165
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService$VideoCall;->setCamera(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0, p1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setCameraId(I)V

    .line 170
    :goto_0
    return-void

    .line 168
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
    .line 257
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->CAMERA_EFFECT:Z

    if-eqz v1, :cond_0

    .line 258
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isVideoCallReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "effect,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "effect":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telecom/InCallService$VideoCall;->setCamera(Ljava/lang/String;)V

    .line 261
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

    .line 266
    .end local v0    # "effect":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 263
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
    .line 250
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    .line 251
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

    .line 252
    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoSettings()Lcom/android/incallui/Call$VideoSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/Call$VideoSettings;->setCameraId(I)V

    .line 254
    :cond_0
    return-void
.end method

.method public setDeviceRotatoin(I)V
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isPS()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isVideoCallReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
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

    .line 240
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telecom/InCallService$VideoCall;->setDeviceOrientation(I)V

    .line 247
    :goto_0
    return-void

    .line 242
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

    .line 245
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->onWindowRotationChanged(I)V

    goto :goto_0
.end method

.method public setDisplaySurface(Landroid/view/Surface;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isVideoCallReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    invoke-virtual {p0, p1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isSameDisplaySurface(Landroid/view/Surface;)Z

    move-result v0

    .line 202
    .local v0, "isSameSurface":Z
    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/incallui/service/vt/VideoCallAdapter;->sDisplaySurface:Landroid/view/Surface;

    if-nez v1, :cond_0

    .line 212
    .end local v0    # "isSameSurface":Z
    :goto_0
    return-void

    .line 205
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

    .line 206
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telecom/InCallService$VideoCall;->setDisplaySurface(Landroid/view/Surface;)V

    .line 207
    sput-object p1, Lcom/android/incallui/service/vt/VideoCallAdapter;->sDisplaySurface:Landroid/view/Surface;

    goto :goto_0

    .line 209
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

    .line 210
    const/4 v1, 0x0

    sput-object v1, Lcom/android/incallui/service/vt/VideoCallAdapter;->sDisplaySurface:Landroid/view/Surface;

    goto :goto_0
.end method

.method public setPauseImage(Ljava/lang/String;)V
    .locals 3
    .param p1, "file_path"    # Ljava/lang/String;

    .prologue
    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, "file_uri":Landroid/net/Uri;
    if-eqz p1, :cond_0

    .line 323
    invoke-static {p1}, Lcom/android/incallui/util/VideoCallUtils;->makeFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 325
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isVideoCallReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 326
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

    .line 327
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telecom/InCallService$VideoCall;->setPauseImage(Landroid/net/Uri;)V

    .line 331
    :goto_0
    return-void

    .line 329
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
    .line 185
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isVideoCallReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    invoke-virtual {p0, p1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isSamePreviewSurface(Landroid/view/Surface;)Z

    move-result v0

    .line 187
    .local v0, "isSameSurface":Z
    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/incallui/service/vt/VideoCallAdapter;->sPreviewSurface:Landroid/view/Surface;

    if-nez v1, :cond_0

    .line 197
    .end local v0    # "isSameSurface":Z
    :goto_0
    return-void

    .line 190
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

    .line 191
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telecom/InCallService$VideoCall;->setPreviewSurface(Landroid/view/Surface;)V

    .line 192
    sput-object p1, Lcom/android/incallui/service/vt/VideoCallAdapter;->sPreviewSurface:Landroid/view/Surface;

    goto :goto_0

    .line 194
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

    .line 195
    const/4 v1, 0x0

    sput-object v1, Lcom/android/incallui/service/vt/VideoCallAdapter;->sPreviewSurface:Landroid/view/Surface;

    goto :goto_0
.end method

.method public startCamera()V
    .locals 2

    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->getCameraId(Lcom/android/incallui/Call;)I

    move-result v0

    .line 144
    .local v0, "cameraDir":I
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager;->resetDeviceRotatoin()V

    .line 145
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->isModifyProgressing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/util/CallTypeUtils;->isVideoTxEnabled(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->isModifyDummy()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setCamera(I)V

    .line 149
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setCamera(I)V

    .line 151
    :cond_2
    return-void
.end method

.method public startRecord(Z)V
    .locals 4
    .param p1, "isFarEnd"    # Z

    .prologue
    const/4 v1, 0x1

    .line 419
    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mRecordFarEnd:Z

    .line 420
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mRecordTime:J

    .line 421
    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->getValidFileName(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mRecordingFileName:Ljava/lang/String;

    .line 422
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

    .line 423
    .local v0, "cmd":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/TelecomAdapter;->requestOfSecVideoProvider(Lcom/android/incallui/Call;Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method public stopCamera()V
    .locals 2

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isVideoCallReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
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

    .line 156
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService$VideoCall;->setCamera(Ljava/lang/String;)V

    .line 160
    :goto_0
    return-void

    .line 158
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
    .line 427
    const-string v0, "stopRecord"

    .line 428
    .local v0, "cmd":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/TelecomAdapter;->requestOfSecVideoProvider(Lcom/android/incallui/Call;Ljava/lang/String;)V

    .line 429
    return-void
.end method

.method public switchCamera()V
    .locals 3

    .prologue
    .line 173
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getVideoSettings()Lcom/android/incallui/Call$VideoSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/Call$VideoSettings;->getToggledCameraId()I

    move-result v0

    .line 174
    .local v0, "switchedId":I
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isVideoCallReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
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

    .line 176
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telecom/InCallService$VideoCall;->setCamera(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setCameraId(I)V

    .line 182
    :goto_0
    return-void

    .line 179
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
