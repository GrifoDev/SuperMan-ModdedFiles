.class public Lcom/android/incallui/fragment/VideoCallFragment;
.super Lcom/android/incallui/BaseFragment;

# interfaces
.implements Lcom/android/incallui/VideoCallUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/fragment/VideoCallFragment$ViewState;,
        Lcom/android/incallui/fragment/VideoCallFragment$ViewLocation;,
        Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/VideoCallPresenter;",
        "Lcom/android/incallui/VideoCallUi;",
        ">;",
        "Lcom/android/incallui/VideoCallUi;"
    }
.end annotation


# static fields
.field private static final DIMENSIONS_NOT_SET:I = -0x1

.field public static final SURFACE_DISPLAY:I = 0x1

.field public static final SURFACE_PREVIEW:I = 0x2

.field private static final TAG:Ljava/lang/String; = "VideoCallFragment - "

.field private static mIsShowingVideoUI:Z


# instance fields
.field public mConference:Z

.field protected mDisplayBorder:Landroid/view/View;

.field public mDisplayLocation:I

.field private mDisplaySurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

.field protected mFarEndCaptureAnimatinoView:Landroid/view/View;

.field protected mFarEndDefaultImage:Landroid/widget/ImageView;

.field protected mFarEndPhoto:Landroid/widget/ImageView;

.field protected mFarEndPhotoContainer:Landroid/view/View;

.field public mFullScreenMode:Z

.field private mHeight:I

.field protected mIncomingVideo:Landroid/view/TextureView;

.field protected mIndicatorArea:Landroid/view/ViewGroup;

.field public mIsDeviceLandScape:Z

.field public mIsDisplayReady:Z

.field private mIsLayoutComplete:Z

.field public mIsPreviewReady:Z

.field protected mIsShowingPreviewAnimation:Z

.field protected mNearEndCaptureAnimatinoView:Landroid/view/View;

.field protected mNearEndPhoto:Landroid/widget/ImageView;

.field protected mNearEndSwitchAnimationView:Landroid/view/View;

.field public mOldSecVideoState:I

.field protected mPreparingAnimation:Landroid/view/View;

.field protected mPreviewBorder:Landroid/view/View;

.field protected mPreviewContainer:Landroid/view/ViewGroup;

.field public mPreviewLocation:I

.field private mPreviewSurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

.field protected mPreviewVideo:Landroid/view/TextureView;

.field public mPrimaryCall:Lcom/android/incallui/Call;

.field public mSecVideoState:I

.field public mSmallViewState:I

.field protected mVideoContainer:Landroid/view/ViewGroup;

.field protected mVideoViews:Landroid/view/View;

.field protected mVideoViewsContainer:Landroid/view/View;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsShowingVideoUI:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    iput-object v2, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewSurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    iput-object v2, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mDisplaySurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    iput-object v2, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mVideoViews:Landroid/view/View;

    iput-object v2, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewBorder:Landroid/view/View;

    iput-object v2, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mDisplayBorder:Landroid/view/View;

    iput-object v2, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mFarEndCaptureAnimatinoView:Landroid/view/View;

    iput-object v2, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mNearEndCaptureAnimatinoView:Landroid/view/View;

    iput-object v2, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mNearEndSwitchAnimationView:Landroid/view/View;

    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsShowingPreviewAnimation:Z

    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsLayoutComplete:Z

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mWidth:I

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mHeight:I

    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_NONE:I

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mSecVideoState:I

    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_NONE:I

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mOldSecVideoState:I

    iput-object v2, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsDeviceLandScape:Z

    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsDisplayReady:Z

    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsPreviewReady:Z

    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mFullScreenMode:Z

    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mConference:Z

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewLocation:I

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mDisplayLocation:I

    iput v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mSmallViewState:I

    return-void
.end method

