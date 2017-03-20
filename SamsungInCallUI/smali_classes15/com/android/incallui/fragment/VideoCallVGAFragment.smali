.class public Lcom/android/incallui/fragment/VideoCallVGAFragment;
.super Lcom/android/incallui/fragment/VideoCallFragment;
.source "VideoCallVGAFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnDragListener;
.implements Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallMetricsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/fragment/VideoCallVGAFragment$SmallSurfaceDragShadowBuilder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SECVT-VideoCallVGAFragment"


# instance fields
.field protected mDisplayAnimator:Lcom/android/incallui/util/VideoAnimator;

.field protected mDraggedTemplate:Lcom/android/incallui/util/VideoTemplate;

.field protected mFullScreenTouchArea:Landroid/view/View;

.field protected mIsExchangingViews:Z

.field protected mIsProgressingTouchBackground:Z

.field protected mIsResizingView:Z

.field protected mIsUsingPersonalPhoto:Z

.field protected mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

.field protected mPreviewAnimator:Lcom/android/incallui/util/VideoAnimator;

.field protected mVideoPhotoHelper:Lcom/android/incallui/util/VideoPhotoHelper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallFragment;-><init>()V

    .line 68
    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsUsingPersonalPhoto:Z

    .line 69
    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsProgressingTouchBackground:Z

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFullScreenTouchArea:Landroid/view/View;

    .line 81
    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsExchangingViews:Z

    .line 82
    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsResizingView:Z

    return-void
.end method

