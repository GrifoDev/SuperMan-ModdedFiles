.class public Lcom/android/incallui/fragment/VideoCallVGAKorFragment;
.super Lcom/android/incallui/fragment/VideoCallVGAFragment;
.source "VideoCallVGAKorFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SECVT-VideoCallVGAKorFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;-><init>()V

    return-void
.end method

.method private checkAndChangeOrientation(Lcom/android/incallui/Call;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    :cond_1
    move v0, v3

    :goto_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_5

    :cond_2
    move v1, v3

    :goto_2
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v1, :cond_6

    :cond_3
    invoke-static {v3}, Lcom/android/incallui/util/VideoCallUtils;->setRequestedOrientation(I)V

    :goto_3
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallVGAKorFragment;->setDeviceRotatoin()V

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_2

    :cond_6
    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallControl;->isSupportOnlyLandscapeUI(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v0, :cond_7

    invoke-static {v2}, Lcom/android/incallui/util/VideoCallUtils;->setRequestedOrientation(I)V

    goto :goto_3

    :cond_7
    invoke-static {v3}, Lcom/android/incallui/util/VideoCallUtils;->setRequestedOrientation(I)V

    goto :goto_3
.end method

.method private setDeviceRotatoin()V
    .locals 5

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getDisplayRotation()I

    move-result v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setDeviceRotatoin(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getDisplayLocation()I
    .locals 4

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAKorFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v0, 0x3

    invoke-static {v1}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {v1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAKorFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isModifyProgressing(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    :cond_3
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallManager;->isScreenResized()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAKorFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v2}, Lcom/android/incallui/util/VideoCallUtils;->isConferecedVideoRx(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/incallui/service/vt/VideoCallManager;->setScreenResized(Z)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public initializeVideoView(Landroid/view/View;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->initializeVideoView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallVGAKorFragment;->checkAndChangeOrientation(Lcom/android/incallui/Call;)V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->onDestroyView()V

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isDeviceLandScape()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallVGAKorFragment;->mIsDeviceLandScape:Z

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAKorFragment;->changeOrientation()V

    :cond_0
    return-void
.end method

.method public setCallState(Lcom/android/incallui/Call;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setCallState(Lcom/android/incallui/Call;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VideoCallVGAKorFragment;->checkAndChangeOrientation(Lcom/android/incallui/Call;)V

    return-void
.end method

.method public showVideoInCallResize(Z)V
    .locals 1

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->RESIZE_SCREEN:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAKorFragment;->mIsResizingView:Z

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAKorFragment;->setVideoLocaton()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAKorFragment;->mIsResizingView:Z

    :cond_0
    return-void
.end method