.method static synthetic access$002(Lcom/android/incallui/fragment/VideoCallFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mWidth:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/incallui/fragment/VideoCallFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mHeight:I

    return p1
.end method

.method private animateForCapture(Landroid/view/View;)V
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Lcom/android/incallui/fragment/VideoCallFragment$1;

    invoke-direct {v0, p0, p1}, Lcom/android/incallui/fragment/VideoCallFragment$1;-><init>(Lcom/android/incallui/fragment/VideoCallFragment;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private centerDisplayView(Landroid/view/View;)V
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->isRtl()Z

    move-result v0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getSpaceBesideCallCard()F

    move-result v1

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isDeviceLandScape()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v3

    sub-float v1, v2, v1

    if-eqz v0, :cond_0

    neg-float v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method private getScreenSize()Landroid/graphics/Point;
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    return-object v1
.end method

.method private setSurfaceSizeAndTranslation(Landroid/view/TextureView;Landroid/graphics/Point;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p2, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsLayoutComplete:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsDeviceLandScape:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/TextureView;->getTranslationX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsDeviceLandScape:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/TextureView;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VideoCallFragment;->centerDisplayView(Landroid/view/View;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public captureSurface(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mDisplaySurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsDisplayReady:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mDisplaySurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->captureImage()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->showFarEndCaptureAnimation()V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewSurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsPreviewReady:Z

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewSurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->captureImage()Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->showNearEndCaptureAnimation()V

    goto :goto_0
.end method

.method public changeFullscreenMode()V
    .locals 0

    return-void
.end method

.method protected changeOrientation()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallFragment - changeOrientation - isDeviceLandScape="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsDeviceLandScape:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " VideoState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/SecCall;->getVideoState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->window(Ljava/lang/String;)V

    return-void
.end method

.method protected checkAndRefreshDisplaySurface()V
    .locals 10

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->isAvailableVideoRx(Lcom/android/incallui/Call;)Z

    move-result v5

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mDisplaySurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mDisplaySurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mDisplaySurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mDisplaySurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v4}, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isSameDisplaySurface(Landroid/view/Surface;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    :goto_1
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getDisplaySurface()Landroid/view/Surface;

    move-result-object v4

    if-eqz v4, :cond_4

    move v4, v1

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VideoCallFragment - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " DisplaySurface {isAvailableVideoRx=%s, isExistSurface=%s, hasSurface=%s, isSame=%s, VideoReady=%s} "

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v8, v1

    const/4 v2, 0x2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v2

    const/4 v2, 0x3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v2

    const/4 v2, 0x4

    iget-boolean v9, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsDisplayReady:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    if-eqz v5, :cond_5

    if-eqz v0, :cond_1

    if-eqz v3, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsDisplayReady:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->needToShowPreparingImage()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallFragment;->showPreparingAnimation(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoCallPresenter;->onSurfaceCreated(I)V

    :cond_1
    :goto_3
    return-void

    :cond_2
    move v0, v2

    goto/16 :goto_0

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    move v4, v2

    goto :goto_2

    :cond_5
    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoCallPresenter;->onSurfaceDestroyed(I)V

    goto :goto_3
.end method

.method protected checkAndRefreshPreviewSurface()V
    .locals 11

    const/4 v10, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->isAvailableVideoTx(Lcom/android/incallui/Call;)Z

    move-result v5

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewSurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewSurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewSurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewSurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v4}, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isSamePreviewSurface(Landroid/view/Surface;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    :goto_1
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v4

    if-eqz v4, :cond_4

    move v4, v1

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VideoCallFragment - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " PreviewSurface {isAvailableVideoTx=%s, isExistSurface=%s, hasSurface=%s, isSame=%s, VideoReady=%s} "

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v8, v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v8, v10

    const/4 v1, 0x3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v8, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsPreviewReady:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    if-eqz v5, :cond_5

    if-eqz v0, :cond_1

    if-eqz v3, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsPreviewReady:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v0, v10}, Lcom/android/incallui/VideoCallPresenter;->onSurfaceCreated(I)V

    :cond_1
    :goto_3
    return-void

    :cond_2
    move v0, v2

    goto/16 :goto_0

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    move v4, v2

    goto :goto_2

    :cond_5
    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v0, v10}, Lcom/android/incallui/VideoCallPresenter;->onSurfaceDestroyed(I)V

    goto :goto_3
.end method

.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mDisplaySurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mDisplaySurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewSurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewSurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    :cond_1
    return-void
.end method

.method protected copyParams(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 1

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->createPresenter()Lcom/android/incallui/VideoCallPresenter;

    move-result-object v0

    return-object v0
.end method

.method public createPresenter()Lcom/android/incallui/VideoCallPresenter;
    .locals 1

    const-string v0, "VideoCallFragment - createPresenter"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->fragment(Ljava/lang/String;)V

    new-instance v0, Lcom/android/incallui/VideoCallPresenter;

    invoke-direct {v0}, Lcom/android/incallui/VideoCallPresenter;-><init>()V

    return-object v0
.end method

.method public getDisplayVideoSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mDisplaySurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mDisplaySurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0
.end method

.method public getPreviewVideoSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewSurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewSurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_0
.end method

.method public getSavedSurfaceImage(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1, p1}, Lcom/android/incallui/VideoCallPresenter;->getSavedSurfaceImage(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmallViewState()I
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mConference:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mFullScreenMode:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/VideoBanner;->isShowingVideoBanner()Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VideoBanner;->isShowingVideoBanner()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    :cond_3
    :goto_2
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->isShowingCameraEffectUi()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getUi()Lcom/android/incallui/VideoCallUi;

    move-result-object v0

    return-object v0
.end method

.method public getUi()Lcom/android/incallui/VideoCallUi;
    .locals 0

    return-object p0
.end method

.method protected getUiAdapter()Lcom/android/incallui/UiAdapter;
    .locals 1

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected hideView()V
    .locals 2

    const-string v0, "VideoCallFragment - hideView"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->ui(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public initializeVideoView(Landroid/view/View;)V
    .locals 4

    const/16 v3, 0x8

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mVideoViews:Landroid/view/View;

    const v1, 0x7f100402

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIncomingVideo:Landroid/view/TextureView;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIncomingVideo:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIncomingVideo:Landroid/view/TextureView;

    invoke-virtual {v0, v3}, Landroid/view/TextureView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mDisplaySurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIncomingVideo:Landroid/view/TextureView;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;-><init>(Lcom/android/incallui/fragment/VideoCallFragment;ILandroid/view/TextureView;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mDisplaySurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mVideoViews:Landroid/view/View;

    const v1, 0x7f10040b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewVideo:Landroid/view/TextureView;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewVideo:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewVideo:Landroid/view/TextureView;

    invoke-virtual {v0, v3}, Landroid/view/TextureView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewSurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewVideo:Landroid/view/TextureView;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;-><init>(Lcom/android/incallui/fragment/VideoCallFragment;ILandroid/view/TextureView;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewSurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    :cond_1
    return-void
.end method

.method public invalidateUi()V
    .locals 1

    sget-boolean v0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsShowingVideoUI:Z

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallFragment;->showVideoUi(Z)V

    return-void
.end method

.method protected isDesktopMode()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v0

    return v0
.end method

.method public isInMultiWindowMode()Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public isPreviewReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsPreviewReady:Z

    return v0
.end method

.method public isShowingPreparingAnimation()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreparingAnimation:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreparingAnimation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needToShowPreparingImage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsDisplayReady:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->isAvailableVideoRx(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isDeviceLandScape()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsDeviceLandScape:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallFragment - onActivityCreated - isDeviceLandScape="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsDeviceLandScape:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->fragment(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mVideoViews:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallFragment;->initializeVideoView(Landroid/view/View;)V

    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onAttach(Landroid/content/Context;)V

    const-string v0, "VideoCallFragment - onAttach"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->fragment(Ljava/lang/String;)V

    return-void
.end method

.method public onCallObjectChanged(Lcom/android/incallui/Call;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallFragment;->setDisplayReady(Z)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallFragment;->setPreviewReady(Z)V

    iput-object p1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_NONE:I

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallFragment;->setSecVideoState(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VideoBanner;->hideVideoBanner()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "VideoCallFragment - onCreate"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->fragment(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallFragment - onCreateView UX : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig$UXType;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->fragment(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroy()V

    const-string v0, "VideoCallFragment - onDestroy"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->fragment(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroyView()V

    const-string v0, "VideoCallFragment - onDestroyView"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->fragment(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->clear()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDetach()V

    const-string v0, "VideoCallFragment - onDetach"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->fragment(Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onPause()V

    const-string v0, "VideoCallFragment - onPause"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->fragment(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallFragment;->setPreviewReady(Z)V

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallFragment;->setDisplayReady(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallPresenter;->onUiPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onResume()V

    const-string v0, "VideoCallFragment - onResume"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->fragment(Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onStart()V

    const-string v0, "VideoCallFragment - onStart"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->fragment(Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onStop()V

    const-string v0, "VideoCallFragment - onStop"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->fragment(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallPresenter;->onUiStop()V

    return-void
.end method

.method public onSurfaceCreated(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->isAvailableVideoRx(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->needToShowPreparingImage()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallFragment;->showPreparingAnimation(Z)V

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/VideoCallPresenter;->onSurfaceCreated(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->isAvailableVideoTx(Lcom/android/incallui/Call;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSurfaceDestroyed(ILandroid/view/Surface;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallFragment;->setDisplayReady(Z)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/VideoCallPresenter;->onSurfaceDestroyed(ILandroid/view/Surface;)V

    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallFragment;->setPreviewReady(Z)V

    goto :goto_0
.end method

.method public onSurfaceUpdated(I)V
    .locals 0

    return-void
.end method

.method protected onVideoContextChanged()V
    .locals 0

    return-void
.end method

.method protected onVideoStateChanged()V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "VideoCallFragment - onViewCreated"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->fragment(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/android/incallui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mVideoViews:Landroid/view/View;

    return-void
.end method

.method public saveDisplayImage()V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mDisplaySurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsDisplayReady:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/4 v0, 0x0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mDisplaySurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->saveAsImage()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VideoCallFragment - saveDisplayImage - isReadyToCapture="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fileName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0
.end method

.method public savePreviewImage()V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewSurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsPreviewReady:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/4 v0, 0x0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewSurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->saveAsImage()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VideoCallFragment - savePreviewImage - isReadyToCapture="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fileName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0
.end method

.method public setDisplayReady(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsDisplayReady:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsDisplayReady:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallFragment - setDisplayReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsDisplayReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallFragment;->showPreparingAnimation(Z)V

    :cond_0
    return-void
.end method

.method public setPreviewReady(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsPreviewReady:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsPreviewReady:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallFragment - setPreviewReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsPreviewReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallFragment;->showSwitchCameraAnimation(Z)V

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 0

    return-void
.end method

.method public setPrimaryCall(Lcom/android/incallui/Call;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v3, Lcom/android/incallui/service/vt/VideoCallCapability;->MULTITASKING_PIP:I

    invoke-static {v3}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/service/vt/VideoCallManager;->isUiShowing()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/service/vt/VideoCallManager;->isPipRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VideoCallFragment - setPrimaryCall : PIP is running - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallLog;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/service/vt/VideoCallLog;->pip(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/service/vt/VideoCallManager;->isUiShowing()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getVideoPopupService()Lcom/android/incallui/service/SecVideoPopupService;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, "VideoCallFragment - setPrimaryCall : getVideoPopupService is not null."

    invoke-static {v3}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VideoCallFragment - setPrimaryCall : VideoState is None - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallLog;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->flow(Ljava/lang/String;)V

    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_NONE:I

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallFragment;->setSecVideoState(I)V

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallFragment;->setDisplayReady(Z)V

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallFragment;->setPreviewReady(Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    move v0, v1

    :goto_0
    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getDisconnectingOrDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez p1, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    if-nez v0, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallFragment;->showVideoUi(Z)V

    :cond_4
    iput-object p1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    iput-boolean v2, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsDeviceLandScape:Z

    :goto_2
    return-void

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallFragment;->updatePrimaryCall(Lcom/android/incallui/Call;)V

    goto :goto_2

    :cond_8
    move v0, v2

    goto :goto_1
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isFarEndRecord()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getRecordingDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/UiAdapter;->setRecordTimeUpdate(J)V

    :cond_0
    return-void
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    return-void
.end method

.method public setSecVideoState(I)V
    .locals 3

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mSecVideoState:I

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mSecVideoState:I

    if-eq v1, p1, :cond_0

    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_NONE:I

    if-ne p1, v1, :cond_0

    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_NONE:I

    :cond_0
    iput v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mOldSecVideoState:I

    iput p1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mSecVideoState:I

    if-eq p1, v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoCallFragment - setSecVideoState - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setSwitchCameraAnimationView(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mNearEndSwitchAnimationView:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mNearEndSwitchAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mNearEndSwitchAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mNearEndSwitchAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mNearEndSwitchAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mNearEndSwitchAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method protected setVideoLayout()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallFragment;->setSecVideoState(I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->onVideoContextChanged()V

    :cond_0
    return-void
.end method

.method public showCallBannerByDialpad(Z)V
    .locals 0

    return-void
.end method

.method public showFarEndCaptureAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mFarEndCaptureAnimatinoView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mFarEndCaptureAnimatinoView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallFragment;->animateForCapture(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public showIncomingHideMeImage(Z)V
    .locals 0

    return-void
.end method

.method public showNearEndCaptureAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mNearEndCaptureAnimatinoView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mNearEndCaptureAnimatinoView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallFragment;->animateForCapture(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public showNearEndImage(Z)V
    .locals 0

    return-void
.end method

.method public showPreparingAnimation(Z)V
    .locals 2

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->FAKE_VIDEO_CALL:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreparingAnimation:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreparingAnimation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VideoCallFragment - PreparingAnimation - SHOW"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreparingAnimation:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreparingAnimation:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreparingAnimation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VideoCallFragment - PreparingAnimation - HIDE"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreparingAnimation:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showSwitchCameraAnimation(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsShowingPreviewAnimation:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsShowingPreviewAnimation:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallFragment - showSwitchCameraAnimation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallFragment;->setSwitchCameraAnimationView(Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mNearEndSwitchAnimationView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mNearEndSwitchAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method public showVideoCallViews(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewSurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewSurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v0, p1}, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->setVisible(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mDisplaySurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mDisplaySurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v0, p1}, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->setVisible(Z)V

    :cond_1
    return-void
.end method

.method public showVideoInCallResize(Z)V
    .locals 0

    return-void
.end method

.method public showVideoIndicatorArea(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected showVideoUi(Z)V
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->showView()V

    :cond_0
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallFragment;->showVideoCallViews(Z)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mVideoViews:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mVideoViews:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    sput-boolean p1, Lcom/android/incallui/fragment/VideoCallFragment;->mIsShowingVideoUI:Z

    return-void

    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->hideView()V

    goto :goto_1
.end method

.method protected showView()V
    .locals 2

    const-string v0, "VideoCallFragment - showView"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->ui(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public switchVideoDisplay()V
    .locals 0

    return-void
.end method

.method public updateFullscreenMode(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mFullScreenMode:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mFullScreenMode:Z

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->changeFullscreenMode()V

    :cond_0
    return-void
.end method

.method protected updatePrimaryCall(Lcom/android/incallui/Call;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string v0, "VideoCallFragment - updatePrimaryCall - call = null"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->flow(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallPresenter;->getPrimaryVideoContext()Lcom/android/incallui/VideoContext;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallFragment;->showVideoUi(Z)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallFragment;->onCallObjectChanged(Lcom/android/incallui/Call;)V

    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallFragment - updatePrimaryCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SecVideoState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->flow(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsDisplayReady:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->isAvailableVideoRx(Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallFragment;->setDisplayReady(Z)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsPreviewReady:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallControl;->isAvailableVideoTx(Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallFragment;->setPreviewReady(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->setVideoLayout()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->checkAndRefreshPreviewSurface()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->checkAndRefreshDisplaySurface()V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoContext;->isVideoStateChanged(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->onVideoStateChanged()V

    goto :goto_1
.end method

.method public updateSmallView(Lcom/android/incallui/Call;)V
    .locals 0

    return-void
.end method

.method public updateVideoIndicatorArea()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallFragment;->showVideoIndicatorArea(Z)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallFragment;->showVideoIndicatorArea(Z)V

    goto :goto_0
.end method

.method public updateVideoSessionEvent(ILcom/android/incallui/Call;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallFragment;->setPreviewReady(Z)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallFragment;->setPreviewReady(Z)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallFragment;->setDisplayReady(Z)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallPresenter;->showRecordResult()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/incallui/UiAdapter;->showRecordingInfo(ZZ)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->updateVideoRecordButton()V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->checkAndRefreshDisplaySurface()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->checkAndRefreshPreviewSurface()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_2
        0x12c -> :sswitch_1
        0x12e -> :sswitch_0
        0x12f -> :sswitch_0
        0x1f4 -> :sswitch_4
        0x7d3 -> :sswitch_3
        0x7d4 -> :sswitch_3
    .end sparse-switch
.end method
