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

.field private mVideoPhotoHelper:Lcom/android/incallui/util/VideoPhotoHelper;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallFragment;-><init>()V

    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsUsingPersonalPhoto:Z

    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsProgressingTouchBackground:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFullScreenTouchArea:Landroid/view/View;

    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsExchangingViews:Z

    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsResizingView:Z

    return-void
.end method

.method private getDragTargetTextureView()Landroid/view/TextureView;
    .locals 2

    const/4 v1, 0x4

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewVideo:Landroid/view/TextureView;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CAN_GSM()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIncomingVideo:Landroid/view/TextureView;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDragTargetView()Landroid/view/ViewGroup;
    .locals 2

    const/4 v1, 0x4

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CAN_GSM()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSmallTargetTemplate(I)Lcom/android/incallui/util/VideoTemplate;
    .locals 3

    new-instance v1, Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/incallui/util/VideoTemplate;-><init>(Lcom/android/incallui/util/VideoTemplate;)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallManager;->isExchangedViews()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    packed-switch p1, :pswitch_data_0

    :goto_1
    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v2, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getSmallOutgoingTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v2, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;

    invoke-virtual {v2, v0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getSmallTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v2, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;

    invoke-virtual {v2, v0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getSmallBannerTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_1

    :pswitch_3
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v2, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;

    invoke-virtual {v2, v0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getSmallMultipartyTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_1

    :pswitch_4
    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoState:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyProgressing(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v2, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;

    invoke-virtual {v2, v0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getSmallBannerTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v2, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;

    invoke-virtual {v2, v0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getSmallMultipartyBannerTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_1

    :pswitch_5
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v2, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;

    invoke-virtual {v2, v0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getSmallCameraEffectTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_1

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
    .locals 2

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_VIDEO_DRAG_SMALL_VIEW:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isTheOtherPartyOnHold()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getDragTargetView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getDragTargetView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->isVideoAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected canExchangeViews()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->isTheOtherPartyOnHold()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    :goto_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->isVideoAnimationRunning()Z

    move-result v4

    if-nez v4, :cond_2

    :goto_2
    return v2

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method public changeOrientation()V
    .locals 2

    const/4 v1, 0x6

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->changeOrientation()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter;

    const-string v1, "changeOrientation"

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoCallPresenter;->setCallState(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected checkAndControlFarEndPhoto()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->needToShowFarEndPhoto()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->showFarEndPhoto()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->hideFarEndPhoto()V

    goto :goto_0
.end method

.method protected checkAndControlNearEndPhoto()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->needToShowNearEndPhoto()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->showNearEndPhoto()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->hideNearEndPhoto()V

    goto :goto_0
.end method

.method public destroyAnimator()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewAnimator:Lcom/android/incallui/util/VideoAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewAnimator:Lcom/android/incallui/util/VideoAnimator;

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoAnimator;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayAnimator:Lcom/android/incallui/util/VideoAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayAnimator:Lcom/android/incallui/util/VideoAnimator;

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoAnimator;->destroy()V

    :cond_1
    return-void
.end method

.method public exchangeViews()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isExchangedViews()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallManager;->setExchangedViews(Z)V

    :goto_0
    iput-boolean v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsExchangingViews:Z

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setVideoLocaton()V

    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsExchangingViews:Z

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_VIDEO_DRAG_SMALL_VIEW:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedTemplate:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/util/VideoTemplate;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->setWidth(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedTemplate:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->setHeight(I)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/service/vt/VideoCallManager;->setExchangedViews(Z)V

    goto :goto_0
.end method

.method public getBigTemplete()Lcom/android/incallui/util/VideoTemplate;
    .locals 3

    new-instance v0, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v0}, Lcom/android/incallui/util/VideoTemplate;-><init>()V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager;->isExchangedViews()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v1, v1, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getBigTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    :goto_0
    return-object v0

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

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

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

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isModifyProgressing(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getPreviewLocation()I
    .locals 3

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v0, 0x4

    invoke-static {v1}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {v1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWayTx(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWayRx(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isModifyProgressing(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getShadowDrawable(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoState:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->isActiveTwoWayVideo(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f10036b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/TextureView;

    move-object v0, v2

    check-cast v0, Landroid/view/TextureView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/TextureView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :cond_0
    return-object v1
.end method

.method public getSmallTemplete()Lcom/android/incallui/util/VideoTemplate;
    .locals 3

    new-instance v0, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v0}, Lcom/android/incallui/util/VideoTemplate;-><init>()V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager;->isExchangedViews()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v1, v1, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getSmallTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    :goto_0
    return-object v0

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

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyRequest(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToTwoWay(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToTwoWay(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected hideFarEndPhoto()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    const-string v0, "hideFarEndPhoto"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected hideNearEndPhoto()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    const-string v0, "hideNearEndPhoto"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected hideView()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedTemplate:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->removeTouchListener()V

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->hideView()V

    return-void
.end method

.method public initializeVideoView(Landroid/view/View;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallFragment;->initializeVideoView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setTemplateSurfaces()V

    if-eqz p1, :cond_2

    const v0, 0x7f100360

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoViewsContainer:Landroid/view/View;

    const v0, 0x7f100361

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/incallui/util/VideoAnimator;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lcom/android/incallui/util/VideoAnimator;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayAnimator:Lcom/android/incallui/util/VideoAnimator;

    :cond_0
    const v0, 0x7f10036a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/incallui/util/VideoAnimator;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lcom/android/incallui/util/VideoAnimator;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewAnimator:Lcom/android/incallui/util/VideoAnimator;

    :cond_1
    const v0, 0x7f1003aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewBorder:Landroid/view/View;

    const v0, 0x7f1003a7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayBorder:Landroid/view/View;

    const v0, 0x7f100363

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreparingAnimation:Landroid/view/View;

    const v0, 0x7f100369

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFarEndCaptureAnimatinoView:Landroid/view/View;

    const v0, 0x7f10036d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mNearEndCaptureAnimatinoView:Landroid/view/View;

    const v0, 0x7f10036c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mNearEndSwitchAnimationView:Landroid/view/View;

    const v0, 0x7f1003a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFullScreenTouchArea:Landroid/view/View;

    const v0, 0x7f1003a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    const v0, 0x7f1003a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/incallui/util/VideoPhotoHelper;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/incallui/util/VideoPhotoHelper;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoPhotoHelper:Lcom/android/incallui/util/VideoPhotoHelper;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->showView()V

    :cond_2
    return-void
.end method

.method protected isVideoAnimationRunning()Z
    .locals 1

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

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoState:I

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

    const/4 v0, 0x0

    return v0
.end method

.method public onCallObjectChanged(Lcom/android/incallui/Call;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallFragment;->onCallObjectChanged(Lcom/android/incallui/Call;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->updatePrimaryImage()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/fragment/VideoCallFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v0, 0x7f040129

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->onDestroyView()V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->removeVideoCallMetricsListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallMetricsListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->destroyAnimator()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->removeTouchListener()V

    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->processPreviewOnDrag(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f100360
        :pswitch_0
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x4

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    if-ne v1, v2, :cond_0

    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_VIDEO_DRAG_SMALL_VIEW:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->canDragSmallSurface()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->processDragOnTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_1
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_EXCHANGE_VIEW:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->canExchangeViews()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->processOnTouchExchangeViews(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :sswitch_1
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    if-ne v1, v2, :cond_0

    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_VIDEO_DRAG_SMALL_VIEW:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CAN_GSM()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->canDragSmallSurface()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->processDragOnTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_2
    sget-boolean v1, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_EXCHANGE_VIEW:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->canExchangeViews()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->processOnTouchExchangeViews(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->isAvailableFullScreenMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->processOnTouchBackgroundView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100361 -> :sswitch_1
        0x7f10036a -> :sswitch_0
        0x7f1003a4 -> :sswitch_2
    .end sparse-switch
.end method

.method public onVideoCallMetricsChagned(Lcom/android/incallui/service/vt/VideoCallMetrics;)V
    .locals 2

    const/4 v1, 0x7

    iput-object p1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter;

    const-string v1, "changed VideoCallMetrics"

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoCallPresenter;->setCallState(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onVideoStateChanged()V
    .locals 2

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoState:I

    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_NONE:I

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->checkAndControlFarEndPhoto()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->checkAndControlNearEndPhoto()V

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getVideoStateMessage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setVideoLocaton()V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->addVideoCallMetricsListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallMetricsListener;)V

    return-void
.end method

.method protected processDragOnTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->canDragSmallSurface()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/fragment/VideoCallVGAFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/fragment/VideoCallVGAFragment$1;-><init>(Lcom/android/incallui/fragment/VideoCallVGAFragment;Landroid/view/View;)V

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected processOnTouchBackgroundView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->isAvailableFullScreenMode()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    :goto_0
    :pswitch_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsProgressingTouchBackground:Z

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    iget-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsProgressingTouchBackground:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/VideoCallPresenter;->toggleFullscreenMode()V

    const/4 v0, 0x1

    :cond_1
    iput-boolean v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsProgressingTouchBackground:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected processOnTouchExchangeViews(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->canExchangeViews()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->exchangeViews()V

    :cond_0
    return v1
.end method

.method protected processPreviewOnDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 9

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getDragTargetView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getDragTargetTextureView()Landroid/view/TextureView;

    move-result-object v0

    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    :cond_0
    const-string v4, "processPreviewOnDrag - error"

    invoke-static {v4}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v6

    :cond_2
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-string v4, "SECVT-VideoCallVGAFragment"

    const-string v5, "Drag STARTED"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setAlpha(F)V

    invoke-virtual {v0, v7}, Landroid/view/TextureView;->setAlpha(F)V

    goto :goto_0

    :pswitch_2
    const-string v4, "SECVT-VideoCallVGAFragment"

    const-string v5, "Drag ENTERED"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v4, "SECVT-VideoCallVGAFragment"

    const-string v5, "Drag EXITED"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :pswitch_4
    const-string v4, "SECVT-VideoCallVGAFragment"

    const-string v5, "Drag DROP"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->canDragSmallSurface()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v2, v4, v5

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    if-gez v2, :cond_5

    const/4 v2, 0x0

    :cond_3
    :goto_1
    if-gez v3, :cond_6

    const/4 v3, 0x0

    :cond_4
    :goto_2
    int-to-float v4, v2

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setX(F)V

    int-to-float v4, v3

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedTemplate:Lcom/android/incallui/util/VideoTemplate;

    int-to-float v5, v2

    invoke-virtual {v4, v5}, Lcom/android/incallui/util/VideoTemplate;->setX(F)V

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedTemplate:Lcom/android/incallui/util/VideoTemplate;

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Lcom/android/incallui/util/VideoTemplate;->setY(F)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoViewsContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v2, v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoViewsContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    sub-int v2, v4, v5

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoViewsContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_4

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoViewsContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    sub-int v3, v4, v5

    goto :goto_2

    :pswitch_5
    const-string v4, "SECVT-VideoCallVGAFragment"

    const-string v5, "Drag ENDED"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->setAlpha(F)V

    invoke-virtual {v0, v8}, Landroid/view/TextureView;->setAlpha(F)V

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->movePip()V

    goto/16 :goto_0

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

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_VIDEO_DRAG_SMALL_VIEW:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_EXCHANGE_VIEW:Z

    if-eqz v0, :cond_3

    :cond_0
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_VIDEO_DRAG_SMALL_VIEW:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoViewsContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoViewsContainer:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFullScreenTouchArea:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFullScreenTouchArea:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_4
    return-void
.end method

.method public removeTouchListener()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoViewsContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoViewsContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFullScreenTouchArea:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFullScreenTouchArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3
    return-void
.end method

.method public setBigViewLocation(ZI)V
    .locals 6

    const/4 v3, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x0

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mSmallViewState:I

    invoke-direct {p0, v2}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallTargetTemplate(I)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v2, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getResizeTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v0

    if-eqz p1, :cond_3

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

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

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewAnimator:Lcom/android/incallui/util/VideoAnimator;

    invoke-virtual {v2}, Lcom/android/incallui/util/VideoAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewAnimator:Lcom/android/incallui/util/VideoAnimator;

    invoke-virtual {v2}, Lcom/android/incallui/util/VideoAnimator;->end()V

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewAnimator:Lcom/android/incallui/util/VideoAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getBigTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v3

    invoke-virtual {v2, v1, v3, p2}, Lcom/android/incallui/util/VideoAnimator;->move(Lcom/android/incallui/util/VideoTemplate;Lcom/android/incallui/util/VideoTemplate;I)V

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    if-ne v2, v3, :cond_4

    invoke-virtual {v1, v0}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->needToShowPreparingImage()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 p2, 0x0

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

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    if-ne v2, v5, :cond_6

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayAnimator:Lcom/android/incallui/util/VideoAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getBigTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v3

    invoke-virtual {v2, v1, v3, p2}, Lcom/android/incallui/util/VideoAnimator;->move(Lcom/android/incallui/util/VideoTemplate;Lcom/android/incallui/util/VideoTemplate;I)V

    goto :goto_0
.end method

.method public setCallState(Lcom/android/incallui/Call;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setTemplateSurfaces()V

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallFragment;->setCallState(Lcom/android/incallui/Call;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setFullScreenTouchListeners()V

    return-void
.end method

.method public setDispalyLocation(II)V
    .locals 8

    const/4 v7, 0x7

    const/4 v6, 0x3

    const/4 v2, 0x1

    const/4 v5, 0x4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayAnimator:Lcom/android/incallui/util/VideoAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayAnimator:Lcom/android/incallui/util/VideoAnimator;

    invoke-virtual {v1}, Lcom/android/incallui/util/VideoAnimator;->hasTarget()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "setDispalyLocation - return"

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->location(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    if-eq v1, p1, :cond_3

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

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->needToHideSmallView()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->location(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    const/4 v4, 0x6

    if-eq v1, v4, :cond_2

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    if-ne v1, v7, :cond_3

    :cond_2
    const/4 p2, 0x0

    :cond_3
    if-ne p1, v5, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->showDisplayBorder(Z)V

    if-eq p1, v5, :cond_4

    if-ne p1, v6, :cond_5

    :cond_4
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoPhotoHelper:Lcom/android/incallui/util/VideoPhotoHelper;

    if-ne p1, v6, :cond_7

    move v1, v2

    :goto_2
    invoke-virtual {v4, v2, v1}, Lcom/android/incallui/util/VideoPhotoHelper;->setFarEndPhoto(ZZ)V

    :cond_5
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_3
    iput p1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    goto :goto_0

    :cond_6
    move v1, v3

    goto :goto_1

    :cond_7
    move v1, v3

    goto :goto_2

    :pswitch_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->bringToFront()V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayAnimator:Lcom/android/incallui/util/VideoAnimator;

    invoke-direct {p0, v7}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallTargetTemplate(I)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/util/VideoAnimator;->change(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_3

    :pswitch_2
    invoke-virtual {p0, v3, p2}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setBigViewLocation(ZI)V

    goto :goto_3

    :pswitch_3
    invoke-virtual {p0, v3, p2}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setSmallViewLocation(ZI)V

    goto :goto_3

    :pswitch_4
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoViewsContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v1, v1, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getResizeTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    if-ne v1, v5, :cond_9

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayAnimator:Lcom/android/incallui/util/VideoAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p2}, Lcom/android/incallui/util/VideoAnimator;->move(Lcom/android/incallui/util/VideoTemplate;Lcom/android/incallui/util/VideoTemplate;I)V

    goto :goto_3

    :cond_9
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayAnimator:Lcom/android/incallui/util/VideoAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getBigTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p2}, Lcom/android/incallui/util/VideoAnimator;->move(Lcom/android/incallui/util/VideoTemplate;Lcom/android/incallui/util/VideoTemplate;I)V

    goto :goto_3

    :pswitch_5
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

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

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallViewState()I

    move-result v5

    iget v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mSmallViewState:I

    invoke-direct {p0, v10}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallTargetTemplate(I)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v6

    invoke-direct {p0, v5}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallTargetTemplate(I)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v7

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayAnimator:Lcom/android/incallui/util/VideoAnimator;

    iget v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewAnimator:Lcom/android/incallui/util/VideoAnimator;

    iget v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->bringToFront()V

    const/4 v10, 0x4

    if-ne v4, v10, :cond_8

    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedTemplate:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/incallui/util/VideoTemplate;->isSameCoordinates(Lcom/android/incallui/util/VideoTemplate;)Z

    move-result v10

    if-nez v10, :cond_2

    const/4 v3, 0x1

    :goto_0
    new-instance v2, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v2, v1}, Lcom/android/incallui/util/VideoTemplate;-><init>(Landroid/view/View;)V

    if-eqz v3, :cond_6

    iget v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mSmallViewState:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedTemplate:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v10}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v10

    invoke-virtual {v7}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_3

    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedTemplate:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v10}, Lcom/android/incallui/util/VideoTemplate;->getX()F

    move-result v10

    invoke-virtual {v7, v10}, Lcom/android/incallui/util/VideoTemplate;->setX(F)V

    const/4 p2, 0x0

    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedTemplate:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v10, v7}, Lcom/android/incallui/util/VideoTemplate;->isSameCoordinates(Lcom/android/incallui/util/VideoTemplate;)Z

    move-result v10

    if-nez v10, :cond_1

    const/16 p2, 0x12c

    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedTemplate:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v0, v10, v7, p2}, Lcom/android/incallui/util/VideoAnimator;->move(Lcom/android/incallui/util/VideoTemplate;Lcom/android/incallui/util/VideoTemplate;I)V

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

    invoke-static {v10}, Lcom/android/incallui/service/vt/VideoCallLog;->location(Ljava/lang/String;)V

    iput v5, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mSmallViewState:I

    return-void

    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_3
    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedTemplate:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v10}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v10

    invoke-virtual {v7}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v11

    int-to-float v11, v11

    add-float v8, v10, v11

    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v10, v10, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;

    iget v10, v10, Lcom/android/incallui/service/vt/VideoCallMetrics$ButtonMetrics;->top:I

    int-to-float v9, v10

    cmpl-float v10, v8, v9

    if-lez v10, :cond_1

    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedTemplate:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v10}, Lcom/android/incallui/util/VideoTemplate;->getX()F

    move-result v10

    invoke-virtual {v7, v10}, Lcom/android/incallui/util/VideoTemplate;->setX(F)V

    invoke-virtual {v7}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v10

    int-to-float v10, v10

    sub-float v10, v9, v10

    invoke-virtual {v7, v10}, Lcom/android/incallui/util/VideoTemplate;->setY(F)V

    const/4 p2, 0x0

    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedTemplate:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v10, v7}, Lcom/android/incallui/util/VideoTemplate;->isSameCoordinates(Lcom/android/incallui/util/VideoTemplate;)Z

    move-result v10

    if-nez v10, :cond_1

    const/16 p2, 0x12c

    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedTemplate:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v0, v10, v7, p2}, Lcom/android/incallui/util/VideoAnimator;->move(Lcom/android/incallui/util/VideoTemplate;Lcom/android/incallui/util/VideoTemplate;I)V

    goto/16 :goto_1

    :cond_4
    const/4 v10, 0x2

    if-ne v5, v10, :cond_5

    invoke-virtual {v2}, Lcom/android/incallui/util/VideoTemplate;->getX()F

    move-result v10

    invoke-virtual {v6, v10}, Lcom/android/incallui/util/VideoTemplate;->setX(F)V

    invoke-virtual {v2}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v10

    invoke-virtual {v6, v10}, Lcom/android/incallui/util/VideoTemplate;->setY(F)V

    const/4 p2, 0x0

    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedTemplate:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v10, v6}, Lcom/android/incallui/util/VideoTemplate;->isSameCoordinates(Lcom/android/incallui/util/VideoTemplate;)Z

    move-result v10

    if-nez v10, :cond_1

    const/16 p2, 0x12c

    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedTemplate:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v0, v6, v10, p2}, Lcom/android/incallui/util/VideoAnimator;->move(Lcom/android/incallui/util/VideoTemplate;Lcom/android/incallui/util/VideoTemplate;I)V

    goto/16 :goto_1

    :cond_5
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_1

    :cond_6
    iget v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mSmallViewState:I

    if-ne v5, v10, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/android/incallui/util/VideoTemplate;->areSame(Lcom/android/incallui/util/VideoTemplate;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_1

    :cond_7
    const/16 p2, 0x12c

    invoke-virtual {v0, v6, v7, p2}, Lcom/android/incallui/util/VideoAnimator;->move(Lcom/android/incallui/util/VideoTemplate;Lcom/android/incallui/util/VideoTemplate;I)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getBigTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v10

    invoke-virtual {v0, v10, v7, p2}, Lcom/android/incallui/util/VideoAnimator;->move(Lcom/android/incallui/util/VideoTemplate;Lcom/android/incallui/util/VideoTemplate;I)V

    goto/16 :goto_1
.end method

.method protected setFullScreenTouchListeners()V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->isModifyProgressing()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFullScreenTouchArea:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFullScreenTouchArea:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFullScreenTouchArea:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFullScreenTouchArea:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method protected setMyProfileImage()V
    .locals 4

    iget-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsUsingPersonalPhoto:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "display_photo"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->isUriExist(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoPhotoHelper:Lcom/android/incallui/util/VideoPhotoHelper;

    invoke-virtual {v1}, Lcom/android/incallui/util/VideoPhotoHelper;->setUsingDefaultPhotoforNearEnd()V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f01a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setPreviewLocation(II)V
    .locals 7

    const/4 v6, 0x3

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewAnimator:Lcom/android/incallui/util/VideoAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewAnimator:Lcom/android/incallui/util/VideoAnimator;

    invoke-virtual {v1}, Lcom/android/incallui/util/VideoAnimator;->hasTarget()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "setPreviewLocation - return"

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->location(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    if-eq v1, p1, :cond_3

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

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->needToHideSmallView()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->location(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    const/4 v4, 0x6

    if-eq v1, v4, :cond_2

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    const/4 v4, 0x7

    if-ne v1, v4, :cond_3

    :cond_2
    const/4 p2, 0x0

    :cond_3
    if-ne p1, v5, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->showPreviewBorder(Z)V

    if-eq p1, v5, :cond_4

    if-ne p1, v6, :cond_5

    :cond_4
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoPhotoHelper:Lcom/android/incallui/util/VideoPhotoHelper;

    if-ne p1, v6, :cond_7

    move v1, v2

    :goto_2
    invoke-virtual {v4, v2, v1}, Lcom/android/incallui/util/VideoPhotoHelper;->setNearEndPhoto(ZZ)V

    :cond_5
    packed-switch p1, :pswitch_data_0

    :goto_3
    iput p1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    goto :goto_0

    :cond_6
    move v1, v3

    goto :goto_1

    :cond_7
    move v1, v3

    goto :goto_2

    :pswitch_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    :pswitch_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->bringToFront()V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewAnimator:Lcom/android/incallui/util/VideoAnimator;

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v2, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getBigDefaultTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/util/VideoAnimator;->change(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_3

    :pswitch_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->bringToFront()V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewAnimator:Lcom/android/incallui/util/VideoAnimator;

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v2, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getBigDefaultTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/util/VideoAnimator;->change(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_3

    :pswitch_3
    invoke-virtual {p0, v2, p2}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setBigViewLocation(ZI)V

    goto :goto_3

    :pswitch_4
    invoke-virtual {p0, v2, p2}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setSmallViewLocation(ZI)V

    goto :goto_3

    :pswitch_5
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v1, v1, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getResizeTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    if-ne v1, v5, :cond_9

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewAnimator:Lcom/android/incallui/util/VideoAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p2}, Lcom/android/incallui/util/VideoAnimator;->move(Lcom/android/incallui/util/VideoTemplate;Lcom/android/incallui/util/VideoTemplate;I)V

    goto :goto_3

    :cond_9
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewAnimator:Lcom/android/incallui/util/VideoAnimator;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getBigTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p2}, Lcom/android/incallui/util/VideoAnimator;->move(Lcom/android/incallui/util/VideoTemplate;Lcom/android/incallui/util/VideoTemplate;I)V

    goto :goto_3

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
    .locals 3

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsUsingPersonalPhoto:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoPhotoHelper:Lcom/android/incallui/util/VideoPhotoHelper;

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoPhotoHelper;->setUsingDefaultPhotoforFarEnd()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f01a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setSmallViewLocation(ZI)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x0

    sget-boolean v6, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_VIDEO_DRAG_SMALL_VIEW:Z

    if-eqz v6, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setDraggableSmallViewLocation(ZI)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallViewState()I

    move-result v3

    iget v6, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mSmallViewState:I

    invoke-direct {p0, v6}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallTargetTemplate(I)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v4

    invoke-direct {p0, v3}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallTargetTemplate(I)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v5

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayAnimator:Lcom/android/incallui/util/VideoAnimator;

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewAnimator:Lcom/android/incallui/util/VideoAnimator;

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    :cond_1
    const/4 v6, 0x5

    if-ne v2, v6, :cond_2

    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v6, v6, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;

    invoke-virtual {v6}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoMetrics;->getResizeTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    :cond_2
    invoke-virtual {v1}, Landroid/view/ViewGroup;->bringToFront()V

    iget-boolean v6, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsExchangingViews:Z

    if-eqz v6, :cond_5

    if-ne v2, v8, :cond_4

    iget v6, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mSmallViewState:I

    if-ne v3, v6, :cond_3

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

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

    invoke-static {v6}, Lcom/android/incallui/service/vt/VideoCallLog;->location(Ljava/lang/String;)V

    iput v3, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mSmallViewState:I

    goto/16 :goto_0

    :cond_3
    const/16 p2, 0x12c

    invoke-virtual {v0, v4, v5, p2}, Lcom/android/incallui/util/VideoAnimator;->move(Lcom/android/incallui/util/VideoTemplate;Lcom/android/incallui/util/VideoTemplate;I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v5, p2}, Lcom/android/incallui/util/VideoAnimator;->fadeIn(Lcom/android/incallui/util/VideoTemplate;I)V

    goto :goto_1

    :cond_5
    if-ne v2, v8, :cond_7

    iget v6, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mSmallViewState:I

    if-ne v3, v6, :cond_6

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_6
    const/16 p2, 0x12c

    invoke-virtual {v0, v4, v5, p2}, Lcom/android/incallui/util/VideoAnimator;->move(Lcom/android/incallui/util/VideoTemplate;Lcom/android/incallui/util/VideoTemplate;I)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getBigTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v6

    invoke-virtual {v0, v6, v5, p2}, Lcom/android/incallui/util/VideoAnimator;->move(Lcom/android/incallui/util/VideoTemplate;Lcom/android/incallui/util/VideoTemplate;I)V

    goto/16 :goto_1
.end method

.method public setTemplateSurfaces()V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    if-nez v1, :cond_2

    const-string v1, " setTemplateSurfaces - Error to get VideoCallMetrics"

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->ui(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedTemplate:Lcom/android/incallui/util/VideoTemplate;

    if-nez v1, :cond_3

    new-instance v1, Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/incallui/util/VideoTemplate;-><init>(Lcom/android/incallui/util/VideoTemplate;)V

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedTemplate:Lcom/android/incallui/util/VideoTemplate;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->canDragSmallSurface()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedTemplate:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_0
.end method

.method protected setVideoLocaton()V
    .locals 14

    const/4 v2, 0x1

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    if-nez v10, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x1f4

    iget v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mOldVideoState:I

    iget v11, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoState:I

    if-eq v10, v11, :cond_1

    iget v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mOldVideoState:I

    invoke-static {v10}, Lcom/android/incallui/service/vt/SecVideoState;->hasHolding(I)Z

    move-result v10

    if-eqz v10, :cond_9

    :cond_1
    move v5, v2

    :goto_1
    if-eqz v5, :cond_2

    iget-boolean v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsExchangingViews:Z

    if-nez v10, :cond_2

    iget-boolean v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsResizingView:Z

    if-nez v10, :cond_2

    const/4 v1, 0x0

    :cond_2
    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v10}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    sget-boolean v10, Lcom/android/incallui/service/vt/VideoCallConfig;->CONFERENCE_HIDE_PREVIEW:Z

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v10}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/SecCall;->isConferecedVideoRx()Z

    move-result v10

    if-eqz v10, :cond_a

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

    :cond_3
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/incallui/service/vt/VideoCallManager;->setScreenResized(Z)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/incallui/service/vt/VideoCallManager;->setExchangedViews(Z)V

    :cond_4
    const/4 v6, 0x0

    const/4 v0, 0x3

    iget-object v9, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v9}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/SecCall;->isEarlyMedia()Z

    move-result v9

    if-eqz v9, :cond_b

    const/4 v6, 0x4

    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->needToHideSmallView()Z

    move-result v9

    if-eqz v9, :cond_6

    if-ne v6, v13, :cond_c

    const/4 v6, 0x0

    :cond_6
    :goto_4
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/service/vt/VideoCallManager;->isExchangedViews()Z

    move-result v3

    if-eqz v3, :cond_7

    if-ne v6, v13, :cond_7

    if-ne v0, v12, :cond_7

    move v8, v0

    move v0, v6

    move v6, v8

    :cond_7
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/service/vt/VideoCallManager;->isScreenResized()Z

    move-result v4

    if-eqz v4, :cond_8

    if-ne v0, v12, :cond_d

    const/4 v0, 0x5

    :cond_8
    :goto_5
    invoke-virtual {p0, v6, v1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setPreviewLocation(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setDispalyLocation(II)V

    goto/16 :goto_0

    :cond_9
    move v5, v9

    goto/16 :goto_1

    :cond_a
    move v2, v9

    goto :goto_2

    :cond_b
    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getPreviewLocation()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getDisplayLocation()I

    move-result v0

    goto :goto_3

    :cond_c
    if-ne v0, v13, :cond_6

    const/4 v0, 0x0

    goto :goto_4

    :cond_d
    if-ne v6, v12, :cond_8

    const/4 v6, 0x5

    goto :goto_5
.end method

.method public showCallBannerByDialpad(Z)V
    .locals 0

    return-void
.end method

.method protected showDisplayBorder(Z)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayBorder:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayBorder:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected showFarEndPhoto()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "showFarEndPhoto"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->isShowingPreparingAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->showPreparingAnimation(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoPhotoHelper:Lcom/android/incallui/util/VideoPhotoHelper;

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoPhotoHelper;->setFarEndPhoto()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected showNearEndPhoto()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "showNearEndPhoto"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoPhotoHelper:Lcom/android/incallui/util/VideoPhotoHelper;

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoPhotoHelper;->setNearEndPhoto()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected showPreviewBorder(Z)V
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->isActiveTwoWayVideo(I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsPreviewReady:Z

    if-nez v1, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewBorder:Landroid/view/View;

    if-eqz v1, :cond_0

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

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewBorder:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected showView()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->showView()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->registerTouchListener()V

    return-void
.end method

.method public updateFullscreenMode()V
    .locals 2

    const/16 v0, 0x12c

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setPreviewLocation(II)V

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setDispalyLocation(II)V

    return-void
.end method

.method protected updatePrimaryImage()V
    .locals 3

    iget-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsUsingPersonalPhoto:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

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

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0
.end method

.method public updateSmallForVideoBanner()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setVideoLocaton()V

    return-void
.end method

.method public updateVideoSessionEvent(ILcom/android/incallui/Call;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallFragment;->updateVideoSessionEvent(ILcom/android/incallui/Call;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "SECVT-VideoCallVGAFragment"

    const-string v1, "updateVideoSessionEvent event = CAMERA_PREVIEW_READY"

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->isActiveTwoWayVideo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->showPreviewBorder(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
    .end packed-switch
.end method
