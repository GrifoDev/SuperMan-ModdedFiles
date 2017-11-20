.class public Lcom/android/incallui/fragment/VideoCallVGAFragment;
.super Lcom/android/incallui/fragment/VideoCallFragment;

# interfaces
.implements Landroid/view/View$OnDragListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/incallui/InCallNotifier$VideoCallMetricsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/fragment/VideoCallVGAFragment$SmallSurfaceDragShadowBuilder;
    }
.end annotation


# instance fields
.field private mDisplayAnimator:Lcom/android/incallui/util/VideoAnimator;

.field private mDisplayTemplate:Lcom/android/incallui/util/VideoTemplate;

.field private mDragTargetView:Landroid/view/View;

.field private mDragTrigger:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

.field private mDraggedPosition:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

.field protected mFullScreenTouchArea:Landroid/view/View;

.field protected mIsExchangingViews:Z

.field protected mIsProgressingTouchBackground:Z

.field protected mIsResizingView:Z

.field protected mIsUsingPersonalPhoto:Z

.field private mIsVideoMotionEnabled:Z

.field protected mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

.field private mPrevDrag:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

.field private mPreviewAnimator:Lcom/android/incallui/util/VideoAnimator;

.field private mPreviewTemplate:Lcom/android/incallui/util/VideoTemplate;

.field protected mVideoPhotoHelper:Lcom/android/incallui/util/VideoPhotoHelper;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallFragment;-><init>()V

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsUsingPersonalPhoto:Z

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsProgressingTouchBackground:Z

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFullScreenTouchArea:Landroid/view/View;

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsExchangingViews:Z

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsResizingView:Z

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsVideoMotionEnabled:Z

    new-instance v0, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    invoke-direct {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrevDrag:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    new-instance v0, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    invoke-direct {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDragTrigger:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    new-instance v0, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    invoke-direct {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedPosition:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDragTargetView:Landroid/view/View;

    new-instance v0, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v0}, Lcom/android/incallui/util/VideoTemplate;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewTemplate:Lcom/android/incallui/util/VideoTemplate;

    new-instance v0, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v0}, Lcom/android/incallui/util/VideoTemplate;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayTemplate:Lcom/android/incallui/util/VideoTemplate;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/fragment/VideoCallVGAFragment;)Lcom/android/incallui/service/vt/VideoCallMetrics$Position;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDragTrigger:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    return-object v0
.end method

