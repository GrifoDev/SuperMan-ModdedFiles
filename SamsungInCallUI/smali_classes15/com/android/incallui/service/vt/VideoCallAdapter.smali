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

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/service/vt/VideoCallAdapter;->sPreviewSurface:Landroid/view/Surface;

    sput-object v0, Lcom/android/incallui/service/vt/VideoCallAdapter;->sDisplaySurface:Landroid/view/Surface;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/service/vt/VideoCallAdapter;->sIsInitialize:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/incallui/Call;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mRecordFarEnd:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mRecordTime:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mRecordingFileName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mTelecommCall:Landroid/telecom/Call;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setCameraId(I)V

    return-void
.end method

.method private canVideoPause()Z
    .locals 1

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_VIDEO_PAUSE:Z

    return v0
.end method

.method private enterVideoCall()V
    .locals 2

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isVideoCallReady()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isPS()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->sendStillImage()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->startCamera()V

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/service/vt/VideoCallAdapter;->sIsInitialize:Z

    :goto_0
    return-void

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

    const/4 v1, 0x0

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/PrivatePolicy;->clearForModifyCall()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->stopCamera()V

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallAdapter;->sPreviewSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setPreviewSurface(Landroid/view/Surface;)V

    :cond_1
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallAdapter;->sDisplaySurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setDisplaySurface(Landroid/view/Surface;)V

    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/service/vt/VideoCallAdapter;->sIsInitialize:Z

    return-void
.end method

.method private isPS()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isPSDomain()Z

    move-result v0

    return v0
.end method

