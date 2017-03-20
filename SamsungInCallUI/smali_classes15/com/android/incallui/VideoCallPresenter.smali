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

.field public static final TIMER_DURATION_500:I = 0x1f4

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

    .prologue
    const/4 v1, 0x0

    .line 147
    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryVideoContext:Lcom/android/incallui/VideoContext;

    .line 99
    iput v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    .line 103
    iput v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPreVideoAudioMode:I

    .line 108
    iput-boolean v1, p0, Lcom/android/incallui/VideoCallPresenter;->mIsLowFPSRequested:Z

    .line 118
    new-instance v0, Lcom/android/incallui/VideoCallPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/VideoCallPresenter$1;-><init>(Lcom/android/incallui/VideoCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mHandler:Landroid/os/Handler;

    .line 148
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/VideoCallPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/VideoCallPresenter;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->checkAndSendPickedImage()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/VideoCallPresenter;)Lcom/android/incallui/Call;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/VideoCallPresenter;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    return-object v0
.end method

.method private static areSame(Lcom/android/incallui/Call;Lcom/android/incallui/VideoContext;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;
    .param p1, "videoContext"    # Lcom/android/incallui/VideoContext;

    .prologue
    .line 338
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 339
    const/4 v0, 0x1

    .line 343
    :goto_0
    return v0

    .line 340
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 341
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 343
    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/VideoContext;->getCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private captureDisplay()V
    .locals 9

    .prologue
    const/16 v8, 0xc9

    .line 568
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/VideoCallUi;

    .line 569
    .local v4, "ui":Lcom/android/incallui/VideoCallUi;
    const/4 v0, 0x0

    .line 570
    .local v0, "capturedFileName":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 571
    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/android/incallui/VideoCallUi;->captureSurface(I)Ljava/lang/String;

    move-result-object v0

    .line 573
    :cond_0
    if-eqz v0, :cond_4

    .line 574
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->mediaScan(Ljava/lang/String;)V

    .line 575
    const v5, 0x7f0900ca

    invoke-static {v5}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    .line 579
    :goto_0
    const-string v1, "notify_capturing_vga.jpg"

    .line 580
    .local v1, "imageType":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isQCIF()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 581
    const-string v1, "notify_capturing_qcif.jpg"

    .line 583
    :cond_1
    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->getDefaultImageFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 584
    .local v2, "image_path":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v5

    invoke-static {v2, v5}, Lcom/android/incallui/service/vt/VideoCallControl;->sendStillImage(Ljava/lang/String;Z)V

    .line 585
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v5

    const/16 v6, 0xc8

    invoke-virtual {v5, v6}, Lcom/android/incallui/service/vt/VideoCallNotifier;->notifyVideoCallUiEvent(I)V

    .line 586
    const/16 v3, 0x1388

    .line 587
    .local v3, "timer_duration":I
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isJpnUX()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 588
    const/16 v3, 0x1f4

    .line 590
    :cond_2
    iget-object v5, p0, Lcom/android/incallui/VideoCallPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 591
    iget-object v5, p0, Lcom/android/incallui/VideoCallPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 593
    :cond_3
    iget-object v5, p0, Lcom/android/incallui/VideoCallPresenter;->mHandler:Landroid/os/Handler;

    int-to-long v6, v3

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 594
    return-void

    .line 577
    .end local v1    # "imageType":Ljava/lang/String;
    .end local v2    # "image_path":Ljava/lang/String;
    .end local v3    # "timer_duration":I
    :cond_4
    const v5, 0x7f0900c9

    invoke-static {v5}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    goto :goto_0
.end method

.method private checkAndSendPickedImage()V
    .locals 2

    .prologue
    .line 474
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->isAliveVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    const-string v1, "during_vt_photo.jpg"

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->getExistFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "file_path":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 477
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/service/vt/VideoCallManager;->setCapturedLocalFile(Ljava/lang/String;)V

    .line 478
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallControl;->sendStillImage(Ljava/lang/String;Z)V

    .line 481
    .end local v0    # "file_path":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private clearSurfaceImage()V
    .locals 0

    .prologue
    .line 708
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->deleteVideoHeldImage()V

    .line 709
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->deletePickImageTempFile()V

    .line 710
    return-void
.end method

.method private enterVideoMode()V
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryVideoContext:Lcom/android/incallui/VideoContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryVideoContext:Lcom/android/incallui/VideoContext;

    invoke-virtual {v0}, Lcom/android/incallui/VideoContext;->hasVideoSession()Z

    move-result v0

    if-nez v0, :cond_2

    .line 373
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

    .line 374
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/VideoCallPresenter;->requestLowFPS(Z)V

    .line 378
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isPSDomain()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoBanner;->controlModifyReceiveTimer(I)V

    .line 381
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->checkForCallStateChange()V

    .line 382
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p0, v0}, Lcom/android/incallui/VideoCallPresenter;->setCallState(Lcom/android/incallui/Call;)V

    .line 383
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->enableFullScreenMode()V

    .line 384
    return-void

    .line 376
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

    .prologue
    .line 364
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

    .line 365
    return-void
