.class public Lcom/android/incallui/fragment/VideoCallVGAGlobalFragment;
.super Lcom/android/incallui/fragment/VideoCallVGAFragment;
.source "VideoCallVGAGlobalFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public initializeVideoView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->initializeVideoView(Landroid/view/View;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAGlobalFragment;->mIsUsingPersonalPhoto:Z

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAGlobalFragment;->setMyProfileImage()V

    :cond_0
    return-void
.end method

.method protected needToShowFarEndPhoto()Z
    .locals 1

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAGlobalFragment;->mVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAGlobalFragment;->mVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAGlobalFragment;->mVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingToDummy(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAGlobalFragment;->mVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToTwoWay(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAGlobalFragment;->mVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToOneWay(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAGlobalFragment;->mVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasHolding(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAGlobalFragment;->mVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasHoldingTheOtherParty(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAGlobalFragment;->mVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->isOneWayTx(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected needToShowNearEndPhoto()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAGlobalFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAGlobalFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAGlobalFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->isTheOtherPartyOnHold()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAGlobalFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWayRx(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onVideoStateChanged()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAGlobalFragment;->getVideoStateMessage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->onVideoStateChanged()V

    return-void
.end method
