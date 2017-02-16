.class public Lcom/android/incallui/fragment/VideoCallVGAKorFragment;
.super Lcom/android/incallui/fragment/VideoCallVGAFragment;
.source "VideoCallVGAKorFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SECVT-VideoCallVGAKorFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;-><init>()V

    return-void
.end method

.method private checkAndChangeOrientation(Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 95
    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallControl;->isSupportOnlyLandscapeUI(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAKorFragment;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->setRequestedOrientation(I)V

    goto :goto_0

    .line 100
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private setDeviceRotatoin()V
    .locals 5

    .prologue
    .line 111
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getDisplayRotation()I

    move-result v1

    .line 112
    .local v1, "rotation":I
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 113
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->setDeviceRotatoin(I)V

    .line 116
    :cond_0
    return-void
.end method


# virtual methods
.method protected getDisplayLocation()I
    .locals 4

    .prologue
    .line 61
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAKorFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    .line 62
    .local v1, "state":I
    const/4 v0, 0x3

    .line 63
    .local v0, "displayLocatoin":I
    invoke-static {v1}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    const/4 v0, 0x0

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    invoke-static {v1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 66
    const/4 v0, 0x0

    goto :goto_0

    .line 68
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 69
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAKorFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isModifyProgressing(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 70
    const/4 v0, 0x0

    .line 73
    :cond_3
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallManager;->isScreenResized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAKorFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v2}, Lcom/android/incallui/util/VideoCallUtils;->isConferecedVideoRx(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 75
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/incallui/service/vt/VideoCallManager;->setScreenResized(Z)V

    goto :goto_0

    .line 77
    :cond_4
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public initializeVideoView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->initializeVideoView(Landroid/view/View;)V

    .line 42
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 43
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 45
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallVGAKorFragment;->checkAndChangeOrientation(Lcom/android/incallui/Call;)V

    .line 48
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 107
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallVGAKorFragment;->setDeviceRotatoin()V

    .line 108
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->onDestroyView()V

    .line 53
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isDeviceLandScape()Z

    move-result v0

    .line 54
    .local v0, "isDeviceLandScape":Z
    iget-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallVGAKorFragment;->mIsDeviceLandScape:Z

    if-eq v1, v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAKorFragment;->changeOrientation()V

    .line 57
    :cond_0
    return-void
.end method

.method public setCallState(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setCallState(Lcom/android/incallui/Call;)V

    .line 87
    if-eqz p1, :cond_1

    .line 88
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 89
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VideoCallVGAKorFragment;->checkAndChangeOrientation(Lcom/android/incallui/Call;)V

    .line 92
    :cond_1
    return-void
.end method

.method public showVideoInCallResize(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 120
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->RESIZE_SCREEN:Z

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAKorFragment;->mIsResizingView:Z

    .line 122
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAKorFragment;->setVideoLocaton()V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAKorFragment;->mIsResizingView:Z

    .line 125
    :cond_0
    return-void
.end method