.end method

.method private requestLowFPS(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 671
    iget-boolean v0, p0, Lcom/android/incallui/VideoCallPresenter;->mIsLowFPSRequested:Z

    if-eq v0, p1, :cond_0

    .line 672
    iput-boolean p1, p0, Lcom/android/incallui/VideoCallPresenter;->mIsLowFPSRequested:Z

    .line 673
    invoke-static {p1}, Lcom/android/incallui/util/VideoCallUtils;->requestLowFPS(Z)V

    .line 675
    :cond_0
    return-void
.end method

.method private setPauseImageWithCapturedPreview()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 550
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/VideoCallUi;

    .line 551
    .local v1, "ui":Lcom/android/incallui/VideoCallUi;
    const/4 v0, 0x0

    .line 552
    .local v0, "capturedFileName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 553
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/incallui/VideoCallUi;->captureSurface(I)Ljava/lang/String;

    move-result-object v0

    .line 555
    :cond_0
    if-eqz v0, :cond_1

    .line 556
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->mediaScan(Ljava/lang/String;)V

    .line 557
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/incallui/service/vt/VideoCallManager;->setCapturedLocalFile(Ljava/lang/String;)V

    .line 558
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/incallui/service/vt/VideoCallManager;->setLivePreview(Z)V

    .line 559
    invoke-static {v3}, Lcom/android/incallui/service/vt/VideoCallControl;->sendStillImage(Z)V

    .line 560
    const v2, 0x7f0900ca

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    .line 565
    :goto_0
    return-void

    .line 562
    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/incallui/service/vt/VideoCallManager;->setLivePreview(Z)V

    .line 563
    const v2, 0x7f0900c9

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    goto :goto_0
.end method

.method private setPreviewSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setPreviewSurface(Landroid/view/Surface;)V

    .line 234
    :cond_0
    return-void
.end method

.method public static showIncomingVideo(II)Z
    .locals 5
    .param p0, "videoState"    # I
    .param p1, "callState"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 804
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isVideoCompatible()Z

    move-result v4

    if-nez v4, :cond_0

    .line 811
    :goto_0
    return v3

    .line 808
    :cond_0
    invoke-static {p0}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v1

    .line 809
    .local v1, "isPaused":Z
    const/4 v4, 0x3

    if-ne p1, v4, :cond_1

    move v0, v2

    .line 811
    .local v0, "isCallActive":Z
    :goto_1
    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    invoke-static {p0}, Landroid/telecom/VideoProfile;->isReceptionEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_2
    move v3, v2

    goto :goto_0

    .end local v0    # "isCallActive":Z
    :cond_1
    move v0, v3

    .line 809
    goto :goto_1

    .restart local v0    # "isCallActive":Z
    :cond_2
    move v2, v3

    .line 811
    goto :goto_2
.end method

.method private updatePrimaryVideoContext(Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 782
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallList;->isAlive(Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 783
    const/4 p1, 0x0

    .line 785
    :cond_0
    if-nez p1, :cond_1

    .line 786
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryVideoContext:Lcom/android/incallui/VideoContext;

    .line 792
    :goto_0
    return-void

    .line 787
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryVideoContext:Lcom/android/incallui/VideoContext;

    if-eqz v0, :cond_2

    .line 788
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryVideoContext:Lcom/android/incallui/VideoContext;

    invoke-virtual {v0, p1}, Lcom/android/incallui/VideoContext;->update(Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 790
    :cond_2
    new-instance v0, Lcom/android/incallui/VideoContext;

    invoke-direct {v0, p1}, Lcom/android/incallui/VideoContext;-><init>(Lcom/android/incallui/Call;)V

    iput-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryVideoContext:Lcom/android/incallui/VideoContext;

    goto :goto_0
.end method


# virtual methods
.method public captureImage(Z)V
    .locals 3
    .param p1, "isNearEnd"    # Z

    .prologue
    .line 597
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->getMediaType(Lcom/android/incallui/Call;)I

    move-result v0

    .line 598
    .local v0, "call_type":I
    if-gez v0, :cond_0

    .line 599
    const-string v1, "VideoCallPresenter - "

    const-string v2, "captureImage failed. IMS callType is not valid "

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    :goto_0
    return-void

    .line 603
    :cond_0
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v1, :cond_1

    .line 604
    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/PrivatePolicy;->playCaptureSound()V

    .line 606
    :cond_1
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->checkStorageMemorySpace()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 607
    if-eqz p1, :cond_2

    .line 608
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->setPauseImageWithCapturedPreview()V

    goto :goto_0

    .line 610
    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->captureDisplay()V

    goto :goto_0

    .line 613
    :cond_3
    const v1, 0x7f0901da

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    .line 614
    const-string v1, "VideoCallPresenter - "

    const-string v2, "captureImage - Memory is Full"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public checkForCallStateChange()V
    .locals 2

    .prologue
    .line 437
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_1

    .line 438
    const/4 v0, 0x0

    .line 439
    .local v0, "oldState":I
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryVideoContext:Lcom/android/incallui/VideoContext;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryVideoContext:Lcom/android/incallui/VideoContext;

    invoke-virtual {v1}, Lcom/android/incallui/VideoContext;->hasVideoSession()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryVideoContext:Lcom/android/incallui/VideoContext;

    invoke-virtual {v1}, Lcom/android/incallui/VideoContext;->getState()I

    move-result v0

    .line 442
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 443
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/VideoCallPresenter;->onCallStateChange(II)V

    .line 446
    .end local v0    # "oldState":I
    :cond_1
    return-void
.end method

.method public clearSurfaceImage(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 689
    if-nez p1, :cond_0

    .line 693
    :goto_0
    return-void

    .line 690
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

    .line 691
    .local v0, "prefix":Ljava/lang/String;
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

    .line 692
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
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "surface"    # I

    .prologue
    .line 678
    if-nez p1, :cond_0

    .line 686
    :goto_0
    return-void

    .line 679
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

    .line 680
    .local v0, "file_name":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 681
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "captured_display_image.tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 685
    :goto_1
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->deleteSavedImage(Ljava/lang/String;)V

    goto :goto_0

    .line 683
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

    .prologue
    const/4 v3, 0x0

    .line 390
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryVideoContext:Lcom/android/incallui/VideoContext;

    if-eqz v1, :cond_2

    .line 391
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryVideoContext:Lcom/android/incallui/VideoContext;

    invoke-virtual {v1}, Lcom/android/incallui/VideoContext;->hasVideoSession()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 392
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p0, v1}, Lcom/android/incallui/VideoCallPresenter;->setCallState(Lcom/android/incallui/Call;)V

    .line 393
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

    .line 394
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->onDowngradeToVoice()V

    .line 396
    :cond_0
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v1

    sget v2, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_NONE:I

    invoke-virtual {v1, v2}, Lcom/android/incallui/VideoBanner;->controlModifyReceiveTimer(I)V

    .line 397
    invoke-direct {p0, v3}, Lcom/android/incallui/VideoCallPresenter;->requestLowFPS(Z)V

    .line 398
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager;->disableFullScreenMode()V

    .line 400
    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/incallui/service/vt/VideoCallManager;->setExchangedViews(Z)V

    .line 401
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_3

    .line 402
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

    .line 403
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

    .line 402
    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->base(Ljava/lang/String;)V

    .line 412
    :cond_2
    :goto_0
    return-void

    .line 405
    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getDisconnectingOrDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 406
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_2

    .line 407
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

    .line 408
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->onDisconnect()V

    goto :goto_0
.end method

.method public getPrimaryCall()Lcom/android/incallui/Call;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    return-object v0
.end method

.method public getPrimaryVideoContext()Lcom/android/incallui/VideoContext;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryVideoContext:Lcom/android/incallui/VideoContext;

    return-object v0
.end method

.method public getSavedSurfaceImage(Lcom/android/incallui/Call;I)Ljava/lang/String;
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "surface"    # I

    .prologue
    .line 696
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 704
    :goto_0
    return-object v1

    .line 697
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

    .line 698
    .local v0, "file_name":Ljava/lang/String;
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 699
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "captured_display_image.tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 703
    :goto_1
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->getExistFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 704
    .local v1, "file_path":Ljava/lang/String;
    goto :goto_0

    .line 701
    .end local v1    # "file_path":Ljava/lang/String;
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
    .param p1, "primary"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 308
    iget-object v3, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryVideoContext:Lcom/android/incallui/VideoContext;

    invoke-static {p1, v3}, Lcom/android/incallui/VideoCallPresenter;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/VideoContext;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 309
    .local v0, "isVideoContextChanged":Z
    :goto_0
    if-eqz v0, :cond_4

    .line 310
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryVideoContext:Lcom/android/incallui/VideoContext;

    if-nez v1, :cond_2

    .line 311
    if-eqz p1, :cond_0

    .line 312
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

    .line 334
    :cond_0
    :goto_1
    return v0

    .end local v0    # "isVideoContextChanged":Z
    :cond_1
    move v0, v2

    .line 308
    goto :goto_0

    .line 315
    .restart local v0    # "isVideoContextChanged":Z
    :cond_2
    if-eqz p1, :cond_3

    .line 316
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

    .line 318
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

    .line 322
    :cond_4
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryVideoContext:Lcom/android/incallui/VideoContext;

    if-eqz v3, :cond_0

    .line 323
    iget-object v3, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryVideoContext:Lcom/android/incallui/VideoContext;

    invoke-virtual {v3, p1}, Lcom/android/incallui/VideoContext;->isVideoSessionChanged(Lcom/android/incallui/Call;)Z

    move-result v0

    .line 324
    if-nez v0, :cond_5

    .line 325
    invoke-virtual {p1}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryVideoContext:Lcom/android/incallui/VideoContext;

    invoke-virtual {v3, p1}, Lcom/android/incallui/VideoContext;->isChanged(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v0, v1

    .line 327
    :cond_5
    :goto_2
    if-eqz v0, :cond_7

    .line 328
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

    .line 325
    goto :goto_2

    .line 330
    :cond_7
    const-string v1, "VideoCallPresenter - isVideoContextChanged : not changed"

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->base(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onCallStateChange(II)V
    .locals 0
    .param p1, "oldState"    # I
    .param p2, "newState"    # I

    .prologue
    .line 450
    invoke-static {p1, p2}, Lcom/android/incallui/util/VideoCallUtils;->checkAndNotifyInfo(II)V

    .line 451
    return-void
.end method

.method public onCoverStateChanged(Z)V
    .locals 2
    .param p1, "isClosed"    # Z

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallUi;

    .line 496
    .local v0, "ui":Lcom/android/incallui/VideoCallUi;
    if-nez v0, :cond_0

    .line 504
    :goto_0
    return-void

    .line 498
    :cond_0
    if-nez p1, :cond_1

    .line 499
    invoke-interface {v0}, Lcom/android/incallui/VideoCallUi;->invalidateUi()V

    .line 500
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager;->resetFullScreenMode()V

    goto :goto_0

    .line 502
    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager;->disableFullScreenMode()V

    goto :goto_0
.end method

.method public onDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "details"    # Landroid/telecom/Call$Details;

    .prologue
    .line 355
    invoke-static {p1}, Lcom/android/incallui/util/VideoCallUtils;->isAliveStateForVideo(Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    const-string v0, "onDetailsChanged"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->flow(Ljava/lang/String;)V

    .line 359
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

    .prologue
    .line 415
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_KOR_COMMON()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->setRequestedOrientation(I)V

    .line 418
    :cond_0
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->CAMERA_EFFECT:Z

    if-eqz v0, :cond_1

    .line 419
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/util/CameraEffect;->setCameraEffectLayoutVisible(Z)V

    .line 421
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->showRecordResult()V

    .line 422
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->clearSurfaceImage()V

    .line 423
    return-void
.end method

.method public onDowngradeToVoice()V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_1

    .line 427
    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->RX_HELD:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p0, v0}, Lcom/android/incallui/VideoCallPresenter;->clearSurfaceImage(Lcom/android/incallui/Call;)V

    .line 430
    :cond_0
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isForegroundActivity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 431
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    .line 434
    :cond_1
    return-void
.end method

.method public onFullscreenModeChanged(Z)V
    .locals 1
    .param p1, "isFullscreenMode"    # Z

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallUi;

    .line 522
    .local v0, "ui":Lcom/android/incallui/VideoCallUi;
    if-eqz v0, :cond_0

    .line 523
    invoke-interface {v0, p1}, Lcom/android/incallui/VideoCallUi;->updateFullscreenMode(Z)V

    .line 525
    :cond_0
    return-void
.end method

.method public onHmtStateChanged(Z)V
    .locals 0
    .param p1, "isDocked"    # Z

    .prologue
    .line 512
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 277
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/VideoCallPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 278
    return-void
.end method

.method public onReceivedMessageFromTelecom(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    .line 661
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

    .line 662
    const-string v0, "onIncomingCallAnswered"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v0

    if-nez v0, :cond_0

    .line 664
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->sendStillImage()V

    .line 668
    :cond_0
    return-void
.end method

.method public onSecondaryCallerInfoVisibilityChanged(ZI)V
    .locals 2
    .param p1, "isVisible"    # Z
    .param p2, "height"    # I

    .prologue
    .line 529
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

    .line 531
    return-void
.end method

.method public onSideSyncCallForwardStateChanged(Z)V
    .locals 0
    .param p1, "isStarted"    # Z

    .prologue
    .line 508
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 3
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 290
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p3, v1, v2}, Lcom/android/incallui/util/VideoCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 292
    .local v0, "primary":Lcom/android/incallui/Call;
    invoke-virtual {p0, v0}, Lcom/android/incallui/VideoCallPresenter;->isVideoContextChanged(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    iput-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    .line 294
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_2

    .line 295
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->enterVideoMode()V

    .line 304
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/incallui/VideoCallPresenter;->updatePrimaryVideoContext(Lcom/android/incallui/Call;)V

    .line 305
    return-void

    .line 298
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->exitVideoMode()V

    goto :goto_0

    .line 301
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->exitVideoMode()V

    goto :goto_0
.end method

.method public onSurfaceChanged(IIII)V
    .locals 0
    .param p1, "surface"    # I
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 252
    return-void
.end method

.method public onSurfaceCreated(I)V
    .locals 2
    .param p1, "surfaceId"    # I

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallUi;

    .line 221
    .local v0, "ui":Lcom/android/incallui/VideoCallUi;
    if-eqz v0, :cond_0

    .line 222
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 223
    invoke-interface {v0}, Lcom/android/incallui/VideoCallUi;->getPreviewVideoSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/VideoCallPresenter;->setPreviewSurface(Landroid/view/Surface;)V

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 225
    invoke-interface {v0}, Lcom/android/incallui/VideoCallUi;->getDisplayVideoSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/VideoCallPresenter;->setDisplaySurface(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public onSurfaceDestroyed(I)V
    .locals 2
    .param p1, "surface"    # I

    .prologue
    const/4 v1, 0x0

    .line 260
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 261
    invoke-virtual {p0, v1}, Lcom/android/incallui/VideoCallPresenter;->setDisplaySurface(Landroid/view/Surface;)V

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 263
    invoke-direct {p0, v1}, Lcom/android/incallui/VideoCallPresenter;->setPreviewSurface(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public onUiPause()V
    .locals 1

    .prologue
    .line 151
    const-string v0, "onUiPause"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->flow(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0

    .prologue
    .line 73
    check-cast p1, Lcom/android/incallui/VideoCallUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->onUiReady(Lcom/android/incallui/VideoCallUi;)V

    return-void
.end method

.method public onUiReady(Lcom/android/incallui/VideoCallUi;)V
    .locals 2
    .param p1, "ui"    # Lcom/android/incallui/VideoCallUi;

    .prologue
    .line 175
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0315

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/incallui/VideoCallPresenter;->mMinimumVideoDimension:F

    .line 177
    const-string v0, "onUiReady"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->flow(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->registerListener()V

    .line 179
    return-void
.end method

.method public onUiResume()V
    .locals 1

    .prologue
    .line 161
    const-string v0, "onUiResume"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->flow(Ljava/lang/String;)V

    .line 162
    const-string v0, "onUiResume"

    invoke-virtual {p0, v0}, Lcom/android/incallui/VideoCallPresenter;->setCallState(Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VideoBanner;->isShowingVideoBanner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VideoBanner;->remindVideoBanner()V

    .line 166
    :cond_0
    return-void
.end method

.method public onUiStop()V
    .locals 2

    .prologue
    .line 155
    const-string v0, "onUiStop"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->flow(Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    .line 157
    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0

    .prologue
    .line 73
    check-cast p1, Lcom/android/incallui/VideoCallUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->onUiUnready(Lcom/android/incallui/VideoCallUi;)V

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/VideoCallUi;)V
    .locals 1
    .param p1, "ui"    # Lcom/android/incallui/VideoCallUi;

    .prologue
    .line 188
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    .line 189
    const-string v0, "onUiUnready"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->flow(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->removeListener()V

    .line 191
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->onStateChange()V

    .line 192
    return-void
.end method

.method public onVideoCallUiEvent(I)V
    .locals 3
    .param p1, "event"    # I

    .prologue
    const/4 v2, 0x4

    .line 733
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

    .line 734
    packed-switch p1, :pswitch_data_0

    .line 774
    :cond_0
    :goto_0
    return-void

    .line 736
    :pswitch_0
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1}, Lcom/android/incallui/UiAdapter;->updateShowMeUi(Lcom/android/incallui/Call;)V

    .line 737
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v0, :cond_0

    .line 738
    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/PrivatePolicy;->removeStatus(I)V

    goto :goto_0

    .line 743
    :pswitch_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1}, Lcom/android/incallui/UiAdapter;->updateShowMeUi(Lcom/android/incallui/Call;)V

    .line 744
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v0, :cond_0

    .line 745
    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/PrivatePolicy;->setStatus(I)V

    goto :goto_0

    .line 750
    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->stopCamera()V

    goto :goto_0

    .line 756
    :pswitch_3
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->startCamera()V

    goto :goto_0

    .line 762
    :pswitch_4
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CCT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    goto :goto_0

    .line 734
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
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 714
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
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

    .line 717
    :cond_0
    return-void
.end method

.method public onVideoSessionEvent(ILcom/android/incallui/Call;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 721
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 722
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

    .line 723
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 724
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallUi;

    invoke-interface {v0, p1, p2}, Lcom/android/incallui/VideoCallUi;->updateVideoSessionEvent(ILcom/android/incallui/Call;)V

    .line 729
    :cond_0
    :goto_0
    return-void

    .line 727
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

    .prologue
    .line 196
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 197
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 198
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 199
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V

    .line 200
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->addListener(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V

    .line 203
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->addVideoCallUiEventListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallUiEventListener;)V

    .line 204
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->addVideoDetailsListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoDetailsListener;)V

    .line 205
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->addVideoSessionEventListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoSessionEventListener;)V

    .line 206
    return-void
.end method

.method public removeListener()V
    .locals 1

    .prologue
    .line 209
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 210
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 211
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 212
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V

    .line 213
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->removeListener(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V

    .line 214
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->removeVideoCallUiEventListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallUiEventListener;)V

    .line 215
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->removeVideoDetailsListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoDetailsListener;)V

    .line 216
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->removeVideoSessionEventListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoSessionEventListener;)V

    .line 217
    return-void
.end method

.method public sendPickedImage()V
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 471
    :cond_0
    return-void
.end method

.method public sendPickedVideo(Landroid/net/Uri;)V
    .locals 2
    .param p1, "video"    # Landroid/net/Uri;

    .prologue
    .line 484
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->isAliveVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    invoke-static {p1}, Lcom/android/incallui/util/VideoCallUtils;->getVideoFileNameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, "file_path":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 487
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/service/vt/VideoCallManager;->setCapturedLocalFile(Ljava/lang/String;)V

    .line 488
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallControl;->sendStillImage(Ljava/lang/String;Z)V

    .line 491
    .end local v0    # "file_path":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setCallState(Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallUi;

    .line 462
    .local v0, "ui":Lcom/android/incallui/VideoCallUi;
    if-eqz v0, :cond_0

    .line 463
    invoke-interface {v0, p1}, Lcom/android/incallui/VideoCallUi;->setCallState(Lcom/android/incallui/Call;)V

    .line 465
    :cond_0
    return-void
.end method

.method public setCallState(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    .line 455
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

    .line 456
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p0, v0}, Lcom/android/incallui/VideoCallPresenter;->setCallState(Lcom/android/incallui/Call;)V

    .line 458
    :cond_0
    return-void
.end method

.method public setDisplaySurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setDisplaySurface(Landroid/view/Surface;)V

    .line 240
    :cond_0
    return-void
.end method

.method public showRecordResult()V
    .locals 2

    .prologue
    .line 649
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_1

    .line 650
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/util/VideoCallUtils;->showRecordResult(Lcom/android/incallui/Call;)V

    .line 657
    :cond_0
    :goto_0
    return-void

    .line 652
    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getDisconnectingOrDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 653
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 654
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->showRecordResult(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method public startRecord(Z)Z
    .locals 8
    .param p1, "isFarEnd"    # Z

    .prologue
    const/16 v5, 0xc9

    .line 619
    const/4 v2, 0x0

    .line 620
    .local v2, "startRecording":Z
    iget-object v4, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v4, :cond_1

    .line 621
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->checkStorageMemorySpace()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 622
    iget-object v4, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->startRecord(Z)V

    .line 623
    const/4 v2, 0x1

    .line 625
    const-string v0, "notify_recording_qcif.jpg"

    .line 626
    .local v0, "imageType":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->getDefaultImageFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 627
    .local v1, "image_path":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v4

    invoke-static {v1, v4}, Lcom/android/incallui/service/vt/VideoCallControl;->sendStillImage(Ljava/lang/String;Z)V

    .line 629
    const/16 v3, 0x1388

    .line 630
    .local v3, "timer_duration":I
    iget-object v4, p0, Lcom/android/incallui/VideoCallPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 631
    iget-object v4, p0, Lcom/android/incallui/VideoCallPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 633
    :cond_0
    iget-object v4, p0, Lcom/android/incallui/VideoCallPresenter;->mHandler:Landroid/os/Handler;

    int-to-long v6, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 639
    .end local v0    # "imageType":Ljava/lang/String;
    .end local v1    # "image_path":Ljava/lang/String;
    .end local v3    # "timer_duration":I
    :cond_1
    :goto_0
    return v2

    .line 635
    :cond_2
    const v4, 0x7f0901da

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->displayToastLong(I)V

    .line 636
    const-string v4, "VideoCallPresenter - "

    const-string v5, "startRecord - Memory is Full"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopRecord()V
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->stopRecord()V

    .line 646
    :cond_0
    return-void
.end method

.method public toggleFullscreenMode()V
    .locals 2

    .prologue
    .line 534
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setFullScreen(Z)V

    .line 539
    :goto_0
    return-void

    .line 537
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setFullScreen(Z)V

    goto :goto_0
.end method
