.class public Lcom/android/incallui/PrivatePolicy;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/PrivatePolicy$Status;,
        Lcom/android/incallui/PrivatePolicy$SoundType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SECVT-PrivatePolicy"

.field private static sPrivatePolicy:Lcom/android/incallui/PrivatePolicy;


# instance fields
.field private mIsCameraStartFailed:Z

.field private mIsReady:Z

.field private mMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

.field private mNeedToSkipeOnDisconnect:Z

.field private mStatus:I

.field private mediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/incallui/PrivatePolicy;->mStatus:I

    iput-boolean v0, p0, Lcom/android/incallui/PrivatePolicy;->mIsReady:Z

    iput-boolean v0, p0, Lcom/android/incallui/PrivatePolicy;->mIsCameraStartFailed:Z

    iput-boolean v0, p0, Lcom/android/incallui/PrivatePolicy;->mNeedToSkipeOnDisconnect:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/incallui/PrivatePolicy;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/PrivatePolicy;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method public static getInstance()Lcom/android/incallui/PrivatePolicy;
    .locals 1

    sget-object v0, Lcom/android/incallui/PrivatePolicy;->sPrivatePolicy:Lcom/android/incallui/PrivatePolicy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/PrivatePolicy;

    invoke-direct {v0}, Lcom/android/incallui/PrivatePolicy;-><init>()V

    sput-object v0, Lcom/android/incallui/PrivatePolicy;->sPrivatePolicy:Lcom/android/incallui/PrivatePolicy;

    :cond_0
    sget-object v0, Lcom/android/incallui/PrivatePolicy;->sPrivatePolicy:Lcom/android/incallui/PrivatePolicy;

    return-object v0
.end method


# virtual methods
.method public checkAndMinimizeOtherWindows()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/PrivatePolicy;->isProhibit()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/PrivatePolicy;->isFreeFormMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->minimizeOtherWindows()V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "SECVT-PrivatePolicy"

    const-string v1, "clear"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iput v3, p0, Lcom/android/incallui/PrivatePolicy;->mStatus:I

    iput-boolean v3, p0, Lcom/android/incallui/PrivatePolicy;->mIsReady:Z

    iput-boolean v3, p0, Lcom/android/incallui/PrivatePolicy;->mIsCameraStartFailed:Z

    iput-boolean v3, p0, Lcom/android/incallui/PrivatePolicy;->mNeedToSkipeOnDisconnect:Z

    return-void
.end method

.method public clearForActivityOnDestroy()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isAliveVideoCall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/PrivatePolicy;->clear()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "SECVT-PrivatePolicy"

    const-string v1, "clearForActivityOnDestroy"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean v3, p0, Lcom/android/incallui/PrivatePolicy;->mIsCameraStartFailed:Z

    iput-boolean v3, p0, Lcom/android/incallui/PrivatePolicy;->mNeedToSkipeOnDisconnect:Z

    goto :goto_0
.end method

.method public clearForModifyCall()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/PrivatePolicy;->setStatus(I)V

    invoke-virtual {p0}, Lcom/android/incallui/PrivatePolicy;->clear()V

    return-void
.end method

