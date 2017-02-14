.class public Lcom/android/incallui/VideoCallPresenter;
.super Lcom/android/incallui/Presenter;
.source "VideoCallPresenter.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;
.implements Lcom/android/incallui/InCallPresenter$InCallEventListener;
.implements Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallUiEventListener;
.implements Lcom/android/incallui/service/vt/VideoCallNotifier$VideoDetailsListener;
.implements Lcom/android/incallui/service/vt/VideoCallNotifier$VideoSessionEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/VideoCallPresenter$PreviewSurfaceState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/VideoCallUi;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;",
        "Lcom/android/incallui/InCallPresenter$InCallDetailsListener;",
        "Lcom/android/incallui/InCallPresenter$InCallEventListener;",
        "Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallUiEventListener;",
        "Lcom/android/incallui/service/vt/VideoCallNotifier$VideoDetailsListener;",
        "Lcom/android/incallui/service/vt/VideoCallNotifier$VideoSessionEventListener;"
    }
.end annotation


# static fields
.field public static final EVENT_CAPTURED_DISPLAY_IMAGE:I = 0xc9

.field public static final EVENT_SEND_PICKED_IMAGE:I = 0x64

.field public static final EVENT_VIDEO_RESPONSE_FROM_GALLERY:I = 0x66

.field private static final SESSION_MODIFICATION_RESET_DELAY_MS:J = 0xbb8L

.field private static final TAG:Ljava/lang/String; = "VideoCallPresenter - "

.field public static final TIMER_DURATION_5000:I = 0x1388


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIsLowFPSRequested:Z

.field private mMinimumVideoDimension:F

.field private mPreVideoAudioMode:I

.field private mPreviewSurfaceState:I

.field private mPrimaryCall:Lcom/android/incallui/Call;

.field private mPrimaryVideoContext:Lcom/android/incallui/VideoContext;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryVideoContext:Lcom/android/incallui/VideoContext;

    iput v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    iput v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPreVideoAudioMode:I

    iput-boolean v1, p0, Lcom/android/incallui/VideoCallPresenter;->mIsLowFPSRequested:Z

    new-instance v0, Lcom/android/incallui/VideoCallPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/VideoCallPresenter$1;-><init>(Lcom/android/incallui/VideoCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/VideoCallPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->checkAndSendPickedImage()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/VideoCallPresenter;)Lcom/android/incallui/Call;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    return-object v0
.end method