.method private getDragTriggerThreshold(Landroid/view/ViewGroup;I)I
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v2, v0, v3

    if-lez v2, :cond_0

    cmpl-float v2, v1, v3

    if-lez v2, :cond_0

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    div-int/2addr v0, p2

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getSmallTargetTemplate(ZI)Lcom/android/incallui/util/VideoTemplate;
    .locals 2

    new-instance v0, Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/util/VideoTemplate;-><init>(Lcom/android/incallui/util/VideoTemplate;)V

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v1, v1, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoMetrics;

    invoke-virtual {v1, p1}, Lcom/android/incallui/service/vt/VideoMetrics;->getSmallTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v1, v1, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoMetrics;

    invoke-virtual {v1, p1}, Lcom/android/incallui/service/vt/VideoMetrics;->getSmallBannerTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v1, v1, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoMetrics;

    invoke-virtual {v1, p1}, Lcom/android/incallui/service/vt/VideoMetrics;->getSmallMultipartyTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_0

    :pswitch_3
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mSecVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyProgressing(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v1, v1, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoMetrics;

    invoke-virtual {v1, p1}, Lcom/android/incallui/service/vt/VideoMetrics;->getSmallBannerTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v1, v1, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoMetrics;

    invoke-virtual {v1, p1}, Lcom/android/incallui/service/vt/VideoMetrics;->getSmallMultipartyBannerTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v1, v1, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoMetrics;

    invoke-virtual {v1, p1}, Lcom/android/incallui/service/vt/VideoMetrics;->getSmallCameraEffectTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getSmallViewContainer()Landroid/view/ViewGroup;
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

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getVideoTextureView(Landroid/view/View;)Landroid/view/TextureView;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f10040a

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewVideo:Landroid/view/TextureView;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f100401

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIncomingVideo:Landroid/view/TextureView;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getViewInfo(Landroid/view/View;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f10040a

    if-ne v0, v1, :cond_0

    const-string v0, "previewContainer"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f100401

    if-ne v0, v1, :cond_1

    const-string v0, "videoContainer"

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f100400

    if-ne v0, v1, :cond_2

    const-string v0, "videoViewsContainer"

    goto :goto_0

    :cond_2
    const-string v0, "unknown"

    goto :goto_0
.end method

.method private hasValidSmallView()Z
    .locals 2

    const/4 v1, 0x4

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInSmallViewCantainerArea(FF)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallViewContainer()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    cmpg-float v2, p1, v3

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_0

    cmpg-float v2, p2, v3

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-lez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public canDisplayExchangedViews()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isExchangedViews()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->isAvailableVideoRx(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->isAvailableVideoTx(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected canDragSmallSurface()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->isTheOtherPartyOnHold()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mSecVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasHeldVideo(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->hasValidSmallView()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->isVideoAnimationRunning()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

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

    return v0
.end method

.method protected canExchangeViews()Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->hasValidSmallView()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallControl;->isAvailableVideoRx(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallControl;->isAvailableVideoTx(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsDisplayReady:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsPreviewReady:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->isVideoAnimationRunning()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public canUpdatePreviewDimension()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallList;->isAlive(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/util/CallTypeUtils;->isVideoTxEnabled(Lcom/android/incallui/Call;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->isModifyProgressing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public changeFullscreenMode()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x4

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    if-ne v0, v4, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallViewState()I

    move-result v0

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedPosition:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    invoke-virtual {v3}, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->isValid()Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mSmallViewState:I

    if-eq v0, v3, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeFullscreenMode - isPreviewSmall="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    if-ne v0, v4, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->location(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    if-ne v0, v4, :cond_4

    :goto_1
    const/16 v0, 0x12c

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setSmallViewLocation(ZI)V

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method public changeOrientation()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->changeOrientation()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->clearDragPostion()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->forceUpdateDeviceRotatoin()V

    return-void
.end method

.method public changeVideoCallMetrics()V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setVideoLayout()V

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

.method protected clearDragAndDrop()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDragTargetView:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearDragAndDrop -  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDragTargetView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->drag(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDragTargetView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrevDrag:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->clear()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDragTrigger:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->clear()V

    :cond_0
    return-void
.end method

.method public clearDragPostion()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedPosition:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "clearDragPostion"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedPosition:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->clear()V

    :cond_0
    return-void
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

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->canExchangeViews()Z

    move-result v0

    if-eqz v0, :cond_0

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

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/service/vt/VideoCallManager;->setExchangedViews(Z)V

    goto :goto_0
.end method

.method public forceUpdateDeviceRotatoin()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->DEVICE_ROTATION:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->getDisplayRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallManager;->notifyRotationChanged(I)V

    :cond_0
    return-void
.end method

.method public getBigTemplete(Z)Lcom/android/incallui/util/VideoTemplate;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v0, v0, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoMetrics;

    invoke-virtual {v0, p1}, Lcom/android/incallui/service/vt/VideoMetrics;->getBigTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTemplate(Z)Lcom/android/incallui/util/VideoTemplate;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewTemplate:Lcom/android/incallui/util/VideoTemplate;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayTemplate:Lcom/android/incallui/util/VideoTemplate;

    goto :goto_0
.end method

.method protected getDisplayLocation()I
    .locals 4

    const/4 v1, 0x3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {v2}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v3

    if-nez v3, :cond_0

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isModifyProgressing(Lcom/android/incallui/Call;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected getPreviewLocation()I
    .locals 4

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v1, 0x4

    invoke-static {v2}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {v2}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    if-ne v2, v0, :cond_4

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWayTx(Lcom/android/incallui/Call;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoOneWayRx(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isModifyProgressing(Lcom/android/incallui/Call;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public getSmallTemplete(Z)Lcom/android/incallui/util/VideoTemplate;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v0, v0, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoMetrics;

    invoke-virtual {v0, p1}, Lcom/android/incallui/service/vt/VideoMetrics;->getSmallTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v0

    return-object v0
.end method

.method protected getVideoStateMessage()I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mSecVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyRequest(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mSecVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->modifyingVoiceToTwoWay(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mSecVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mSecVideoState:I

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
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->clearDragPostion()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->removeTouchListener()V

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->hideView()V

    return-void
.end method

.method public initializeVideoView(Landroid/view/View;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallFragment;->initializeVideoView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    :cond_0
    if-eqz p1, :cond_3

    const v0, 0x7f100400

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoViewsContainer:Landroid/view/View;

    const v0, 0x7f100401

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/incallui/util/VideoAnimator;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lcom/android/incallui/util/VideoAnimator;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayAnimator:Lcom/android/incallui/util/VideoAnimator;

    :cond_1
    const v0, 0x7f10040a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/incallui/util/VideoAnimator;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lcom/android/incallui/util/VideoAnimator;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewAnimator:Lcom/android/incallui/util/VideoAnimator;

    :cond_2
    const v0, 0x7f10040e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewBorder:Landroid/view/View;

    const v0, 0x7f100441

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayBorder:Landroid/view/View;

    const v0, 0x7f100403

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreparingAnimation:Landroid/view/View;

    const v0, 0x7f100409

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFarEndCaptureAnimatinoView:Landroid/view/View;

    const v0, 0x7f10040d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mNearEndCaptureAnimatinoView:Landroid/view/View;

    const v0, 0x7f10040c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mNearEndSwitchAnimationView:Landroid/view/View;

    const v0, 0x7f10043e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFullScreenTouchArea:Landroid/view/View;

    const v0, 0x7f10043f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFarEndPhoto:Landroid/widget/ImageView;

    const v0, 0x7f100442

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

    :cond_3
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

.method public moveDragTargetView(Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDragTargetView:Landroid/view/View;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrevDrag:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDragTrigger:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrevDrag:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    iget v1, v1, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->x:F

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDragTrigger:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    iget v2, v2, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->x:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrevDrag:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    iget v2, v2, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->y:F

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDragTrigger:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    iget v3, v3, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->y:F

    sub-float/2addr v2, v3

    float-to-int v3, v2

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDragTrigger:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrevDrag:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    iget v4, v4, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->x:F

    iput v4, v2, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->x:F

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDragTrigger:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrevDrag:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    iget v4, v4, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->y:F

    iput v4, v2, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->y:F

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDragTargetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDragTargetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v1, v3

    if-gez v2, :cond_2

    move v2, v0

    :cond_0
    :goto_0
    if-gez v1, :cond_3

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDragTargetView:Landroid/view/View;

    int-to-float v3, v2

    invoke-virtual {v1, v3}, Landroid/view/View;->setX(F)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDragTargetView:Landroid/view/View;

    int-to-float v3, v0

    invoke-virtual {v1, v3}, Landroid/view/View;->setY(F)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->canDragSmallSurface()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedPosition:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    int-to-float v2, v2

    iput v2, v1, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->x:F

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedPosition:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    int-to-float v0, v0

    iput v0, v1, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->y:F

    :cond_1
    :goto_2
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDragTargetView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDragTargetView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDragTargetView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    if-le v1, v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDragTargetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedPosition:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->clear()V

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method protected needToHideSmallView()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected needToShowFarEndPhoto()Z
    .locals 1

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mSecVideoState:I

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

    const v0, 0x7f040147

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->onDestroyView()V

    invoke-static {}, Lcom/android/incallui/InCallNotifier;->getInstance()Lcom/android/incallui/InCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallNotifier;->removeVideoCallMetricsListener(Lcom/android/incallui/InCallNotifier$VideoCallMetricsListener;)V

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
    .packed-switch 0x7f100400
        :pswitch_0
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->processOnTouchVideoMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f10043e

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->isAvailableFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->processOnTouchBackgroundView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onVideoCallMetricsChagned(Lcom/android/incallui/service/vt/VideoCallMetrics;)V
    .locals 2

    iput-object p1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsDeviceLandScape:Z

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsDeviceLandScape:Z

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->changeOrientation()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->changeVideoCallMetrics()V

    :cond_1
    return-void
.end method

.method public onVideoContextChanged()V
    .locals 2

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mSecVideoState:I

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

.method public onVideoStateChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->clearDragPostion()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/incallui/InCallNotifier;->getInstance()Lcom/android/incallui/InCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallNotifier;->addVideoCallMetricsListener(Lcom/android/incallui/InCallNotifier$VideoCallMetricsListener;)V

    return-void
.end method

.method protected processDragOnTouch(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 4

    iput-object p1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDragTargetView:Landroid/view/View;

    const-string v0, ""

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/fragment/VideoCallVGAFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/fragment/VideoCallVGAFragment$1;-><init>(Lcom/android/incallui/fragment/VideoCallVGAFragment;Landroid/view/View;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)V

    return-void
.end method

.method protected processOnTouchBackgroundView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->isAvailableFullScreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    :pswitch_0
    return v2

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsProgressingTouchBackground:Z

    move v2, v1

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsProgressingTouchBackground:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallPresenter;->toggleFullscreenMode()V

    move v0, v1

    :goto_1
    iput-boolean v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsProgressingTouchBackground:Z

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public processOnTouchVideoMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v4, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f10040a

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    if-eq v0, v4, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f100401

    if-ne v0, v3, :cond_4

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    if-ne v0, v4, :cond_4

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->isInSmallViewCantainerArea(FF)Z

    move-result v3

    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsVideoMotionEnabled:Z

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->canDragSmallSurface()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->processDragOnTouch(Landroid/view/View;Landroid/view/MotionEvent;)V

    :cond_3
    :goto_2
    return v2

    :cond_4
    move v0, v1

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDragTrigger:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, v0, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->x:F

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDragTrigger:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, v0, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->y:F

    iput-boolean v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsVideoMotionEnabled:Z

    goto :goto_1

    :pswitch_1
    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsVideoMotionEnabled:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDragTrigger:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    iget v3, v3, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->x:F

    sub-float/2addr v0, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDragTrigger:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    iget v4, v4, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->y:F

    sub-float/2addr v3, v4

    mul-float/2addr v0, v0

    mul-float/2addr v3, v3

    add-float/2addr v0, v3

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v0, v4

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallViewContainer()Landroid/view/ViewGroup;

    move-result-object v3

    const/16 v4, 0xa

    invoke-direct {p0, v3, v4}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getDragTriggerThreshold(Landroid/view/ViewGroup;I)I

    move-result v3

    if-lez v3, :cond_2

    if-le v0, v3, :cond_2

    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsVideoMotionEnabled:Z

    move v1, v2

    goto :goto_1

    :pswitch_2
    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsVideoMotionEnabled:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->canExchangeViews()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->exchangeViews()V

    :cond_5
    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsVideoMotionEnabled:Z

    goto :goto_1

    :cond_6
    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsVideoMotionEnabled:Z

    move v2, v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected processPreviewOnDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDragTrigger:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v1

    iput v1, v0, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->x:F

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDragTrigger:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->y:F

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrevDrag:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v1

    iput v1, v0, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->x:F

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrevDrag:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->y:F

    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->moveDragTargetView(Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->stopDragAndDrop()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->clearDragAndDrop()V

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->movePip()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public registerTouchListener()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoViewsContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoViewsContainer:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFullScreenTouchArea:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFullScreenTouchArea:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3
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

.method public saveCurrentTemplate(ZLcom/android/incallui/util/VideoTemplate;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewTemplate:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v0, p2}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayTemplate:Lcom/android/incallui/util/VideoTemplate;

    invoke-virtual {v0, p2}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_0
.end method

.method public setBigViewLocation(ZI)V
    .locals 11

    const/4 v10, 0x6

    const/4 v9, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayAnimator:Lcom/android/incallui/util/VideoAnimator;

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewAnimator:Lcom/android/incallui/util/VideoAnimator;

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    :cond_0
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    new-instance v6, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v6, v2}, Lcom/android/incallui/util/VideoTemplate;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getBigTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v7

    if-eqz v0, :cond_1

    if-ne v0, v10, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    :cond_2
    invoke-virtual {v6}, Lcom/android/incallui/util/VideoTemplate;->isValid()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/fragment/VideoCallVGAFragment$2;

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/incallui/fragment/VideoCallVGAFragment$2;-><init>(Lcom/android/incallui/fragment/VideoCallVGAFragment;ZILandroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void

    :cond_3
    invoke-virtual {v1}, Lcom/android/incallui/util/VideoAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getCurrentTemplate(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/incallui/util/VideoTemplate;->areSame(Lcom/android/incallui/util/VideoTemplate;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBigViewLocation - animator is running : same position. isPreview="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->location(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v2, v3

    :goto_1
    const-string v5, "none"

    invoke-virtual {v6, v7}, Lcom/android/incallui/util/VideoTemplate;->areSame(Lcom/android/incallui/util/VideoTemplate;)Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz v2, :cond_8

    :cond_5
    const-string v5, "move"

    if-ne v0, v9, :cond_8

    const/16 p2, 0x12c

    move-object v0, v5

    :goto_2
    const-string v5, "move"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/android/incallui/util/VideoAnimator;->end()V

    :cond_6
    invoke-virtual {v1, v6, v7, p2}, Lcom/android/incallui/util/VideoAnimator;->move(Lcom/android/incallui/util/VideoTemplate;Lcom/android/incallui/util/VideoTemplate;I)V

    invoke-virtual {p0, p1, v7}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->saveCurrentTemplate(ZLcom/android/incallui/util/VideoTemplate;)V

    :cond_7
    const-string v1, "setBigViewLocation - isPreview=%s, isAnimationRunning=%s { %s : duration=%d, target=%s, start=%s, SecVideoState=%s} "

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v5, v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v3

    const/4 v2, 0x2

    aput-object v0, v5, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v9

    const/4 v0, 0x4

    invoke-virtual {v7}, Lcom/android/incallui/util/VideoTemplate;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    const/4 v0, 0x5

    invoke-virtual {v6}, Lcom/android/incallui/util/VideoTemplate;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v10

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->location(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    move-object v0, v5

    goto :goto_2

    :cond_9
    move v2, v4

    goto :goto_1
.end method

.method public setDispalyLocation(II)V
    .locals 6

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v5, 0x4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayAnimator:Lcom/android/incallui/util/VideoAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayAnimator:Lcom/android/incallui/util/VideoAnimator;

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoAnimator;->hasTarget()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "setDispalyLocation - return"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->location(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    if-eq v0, p1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDispalyLocation "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    invoke-static {v3}, Lcom/android/incallui/fragment/VideoCallFragment$ViewLocation;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " -> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/fragment/VideoCallFragment$ViewLocation;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " needToHideSmallView="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->needToHideSmallView()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->location(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->needToShowPreparingImage()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move p2, v2

    :cond_3
    if-ne p1, v5, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->showDisplayBorder(Z)V

    if-eq p1, v5, :cond_4

    if-ne p1, v4, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoPhotoHelper:Lcom/android/incallui/util/VideoPhotoHelper;

    if-ne p1, v4, :cond_7

    move v0, v1

    :goto_2
    invoke-virtual {v3, v1, v0}, Lcom/android/incallui/util/VideoPhotoHelper;->setFarEndPhoto(ZZ)V

    :cond_5
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_3
    iput p1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0, v2, p2}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setBigViewLocation(ZI)V

    goto :goto_3

    :pswitch_2
    invoke-virtual {p0, v2, p2}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setSmallViewLocation(ZI)V

    goto :goto_3

    :pswitch_3
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoViewsContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_8
    new-instance v0, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v0}, Lcom/android/incallui/util/VideoTemplate;-><init>()V

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v3, v3, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoMetrics;

    invoke-virtual {v3, v2}, Lcom/android/incallui/service/vt/VideoMetrics;->getResizeTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v3

    iget v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    if-ne v4, v5, :cond_9

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    :goto_4
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayAnimator:Lcom/android/incallui/util/VideoAnimator;

    invoke-virtual {v1, v0, v3, p2}, Lcom/android/incallui/util/VideoAnimator;->move(Lcom/android/incallui/util/VideoTemplate;Lcom/android/incallui/util/VideoTemplate;I)V

    invoke-virtual {p0, v2, v3}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->saveCurrentTemplate(ZLcom/android/incallui/util/VideoTemplate;)V

    goto :goto_3

    :cond_9
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getBigTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_4

    :pswitch_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected setFullScreenTouchListeners()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isModifyProgressing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFullScreenTouchArea:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFullScreenTouchArea:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFullScreenTouchArea:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mFullScreenTouchArea:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method protected setMyProfileImage()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsUsingPersonalPhoto:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "display_photo"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->isUriExist(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mNearEndPhoto:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoPhotoHelper:Lcom/android/incallui/util/VideoPhotoHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoPhotoHelper;->setUsingDefaultPhotoforNearEnd(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoPhotoHelper:Lcom/android/incallui/util/VideoPhotoHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoPhotoHelper;->setUsingDefaultPhotoforNearEnd(Z)V

    goto :goto_0
.end method

.method public setPreviewLocation(II)V
    .locals 6

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewAnimator:Lcom/android/incallui/util/VideoAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewAnimator:Lcom/android/incallui/util/VideoAnimator;

    invoke-virtual {v0}, Lcom/android/incallui/util/VideoAnimator;->hasTarget()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "setPreviewLocation - return"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->location(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    if-eq v0, p1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreviewLocation "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    invoke-static {v3}, Lcom/android/incallui/fragment/VideoCallFragment$ViewLocation;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " -> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/fragment/VideoCallFragment$ViewLocation;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " needToHideSmallView="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->needToHideSmallView()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", canDisplayExchangedViews="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->canDisplayExchangedViews()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->location(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_2

    move p2, v2

    :cond_2
    if-ne p1, v5, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->showPreviewBorder(Z)V

    if-eq p1, v5, :cond_3

    if-ne p1, v4, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoPhotoHelper:Lcom/android/incallui/util/VideoPhotoHelper;

    if-ne p1, v4, :cond_6

    move v0, v1

    :goto_2
    invoke-virtual {v3, v1, v0}, Lcom/android/incallui/util/VideoPhotoHelper;->setNearEndPhoto(ZZ)V

    :cond_4
    new-instance v0, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v0}, Lcom/android/incallui/util/VideoTemplate;-><init>()V

    packed-switch p1, :pswitch_data_0

    :goto_3
    iput p1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    :pswitch_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->bringToFront()V

    sget-boolean v2, Lcom/android/incallui/service/vt/VideoCallConfig;->FIXED_PREVIEW_DIMENSION:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v2, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoMetrics;

    invoke-virtual {v2, v1}, Lcom/android/incallui/service/vt/VideoMetrics;->getBigTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    :goto_4
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewAnimator:Lcom/android/incallui/util/VideoAnimator;

    invoke-virtual {v2, v0}, Lcom/android/incallui/util/VideoAnimator;->change(Lcom/android/incallui/util/VideoTemplate;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->saveCurrentTemplate(ZLcom/android/incallui/util/VideoTemplate;)V

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v2, v2, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoMetrics;

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoMetrics;->getBigDefaultTemplete()Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_4

    :pswitch_2
    invoke-virtual {p0, v1, p2}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setBigViewLocation(ZI)V

    goto :goto_3

    :pswitch_3
    invoke-virtual {p0, v1, p2}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setSmallViewLocation(ZI)V

    goto :goto_3

    :pswitch_4
    iget v3, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_8

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    :cond_8
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v3, v3, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoMetrics;

    invoke-virtual {v3, v1}, Lcom/android/incallui/service/vt/VideoMetrics;->getResizeTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v3

    iget v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    if-ne v4, v5, :cond_9

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    :goto_5
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewAnimator:Lcom/android/incallui/util/VideoAnimator;

    invoke-virtual {v2, v0, v3, p2}, Lcom/android/incallui/util/VideoAnimator;->move(Lcom/android/incallui/util/VideoTemplate;Lcom/android/incallui/util/VideoTemplate;I)V

    invoke-virtual {p0, v1, v3}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->saveCurrentTemplate(ZLcom/android/incallui/util/VideoTemplate;)V

    goto :goto_3

    :cond_9
    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getBigTemplete(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/incallui/util/VideoTemplate;->update(Lcom/android/incallui/util/VideoTemplate;)V

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 2

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

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoPhotoHelper:Lcom/android/incallui/util/VideoPhotoHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoPhotoHelper;->setUsingDefaultPhotoforFarEnd(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoPhotoHelper:Lcom/android/incallui/util/VideoPhotoHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/util/VideoPhotoHelper;->setUsingDefaultPhotoforFarEnd(Z)V

    goto :goto_0
.end method

.method public setSmallViewLocation(ZI)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->stopDragAndDrop()V

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mVideoContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayAnimator:Lcom/android/incallui/util/VideoAnimator;

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewAnimator:Lcom/android/incallui/util/VideoAnimator;

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    :cond_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->bringToFront()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallViewState()I

    move-result v4

    new-instance v5, Lcom/android/incallui/util/VideoTemplate;

    invoke-direct {v5, v2}, Lcom/android/incallui/util/VideoTemplate;-><init>(Landroid/view/View;)V

    invoke-direct {p0, p1, v4}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallTargetTemplate(ZI)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/incallui/util/VideoTemplate;->isValid()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/fragment/VideoCallVGAFragment$3;

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/incallui/fragment/VideoCallVGAFragment$3;-><init>(Lcom/android/incallui/fragment/VideoCallVGAFragment;ZILandroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/android/incallui/util/VideoAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getCurrentTemplate(Z)Lcom/android/incallui/util/VideoTemplate;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/incallui/util/VideoTemplate;->areSame(Lcom/android/incallui/util/VideoTemplate;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSmallViewLocation - animator is running : same position. isPreview="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->location(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedPosition:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    invoke-virtual {v3}, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->isValid()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedPosition:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    iget v3, v3, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->x:F

    invoke-virtual {v6, v3}, Lcom/android/incallui/util/VideoTemplate;->setX(F)V

    const/4 v3, 0x2

    if-eq v4, v3, :cond_9

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedPosition:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    iget v3, v3, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->y:F

    invoke-virtual {v6}, Lcom/android/incallui/util/VideoTemplate;->getY()F

    move-result v8

    iget-object v9, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v9, v9, Lcom/android/incallui/service/vt/VideoCallMetrics;->video:Lcom/android/incallui/service/vt/VideoMetrics;

    invoke-virtual {v9}, Lcom/android/incallui/service/vt/VideoMetrics;->getSmallTempleteOffsetY()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedPosition:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    iget v9, v9, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->y:F

    invoke-virtual {v6}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    iget-object v10, v10, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoButtonMetrics;

    iget v10, v10, Lcom/android/incallui/service/vt/VideoButtonMetrics;->top:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_8

    invoke-virtual {v6}, Lcom/android/incallui/util/VideoTemplate;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v10, v3

    invoke-virtual {v6, v3}, Lcom/android/incallui/util/VideoTemplate;->setY(F)V

    :cond_4
    :goto_1
    const-string v3, "none"

    if-eqz v2, :cond_5

    const-string v3, "move"

    :cond_5
    const/4 v8, 0x4

    if-ne v0, v8, :cond_b

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mSmallViewState:I

    if-eq v4, v0, :cond_a

    const-string v0, "move"

    const/16 p2, 0x12c

    :goto_2
    const-string v3, "none"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p0, p1, v6}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->saveCurrentTemplate(ZLcom/android/incallui/util/VideoTemplate;)V

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/android/incallui/util/VideoAnimator;->end()V

    :cond_6
    const-string v3, "move"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v1, v5, v6, p2}, Lcom/android/incallui/util/VideoAnimator;->move(Lcom/android/incallui/util/VideoTemplate;Lcom/android/incallui/util/VideoTemplate;I)V

    :cond_7
    :goto_3
    const-string v1, "setSmallViewLocation - isPreview=%s, isAnimationRunning=%s, wasDragged=%s { %s : %s -> %s, duration=%d, new=%s, old=%s, SecVideoState=%s } "

    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v3, v8

    const/4 v8, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v8

    const/4 v2, 0x2

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v3, v2

    const/4 v2, 0x3

    aput-object v0, v3, v2

    const/4 v0, 0x4

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mSmallViewState:I

    invoke-static {v2}, Lcom/android/incallui/fragment/VideoCallFragment$ViewState;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    const/4 v0, 0x5

    invoke-static {v4}, Lcom/android/incallui/fragment/VideoCallFragment$ViewState;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    const/4 v0, 0x6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v0

    const/4 v0, 0x7

    invoke-virtual {v6}, Lcom/android/incallui/util/VideoTemplate;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    const/16 v0, 0x8

    invoke-virtual {v5}, Lcom/android/incallui/util/VideoTemplate;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    const/16 v0, 0x9

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mSecVideoState:I

    invoke-static {v2}, Lcom/android/incallui/service/vt/SecVideoState;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->location(Ljava/lang/String;)V

    iput v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mSmallViewState:I

    goto/16 :goto_0

    :cond_8
    cmpl-float v8, v3, v8

    if-lez v8, :cond_4

    invoke-virtual {v6, v3}, Lcom/android/incallui/util/VideoTemplate;->setY(F)V

    goto/16 :goto_1

    :cond_9
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDraggedPosition:Lcom/android/incallui/service/vt/VideoCallMetrics$Position;

    iget v3, v3, Lcom/android/incallui/service/vt/VideoCallMetrics$Position;->y:F

    invoke-virtual {v6, v3}, Lcom/android/incallui/util/VideoTemplate;->setY(F)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v5, v6}, Lcom/android/incallui/util/VideoTemplate;->areSame(Lcom/android/incallui/util/VideoTemplate;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "fadeIn"

    goto/16 :goto_2

    :cond_b
    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsExchangingViews:Z

    if-eqz v0, :cond_c

    const-string v0, "fadeIn"

    goto/16 :goto_2

    :cond_c
    const-string v0, "move"

    goto/16 :goto_2

    :cond_d
    const-string v3, "fadeIn"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 p2, 0x12c

    invoke-virtual {v1, v6, p2}, Lcom/android/incallui/util/VideoAnimator;->fadeIn(Lcom/android/incallui/util/VideoTemplate;I)V

    goto/16 :goto_3

    :cond_e
    move-object v0, v3

    goto/16 :goto_2
.end method

.method protected setVideoDimension()V
    .locals 4

    const/16 v2, 0x500

    const/16 v1, 0x2d0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallUtils;->isHD720(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_USE_PREVIEW_DIMENSION:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoDetails()Lcom/android/incallui/service/vt/VideoDetails;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/service/vt/VideoDetails;->setPreviewDimension(II)V

    :cond_2
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_USE_PEER_DIMENSION:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoDetails()Lcom/android/incallui/service/vt/VideoDetails;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/service/vt/VideoDetails;->setPeerDimension(II)V

    :cond_3
    new-instance v1, Lcom/android/incallui/service/vt/VideoDimension;

    invoke-direct {v1}, Lcom/android/incallui/service/vt/VideoDimension;-><init>()V

    new-instance v2, Lcom/android/incallui/service/vt/VideoDimension;

    invoke-direct {v2}, Lcom/android/incallui/service/vt/VideoDimension;-><init>()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoDetails()Lcom/android/incallui/service/vt/VideoDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoDetails;->getPreviewDimension()Lcom/android/incallui/service/vt/VideoDimension;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/incallui/service/vt/VideoDimension;->update(Lcom/android/incallui/service/vt/VideoDimension;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoDetails()Lcom/android/incallui/service/vt/VideoDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoDetails;->getPeerDimension()Lcom/android/incallui/service/vt/VideoDimension;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/incallui/service/vt/VideoDimension;->update(Lcom/android/incallui/service/vt/VideoDimension;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->isSupportOnlyLandscapeUI(Lcom/android/incallui/Call;)Z

    move-result v3

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->FIXED_PREVIEW_DIMENSION:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->canUseScreenTypeSensor(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_1
    if-nez v3, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoDimension;->swap()V

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->CAN_USE_PEER_DIMENSION:Z

    if-nez v0, :cond_5

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoDimension;->swap()V

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->canUpdatePreviewDimension()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->setPreviewDimension(Lcom/android/incallui/service/vt/VideoDimension;)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mMetrics:Lcom/android/incallui/service/vt/VideoCallMetrics;

    invoke-virtual {v0, v2}, Lcom/android/incallui/service/vt/VideoCallMetrics;->setPeerDimension(Lcom/android/incallui/service/vt/VideoDimension;)V

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setVideoLayout()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setVideoDimension()V

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->setVideoLayout()V

    return-void
.end method

.method protected setVideoLocaton()V
    .locals 9

    const/4 v6, 0x5

    const/4 v2, 0x1

    const/4 v5, 0x4

    const/4 v3, 0x3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x1f4

    iget v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mOldSecVideoState:I

    iget v7, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mSecVideoState:I

    if-eq v4, v7, :cond_1

    iget v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mOldSecVideoState:I

    invoke-static {v4}, Lcom/android/incallui/service/vt/SecVideoState;->hasHolding(I)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_1
    move v4, v2

    :goto_1
    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsExchangingViews:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsResizingView:Z

    if-nez v4, :cond_2

    move v0, v1

    :cond_2
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    sget-boolean v7, Lcom/android/incallui/service/vt/VideoCallConfig;->CONFERENCE_HIDE_PREVIEW:Z

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v7}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/SecCall;->isConferecedVideoRx()Z

    move-result v7

    if-eqz v7, :cond_9

    :goto_2
    invoke-static {v4}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v4}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v4

    if-nez v4, :cond_3

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->needToHideSmallView()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->clearDragPostion()V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/incallui/service/vt/VideoCallManager;->setScreenResized(Z)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/incallui/service/vt/VideoCallManager;->setExchangedViews(Z)V

    :cond_4
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getCallDetails()Lcom/android/incallui/CallDetails;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallDetails;->isEarlyMedia()Z

    move-result v4

    if-eqz v4, :cond_a

    move v2, v3

    move v4, v5

    :goto_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->needToHideSmallView()Z

    move-result v7

    if-eqz v7, :cond_5

    if-ne v4, v5, :cond_b

    move v4, v1

    :cond_5
    :goto_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->canDisplayExchangedViews()Z

    move-result v1

    if-eqz v1, :cond_6

    if-ne v4, v5, :cond_6

    if-ne v2, v3, :cond_6

    move v8, v4

    move v4, v2

    move v2, v8

    :cond_6
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager;->isScreenResized()Z

    move-result v1

    if-eqz v1, :cond_7

    if-ne v2, v3, :cond_c

    move v2, v6

    :cond_7
    :goto_5
    invoke-virtual {p0, v4, v0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setPreviewLocation(II)V

    invoke-virtual {p0, v2, v0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setDispalyLocation(II)V

    goto/16 :goto_0

    :cond_8
    move v4, v1

    goto :goto_1

    :cond_9
    move v2, v1

    goto :goto_2

    :cond_a
    if-nez v2, :cond_d

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getPreviewLocation()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getDisplayLocation()I

    move-result v2

    goto :goto_3

    :cond_b
    if-ne v2, v5, :cond_5

    move v2, v1

    goto :goto_4

    :cond_c
    if-ne v4, v3, :cond_7

    move v4, v6

    goto :goto_5

    :cond_d
    move v2, v3

    move v4, v1

    goto :goto_3
.end method

.method public showCallBannerByDialpad(Z)V
    .locals 0

    return-void
.end method

.method protected showDisplayBorder(Z)V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayBorder:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayBorder:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz p1, :cond_2

    if-eqz v0, :cond_0

    const-string v0, "showDisplayBorder - SHOW"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->ui(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayBorder:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    if-eq v0, v1, :cond_0

    const-string v0, "showDisplayBorder - HIDE"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->ui(Ljava/lang/String;)V

    move v0, v1

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
    .locals 2

    const/16 v1, 0x8

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->isActiveTwoWayVideo(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsPreviewReady:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewBorder:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewBorder:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz p1, :cond_3

    if-eqz v0, :cond_2

    const-string v0, "showPreviewBorder - SHOW"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->ui(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewBorder:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    if-eq v0, v1, :cond_2

    const-string v0, "showPreviewBorder - HIDE"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->ui(Ljava/lang/String;)V

    move v0, v1

    goto :goto_1
.end method

.method protected showView()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->showView()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->registerTouchListener()V

    return-void
.end method

.method protected startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDragTargetView:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDragAndDrop -  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDragTargetView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->drag(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDragTargetView:Landroid/view/View;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    :cond_0
    return-void
.end method

.method protected stopDragAndDrop()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDragTargetView:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopDragAndDrop -  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDragTargetView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getViewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->drag(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDragTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->cancelDragAndDrop()V

    :cond_0
    return-void
.end method

.method public updatePrimaryCall(Lcom/android/incallui/Call;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->canDragSmallSurface()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->clearDragPostion()V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallFragment;->updatePrimaryCall(Lcom/android/incallui/Call;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setFullScreenTouchListeners()V

    return-void
.end method

.method protected updatePrimaryImage()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mIsUsingPersonalPhoto:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0
.end method

.method public updateSmallView(Lcom/android/incallui/Call;)V
    .locals 6

    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {p1, v0}, Lcom/android/incallui/Call;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->getSmallViewState()I

    move-result v3

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mSmallViewState:I

    if-eq v0, v3, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSmallView : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mSmallViewState:I

    invoke-static {v4}, Lcom/android/incallui/fragment/VideoCallFragment$ViewState;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " -> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Lcom/android/incallui/fragment/VideoCallFragment$ViewState;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    const/16 v0, 0x12c

    iget v3, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    if-ne v3, v5, :cond_2

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setSmallViewLocation(ZI)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mDisplayLocation:I

    if-ne v1, v5, :cond_0

    invoke-virtual {p0, v2, v0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setSmallViewLocation(ZI)V

    goto :goto_1
.end method

.method public updateVideoSessionEvent(ILcom/android/incallui/Call;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallFragment;->updateVideoSessionEvent(ILcom/android/incallui/Call;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mSecVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->isActiveTwoWayVideo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment;->mPreviewLocation:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->showPreviewBorder(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
    .end packed-switch
.end method