.method public displayToast(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f090101

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f090100

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    goto :goto_0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/PrivatePolicy;->mStatus:I

    return v0
.end method

.method public hasStatus(I)Z
    .locals 1

    iget v0, p0, Lcom/android/incallui/PrivatePolicy;->mStatus:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCameraOffButtonClicked()Z
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/incallui/PrivatePolicy;->hasStatus(I)Z

    move-result v0

    return v0
.end method

.method public isFreeFormMultiWindow()Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->isFreeFormMultiWindow()Z

    move-result v0

    :cond_0
    const-string v1, "SECVT-PrivatePolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFreeformMultiWindow "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public isProhibit()Z
    .locals 1

    iget v0, p0, Lcom/android/incallui/PrivatePolicy;->mStatus:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needToEnableCameraButton()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isCameraRestricted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needToSkipStartCamera()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/PrivatePolicy;->isProhibit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/incallui/PrivatePolicy;->mStatus:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDisconnect()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/PrivatePolicy;->mNeedToSkipeOnDisconnect:Z

    invoke-virtual {p0, v0}, Lcom/android/incallui/PrivatePolicy;->setStatus(I)V

    invoke-virtual {p0}, Lcom/android/incallui/PrivatePolicy;->clear()V

    return-void
.end method

.method public pauseCamera()V
    .locals 3

    const-string v0, "SECVT-PrivatePolicy"

    const-string v1, "pauseCamera"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isAliveVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallNotifier;->getInstance()Lcom/android/incallui/InCallNotifier;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallNotifier;->notifyVideoCallUiEvent(I)V

    :cond_0
    return-void
.end method

.method public playCameraSound(I)V
    .locals 4

    const-string v0, "cam_start"

    packed-switch p1, :pswitch_data_0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://com.samsung.android.incallui/raw/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/PrivatePolicy;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/PrivatePolicy;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/PrivatePolicy;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    iget-object v1, p0, Lcom/android/incallui/PrivatePolicy;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/PrivatePolicy;->mediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/android/incallui/PrivatePolicy;->mediaPlayer:Landroid/media/MediaPlayer;

    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/PrivatePolicy;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/incallui/PrivatePolicy;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/android/incallui/PrivatePolicy;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v0, p0, Lcom/android/incallui/PrivatePolicy;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    const-string v0, "SECVT-PrivatePolicy"

    const-string v1, "playCameraSound"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/PrivatePolicy;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/android/incallui/PrivatePolicy;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/incallui/PrivatePolicy$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/PrivatePolicy$1;-><init>(Lcom/android/incallui/PrivatePolicy;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/android/incallui/PrivatePolicy;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/incallui/PrivatePolicy$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/PrivatePolicy$2;-><init>(Lcom/android/incallui/PrivatePolicy;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :pswitch_0
    const-string v0, "cam_start"

    goto :goto_0

    :pswitch_1
    const-string v0, "cam_stop"

    goto :goto_0

    :pswitch_2
    const-string v0, "cam_click"

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SECVT-PrivatePolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playCameraSound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public playCaptureSound()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/incallui/PrivatePolicy;->playCameraSound(I)V

    return-void
.end method

.method public playStartSound()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/PrivatePolicy;->playCameraSound(I)V

    return-void
.end method

.method public removeStatus(I)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-boolean v0, p0, Lcom/android/incallui/PrivatePolicy;->mIsReady:Z

    if-nez v0, :cond_1

    const-string v0, "SECVT-PrivatePolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeStatus : not ready "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v5}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/PrivatePolicy;->mStatus:I

    iget v2, p0, Lcom/android/incallui/PrivatePolicy;->mStatus:I

    xor-int/lit8 v3, p1, -0x1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/incallui/PrivatePolicy;->mStatus:I

    iget v2, p0, Lcom/android/incallui/PrivatePolicy;->mStatus:I

    if-eq v1, v2, :cond_2

    const-string v2, "SECVT-PrivatePolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeStatus : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/incallui/PrivatePolicy;->mStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    if-ne p1, v5, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/PrivatePolicy;->checkAndMinimizeOtherWindows()V

    :cond_3
    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/incallui/PrivatePolicy;->mStatus:I

    if-nez v1, :cond_6

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    if-eq v0, v7, :cond_4

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    :cond_4
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/incallui/PrivatePolicy;->mNeedToSkipeOnDisconnect:Z

    if-nez v0, :cond_5

    invoke-virtual {p0, v5}, Lcom/android/incallui/PrivatePolicy;->displayToast(Z)V

    :cond_5
    invoke-virtual {p0, v6}, Lcom/android/incallui/PrivatePolicy;->playCameraSound(I)V

    invoke-virtual {p0}, Lcom/android/incallui/PrivatePolicy;->resumeCamera()V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/incallui/PrivatePolicy;->mStatus:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v7, :cond_0

    const-string v0, "SECVT-PrivatePolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeStatus sending image "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/PrivatePolicy;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/incallui/UiAdapter;->showNearEndImage(Z)V

    goto/16 :goto_0
.end method

.method public restoreStatus(I)V
    .locals 1

    iget v0, p0, Lcom/android/incallui/PrivatePolicy;->mStatus:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/incallui/PrivatePolicy;->mStatus:I

    return-void
.end method

.method public resumeCamera()V
    .locals 3

    const-string v0, "SECVT-PrivatePolicy"

    const-string v1, "resumeCamera"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isAliveVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallNotifier;->getInstance()Lcom/android/incallui/InCallNotifier;

    move-result-object v0

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallNotifier;->notifyVideoCallUiEvent(I)V

    :cond_0
    return-void
.end method

.method public setCameraStartFailed(Z)V
    .locals 3

    const-string v0, "SECVT-PrivatePolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraStartFailed isCameraStartFailed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/UiAdapter;->showNearEndImage(Z)V

    :cond_0
    iput-boolean p1, p0, Lcom/android/incallui/PrivatePolicy;->mIsCameraStartFailed:Z

    return-void
.end method

.method public setIsReady(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/incallui/PrivatePolicy;->mIsReady:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "SECVT-PrivatePolicy"

    const-string v1, "PrivatePolicy is ready."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/PrivatePolicy;->playCameraSound(I)V

    iput-boolean p1, p0, Lcom/android/incallui/PrivatePolicy;->mIsReady:Z

    :cond_0
    return-void
.end method

.method public setStatus(I)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-boolean v0, p0, Lcom/android/incallui/PrivatePolicy;->mIsReady:Z

    if-nez v0, :cond_1

    const-string v0, "SECVT-PrivatePolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStatus : not ready "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v5}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v1

    if-nez v1, :cond_2

    if-eq p1, v7, :cond_2

    const-string v0, "SECVT-PrivatePolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStatus : send still image now. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/incallui/PrivatePolicy;->mStatus:I

    iget v2, p0, Lcom/android/incallui/PrivatePolicy;->mStatus:I

    or-int/2addr v2, p1

    iput v2, p0, Lcom/android/incallui/PrivatePolicy;->mStatus:I

    iget v2, p0, Lcom/android/incallui/PrivatePolicy;->mStatus:I

    if-eq v1, v2, :cond_3

    const-string v2, "SECVT-PrivatePolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setStatus : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/incallui/PrivatePolicy;->mStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/incallui/PrivatePolicy;->mStatus:I

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/PrivatePolicy;->mIsCameraStartFailed:Z

    if-nez v1, :cond_5

    invoke-virtual {p0, v6}, Lcom/android/incallui/PrivatePolicy;->playCameraSound(I)V

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    if-eq v0, v7, :cond_4

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    :cond_4
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/incallui/PrivatePolicy;->mNeedToSkipeOnDisconnect:Z

    if-nez v0, :cond_5

    invoke-virtual {p0, v6}, Lcom/android/incallui/PrivatePolicy;->displayToast(Z)V

    :cond_5
    invoke-virtual {p0, v6}, Lcom/android/incallui/PrivatePolicy;->setCameraStartFailed(Z)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v0

    if-nez v0, :cond_6

    if-ne p1, v7, :cond_6

    const-string v0, "SECVT-PrivatePolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStatus : Do not set still image status. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/PrivatePolicy;->pauseCamera()V

    iget-boolean v0, p0, Lcom/android/incallui/PrivatePolicy;->mNeedToSkipeOnDisconnect:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/incallui/UiAdapter;->showNearEndImage(Z)V

    goto/16 :goto_0
.end method