.method private static areSame(Lcom/android/incallui/Call;Lcom/android/incallui/VideoContext;)Z
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
    invoke-virtual {p1}, Lcom/android/incallui/VideoContext;->getCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private captureDisplay()V
    .locals 9

    const/16 v8, 0xc9

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/VideoCallUi;

    const/4 v0, 0x0

    if-eqz v4, :cond_0

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/android/incallui/VideoCallUi;->captureSurface(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->mediaScan(Ljava/lang/String;)V

    const v5, 0x7f0900c8

    invoke-static {v5}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    :goto_0
    const-string v1, "notify_capturing_vga.jpg"

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v1, "notify_capturing_qcif.jpg"

    :cond_1
    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->getDefaultImageFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v5

    invoke-static {v2, v5}, Lcom/android/incallui/service/vt/VideoCallControl;->sendStillImage(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v5

    const/16 v6, 0xc8

    invoke-virtual {v5, v6}, Lcom/android/incallui/service/vt/VideoCallNotifier;->notifyVideoCallUiEvent(I)V

    const/16 v3, 0x1388

    iget-object v5, p0, Lcom/android/incallui/VideoCallPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/VideoCallPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v5, p0, Lcom/android/incallui/VideoCallPresenter;->mHandler:Landroid/os/Handler;

    int-to-long v6, v3

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_3
    const v5, 0x7f0900c7

    invoke-static {v5}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    goto :goto_0
.end method

.method private checkAndSendPickedImage()V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->isAliveVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "during_vt_photo.jpg"

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->getExistFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/service/vt/VideoCallManager;->setCapturedLocalFile(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallControl;->sendStillImage(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private clearSurfaceImage()V
    .locals 0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->deleteVideoHeldImage()V

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->deletePickImageTempFile()V

    return-void
.end method

.method private enterVideoMode()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryVideoContext:Lcom/android/incallui/VideoContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryVideoContext:Lcom/android/incallui/VideoContext;

    invoke-virtual {v0}, Lcom/android/incallui/VideoContext;->hasVideoSession()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallPresenter - enterVideoMode - Initialize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager;->getVideoDetails()Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->base(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/VideoCallPresenter;->requestLowFPS(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isPSDomain()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoBanner;->controlModifyReceiveTimer(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->checkForCallStateChange()V

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p0, v0}, Lcom/android/incallui/VideoCallPresenter;->setCallState(Lcom/android/incallui/Call;)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->enableFullScreenMode()V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallPresenter - enterVideoMode - update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager;->getVideoDetails()Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->flow(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onStateChange()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/incallui/VideoCallPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method private requestLowFPS(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/VideoCallPresenter;->mIsLowFPSRequested:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/incallui/VideoCallPresenter;->mIsLowFPSRequested:Z

    invoke-static {p1}, Lcom/android/incallui/util/VideoCallUtils;->requestLowFPS(Z)V

    :cond_0
    return-void
.end method

.method private setPauseImageWithCapturedPreview()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/VideoCallUi;

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/incallui/VideoCallUi;->captureSurface(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->mediaScan(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/incallui/service/vt/VideoCallManager;->setCapturedLocalFile(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/incallui/service/vt/VideoCallManager;->setLivePreview(Z)V

    invoke-static {v3}, Lcom/android/incallui/service/vt/VideoCallControl;->sendStillImage(Z)V

    const v2, 0x7f0900c8

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/incallui/service/vt/VideoCallManager;->setLivePreview(Z)V

    const v2, 0x7f0900c7

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    goto :goto_0
.end method

.method private setPreviewSurface(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setPreviewSurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public static showIncomingVideo(II)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isVideoCompatible()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return v3

    :cond_0
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v1

    const/4 v4, 0x3

    if-ne p1, v4, :cond_1

    move v0, v2

    :goto_1
    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    invoke-static {p0}, Landroid/telecom/VideoProfile;->isReceptionEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_2
    move v3, v2

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method private updatePrimaryVideoContext(Lcom/android/incallui/Call;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallList;->isAlive(Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryVideoContext:Lcom/android/incallui/VideoContext;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryVideoContext:Lcom/android/incallui/VideoContext;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryVideoContext:Lcom/android/incallui/VideoContext;

    invoke-virtual {v0, p1}, Lcom/android/incallui/VideoContext;->update(Lcom/android/incallui/Call;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/incallui/VideoContext;

    invoke-direct {v0, p1}, Lcom/android/incallui/VideoContext;-><init>(Lcom/android/incallui/Call;)V

    iput-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryVideoContext:Lcom/android/incallui/VideoContext;

    goto :goto_0
.end method


# virtual methods
.method public captureImage(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->getMediaType(Lcom/android/incallui/Call;)I

    move-result v0

    if-gez v0, :cond_0

    const-string v1, "VideoCallPresenter - "

    const-string v2, "captureImage failed. IMS callType is not valid "

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/PrivatePolicy;->playCaptureSound()V

    :cond_1
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->checkStorageMemorySpace()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->setPauseImageWithCapturedPreview()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->captureDisplay()V

    goto :goto_0

    :cond_3
    const v1, 0x7f0901d5

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    const-string v1, "VideoCallPresenter - "

    const-string v2, "captureImage - Memory is Full"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public checkForCallStateChange()V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryVideoContext:Lcom/android/incallui/VideoContext;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryVideoContext:Lcom/android/incallui/VideoContext;

    invoke-virtual {v1}, Lcom/android/incallui/VideoContext;->hasVideoSession()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryVideoContext:Lcom/android/incallui/VideoContext;

    invoke-virtual {v1}, Lcom/android/incallui/VideoContext;->getState()I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/VideoCallPresenter;->onCallStateChange(II)V

    :cond_1
    return-void
.end method

.method public clearSurfaceImage(Lcom/android/incallui/Call;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "captured_display_image.tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->deleteSavedImage(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "captured_preview_image.tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->deleteSavedImage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteSurfaceImage(Lcom/android/incallui/Call;I)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "captured_display_image.tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->deleteSavedImage(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "captured_preview_image.tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public exitVideoMode()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryVideoContext:Lcom/android/incallui/VideoContext;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryVideoContext:Lcom/android/incallui/VideoContext;

    invoke-virtual {v1}, Lcom/android/incallui/VideoContext;->hasVideoSession()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p0, v1}, Lcom/android/incallui/VideoCallPresenter;->setCallState(Lcom/android/incallui/Call;)V

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryVideoContext:Lcom/android/incallui/VideoContext;

    invoke-virtual {v1}, Lcom/android/incallui/VideoContext;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->onDowngradeToVoice()V

    :cond_0
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v1

    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_NONE:I

    invoke-virtual {v1, v2}, Lcom/android/incallui/VideoBanner;->controlModifyReceiveTimer(I)V

    invoke-direct {p0, v3}, Lcom/android/incallui/VideoCallPresenter;->requestLowFPS(Z)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager;->disableFullScreenMode()V

    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/incallui/service/vt/VideoCallManager;->setExchangedViews(Z)V

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoCallPresenter - exitVideoMode - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallManager;->getVideoDetails()Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallManager$VideoDetails;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->base(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getDisconnectingOrDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoCallPresenter - exitVideoMode - onDisconnect= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->base(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->onDisconnect()V

    goto :goto_0
.end method

.method public getPrimaryCall()Lcom/android/incallui/Call;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    return-object v0
.end method

.method public getPrimaryVideoContext()Lcom/android/incallui/VideoContext;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryVideoContext:Lcom/android/incallui/VideoContext;

    return-object v0
.end method

.method public getSavedSurfaceImage(Lcom/android/incallui/Call;I)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "captured_display_image.tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->getExistFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "captured_preview_image.tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public isVideoContextChanged(Lcom/android/incallui/Call;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryVideoContext:Lcom/android/incallui/VideoContext;

    invoke-static {p1, v3}, Lcom/android/incallui/VideoCallPresenter;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/VideoContext;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryVideoContext:Lcom/android/incallui/VideoContext;

    if-nez v1, :cond_2

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoCallPresenter - isVideoContextChanged : New "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallLog;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->base(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoCallPresenter - isVideoContextChanged : Swapped "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallLog;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Old"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryVideoContext:Lcom/android/incallui/VideoContext;

    invoke-virtual {v2}, Lcom/android/incallui/VideoContext;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->base(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoCallPresenter - isVideoContextChanged : onDisconnect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getDisconnectingOrDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->base(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryVideoContext:Lcom/android/incallui/VideoContext;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryVideoContext:Lcom/android/incallui/VideoContext;

    invoke-virtual {v3, p1}, Lcom/android/incallui/VideoContext;->isVideoSessionChanged(Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryVideoContext:Lcom/android/incallui/VideoContext;

    invoke-virtual {v3, p1}, Lcom/android/incallui/VideoContext;->isChanged(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v0, v1

    :cond_5
    :goto_2
    if-eqz v0, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoCallPresenter - isVideoContextChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallLog;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryVideoContext:Lcom/android/incallui/VideoContext;

    invoke-virtual {v2}, Lcom/android/incallui/VideoContext;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->base(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    const-string v1, "VideoCallPresenter - isVideoContextChanged : not changed"

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->base(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onCallStateChange(II)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/incallui/util/VideoCallUtils;->checkAndNotifyInfo(II)V

    return-void
.end method

.method public onCoverStateChanged(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallUi;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-interface {v0}, Lcom/android/incallui/VideoCallUi;->invalidateUi()V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager;->resetFullScreenMode()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager;->disableFullScreenMode()V

    goto :goto_0
.end method

.method public onDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V
    .locals 3

    invoke-static {p1}, Lcom/android/incallui/util/VideoCallUtils;->isAliveStateForVideo(Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onDetailsChanged"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->flow(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/incallui/VideoCallPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto :goto_0
.end method

.method public onDisconnect()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_KOR_COMMON()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->setRequestedOrientation(I)V

    :cond_0
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->CAMERA_EFFECT:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/util/CameraEffect;->setCameraEffectLayoutVisible(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->showRecordResult()V

    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->clearSurfaceImage()V

    return-void
.end method

.method public onDowngradeToVoice()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_1

    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p0, v0}, Lcom/android/incallui/VideoCallPresenter;->clearSurfaceImage(Lcom/android/incallui/Call;)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isForegroundActivity()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    :cond_1
    return-void
.end method

.method public onFullscreenModeChanged(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallUi;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/VideoCallUi;->updateFullscreenMode(Z)V

    :cond_0
    return-void
.end method

.method public onHmtStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/VideoCallPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onReceivedMessageFromTelecom(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    const-string v0, "VideoCallPresenter - "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedMessageFromTelecom :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "onIncomingCallAnswered"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->sendStillImage()V

    :cond_0
    return-void
.end method

.method public onSecondaryCallerInfoVisibilityChanged(ZI)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSecondaryCallerInfoVisibilityChanged : isVisible = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->flow(Ljava/lang/String;)V

    return-void
.end method

.method public onSideSyncCallForwardStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p3, v1, v2}, Lcom/android/incallui/util/VideoCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/VideoCallPresenter;->isVideoContextChanged(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->enterVideoMode()V

    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/incallui/VideoCallPresenter;->updatePrimaryVideoContext(Lcom/android/incallui/Call;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->exitVideoMode()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->exitVideoMode()V

    goto :goto_0
.end method

.method public onSurfaceChanged(IIII)V
    .locals 0

    return-void
.end method

.method public onSurfaceCreated(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallUi;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    invoke-interface {v0}, Lcom/android/incallui/VideoCallUi;->getPreviewVideoSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/VideoCallPresenter;->setPreviewSurface(Landroid/view/Surface;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-interface {v0}, Lcom/android/incallui/VideoCallUi;->getDisplayVideoSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/VideoCallPresenter;->setDisplaySurface(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public onSurfaceDestroyed(I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/incallui/VideoCallPresenter;->setDisplaySurface(Landroid/view/Surface;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/incallui/VideoCallPresenter;->setPreviewSurface(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public onUiPause()V
    .locals 1

    const-string v0, "onUiPause"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->flow(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/VideoCallUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->onUiReady(Lcom/android/incallui/VideoCallUi;)V

    return-void
.end method

.method public onUiReady(Lcom/android/incallui/VideoCallUi;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0319

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/incallui/VideoCallPresenter;->mMinimumVideoDimension:F

    const-string v0, "onUiReady"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->flow(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->registerListener()V

    return-void
.end method

.method public onUiResume()V
    .locals 1

    const-string v0, "onUiResume"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->flow(Ljava/lang/String;)V

    const-string v0, "onUiResume"

    invoke-virtual {p0, v0}, Lcom/android/incallui/VideoCallPresenter;->setCallState(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VideoBanner;->isShowingVideoBanner()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VideoBanner;->remindVideoBanner()V

    :cond_0
    return-void
.end method

.method public onUiStop()V
    .locals 2

    const-string v0, "onUiStop"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->flow(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/VideoCallUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->onUiUnready(Lcom/android/incallui/VideoCallUi;)V

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/VideoCallUi;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    const-string v0, "onUiUnready"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->flow(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->removeListener()V

    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->onStateChange()V

    return-void
.end method

.method public onVideoCallUiEvent(I)V
    .locals 3

    const/4 v2, 0x4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoCallUiEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallConstants$UiEvent;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1}, Lcom/android/incallui/UiAdapter;->updateShowMeUi(Lcom/android/incallui/Call;)V

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/PrivatePolicy;->removeStatus(I)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1}, Lcom/android/incallui/UiAdapter;->updateShowMeUi(Lcom/android/incallui/Call;)V

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/PrivatePolicy;->setStatus(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->stopCamera()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->startCamera()V

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onVideoDetailsChanged(Lcom/android/incallui/Call;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/incallui/VideoCallPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    :cond_0
    return-void
.end method

.method public onVideoSessionEvent(ILcom/android/incallui/Call;)V
    .locals 2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallPresenter - onVideoSessionEvent - event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallConstants$SessionEvent;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/incallui/service/vt/VideoCallLog;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallUi;

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/VideoCallUi;->updateVideoSessionEvent(ILcom/android/incallui/Call;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallPresenter - onVideoSessionEvent - skipped event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallConstants$SessionEvent;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/incallui/service/vt/VideoCallLog;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerListener()V
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

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->addListener(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->addVideoCallUiEventListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallUiEventListener;)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->addVideoDetailsListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoDetailsListener;)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->addVideoSessionEventListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoSessionEventListener;)V

    return-void
.end method

.method public removeListener()V
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

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->removeListener(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->removeVideoCallUiEventListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallUiEventListener;)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->removeVideoDetailsListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoDetailsListener;)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->removeVideoSessionEventListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoSessionEventListener;)V

    return-void
.end method

.method public sendPickedImage()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public sendPickedVideo(Landroid/net/Uri;)V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->isAliveVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/incallui/util/VideoCallUtils;->getVideoFileNameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/service/vt/VideoCallManager;->setCapturedLocalFile(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallControl;->sendStillImage(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setCallState(Lcom/android/incallui/Call;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallUi;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/incallui/VideoCallUi;->setCallState(Lcom/android/incallui/Call;)V

    :cond_0
    return-void
.end method

.method public setCallState(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->flow(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p0, v0}, Lcom/android/incallui/VideoCallPresenter;->setCallState(Lcom/android/incallui/Call;)V

    :cond_0
    return-void
.end method

.method public setDisplaySurface(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setDisplaySurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public showRecordResult()V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->showRecordResult(Lcom/android/incallui/Call;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getDisconnectingOrDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->showRecordResult(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method public startRecord(Z)Z
    .locals 8

    const/16 v5, 0xc9

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->checkStorageMemorySpace()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->startRecord(Z)V

    const/4 v2, 0x1

    const-string v0, "notify_recording_qcif.jpg"

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->getDefaultImageFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v4

    invoke-static {v1, v4}, Lcom/android/incallui/service/vt/VideoCallControl;->sendStillImage(Ljava/lang/String;Z)V

    const/16 v3, 0x1388

    iget-object v4, p0, Lcom/android/incallui/VideoCallPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/VideoCallPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v4, p0, Lcom/android/incallui/VideoCallPresenter;->mHandler:Landroid/os/Handler;

    int-to-long v6, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return v2

    :cond_2
    const v4, 0x7f0901d5

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    const-string v4, "VideoCallPresenter - "

    const-string v5, "startRecord - Memory is Full"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopRecord()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->stopRecord()V

    :cond_0
    return-void
.end method

.method public toggleFullscreenMode()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setFullScreen(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setFullScreen(Z)V

    goto :goto_0
.end method