.method private getDragTargetTextureView()Landroid/view/TextureView;
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1056
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    if-ne v0, v1, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewVideo:Landroid/view/TextureView;

    .line 1063
    :goto_0
    return-object v0

    .line 1058
    :cond_0
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    if-ne v0, v1, :cond_1

    .line 1059
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CAN_GSM()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1060
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIncomingVideo:Landroid/view/TextureView;

    goto :goto_0

    .line 1063
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDragTargetView()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1045
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    if-ne v0, v1, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    .line 1052
    :goto_0
    return-object v0

    .line 1047
    :cond_0
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    if-ne v0, v1, :cond_1

    .line 1048
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CAN_GSM()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1049
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    goto :goto_0

    .line 1052
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSmallTargetTemplate(I)Lcom/android/incallui/util/VideoTemplate;
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 990
    new-instance v1, Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/incallui/util/VideoTemplate;-><init>(Lcom/android/incallui/util/VideoTemplate;)V

    .line 991
    .local v1, "targetTemplate":Lcom/android/incallui/util/VideoTemplate;
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallManager;->isExchangedViews()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 992
    .local v0, "isPreviewSmall":Z
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 1021
    :goto_1
    return-object v1

    .line 991
    .end local v0    # "isPreviewSmall":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 994
    .restart local v0    # "isPreviewSmall":Z
    :pswitch_0
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v2, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getSmallOutgoingTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_1

    .line 998
    :pswitch_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v2, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;

    invoke-virtual {v2, v0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getSmallTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_1

    .line 1002
    :pswitch_2
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v2, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;

    invoke-virtual {v2, v0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getSmallBannerTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_1

    .line 1006
    :pswitch_3
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v2, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;

    invoke-virtual {v2, v0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getSmallMultipartyTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_1

    .line 1010
    :pswitch_4
    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoState:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyProgressing(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1011
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v2, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;

    invoke-virtual {v2, v0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getSmallBannerTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_1

    .line 1013
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v2, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;

    invoke-virtual {v2, v0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getSmallMultipartyBannerTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_1

    .line 1018
    :pswitch_5
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v2, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;

    invoke-virtual {v2, v0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getSmallCameraEffectTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_1

    .line 992
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected canDragSmallSurface()Z
    .locals 3

    .prologue
    .line 542
    const/4 v0, 0x0

    .line 543
    .local v0, "canDrag":Z
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_VIDEO_DRAG_SMALL_VIEW:Z

    if-eqz v1, :cond_0

    .line 544
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    .line 545
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    .line 546
    invoke-virtual {v1}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->isTheOtherPartyOnHold()Z

    move-result v1

    if-nez v1, :cond_0

    .line 547
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getDragTargetView()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getDragTargetView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->isVideoAnimationRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 548
    const/4 v0, 0x1

    .line 552
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canDragSmallSurface : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->ui(Ljava/lang/String;)V

    .line 553
    return v0
.end method

.method protected canExchangeViews()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 557
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    .line 558
    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    .line 559
    invoke-virtual {v4}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->isTheOtherPartyOnHold()Z

    move-result v4

    if-nez v4, :cond_2

    .line 560
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    move v1, v2

    .line 561
    .local v1, "isPreviewReady":Z
    :goto_0
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 562
    .local v0, "isDisplayReady":Z
    :goto_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->isVideoAnimationRunning()Z

    move-result v4

    if-nez v4, :cond_2

    .line 566
    .end local v0    # "isDisplayReady":Z
    .end local v1    # "isPreviewReady":Z
    :goto_2
    return v2

    :cond_0
    move v1, v3

    .line 560
    goto :goto_0

    .restart local v1    # "isPreviewReady":Z
    :cond_1
    move v0, v3

    .line 561
    goto :goto_1

    .end local v1    # "isPreviewReady":Z
    :cond_2
    move v2, v3

    .line 566
    goto :goto_2
.end method

.method public changeOrientation()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 151
    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->changeOrientation()V

    .line 152
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iput v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    .line 154
    iput v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    .line 155
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter;

    const-string v1, "changeOrientation"

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoCallPresenter;->setCallState(Ljava/lang/String;)V

    .line 157
    :cond_0
    return-void
.end method

.method protected checkAndControlFarEndPhoto()V
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->needToShowFarEndPhoto()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->showFarEndPhoto()V

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->hideFarEndPhoto()V

    goto :goto_0
.end method

.method protected checkAndControlNearEndPhoto()V
    .locals 1

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->needToShowNearEndPhoto()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->showNearEndPhoto()V

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->hideNearEndPhoto()V

    goto :goto_0
.end method

.method public destroyAnimator()V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewAnimator:Lcom/android/incallui/util/VideoAnimator;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewAnimator:Lcom/android/incallui/util/VideoAnimator;

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoAnimator;->destroy()V

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayAnimator:Lcom/android/incallui/util/VideoAnimator;

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayAnimator:Lcom/android/incallui/util/VideoAnimator;

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoAnimator;->destroy()V

    .line 341
    :cond_1
    return-void
.end method

.method public exchangeViews()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 516
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isExchangedViews()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallManager;->setExchangedViews(Z)V

    .line 521
    :goto_0
    iput-boolean v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsExchangingViews:Z

    .line 522
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setVideoLocaton()V

    .line 523
    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsExchangingViews:Z

    .line 524
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_VIDEO_DRAG_SMALL_VIEW:Z

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedTemplate:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/util/VideoTemplate;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->setWidth(I)V

    .line 526
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedTemplate:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->setHeight(I)V

    .line 528
    :cond_0
    return-void

    .line 519
    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/service/vt/VideoCallManager;->setExchangedViews(Z)V

    goto :goto_0
.end method

.method public getBigTemplete()Lcom/android/incallui/util/VideoTemplate;
    .locals 3

    .prologue
    .line 1035
    new-instance v0, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v0}, Lcom/android/incallui/util/VideoTemplate;-><init>()V

    .line 1036
    .local v0, "template":Lcom/android/incallui/util/VideoTemplate;
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager;->isExchangedViews()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1037
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v1, v1, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getBigTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    .line 1041
    :goto_0
    return-object v0

    .line 1039
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v1, v1, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getBigTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_0
.end method

.method protected getDisplayLocation()I
    .locals 3

    .prologue
    .line 689
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    .line 690
    .local v1, "state":I
    const/4 v0, 0x3

    .line 691
    .local v0, "displayLocatoin":I
    invoke-static {v1}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 692
    const/4 v0, 0x0

    .line 702
    :cond_0
    :goto_0
    return v0

    .line 693
    :cond_1
    invoke-static {v1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 694
    const/4 v0, 0x0

    goto :goto_0

    .line 696
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 697
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isModifyProgressing(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 698
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getPreviewLocation()I
    .locals 3

    .prologue
    .line 706
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    .line 707
    .local v1, "state":I
    const/4 v0, 0x4

    .line 708
    .local v0, "previewLocation":I
    invoke-static {v1}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 709
    const/4 v0, 0x1

    .line 723
    :cond_0
    :goto_0
    return v0

    .line 710
    :cond_1
    invoke-static {v1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 711
    const/4 v0, 0x2

    goto :goto_0

    .line 713
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 714
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWayTx(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 715
    const/4 v0, 0x3

    goto :goto_0

    .line 716
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWayRx(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 717
    const/4 v0, 0x0

    goto :goto_0

    .line 718
    :cond_4
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isModifyProgressing(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 719
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getShadowDrawable(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 531
    const/4 v1, 0x0

    .line 532
    .local v1, "shadow":Landroid/graphics/drawable/Drawable;
    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoState:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->isActiveTwoWayVideo(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 533
    const v2, 0x7f10036c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/TextureView;

    move-object v0, v2

    check-cast v0, Landroid/view/TextureView;

    .line 534
    .local v0, "nearEndView":Landroid/view/TextureView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/TextureView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 535
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "shadow":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 538
    .end local v0    # "nearEndView":Landroid/view/TextureView;
    .restart local v1    # "shadow":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v1
.end method

.method public getSmallTemplete()Lcom/android/incallui/util/VideoTemplate;
    .locals 3

    .prologue
    .line 1025
    new-instance v0, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v0}, Lcom/android/incallui/util/VideoTemplate;-><init>()V

    .line 1026
    .local v0, "template":Lcom/android/incallui/util/VideoTemplate;
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager;->isExchangedViews()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1027
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v1, v1, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getSmallTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    .line 1031
    :goto_0
    return-object v0

    .line 1029
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v1, v1, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getSmallTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_0
.end method

.method protected getVideoStateMessage()I
    .locals 2

    .prologue
    .line 368
    const/4 v0, 0x0

    .line 369
    .local v0, "messageType":I
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyRequest(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 370
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToTwoWay(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    const/4 v0, 0x3

    .line 378
    :cond_0
    :goto_0
    return v0

    .line 373
    :cond_1
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToTwoWay(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected hideFarEndPhoto()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 265
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 266
    const-string v0, "hideFarEndPhoto"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 269
    :cond_0
    return-void
.end method

.method protected hideNearEndPhoto()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 280
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 281
    const-string v0, "hideNearEndPhoto"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 284
    :cond_0
    return-void
.end method

.method protected hideView()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedTemplate:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->removeTouchListener()V

    .line 146
    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->hideView()V

    .line 147
    return-void
.end method

.method public initializeVideoView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallFragment;->initializeVideoView(Landroid/view/View;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setTemplateSurfaces()V

    .line 112
    if-eqz p1, :cond_2

    .line 113
    const v0, 0x7f100361

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoViewsContainer:Landroid/view/View;

    .line 114
    const v0, 0x7f100362

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    .line 115
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Lcom/android/incallui/util/VideoAnimator;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lcom/android/incallui/util/VideoAnimator;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayAnimator:Lcom/android/incallui/util/VideoAnimator;

    .line 118
    :cond_0
    const v0, 0x7f10036b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    .line 119
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 120
    new-instance v0, Lcom/android/incallui/util/VideoAnimator;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lcom/android/incallui/util/VideoAnimator;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewAnimator:Lcom/android/incallui/util/VideoAnimator;

    .line 122
    :cond_1
    const v0, 0x7f1003ab

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewBorder:Landroid/view/View;

    .line 123
    const v0, 0x7f1003a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayBorder:Landroid/view/View;

    .line 124
    const v0, 0x7f100364

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreparingAnimation:Landroid/view/View;

    .line 125
    const v0, 0x7f10036a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFarEndCaptureAnimatinoView:Landroid/view/View;

    .line 126
    const v0, 0x7f10036e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mNearEndCaptureAnimatinoView:Landroid/view/View;

    .line 127
    const v0, 0x7f10036d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mNearEndSwitchAnimationView:Landroid/view/View;

    .line 128
    const v0, 0x7f1003a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFullScreenTouchArea:Landroid/view/View;

    .line 129
    const v0, 0x7f1003a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    .line 130
    const v0, 0x7f1003a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    .line 131
    new-instance v0, Lcom/android/incallui/util/VideoPhotoHelper;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/incallui/util/VideoPhotoHelper;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoPhotoHelper:Lcom/android/incallui/util/VideoPhotoHelper;

    .line 132
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->showView()V

    .line 134
    :cond_2
    return-void
.end method

.method protected isVideoAnimationRunning()Z
    .locals 1

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewAnimator:Lcom/android/incallui/util/VideoAnimator;

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayAnimator:Lcom/android/incallui/util/VideoAnimator;

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected needToHideSmallView()Z
    .locals 1

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected needToShowFarEndPhoto()Z
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoState:I

    .line 230
    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyRequest(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected needToShowNearEndPhoto()Z
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public onCallObjectChanged(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 352
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallFragment;->onCallObjectChanged(Lcom/android/incallui/Call;)V

    .line 353
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->updatePrimaryImage()V

    .line 354
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/fragment/VideoCallFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 99
    const v0, 0x7f040129

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 288
    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->onDestroyView()V

    .line 289
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->removeVideoCallMetricsListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallMetricsListener;)V

    .line 290
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->destroyAnimator()V

    .line 297
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->removeTouchListener()V

    .line 298
    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 455
    const/4 v0, 0x0

    .line 456
    .local v0, "retValue":Z
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 461
    :goto_0
    return v0

    .line 458
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->processPreviewOnDrag(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result v0

    goto :goto_0

    .line 456
    :pswitch_data_0
    .packed-switch 0x7f100361
        :pswitch_0
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x4

    .line 408
    const/4 v0, 0x0

    .line 409
    .local v0, "retValue":Z
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 450
    :cond_0
    :goto_0
    return v0

    .line 411
    :sswitch_0
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    if-ne v1, v2, :cond_0

    .line 412
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_VIDEO_DRAG_SMALL_VIEW:Z

    if-eqz v1, :cond_1

    .line 413
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->canDragSmallSurface()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->processDragOnTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 417
    :cond_1
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_EXCHANGE_VIEW:Z

    if-eqz v1, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->canExchangeViews()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->processOnTouchExchangeViews(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 427
    :sswitch_1
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    if-ne v1, v2, :cond_0

    .line 428
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_VIDEO_DRAG_SMALL_VIEW:Z

    if-eqz v1, :cond_2

    .line 429
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CAN_GSM()Z

    move-result v1

    if-nez v1, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->canDragSmallSurface()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->processDragOnTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 435
    :cond_2
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_EXCHANGE_VIEW:Z

    if-eqz v1, :cond_0

    .line 436
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->canExchangeViews()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->processOnTouchExchangeViews(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 445
    :sswitch_2
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->isAvailableFullScreenMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->processOnTouchBackgroundView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 409
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100362 -> :sswitch_1
        0x7f10036b -> :sswitch_0
        0x7f1003a5 -> :sswitch_2
    .end sparse-switch
.end method

.method public onVideoCallMetricsChagned(Lcom/android/incallui/service/vt/VideoCallMetrics;)V
    .locals 2
    .param p1, "metrics"    # Lcom/android/incallui/service/vt/VideoCallMetrics;

    .prologue
    const/4 v1, 0x7

    .line 161
    iput-object p1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    .line 162
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    .line 163
    iput v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    .line 164
    iput v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    .line 165
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter;

    const-string v1, "changed VideoCallMetrics"

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoCallPresenter;->setCallState(Ljava/lang/String;)V

    .line 167
    :cond_0
    return-void
.end method

.method public onVideoStateChanged()V
    .locals 2

    .prologue
    .line 358
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoState:I

    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_NONE:I

    if-ne v0, v1, :cond_0

    .line 365
    :goto_0
    return-void

    .line 361
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->checkAndControlFarEndPhoto()V

    .line 362
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->checkAndControlNearEndPhoto()V

    .line 363
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getVideoStateMessage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    .line 364
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setVideoLocaton()V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 105
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->addVideoCallMetricsListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallMetricsListener;)V

    .line 106
    return-void
.end method

.method protected processDragOnTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 490
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 491
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->canDragSmallSurface()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 492
    const-string v3, ""

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 493
    .local v0, "data":Landroid/content/ClipData;
    new-instance v1, Lcom/android/incallui/fragment/VideoCallVGAFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/fragment/VideoCallVGAFragment$1;-><init>(Lcom/android/incallui/fragment/VideoCallVGAFragment;Landroid/view/View;)V

    .line 499
    .local v1, "myShadow":Landroid/view/View$DragShadowBuilder;
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 503
    .end local v0    # "data":Landroid/content/ClipData;
    .end local v1    # "myShadow":Landroid/view/View$DragShadowBuilder;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected processOnTouchBackgroundView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 465
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->isAvailableFullScreenMode()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 486
    :goto_0
    :pswitch_0
    return v0

    .line 468
    :cond_0
    const/4 v0, 0x0

    .line 469
    .local v0, "result":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 471
    :pswitch_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsProgressingTouchBackground:Z

    .line 472
    const/4 v0, 0x1

    .line 473
    goto :goto_0

    .line 477
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsProgressingTouchBackground:Z

    if-eqz v1, :cond_1

    .line 478
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/VideoCallPresenter;->toggleFullscreenMode()V

    .line 479
    const/4 v0, 0x1

    .line 481
    :cond_1
    iput-boolean v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsProgressingTouchBackground:Z

    goto :goto_0

    .line 469
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected processOnTouchExchangeViews(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 507
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 508
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->canExchangeViews()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->exchangeViews()V

    .line 512
    :cond_0
    return v1
.end method

.method protected processPreviewOnDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 570
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getDragTargetView()Landroid/view/ViewGroup;

    move-result-object v1

    .line 571
    .local v1, "dragTargetView":Landroid/view/ViewGroup;
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getDragTargetTextureView()Landroid/view/TextureView;

    move-result-object v0

    .line 573
    .local v0, "dragTargetTextureView":Landroid/view/TextureView;
    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    .line 574
    :cond_0
    const-string v4, "processPreviewOnDrag - error"

    invoke-static {v4}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    .line 623
    :cond_1
    :goto_0
    return v6

    .line 577
    :cond_2
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 579
    :pswitch_1
    const-string v4, "SECVT-VideoCallVGAFragment"

    const-string v5, "Drag STARTED"

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 580
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 581
    invoke-virtual {v0, v7}, Landroid/view/TextureView;->setAlpha(F)V

    goto :goto_0

    .line 584
    :pswitch_2
    const-string v4, "SECVT-VideoCallVGAFragment"

    const-string v5, "Drag ENTERED"

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 587
    :pswitch_3
    const-string v4, "SECVT-VideoCallVGAFragment"

    const-string v5, "Drag EXITED"

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 589
    :pswitch_4
    const-string v4, "SECVT-VideoCallVGAFragment"

    const-string v5, "Drag DROP"

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 590
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->canDragSmallSurface()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 594
    const/4 v2, 0x0

    .local v2, "dropX":I
    const/4 v3, 0x0

    .line 595
    .local v3, "dropY":I
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v2, v4, v5

    .line 596
    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 598
    if-gez v2, :cond_5

    .line 599
    const/4 v2, 0x0

    .line 604
    :cond_3
    :goto_1
    if-gez v3, :cond_6

    .line 605
    const/4 v3, 0x0

    .line 610
    :cond_4
    :goto_2
    int-to-float v4, v2

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setX(F)V

    .line 611
    int-to-float v4, v3

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setY(F)V

    .line 612
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedTemplate:Lcom/android/incallui/util/VideoTemplate;

    int-to-float v5, v2

    invoke-virtual {v4, v5}, Lcom/android/incallui/util/VideoTemplate;->setX(F)V

    .line 613
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedTemplate:Lcom/android/incallui/util/VideoTemplate;

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Lcom/android/incallui/util/VideoTemplate;->setY(F)V

    goto :goto_0

    .line 600
    :cond_5
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoViewsContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v2, v4, :cond_3

    .line 601
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoViewsContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    sub-int v2, v4, v5

    goto :goto_1

    .line 606
    :cond_6
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoViewsContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_4

    .line 607
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoViewsContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    sub-int v3, v4, v5

    goto :goto_2

    .line 616
    .end local v2    # "dropX":I
    .end local v3    # "dropY":I
    :pswitch_5
    const-string v4, "SECVT-VideoCallVGAFragment"

    const-string v5, "Drag ENDED"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 618
    invoke-virtual {v0, v8}, Landroid/view/TextureView;->setAlpha(F)V

    .line 619
    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->movePip()V

    goto/16 :goto_0

    .line 577
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public registerTouchListener()V
    .locals 1

    .prologue
    .line 301
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isJpnUX()Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_VIDEO_DRAG_SMALL_VIEW:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_EXCHANGE_VIEW:Z

    if-eqz v0, :cond_3

    .line 302
    :cond_0
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_VIDEO_DRAG_SMALL_VIEW:Z

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoViewsContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoViewsContainer:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 310
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 311
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 314
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFullScreenTouchArea:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 315
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFullScreenTouchArea:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 317
    :cond_4
    return-void
.end method

.method public removeTouchListener()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 320
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoViewsContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoViewsContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 327
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 329
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFullScreenTouchArea:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 330
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFullScreenTouchArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 332
    :cond_3
    return-void
.end method

.method public setBigViewLocation(ZI)V
    .locals 6
    .param p1, "isPreview"    # Z
    .param p2, "duration"    # I

    .prologue
    const/4 v3, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 839
    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mSmallViewState:I

    invoke-direct {p0, v2}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallTargetTemplate(I)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v1

    .line 840
    .local v1, "startTemplete":Lcom/android/incallui/util/VideoTemplate;
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v2, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getResizeTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v0

    .line 841
    .local v0, "resize":Lcom/android/incallui/util/VideoTemplate;
    if-eqz p1, :cond_3

    .line 842
    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    if-ne v2, v3, :cond_0

    .line 843
    invoke-virtual {v1, v0}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    .line 845
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBigViewLocation PreviewLocation ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    invoke-static {v3}, Lcom/android/incallui/fragment/VideoCallFragment$ViewLocation;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> BIG) duration : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->location(Ljava/lang/String;)V

    .line 846
    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    if-ne v2, v5, :cond_1

    .line 847
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 868
    :goto_0
    return-void

    .line 849
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewAnimator:Lcom/android/incallui/util/VideoAnimator;

    invoke-virtual {v2}, Lcom/android/incallui/util/VideoAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 850
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewAnimator:Lcom/android/incallui/util/VideoAnimator;

    invoke-virtual {v2}, Lcom/android/incallui/util/VideoAnimator;->end()V

    .line 852
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewAnimator:Lcom/android/incallui/util/VideoAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getBigTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v3

    invoke-virtual {v2, v1, v3, p2}, Lcom/android/incallui/util/VideoAnimator;->move(Lcom/android/incallui/util/VideoTemplate;Lcom/android/incallui/util/VideoTemplate;I)V

    goto :goto_0

    .line 855
    :cond_3
    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    if-ne v2, v3, :cond_4

    .line 856
    invoke-virtual {v1, v0}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    .line 858
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->needToShowPreparingImage()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 859
    const/4 p2, 0x0

    .line 861
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBigViewLocation DisplayLocation ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    invoke-static {v3}, Lcom/android/incallui/fragment/VideoCallFragment$ViewLocation;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> BIG) duration : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->location(Ljava/lang/String;)V

    .line 862
    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    if-ne v2, v5, :cond_6

    .line 863
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 865
    :cond_6
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayAnimator:Lcom/android/incallui/util/VideoAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getBigTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v3

    invoke-virtual {v2, v1, v3, p2}, Lcom/android/incallui/util/VideoAnimator;->move(Lcom/android/incallui/util/VideoTemplate;Lcom/android/incallui/util/VideoTemplate;I)V

    goto :goto_0
.end method

.method public setCallState(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setTemplateSurfaces()V

    .line 346
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallFragment;->setCallState(Lcom/android/incallui/Call;)V

    .line 347
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setFullScreenTouchListeners()V

    .line 348
    return-void
.end method

.method public setDispalyLocation(II)V
    .locals 8
    .param p1, "location"    # I
    .param p2, "duration"    # I

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x3

    const/4 v2, 0x1

    const/4 v5, 0x4

    const/4 v3, 0x0

    .line 783
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayAnimator:Lcom/android/incallui/util/VideoAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayAnimator:Lcom/android/incallui/util/VideoAnimator;

    invoke-virtual {v1}, Lcom/android/incallui/util/VideoAnimator;->hasTarget()Z

    move-result v1

    if-nez v1, :cond_1

    .line 784
    :cond_0
    const-string v1, "setDispalyLocation - return"

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->location(Ljava/lang/String;)V

    .line 836
    :goto_0
    return-void

    .line 788
    :cond_1
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    if-eq v1, p1, :cond_3

    .line 789
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDispalyLocation "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    invoke-static {v4}, Lcom/android/incallui/fragment/VideoCallFragment$ViewLocation;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " -> "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/incallui/fragment/VideoCallFragment$ViewLocation;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " needToHideSmallView="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 790
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->needToHideSmallView()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 789
    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->location(Ljava/lang/String;)V

    .line 791
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    const/4 v4, 0x6

    if-eq v1, v4, :cond_2

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    if-ne v1, v7, :cond_3

    .line 792
    :cond_2
    const/4 p2, 0x0

    .line 795
    :cond_3
    if-ne p1, v5, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->showDisplayBorder(Z)V

    .line 796
    if-eq p1, v5, :cond_4

    if-ne p1, v6, :cond_5

    .line 797
    :cond_4
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoPhotoHelper:Lcom/android/incallui/util/VideoPhotoHelper;

    if-ne p1, v6, :cond_7

    move v1, v2

    :goto_2
    invoke-virtual {v4, v2, v1}, Lcom/android/incallui/util/VideoPhotoHelper;->setFarEndPhoto(ZZ)V

    .line 800
    :cond_5
    packed-switch p1, :pswitch_data_0

    .line 832
    :pswitch_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 835
    :goto_3
    iput p1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    goto :goto_0

    :cond_6
    move v1, v3

    .line 795
    goto :goto_1

    :cond_7
    move v1, v3

    .line 797
    goto :goto_2

    .line 802
    :pswitch_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->bringToFront()V

    .line 803
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayAnimator:Lcom/android/incallui/util/VideoAnimator;

    invoke-direct {p0, v7}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallTargetTemplate(I)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/util/VideoAnimator;->change(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_3

    .line 807
    :pswitch_2
    invoke-virtual {p0, v3, p2}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setBigViewLocation(ZI)V

    goto :goto_3

    .line 811
    :pswitch_3
    invoke-virtual {p0, v3, p2}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setSmallViewLocation(ZI)V

    goto :goto_3

    .line 815
    :pswitch_4
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_8

    .line 816
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoViewsContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 818
    :cond_8
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v1, v1, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getResizeTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v0

    .line 819
    .local v0, "resize":Lcom/android/incallui/util/VideoTemplate;
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    if-ne v1, v5, :cond_9

    .line 820
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayAnimator:Lcom/android/incallui/util/VideoAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p2}, Lcom/android/incallui/util/VideoAnimator;->move(Lcom/android/incallui/util/VideoTemplate;Lcom/android/incallui/util/VideoTemplate;I)V

    goto :goto_3

    .line 822
    :cond_9
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayAnimator:Lcom/android/incallui/util/VideoAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getBigTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p2}, Lcom/android/incallui/util/VideoAnimator;->move(Lcom/android/incallui/util/VideoTemplate;Lcom/android/incallui/util/VideoTemplate;I)V

    goto :goto_3

    .line 828
    .end local v0    # "resize":Lcom/android/incallui/util/VideoTemplate;
    :pswitch_5
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 800
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setDraggableSmallViewLocation(ZI)V
    .locals 12
    .param p1, "isPreview"    # Z
    .param p2, "duration"    # I

    .prologue
    .line 921
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallViewState()I

    move-result v5

    .line 922
    .local v5, "newViewState":I
    iget v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mSmallViewState:I

    invoke-direct {p0, v10}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallTargetTemplate(I)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v6

    .line 923
    .local v6, "oldSmallTemplete":Lcom/android/incallui/util/VideoTemplate;
    invoke-direct {p0, v5}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallTargetTemplate(I)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v7

    .line 924
    .local v7, "targetTemplete":Lcom/android/incallui/util/VideoTemplate;
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    .line 925
    .local v1, "container":Landroid/view/ViewGroup;
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayAnimator:Lcom/android/incallui/util/VideoAnimator;

    .line 926
    .local v0, "animator":Lcom/android/incallui/util/VideoAnimator;
    iget v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    .line 927
    .local v4, "location":I
    if-eqz p1, :cond_0

    .line 928
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    .line 929
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewAnimator:Lcom/android/incallui/util/VideoAnimator;

    .line 930
    iget v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    .line 933
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->bringToFront()V

    .line 935
    const/4 v10, 0x4

    if-ne v4, v10, :cond_8

    .line 936
    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedTemplate:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/incallui/util/VideoTemplate;->isSameCoordinates(Lcom/android/incallui/util/VideoTemplate;)Z

    move-result v10

    if-nez v10, :cond_2

    const/4 v3, 0x1

    .line 937
    .local v3, "isDgagged":Z
    :goto_0
    new-instance v2, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v2, v1}, Lcom/android/incallui/util/VideoTemplate;-><init>(Landroid/view/View;)V

    .line 938
    .local v2, "currTemplete":Lcom/android/incallui/util/VideoTemplate;
    if-eqz v3, :cond_6

    .line 939
    iget v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mSmallViewState:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    .line 940
    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedTemplate:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v10}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v10

    invoke-virtual {v7}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_3

    .line 941
    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedTemplate:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v10}, Lcom/android/incallui/util/VideoTemplate;->getX()F

    move-result v10

    invoke-virtual {v7, v10}, Lcom/android/incallui/util/VideoTemplate;->setX(F)V

    .line 942
    const/4 p2, 0x0

    .line 943
    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedTemplate:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v10, v7}, Lcom/android/incallui/util/VideoTemplate;->isSameCoordinates(Lcom/android/incallui/util/VideoTemplate;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 944
    const/16 p2, 0x12c

    .line 945
    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedTemplate:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v0, v10, v7, p2}, Lcom/android/incallui/util/VideoAnimator;->move(Lcom/android/incallui/util/VideoTemplate;Lcom/android/incallui/util/VideoTemplate;I)V

    .line 984
    .end local v2    # "currTemplete":Lcom/android/incallui/util/VideoTemplate;
    .end local v3    # "isDgagged":Z
    :cond_1
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setSmallViewLocation isPreview("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v4}, Lcom/android/incallui/fragment/VideoCallFragment$ViewLocation;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " -> SMALL) ViewState ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mSmallViewState:I

    .line 985
    invoke-static {v11}, Lcom/android/incallui/fragment/VideoCallFragment$ViewState;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "->"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v5}, Lcom/android/incallui/fragment/VideoCallFragment$ViewState;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " duration : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isRunning : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoAnimator;->isRunning()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 984
    invoke-static {v10}, Lcom/android/incallui/service/vt/VideoCallLog;->location(Ljava/lang/String;)V

    .line 986
    iput v5, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mSmallViewState:I

    .line 987
    return-void

    .line 936
    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 948
    .restart local v2    # "currTemplete":Lcom/android/incallui/util/VideoTemplate;
    .restart local v3    # "isDgagged":Z
    :cond_3
    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedTemplate:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v10}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v10

    invoke-virtual {v7}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v11

    int-to-float v11, v11

    add-float v8, v10, v11

    .line 949
    .local v8, "templeteBottom":F
    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v10, v10, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iget v10, v10, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->top:I

    int-to-float v9, v10

    .line 950
    .local v9, "thresholdY":F
    cmpl-float v10, v8, v9

    if-lez v10, :cond_1

    .line 951
    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedTemplate:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v10}, Lcom/android/incallui/util/VideoTemplate;->getX()F

    move-result v10

    invoke-virtual {v7, v10}, Lcom/android/incallui/util/VideoTemplate;->setX(F)V

    .line 952
    invoke-virtual {v7}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v10

    int-to-float v10, v10

    sub-float v10, v9, v10

    invoke-virtual {v7, v10}, Lcom/android/incallui/util/VideoTemplate;->setY(F)V

    .line 953
    const/4 p2, 0x0

    .line 954
    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedTemplate:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v10, v7}, Lcom/android/incallui/util/VideoTemplate;->isSameCoordinates(Lcom/android/incallui/util/VideoTemplate;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 955
    const/16 p2, 0x12c

    .line 956
    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedTemplate:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v0, v10, v7, p2}, Lcom/android/incallui/util/VideoAnimator;->move(Lcom/android/incallui/util/VideoTemplate;Lcom/android/incallui/util/VideoTemplate;I)V

    goto/16 :goto_1

    .line 961
    .end local v8    # "templeteBottom":F
    .end local v9    # "thresholdY":F
    :cond_4
    const/4 v10, 0x2

    if-ne v5, v10, :cond_5

    .line 962
    invoke-virtual {v2}, Lcom/android/incallui/util/VideoTemplate;->getX()F

    move-result v10

    invoke-virtual {v6, v10}, Lcom/android/incallui/util/VideoTemplate;->setX(F)V

    .line 963
    invoke-virtual {v2}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v10

    invoke-virtual {v6, v10}, Lcom/android/incallui/util/VideoTemplate;->setY(F)V

    .line 964
    const/4 p2, 0x0

    .line 965
    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedTemplate:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v10, v6}, Lcom/android/incallui/util/VideoTemplate;->isSameCoordinates(Lcom/android/incallui/util/VideoTemplate;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 966
    const/16 p2, 0x12c

    .line 967
    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedTemplate:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v0, v6, v10, p2}, Lcom/android/incallui/util/VideoAnimator;->move(Lcom/android/incallui/util/VideoTemplate;Lcom/android/incallui/util/VideoTemplate;I)V

    goto/16 :goto_1

    .line 970
    :cond_5
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_1

    .line 974
    :cond_6
    iget v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mSmallViewState:I

    if-ne v5, v10, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/android/incallui/util/VideoTemplate;->areSame(Lcom/android/incallui/util/VideoTemplate;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 975
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_1

    .line 977
    :cond_7
    const/16 p2, 0x12c

    .line 978
    invoke-virtual {v0, v6, v7, p2}, Lcom/android/incallui/util/VideoAnimator;->move(Lcom/android/incallui/util/VideoTemplate;Lcom/android/incallui/util/VideoTemplate;I)V

    goto/16 :goto_1

    .line 982
    .end local v2    # "currTemplete":Lcom/android/incallui/util/VideoTemplate;
    .end local v3    # "isDgagged":Z
    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getBigTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v10

    invoke-virtual {v0, v10, v7, p2}, Lcom/android/incallui/util/VideoAnimator;->move(Lcom/android/incallui/util/VideoTemplate;Lcom/android/incallui/util/VideoTemplate;I)V

    goto/16 :goto_1
.end method

.method protected setFullScreenTouchListeners()V
    .locals 3

    .prologue
    .line 1079
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_2

    .line 1080
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->isModifyProgressing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1081
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    .line 1082
    .local v0, "state":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 1083
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFullScreenTouchArea:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1084
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFullScreenTouchArea:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1093
    .end local v0    # "state":I
    :cond_1
    :goto_0
    return-void

    .line 1090
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFullScreenTouchArea:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1091
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFullScreenTouchArea:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method protected setMyProfileImage()V
    .locals 3

    .prologue
    .line 215
    iget-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsUsingPersonalPhoto:Z

    if-nez v1, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 218
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "display_photo"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 219
    .local v0, "photoUri":Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->isUriExist(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 220
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 221
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 223
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoPhotoHelper:Lcom/android/incallui/util/VideoPhotoHelper;

    invoke-virtual {v1}, Lcom/android/incallui/util/VideoPhotoHelper;->setUsingDefaultPhotoforNearEnd()V

    goto :goto_0
.end method

.method public setPreviewLocation(II)V
    .locals 7
    .param p1, "location"    # I
    .param p2, "duration"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v2, 0x1

    .line 727
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewAnimator:Lcom/android/incallui/util/VideoAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewAnimator:Lcom/android/incallui/util/VideoAnimator;

    invoke-virtual {v1}, Lcom/android/incallui/util/VideoAnimator;->hasTarget()Z

    move-result v1

    if-nez v1, :cond_1

    .line 728
    :cond_0
    const-string v1, "setPreviewLocation - return"

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->location(Ljava/lang/String;)V

    .line 780
    :goto_0
    return-void

    .line 731
    :cond_1
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    if-eq v1, p1, :cond_3

    .line 732
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPreviewLocation "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    invoke-static {v4}, Lcom/android/incallui/fragment/VideoCallFragment$ViewLocation;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " -> "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/incallui/fragment/VideoCallFragment$ViewLocation;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " needToHideSmallView="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 733
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->needToHideSmallView()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 732
    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->location(Ljava/lang/String;)V

    .line 734
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    const/4 v4, 0x6

    if-eq v1, v4, :cond_2

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    const/4 v4, 0x7

    if-ne v1, v4, :cond_3

    .line 735
    :cond_2
    const/4 p2, 0x0

    .line 738
    :cond_3
    if-ne p1, v5, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->showPreviewBorder(Z)V

    .line 739
    if-eq p1, v5, :cond_4

    if-ne p1, v6, :cond_5

    .line 740
    :cond_4
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoPhotoHelper:Lcom/android/incallui/util/VideoPhotoHelper;

    if-ne p1, v6, :cond_7

    move v1, v2

    :goto_2
    invoke-virtual {v4, v2, v1}, Lcom/android/incallui/util/VideoPhotoHelper;->setNearEndPhoto(ZZ)V

    .line 743
    :cond_5
    packed-switch p1, :pswitch_data_0

    .line 779
    :goto_3
    iput p1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    goto :goto_0

    :cond_6
    move v1, v3

    .line 738
    goto :goto_1

    :cond_7
    move v1, v3

    .line 740
    goto :goto_2

    .line 745
    :pswitch_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 749
    :pswitch_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->bringToFront()V

    .line 750
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewAnimator:Lcom/android/incallui/util/VideoAnimator;

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v2, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getBigDefaultTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/util/VideoAnimator;->change(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_3

    .line 754
    :pswitch_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->bringToFront()V

    .line 755
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewAnimator:Lcom/android/incallui/util/VideoAnimator;

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v2, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getBigDefaultTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/util/VideoAnimator;->change(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_3

    .line 759
    :pswitch_3
    invoke-virtual {p0, v2, p2}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setBigViewLocation(ZI)V

    goto :goto_3

    .line 763
    :pswitch_4
    invoke-virtual {p0, v2, p2}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setSmallViewLocation(ZI)V

    goto :goto_3

    .line 767
    :pswitch_5
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_8

    .line 768
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 770
    :cond_8
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v1, v1, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getResizeTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v0

    .line 771
    .local v0, "resize":Lcom/android/incallui/util/VideoTemplate;
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    if-ne v1, v5, :cond_9

    .line 772
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewAnimator:Lcom/android/incallui/util/VideoAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p2}, Lcom/android/incallui/util/VideoAnimator;->move(Lcom/android/incallui/util/VideoTemplate;Lcom/android/incallui/util/VideoTemplate;I)V

    goto :goto_3

    .line 774
    :cond_9
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewAnimator:Lcom/android/incallui/util/VideoAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getBigTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p2}, Lcom/android/incallui/util/VideoAnimator;->move(Lcom/android/incallui/util/VideoTemplate;Lcom/android/incallui/util/VideoTemplate;I)V

    goto :goto_3

    .line 743
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 2
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isPersonalPhotoAvailable"    # Z

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsUsingPersonalPhoto:Z

    if-nez v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 194
    if-eqz p2, :cond_2

    .line 195
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 196
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoPhotoHelper:Lcom/android/incallui/util/VideoPhotoHelper;

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoPhotoHelper;->setUsingDefaultPhotoforFarEnd()V

    goto :goto_0
.end method

.method public setSmallViewLocation(ZI)V
    .locals 9
    .param p1, "isPreview"    # Z
    .param p2, "duration"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 871
    sget-boolean v6, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_VIDEO_DRAG_SMALL_VIEW:Z

    if-eqz v6, :cond_0

    .line 872
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setDraggableSmallViewLocation(ZI)V

    .line 918
    :goto_0
    return-void

    .line 876
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallViewState()I

    move-result v3

    .line 877
    .local v3, "newViewState":I
    iget v6, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mSmallViewState:I

    invoke-direct {p0, v6}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallTargetTemplate(I)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v4

    .line 878
    .local v4, "oldSmallTemplete":Lcom/android/incallui/util/VideoTemplate;
    invoke-direct {p0, v3}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallTargetTemplate(I)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v5

    .line 880
    .local v5, "targetTemplete":Lcom/android/incallui/util/VideoTemplate;
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    .line 881
    .local v1, "container":Landroid/view/ViewGroup;
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayAnimator:Lcom/android/incallui/util/VideoAnimator;

    .line 882
    .local v0, "animator":Lcom/android/incallui/util/VideoAnimator;
    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    .line 883
    .local v2, "location":I
    if-eqz p1, :cond_1

    .line 884
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    .line 885
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewAnimator:Lcom/android/incallui/util/VideoAnimator;

    .line 886
    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    .line 888
    :cond_1
    const/4 v6, 0x5

    if-ne v2, v6, :cond_2

    .line 889
    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v6, v6, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;

    invoke-virtual {v6}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getResizeTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    .line 891
    :cond_2
    invoke-virtual {v1}, Landroid/view/ViewGroup;->bringToFront()V

    .line 892
    iget-boolean v6, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsExchangingViews:Z

    if-eqz v6, :cond_5

    .line 893
    if-ne v2, v8, :cond_4

    .line 894
    iget v6, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mSmallViewState:I

    if-ne v3, v6, :cond_3

    .line 895
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 915
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSmallViewLocation isPreview("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Lcom/android/incallui/fragment/VideoCallFragment$ViewLocation;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> SMALL) ViewState ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mSmallViewState:I

    .line 916
    invoke-static {v7}, Lcom/android/incallui/fragment/VideoCallFragment$ViewState;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/android/incallui/fragment/VideoCallFragment$ViewState;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " duration : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isRunning : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoAnimator;->isRunning()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 915
    invoke-static {v6}, Lcom/android/incallui/service/vt/VideoCallLog;->location(Ljava/lang/String;)V

    .line 917
    iput v3, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mSmallViewState:I

    goto/16 :goto_0

    .line 897
    :cond_3
    const/16 p2, 0x12c

    .line 898
    invoke-virtual {v0, v4, v5, p2}, Lcom/android/incallui/util/VideoAnimator;->move(Lcom/android/incallui/util/VideoTemplate;Lcom/android/incallui/util/VideoTemplate;I)V

    goto :goto_1

    .line 901
    :cond_4
    invoke-virtual {v0, v5, p2}, Lcom/android/incallui/util/VideoAnimator;->fadeIn(Lcom/android/incallui/util/VideoTemplate;I)V

    goto :goto_1

    .line 904
    :cond_5
    if-ne v2, v8, :cond_7

    .line 905
    iget v6, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mSmallViewState:I

    if-ne v3, v6, :cond_6

    .line 906
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 908
    :cond_6
    const/16 p2, 0x12c

    .line 909
    invoke-virtual {v0, v4, v5, p2}, Lcom/android/incallui/util/VideoAnimator;->move(Lcom/android/incallui/util/VideoTemplate;Lcom/android/incallui/util/VideoTemplate;I)V

    goto :goto_1

    .line 912
    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getBigTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v6

    invoke-virtual {v0, v6, v5, p2}, Lcom/android/incallui/util/VideoAnimator;->move(Lcom/android/incallui/util/VideoTemplate;Lcom/android/incallui/util/VideoTemplate;I)V

    goto/16 :goto_1
.end method

.method public setTemplateSurfaces()V
    .locals 3

    .prologue
    .line 170
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    if-nez v1, :cond_2

    .line 171
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 172
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    if-nez v1, :cond_2

    .line 176
    const-string v1, " setTemplateSurfaces - Error to get VideoCallMetrics"

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->ui(Ljava/lang/String;)V

    .line 187
    .end local v0    # "activity":Lcom/android/incallui/InCallActivity;
    :cond_1
    :goto_0
    return-void

    .line 180
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedTemplate:Lcom/android/incallui/util/VideoTemplate;

    if-nez v1, :cond_3

    .line 181
    new-instance v1, Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/incallui/util/VideoTemplate;-><init>(Lcom/android/incallui/util/VideoTemplate;)V

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedTemplate:Lcom/android/incallui/util/VideoTemplate;

    goto :goto_0

    .line 183
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->canDragSmallSurface()Z

    move-result v1

    if-nez v1, :cond_1

    .line 184
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedTemplate:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_0
.end method

.method protected setVideoLocaton()V
    .locals 14

    .prologue
    const/4 v2, 0x1

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v9, 0x0

    .line 640
    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    if-nez v10, :cond_0

    .line 686
    :goto_0
    return-void

    .line 641
    :cond_0
    const/16 v1, 0x1f4

    .line 642
    .local v1, "duration":I
    iget v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mOldVideoState:I

    iget v11, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoState:I

    if-eq v10, v11, :cond_1

    iget v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mOldVideoState:I

    invoke-static {v10}, Lcom/android/incallui/service/vt/SecVideoState;->hasHolding(I)Z

    move-result v10

    if-eqz v10, :cond_9

    :cond_1
    move v5, v2

    .line 643
    .local v5, "noAnimation":Z
    :goto_1
    if-eqz v5, :cond_2

    iget-boolean v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsExchangingViews:Z

    if-nez v10, :cond_2

    iget-boolean v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsResizingView:Z

    if-nez v10, :cond_2

    .line 644
    const/4 v1, 0x0

    .line 646
    :cond_2
    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v10}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    .line 647
    .local v7, "state":I
    sget-boolean v10, Lcom/android/incallui/service/vt/VideoCallConfig;->CONFERENCE_HIDE_PREVIEW:Z

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v10}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/SecCall;->isConferecedVideoRx()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 648
    .local v2, "isConferecedVideoRx":Z
    :goto_2
    invoke-static {v7}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-static {v7}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v10

    if-nez v10, :cond_3

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->needToHideSmallView()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 649
    :cond_3
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/incallui/service/vt/VideoCallManager;->setScreenResized(Z)V

    .line 650
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/incallui/service/vt/VideoCallManager;->setExchangedViews(Z)V

    .line 653
    :cond_4
    const/4 v6, 0x0

    .line 654
    .local v6, "previewLocation":I
    const/4 v0, 0x3

    .line 655
    .local v0, "displayLocatoin":I
    iget-object v9, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v9}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/SecCall;->isEarlyMedia()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 656
    const/4 v6, 0x4

    .line 663
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->needToHideSmallView()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 664
    if-ne v6, v13, :cond_c

    .line 665
    const/4 v6, 0x0

    .line 670
    :cond_6
    :goto_4
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/service/vt/VideoCallManager;->isExchangedViews()Z

    move-result v3

    .line 671
    .local v3, "isExchangedViews":Z
    if-eqz v3, :cond_7

    if-ne v6, v13, :cond_7

    if-ne v0, v12, :cond_7

    .line 672
    move v8, v0

    .line 673
    .local v8, "tempLocation":I
    move v0, v6

    .line 674
    move v6, v8

    .line 676
    .end local v8    # "tempLocation":I
    :cond_7
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/service/vt/VideoCallManager;->isScreenResized()Z

    move-result v4

    .line 677
    .local v4, "isScreenResized":Z
    if-eqz v4, :cond_8

    .line 678
    if-ne v0, v12, :cond_d

    .line 679
    const/4 v0, 0x5

    .line 684
    :cond_8
    :goto_5
    invoke-virtual {p0, v6, v1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setPreviewLocation(II)V

    .line 685
    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setDispalyLocation(II)V

    goto/16 :goto_0

    .end local v0    # "displayLocatoin":I
    .end local v2    # "isConferecedVideoRx":Z
    .end local v3    # "isExchangedViews":Z
    .end local v4    # "isScreenResized":Z
    .end local v5    # "noAnimation":Z
    .end local v6    # "previewLocation":I
    .end local v7    # "state":I
    :cond_9
    move v5, v9

    .line 642
    goto/16 :goto_1

    .restart local v5    # "noAnimation":Z
    .restart local v7    # "state":I
    :cond_a
    move v2, v9

    .line 647
    goto :goto_2

    .line 658
    .restart local v0    # "displayLocatoin":I
    .restart local v2    # "isConferecedVideoRx":Z
    .restart local v6    # "previewLocation":I
    :cond_b
    if-nez v2, :cond_5

    .line 659
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getPreviewLocation()I

    move-result v6

    .line 660
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getDisplayLocation()I

    move-result v0

    goto :goto_3

    .line 666
    :cond_c
    if-ne v0, v13, :cond_6

    .line 667
    const/4 v0, 0x0

    goto :goto_4

    .line 680
    .restart local v3    # "isExchangedViews":Z
    .restart local v4    # "isScreenResized":Z
    :cond_d
    if-ne v6, v12, :cond_8

    .line 681
    const/4 v6, 0x5

    goto :goto_5
.end method

.method public showCallBannerByDialpad(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 384
    return-void
.end method

.method protected showDisplayBorder(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 400
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 401
    .local v0, "visible":I
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayBorder:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 402
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayBorder:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 404
    :cond_0
    return-void

    .line 400
    .end local v0    # "visible":I
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected showFarEndPhoto()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 254
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    const-string v0, "showFarEndPhoto"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->isShowingPreparingAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->showPreparingAnimation(Z)V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoPhotoHelper:Lcom/android/incallui/util/VideoPhotoHelper;

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoPhotoHelper;->setFarEndPhoto()V

    .line 260
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 262
    :cond_1
    return-void
.end method

.method protected showNearEndPhoto()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    const-string v0, "showNearEndPhoto"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoPhotoHelper:Lcom/android/incallui/util/VideoPhotoHelper;

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoPhotoHelper;->setNearEndPhoto()V

    .line 275
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 277
    :cond_0
    return-void
.end method

.method protected showPreviewBorder(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 387
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 388
    .local v0, "visible":I
    :goto_0
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->isActiveTwoWayVideo(I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 389
    iget-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsPreviewReady:Z

    if-nez v1, :cond_2

    .line 397
    :cond_0
    :goto_1
    return-void

    .line 387
    .end local v0    # "visible":I
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 393
    .restart local v0    # "visible":I
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewBorder:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showpreviewBorder show ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->ui(Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewBorder:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected showView()V
    .locals 0

    .prologue
    .line 138
    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->showView()V

    .line 139
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->registerTouchListener()V

    .line 140
    return-void
.end method

.method public updateFullscreenMode()V
    .locals 2

    .prologue
    .line 1068
    const/16 v0, 0x12c

    .line 1069
    .local v0, "duration":I
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setPreviewLocation(II)V

    .line 1070
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setDispalyLocation(II)V

    .line 1071
    return-void
.end method

.method protected updatePrimaryImage()V
    .locals 3

    .prologue
    .line 204
    iget-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsUsingPersonalPhoto:Z

    if-nez v1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    .line 208
    .local v0, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v0, :cond_0

    .line 209
    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0
.end method

.method public updateSmallForVideoBanner()V
    .locals 0

    .prologue
    .line 1075
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setVideoLocaton()V

    .line 1076
    return-void
.end method

.method public updateVideoSessionEvent(ILcom/android/incallui/Call;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 628
    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallFragment;->updateVideoSessionEvent(ILcom/android/incallui/Call;)V

    .line 629
    packed-switch p1, :pswitch_data_0

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 631
    :pswitch_0
    const-string v0, "SECVT-VideoCallVGAFragment"

    const-string v1, "updateVideoSessionEvent event = CAMERA_PREVIEW_READY"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->isActiveTwoWayVideo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->showPreviewBorder(Z)V

    goto :goto_0

    .line 629
    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
    .end packed-switch
.end method