.method private isVideoCallReady()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    const/4 v0, 0x0

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

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/TelecomAdapter;->requestOfSecVideoProvider(Lcom/android/incallui/Call;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkAndDestroyDisplaySurface(Landroid/view/Surface;)V
    .locals 1

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallAdapter;->sDisplaySurface:Landroid/view/Surface;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setDisplaySurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public checkAndDestroyPreviewSurface(Landroid/view/Surface;)V
    .locals 1

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallAdapter;->sPreviewSurface:Landroid/view/Surface;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setPreviewSurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public clearCameraEffect()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setCameraEffect(I)V

    return-void
.end method

.method public getDisplaySurface()Landroid/view/Surface;
    .locals 1

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallAdapter;->sDisplaySurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getFarEndRecordFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mRecordingFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewSurface()Landroid/view/Surface;
    .locals 1

    sget-object v0, Lcom/android/incallui/service/vt/VideoCallAdapter;->sPreviewSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getRecordingDuration()J
    .locals 6

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isFarEndRecord()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mRecordTime:J

    sub-long v0, v2, v4

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

    return-wide v0
.end method

.method public getVideoCall()Landroid/telecom/InCallService$VideoCall;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mTelecommCall:Landroid/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    return-object v0
.end method

.method public isFarEndRecord()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mRecordFarEnd:Z

    return v0
.end method

.method public isSameDisplaySurface(Landroid/view/Surface;)Z
    .locals 1

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

    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallAdapter;->sIsInitialize:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-eqz v1, :cond_1

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

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->exitVideoCall()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallList;->getFirstCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallList;->isAlive(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v1

    if-nez v1, :cond_0

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

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->exitVideoCall()V

    goto :goto_0

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

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->exitVideoCall()V

    goto :goto_0
.end method

.method public onForeground(Landroid/telecom/InCallService$VideoCall;)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-eq p1, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

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

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->enterVideoCall()V

    :cond_1
    :goto_2
    iput-object p1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallAdapter;->sIsInitialize:Z

    if-nez v1, :cond_1

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

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->enterVideoCall()V

    goto :goto_2
.end method

.method public requestPauseVideo()V
    .locals 5

    const/high16 v4, 0x100000

    sget v2, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v2}, Lcom/android/incallui/VideoPauseController;->canVideoPause(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->isPSDomain()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getVideoPauseState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->isPausedTx(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->pauseTx(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/Call;->setVideoPauseState(I)V

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isVideoCallReady()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->canVideoPause()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : requestPauseVideo : CAPABILITY_CAN_PAUSE_VIDEO="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v3, v4}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v3}, Lcom/android/incallui/VideoUtils;->makeVideoPauseProfile(Lcom/android/incallui/Call;)Landroid/telecom/VideoProfile;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

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

    invoke-virtual {v3, v4}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : requestPauseVideo : skipped  VideoPauseState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    goto :goto_1

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

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : requestPauseVideo : ignore, because No capability "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public requestResumeVideo()V
    .locals 5

    const/high16 v4, 0x100000

    sget v2, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v2}, Lcom/android/incallui/VideoPauseController;->canVideoPause(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->isPSDomain()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getVideoPauseState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->isNone(I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->isPausedTx(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->unPauseTx(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/Call;->setVideoPauseState(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isVideoCallReady()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->canVideoPause()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : requestResumeVideo : CAPABILITY_CAN_PAUSE_VIDEO="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

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

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v3}, Lcom/android/incallui/VideoUtils;->makeVideoUnPauseProfile(Lcom/android/incallui/Call;)Landroid/telecom/VideoProfile;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

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

    invoke-virtual {v3, v4}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : requestResumeVideo : skipped  VideoPauseState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/android/incallui/VideoPauseController$VideoPauseState;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    goto :goto_1

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

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : requestResumeVideo : ignore, because No capability "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public resetRecordInfo()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mRecordFarEnd:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mRecordingFileName:Ljava/lang/String;

    return-void
.end method

.method public sendDTMF(Ljava/lang/String;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDTMF,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/TelecomAdapter;->requestOfSecVideoProvider(Lcom/android/incallui/Call;Ljava/lang/String;)V

    return-void
.end method

.method public sendSessionModifyRequest(I)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isVideoCallReady()Z

    move-result v2

    if-eqz v2, :cond_6

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

    new-instance v1, Landroid/telecom/VideoProfile;

    invoke-direct {v1, p1}, Landroid/telecom/VideoProfile;-><init>(I)V

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2, p1}, Lcom/android/incallui/Call;->setRequestingVideoState(I)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->isDialpadVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->hideDialpadForModifyCall()V

    :cond_1
    if-nez p1, :cond_2

    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->isChangedToTwoWayVideo()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/android/incallui/Call;->setMessageVoiceFromVideo(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2, v4}, Lcom/android/incallui/Call;->setMessageVoiceFromVideo(I)V

    goto :goto_0

    :cond_4
    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "feature_chn"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "feature_hktw"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "feature_dcm"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_5
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    const v3, 0x7f0902df

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

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

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isVideoCallReady()Z

    move-result v2

    if-eqz v2, :cond_2

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

    new-instance v1, Landroid/telecom/VideoProfile;

    invoke-direct {v1, p1}, Landroid/telecom/VideoProfile;-><init>(I)V

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/android/incallui/Call;->setSessionModificationState(IZ)V

    :cond_1
    :goto_0
    return-void

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

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isVideoCallReady()Z

    move-result v0

    if-eqz v0, :cond_0

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

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService$VideoCall;->setCamera(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setCameraId(I)V

    :goto_0
    return-void

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

    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->CAMERA_EFFECT:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isVideoCallReady()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "effect,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telecom/InCallService$VideoCall;->setCamera(Ljava/lang/String;)V

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

    :cond_0
    :goto_0
    return-void

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

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

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

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoSettings()Lcom/android/incallui/Call$VideoSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/Call$VideoSettings;->setCameraId(I)V

    :cond_0
    return-void
.end method

.method public setDeviceRotatoin(I)V
    .locals 2

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isPS()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isVideoCallReady()Z

    move-result v0

    if-eqz v0, :cond_0

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

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telecom/InCallService$VideoCall;->setDeviceOrientation(I)V

    :goto_0
    return-void

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

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->onWindowRotationChanged(I)V

    goto :goto_0
.end method

.method public setDisplaySurface(Landroid/view/Surface;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isVideoCallReady()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isSameDisplaySurface(Landroid/view/Surface;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/incallui/service/vt/VideoCallAdapter;->sDisplaySurface:Landroid/view/Surface;

    if-nez v1, :cond_0

    :goto_0
    return-void

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

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telecom/InCallService$VideoCall;->setDisplaySurface(Landroid/view/Surface;)V

    sput-object p1, Lcom/android/incallui/service/vt/VideoCallAdapter;->sDisplaySurface:Landroid/view/Surface;

    goto :goto_0

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

    const/4 v1, 0x0

    sput-object v1, Lcom/android/incallui/service/vt/VideoCallAdapter;->sDisplaySurface:Landroid/view/Surface;

    goto :goto_0
.end method

.method public setPauseImage(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/incallui/util/VideoCallUtils;->makeFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isVideoCallReady()Z

    move-result v1

    if-eqz v1, :cond_1

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

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telecom/InCallService$VideoCall;->setPauseImage(Landroid/net/Uri;)V

    :goto_0
    return-void

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

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isVideoCallReady()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isSamePreviewSurface(Landroid/view/Surface;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/incallui/service/vt/VideoCallAdapter;->sPreviewSurface:Landroid/view/Surface;

    if-nez v1, :cond_0

    :goto_0
    return-void

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

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telecom/InCallService$VideoCall;->setPreviewSurface(Landroid/view/Surface;)V

    sput-object p1, Lcom/android/incallui/service/vt/VideoCallAdapter;->sPreviewSurface:Landroid/view/Surface;

    goto :goto_0

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

    const/4 v1, 0x0

    sput-object v1, Lcom/android/incallui/service/vt/VideoCallAdapter;->sPreviewSurface:Landroid/view/Surface;

    goto :goto_0
.end method

.method public startCamera()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/PrivatePolicy;->needToSkipStartCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : startCamera - Skip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->provider(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->getCameraId(Lcom/android/incallui/Call;)I

    move-result v0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager;->resetDeviceRotatoin()V

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->isModifyProgressing()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/util/CallTypeUtils;->isVideoTxEnabled(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->isModifyDummy()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setCamera(I)V

    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setCamera(I)V

    goto :goto_0
.end method

.method public startRecord(Z)V
    .locals 4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mRecordFarEnd:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mRecordTime:J

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->getValidFileName(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mRecordingFileName:Ljava/lang/String;

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

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/TelecomAdapter;->requestOfSecVideoProvider(Lcom/android/incallui/Call;Ljava/lang/String;)V

    return-void
.end method

.method public stopCamera()V
    .locals 2

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isVideoCallReady()Z

    move-result v0

    if-eqz v0, :cond_0

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

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService$VideoCall;->setCamera(Ljava/lang/String;)V

    :goto_0
    return-void

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

    const-string v0, "stopRecord"

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/TelecomAdapter;->requestOfSecVideoProvider(Lcom/android/incallui/Call;Ljava/lang/String;)V

    return-void
.end method

.method public switchCamera()V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallAdapter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getVideoSettings()Lcom/android/incallui/Call$VideoSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/Call$VideoSettings;->getToggledCameraId()I

    move-result v0

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isVideoCallReady()Z

    move-result v1

    if-eqz v1, :cond_0

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

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telecom/InCallService$VideoCall;->setCamera(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setCameraId(I)V

    :goto_0
    return-void

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
