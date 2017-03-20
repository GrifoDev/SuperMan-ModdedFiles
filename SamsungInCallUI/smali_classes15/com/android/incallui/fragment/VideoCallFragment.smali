.class public Lcom/android/incallui/fragment/VideoCallFragment;
.super Lcom/android/incallui/BaseFragment;
.source "VideoCallFragment.java"

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

.field protected mNearEndCaptureAnimatinoView:Landroid/view/View;

.field protected mNearEndPhoto:Landroid/widget/ImageView;

.field protected mNearEndSwitchAnimationView:Landroid/view/View;

.field public mOldVideoState:I

.field protected mPreparingAnimation:Landroid/view/View;

.field protected mPreviewBorder:Landroid/view/View;

.field protected mPreviewContainer:Landroid/view/ViewGroup;

.field public mPreviewLocation:I

.field private mPreviewSurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

.field protected mPreviewVideo:Landroid/view/TextureView;

.field public mPrimaryCall:Lcom/android/incallui/Call;

.field public mSmallViewState:I

.field protected mVideoContainer:Landroid/view/ViewGroup;

.field public mVideoState:I

.field protected mVideoViews:Landroid/view/View;

.field protected mVideoViewsContainer:Landroid/view/View;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsShowingVideoUI:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    .line 85
    iput-object v2, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewSurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    .line 86
    iput-object v2, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mDisplaySurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    .line 91
    iput-object v2, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mVideoViews:Landroid/view/View;

    .line 105
    iput-object v2, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewBorder:Landroid/view/View;

    .line 106
    iput-object v2, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mDisplayBorder:Landroid/view/View;

    .line 129
    iput-object v2, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mFarEndCaptureAnimatinoView:Landroid/view/View;

    .line 130
    iput-object v2, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mNearEndCaptureAnimatinoView:Landroid/view/View;

    .line 135
    iput-object v2, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mNearEndSwitchAnimationView:Landroid/view/View;

    .line 140
    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsLayoutComplete:Z

    .line 144
    iput v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mWidth:I

    .line 149
    iput v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mHeight:I

    .line 153
    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_NONE:I

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mVideoState:I

    .line 154
    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_NONE:I

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mOldVideoState:I

    .line 155
    iput-object v2, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    .line 157
    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsDeviceLandScape:Z

    .line 158
    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsDisplayReady:Z

    .line 159
    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsPreviewReady:Z

    .line 161
    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mFullScreenMode:Z

    .line 162
    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mConference:Z

    .line 164
    iput v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewLocation:I

    .line 165
    iput v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mDisplayLocation:I

    .line 166
    iput v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mSmallViewState:I

    return-void
.end method

.method static synthetic access$002(Lcom/android/incallui/fragment/VideoCallFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/fragment/VideoCallFragment;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mWidth:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/incallui/fragment/VideoCallFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/fragment/VideoCallFragment;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mHeight:I

    return p1
.end method

.method private animateForCapture(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 724
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0056

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 725
    .local v2, "duration":I
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    invoke-direct {v1, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 726
    .local v1, "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 727
    .local v3, "fadein":Landroid/view/animation/Animation;
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v8, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 728
    .local v4, "fadeout":Landroid/view/animation/Animation;
    int-to-long v6, v2

    invoke-virtual {v3, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 729
    int-to-long v6, v2

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 730
    int-to-long v6, v2

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 731
    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 732
    invoke-virtual {v1, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 734
    new-instance v0, Lcom/android/incallui/fragment/VideoCallFragment$1;

    invoke-direct {v0, p0, p1}, Lcom/android/incallui/fragment/VideoCallFragment$1;-><init>(Lcom/android/incallui/fragment/VideoCallFragment;Landroid/view/View;)V

    .line 749
    .local v0, "animationListener":Landroid/view/animation/Animation$AnimationListener;
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 750
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 751
    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 752
    return-void
.end method

.method private centerDisplayView(Landroid/view/View;)V
    .locals 5
    .param p1, "displayVideo"    # Landroid/view/View;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 488
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->isRtl()Z

    move-result v0

    .line 490
    .local v0, "isLayoutRtl":Z
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getSpaceBesideCallCard()F

    move-result v1

    .line 491
    .local v1, "spaceBesideCallCard":F
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isDeviceLandScape()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 492
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    div-float v4, v1, v4

    sub-float v2, v3, v4

    .line 494
    .local v2, "videoViewTranslation":F
    if-eqz v0, :cond_0

    .line 495
    neg-float v3, v2

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 504
    :goto_0
    return-void

    .line 497
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 500
    .end local v2    # "videoViewTranslation":F
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    div-float v4, v1, v4

    sub-float v2, v3, v4

    .line 502
    .restart local v2    # "videoViewTranslation":F
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method private getScreenSize()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 689
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 690
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 691
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 693
    return-object v1
.end method

.method private setSurfaceSizeAndTranslation(Landroid/view/TextureView;Landroid/graphics/Point;)V
    .locals 3
    .param p1, "textureView"    # Landroid/view/TextureView;
    .param p2, "size"    # Landroid/graphics/Point;

    .prologue
    const/4 v2, 0x0

    .line 668
    invoke-virtual {p1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 669
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p2, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 670
    iget v1, p2, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 671
    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 676
    iget-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsLayoutComplete:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsDeviceLandScape:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/TextureView;->getTranslationX()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsDeviceLandScape:Z

    if-nez v1, :cond_2

    .line 677
    invoke-virtual {p1}, Landroid/view/TextureView;->getTranslationY()F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    .line 678
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VideoCallFragment;->centerDisplayView(Landroid/view/View;)V

    .line 680
    :cond_2
    return-void
.end method


# virtual methods
.method public captureSurface(I)Ljava/lang/String;
    .locals 2
    .param p1, "surfaceId"    # I

    .prologue
    .line 1049
    const/4 v0, 0x0

    .line 1050
    .local v0, "captured":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 1051
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mDisplaySurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsDisplayReady:Z

    if-eqz v1, :cond_0

    .line 1052
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mDisplaySurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->captureImage()Ljava/lang/String;

    move-result-object v0

    .line 1054
    :cond_0
    if-eqz v0, :cond_1

    .line 1055
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->showFarEndCaptureAnimation()V

    .line 1065
    :cond_1
    :goto_0
    return-object v0

    .line 1058
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewSurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsPreviewReady:Z

    if-eqz v1, :cond_3

    .line 1059
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewSurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->captureImage()Ljava/lang/String;

    move-result-object v0

    .line 1061
    :cond_3
    if-eqz v0, :cond_1

    .line 1062
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->showNearEndCaptureAnimation()V

    goto :goto_0
.end method

.method protected changeOrientation()V
    .locals 0

    .prologue
    .line 755
    return-void
.end method

.method protected checkAndRefreshDisplaySurface()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 876
    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v6}, Lcom/android/incallui/service/vt/VideoCallControl;->isAvailableVideoRx(Lcom/android/incallui/Call;)Z

    move-result v1

    .line 877
    .local v1, "isAvailableVideoRx":Z
    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mDisplaySurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mDisplaySurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v6}, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->getSurface()Landroid/view/Surface;

    move-result-object v6

    if-eqz v6, :cond_2

    move v2, v5

    .line 878
    .local v2, "isExistSurface":Z
    :goto_0
    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mDisplaySurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mDisplaySurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v7}, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->getSurface()Landroid/view/Surface;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isSameDisplaySurface(Landroid/view/Surface;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v3, v5

    .line 879
    .local v3, "isSameSurface":Z
    :goto_1
    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getDisplaySurface()Landroid/view/Surface;

    move-result-object v6

    if-eqz v6, :cond_4

    move v0, v5

    .line 881
    .local v0, "hasSurface":Z
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VideoCallFragment - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " DisplaySurface {isAvailableVideoRx=%s, isExistSurface=%s, hasSurface=%s, isSame=%s, VideoReady=%s} "

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    .line 882
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v9, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    iget-boolean v10, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsDisplayReady:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    .line 881
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    .line 884
    if-eqz v1, :cond_5

    .line 885
    if-eqz v2, :cond_1

    if-eqz v3, :cond_0

    iget-boolean v4, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsDisplayReady:Z

    if-nez v4, :cond_1

    .line 886
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->needToShowPreparingImage()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/incallui/fragment/VideoCallFragment;->showPreparingAnimation(Z)V

    .line 887
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v4, v5}, Lcom/android/incallui/VideoCallPresenter;->onSurfaceCreated(I)V

    .line 895
    :cond_1
    :goto_3
    return-void

    .end local v0    # "hasSurface":Z
    .end local v2    # "isExistSurface":Z
    .end local v3    # "isSameSurface":Z
    :cond_2
    move v2, v4

    .line 877
    goto/16 :goto_0

    .restart local v2    # "isExistSurface":Z
    :cond_3
    move v3, v4

    .line 878
    goto :goto_1

    .restart local v3    # "isSameSurface":Z
    :cond_4
    move v0, v4

    .line 879
    goto :goto_2

    .line 890
    .restart local v0    # "hasSurface":Z
    :cond_5
    iput-boolean v4, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsDisplayReady:Z

    .line 891
    if-eqz v0, :cond_1

    .line 892
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v4, v5}, Lcom/android/incallui/VideoCallPresenter;->onSurfaceDestroyed(I)V

    goto :goto_3
.end method

.method protected checkAndRefreshPreviewSurface()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 855
    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v6}, Lcom/android/incallui/service/vt/VideoCallControl;->isAvailableVideoTx(Lcom/android/incallui/Call;)Z

    move-result v1

    .line 856
    .local v1, "isAvailableVideoTx":Z
    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewSurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewSurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v6}, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->getSurface()Landroid/view/Surface;

    move-result-object v6

    if-eqz v6, :cond_2

    move v2, v4

    .line 857
    .local v2, "isExistSurface":Z
    :goto_0
    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewSurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewSurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v7}, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->getSurface()Landroid/view/Surface;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isSamePreviewSurface(Landroid/view/Surface;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v3, v4

    .line 858
    .local v3, "isSameSurface":Z
    :goto_1
    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v6

    if-eqz v6, :cond_4

    move v0, v4

    .line 860
    .local v0, "hasSurface":Z
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VideoCallFragment - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " PreviewSurface {isAvailableVideoTx=%s, isExistSurface=%s, hasSurface=%s, isSame=%s, VideoReady=%s} "

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    .line 861
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v8, v10

    const/4 v4, 0x3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v4, 0x4

    iget-boolean v9, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsPreviewReady:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v4

    .line 860
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    .line 863
    if-eqz v1, :cond_5

    .line 864
    if-eqz v2, :cond_1

    if-eqz v3, :cond_0

    iget-boolean v4, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsPreviewReady:Z

    if-nez v4, :cond_1

    .line 865
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v4, v10}, Lcom/android/incallui/VideoCallPresenter;->onSurfaceCreated(I)V

    .line 873
    :cond_1
    :goto_3
    return-void

    .end local v0    # "hasSurface":Z
    .end local v2    # "isExistSurface":Z
    .end local v3    # "isSameSurface":Z
    :cond_2
    move v2, v5

    .line 856
    goto :goto_0

    .restart local v2    # "isExistSurface":Z
    :cond_3
    move v3, v5

    .line 857
    goto :goto_1

    .restart local v3    # "isSameSurface":Z
    :cond_4
    move v0, v5

    .line 858
    goto :goto_2

    .line 868
    .restart local v0    # "hasSurface":Z
    :cond_5
    iput-boolean v5, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsPreviewReady:Z

    .line 869
    if-eqz v0, :cond_1

    .line 870
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v4, v10}, Lcom/android/incallui/VideoCallPresenter;->onSurfaceDestroyed(I)V

    goto :goto_3
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 613
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mDisplaySurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    if-eqz v0, :cond_0

    .line 614
    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mDisplaySurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewSurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    if-eqz v0, :cond_1

    .line 617
    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewSurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    .line 619
    :cond_1
    return-void
.end method

.method protected copyParams(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "template"    # Landroid/view/ViewGroup;
    .param p2, "target"    # Landroid/view/ViewGroup;

    .prologue
    .line 908
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 909
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 910
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 912
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->createPresenter()Lcom/android/incallui/VideoCallPresenter;

    move-result-object v0

    return-object v0
.end method

.method public createPresenter()Lcom/android/incallui/VideoCallPresenter;
    .locals 1

    .prologue
    .line 548
    const-string v0, "VideoCallFragment - createPresenter"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->fragment(Ljava/lang/String;)V

    .line 549
    new-instance v0, Lcom/android/incallui/VideoCallPresenter;

    invoke-direct {v0}, Lcom/android/incallui/VideoCallPresenter;-><init>()V

    return-object v0
.end method

.method public deleteSurfaceImage(I)V
    .locals 2
    .param p1, "surface"    # I

    .prologue
    .line 1025
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1, p1}, Lcom/android/incallui/VideoCallPresenter;->deleteSurfaceImage(Lcom/android/incallui/Call;I)V

    .line 1026
    return-void
.end method

.method public getDisplayVideoSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 627
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

    .prologue
    .line 636
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
    .param p1, "surface"    # I

    .prologue
    .line 1029
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1, p1}, Lcom/android/incallui/VideoCallPresenter;->getSavedSurfaceImage(Lcom/android/incallui/Call;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmallViewState()I
    .locals 2

    .prologue
    .line 1109
    const/4 v0, 0x0

    .line 1110
    .local v0, "state":I
    iget-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mConference:Z

    if-eqz v1, :cond_1

    .line 1111
    const/4 v0, 0x1

    .line 1129
    :cond_0
    :goto_0
    return v0

    .line 1112
    :cond_1
    iget-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mFullScreenMode:Z

    if-eqz v1, :cond_2

    .line 1113
    const/4 v0, 0x2

    goto :goto_0

    .line 1115
    :cond_2
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/VideoBanner;->isShowingVideoBanner()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1116
    const/4 v0, 0x4

    .line 1118
    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1119
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/VideoBanner;->isShowingVideoBanner()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1120
    const/4 v0, 0x5

    .line 1125
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->isShowingCameraEffectUi()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1126
    const/4 v0, 0x6

    goto :goto_0

    .line 1122
    :cond_5
    const/4 v0, 0x3

    goto :goto_1
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getUi()Lcom/android/incallui/VideoCallUi;

    move-result-object v0

    return-object v0
.end method

.method public getUi()Lcom/android/incallui/VideoCallUi;
    .locals 0

    .prologue
    .line 557
    return-object p0
.end method

.method protected getUiAdapter()Lcom/android/incallui/UiAdapter;
    .locals 1

    .prologue
    .line 697
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected hideView()V
    .locals 2

    .prologue
    .line 603
    const-string v0, "VideoCallFragment - hideView"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->ui(Ljava/lang/String;)V

    .line 604
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 605
    return-void
.end method

.method public initializeVideoView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x8

    .line 507
    if-eqz p1, :cond_1

    .line 508
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mVideoViews:Landroid/view/View;

    const v1, 0x7f100363

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIncomingVideo:Landroid/view/TextureView;

    .line 509
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIncomingVideo:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIncomingVideo:Landroid/view/TextureView;

    invoke-virtual {v0, v3}, Landroid/view/TextureView;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mDisplaySurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    if-nez v0, :cond_0

    .line 512
    new-instance v0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIncomingVideo:Landroid/view/TextureView;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;-><init>(Lcom/android/incallui/fragment/VideoCallFragment;ILandroid/view/TextureView;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mDisplaySurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mVideoViews:Landroid/view/View;

    const v1, 0x7f10036c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewVideo:Landroid/view/TextureView;

    .line 516
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewVideo:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewVideo:Landroid/view/TextureView;

    invoke-virtual {v0, v3}, Landroid/view/TextureView;->setVisibility(I)V

    .line 518
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewSurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    if-nez v0, :cond_1

    .line 519
    new-instance v0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewVideo:Landroid/view/TextureView;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;-><init>(Lcom/android/incallui/fragment/VideoCallFragment;ILandroid/view/TextureView;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewSurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    .line 523
    :cond_1
    return-void
.end method

.method public invalidateUi()V
    .locals 1

    .prologue
    .line 593
    sget-boolean v0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsShowingVideoUI:Z

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallFragment;->showVideoUi(Z)V

    .line 594
    return-void
.end method

.method protected isDesktopMode()Z
    .locals 1

    .prologue
    .line 991
    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v0

    return v0
.end method

.method public isInMultiWindowMode()Z
    .locals 3

    .prologue
    .line 979
    const/4 v1, 0x0

    .line 980
    .local v1, "isInMultiWindowMode":Z
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 981
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    .line 982
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isInMultiWindowMode()Z

    move-result v1

    .line 984
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 985
    const/4 v1, 0x0

    .line 987
    :cond_1
    return v1
.end method

.method public isPreviewReady()Z
    .locals 1

    .prologue
    .line 1018
    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsPreviewReady:Z

    return v0
.end method

.method public isShowingPreparingAnimation()Z
    .locals 1

    .prologue
    .line 812
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

    .prologue
    .line 1013
    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsDisplayReady:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mVideoState:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasNoRxState(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 421
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isDeviceLandScape()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsDeviceLandScape:Z

    .line 422
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

    .line 423
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mVideoViews:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallFragment;->initializeVideoView(Landroid/view/View;)V

    .line 424
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 425
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 374
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 375
    const-string v0, "VideoCallFragment - onAttach"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->fragment(Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method public onCallObjectChanged(Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v0, 0x0

    .line 898
    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsDisplayReady:Z

    .line 899
    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsPreviewReady:Z

    .line 900
    iput-object p1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    .line 901
    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_NONE:I

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mOldVideoState:I

    .line 902
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 903
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VideoBanner;->hideVideoBanner()V

    .line 905
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 528
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 529
    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isDeviceLandScape()Z

    move-result v0

    .line 530
    .local v0, "isDeviceLandScape":Z
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 531
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoCallFragment - onConfigurationChanged - isDeviceLandScape="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " VideoState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/SecCall;->getVideoState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->window(Ljava/lang/String;)V

    .line 532
    iget-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsDeviceLandScape:Z

    if-eq v1, v0, :cond_0

    .line 533
    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsDeviceLandScape:Z

    .line 534
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->changeOrientation()V

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoCallFragment - onConfigurationChanged - isDeviceLandScape="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " No Viideo State"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->window(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 380
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 381
    const-string v0, "VideoCallFragment - onCreate"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->fragment(Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 395
    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoCallFragment - onCreateView UX : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig$UXType;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->fragment(Ljava/lang/String;)V

    .line 397
    const/4 v0, 0x0

    .line 398
    .local v0, "parent":Landroid/view/View;
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 463
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroy()V

    .line 464
    const-string v0, "VideoCallFragment - onDestroy"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->fragment(Ljava/lang/String;)V

    .line 465
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 456
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroyView()V

    .line 457
    const-string v0, "VideoCallFragment - onDestroyView"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->fragment(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->clear()V

    .line 459
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 469
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDetach()V

    .line 470
    const-string v0, "VideoCallFragment - onDetach"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->fragment(Ljava/lang/String;)V

    .line 471
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 442
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onPause()V

    .line 443
    const-string v0, "VideoCallFragment - onPause"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->fragment(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallPresenter;->onUiPause()V

    .line 445
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 435
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onResume()V

    .line 436
    const-string v0, "VideoCallFragment - onResume"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->fragment(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->showVideoUi()V

    .line 438
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 429
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onStart()V

    .line 430
    const-string v0, "VideoCallFragment - onStart"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->fragment(Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 449
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onStop()V

    .line 450
    const-string v0, "VideoCallFragment - onStop"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->fragment(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallPresenter;->onUiStop()V

    .line 452
    return-void
.end method

.method public onSurfaceCreated(I)V
    .locals 2
    .param p1, "surface"    # I

    .prologue
    .line 934
    const/4 v0, 0x0

    .line 935
    .local v0, "canUpdate":Z
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 936
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallControl;->isAvailableVideoRx(Lcom/android/incallui/Call;)Z

    move-result v0

    .line 937
    if-eqz v0, :cond_0

    .line 938
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->needToShowPreparingImage()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallFragment;->showPreparingAnimation(Z)V

    .line 944
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 945
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v1, p1}, Lcom/android/incallui/VideoCallPresenter;->onSurfaceCreated(I)V

    .line 947
    :cond_1
    return-void

    .line 941
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallControl;->isAvailableVideoTx(Lcom/android/incallui/Call;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSurfaceDestroyed(I)V
    .locals 2
    .param p1, "surface"    # I

    .prologue
    const/4 v1, 0x0

    .line 950
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 951
    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsDisplayReady:Z

    .line 955
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/VideoCallPresenter;->onSurfaceDestroyed(I)V

    .line 956
    return-void

    .line 952
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 953
    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsPreviewReady:Z

    goto :goto_0
.end method

.method public onSurfaceUpdated(I)V
    .locals 0
    .param p1, "surface"    # I

    .prologue
    .line 959
    return-void
.end method

.method protected onVideoStateChanged()V
    .locals 0

    .prologue
    .line 852
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 409
    const-string v0, "VideoCallFragment - onViewCreated"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->fragment(Ljava/lang/String;)V

    .line 410
    invoke-super {p0, p1, p2}, Lcom/android/incallui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 411
    iput-object p1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mVideoViews:Landroid/view/View;

    .line 412
    return-void
.end method

.method public saveDisplayImage()V
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mDisplaySurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsDisplayReady:Z

    if-eqz v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mDisplaySurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->saveAsImage()V

    .line 1009
    :cond_0
    return-void
.end method

.method public savePreviewImage()V
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewSurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsPreviewReady:Z

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewSurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->saveAsImage()V

    .line 1003
    :cond_0
    return-void
.end method

.method public setCallState(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v2, 0x0

    .line 763
    if-eqz p1, :cond_3

    .line 764
    iget v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mVideoState:I

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mOldVideoState:I

    .line 765
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mVideoState:I

    .line 766
    invoke-virtual {p1}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallFragment - setCallState VideoState is None - Call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->flow(Ljava/lang/String;)V

    .line 768
    sget v0, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_NONE:I

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mOldVideoState:I

    .line 769
    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallFragment;->showVideoUi(Z)V

    .line 770
    iput-object p1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    .line 771
    iput-boolean v2, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsDisplayReady:Z

    .line 772
    iput-boolean v2, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsPreviewReady:Z

    .line 792
    :goto_0
    return-void

    .line 775
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallFragment;->showVideoUi(Z)V

    .line 776
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 777
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    if-nez v0, :cond_1

    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallFragment - setCallState  New Call, State="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mOldVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->flow(Ljava/lang/String;)V

    .line 782
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallFragment;->onCallObjectChanged(Lcom/android/incallui/Call;)V

    .line 786
    :goto_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->onVideoStateChanged()V

    .line 787
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->checkAndRefreshPreviewSurface()V

    .line 788
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->checkAndRefreshDisplaySurface()V

    goto :goto_0

    .line 780
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallFragment - setCallState  Swapped Call, State="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mOldVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->flow(Ljava/lang/String;)V

    goto :goto_1

    .line 784
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallFragment - setCallState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mOldVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mVideoState:I

    invoke-static {v1}, Lcom/android/incallui/service/vt/SecVideoState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->flow(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 790
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/incallui/fragment/VideoCallFragment;->showVideoUi(Z)V

    goto/16 :goto_0
.end method

.method public setPreviewSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 648
    return-void
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 4
    .param p1, "show"    # Z
    .param p2, "callTimeElapsed"    # Ljava/lang/String;

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallAdapter;->isFarEndRecord()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getVideoAdapter()Lcom/android/incallui/service/vt/VideoCallAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallAdapter;->getRecordingDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/UiAdapter;->setRecordTimeUpdate(J)V

    .line 707
    :cond_0
    return-void
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isPersonalPhotoAvailable"    # Z

    .prologue
    .line 759
    return-void
.end method

.method public showCallBannerByDialpad(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 997
    return-void
.end method

.method public showFarEndCaptureAnimation()V
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mFarEndCaptureAnimatinoView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mFarEndCaptureAnimatinoView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallFragment;->animateForCapture(Landroid/view/View;)V

    .line 714
    :cond_0
    return-void
.end method

.method public showIncomingHideMeImage(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 963
    return-void
.end method

.method public showNearEndCaptureAnimation()V
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mNearEndCaptureAnimatinoView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mNearEndCaptureAnimatinoView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallFragment;->animateForCapture(Landroid/view/View;)V

    .line 721
    :cond_0
    return-void
.end method

.method public showNearEndImage(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 1042
    return-void
.end method

.method public showPreparingAnimation(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 795
    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->FAKE_VIDEO_CALL:Z

    if-eqz v0, :cond_1

    .line 809
    :cond_0
    :goto_0
    return-void

    .line 798
    :cond_1
    if-eqz p1, :cond_2

    .line 799
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreparingAnimation:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreparingAnimation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    const-string v0, "VideoCallFragment - PreparingAnimation - SHOW"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    .line 801
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreparingAnimation:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 804
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreparingAnimation:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreparingAnimation:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 805
    const-string v0, "VideoCallFragment - PreparingAnimation - HIDE"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    .line 806
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreparingAnimation:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showSwitchCameraAnimation(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    .line 918
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mNearEndSwitchAnimationView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 931
    :goto_0
    return-void

    .line 921
    :cond_0
    if-eqz p1, :cond_1

    .line 922
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mNearEndSwitchAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 923
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mNearEndSwitchAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 924
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mNearEndSwitchAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 925
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mNearEndSwitchAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 927
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mNearEndSwitchAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 928
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mNearEndSwitchAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 929
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mNearEndSwitchAnimationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method public showVideoCallViews(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewSurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mPreviewSurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v0, p1}, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->setVisible(Z)V

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mDisplaySurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mDisplaySurface:Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;

    invoke-virtual {v0, p1}, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->setVisible(Z)V

    .line 657
    :cond_1
    return-void
.end method

.method public showVideoInCallResize(Z)V
    .locals 0
    .param p1, "animate"    # Z

    .prologue
    .line 915
    return-void
.end method

.method public showVideoIndicatorArea(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 966
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 967
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 969
    :cond_0
    return-void

    .line 967
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected showVideoUi()V
    .locals 3

    .prologue
    .line 561
    const/4 v1, 0x0

    .line 562
    .local v1, "show":Z
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/VideoCallPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 563
    .local v0, "primary":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {v0}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v1

    .line 566
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallFragment;->showVideoUi(Z)V

    .line 567
    return-void
.end method

.method protected showVideoUi(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 575
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 576
    .local v0, "visibility":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 577
    if-nez v0, :cond_3

    .line 578
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->showView()V

    .line 584
    :cond_0
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallFragment;->showVideoCallViews(Z)V

    .line 585
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mVideoViews:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 586
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mVideoViews:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 588
    :cond_1
    sput-boolean p1, Lcom/android/incallui/fragment/VideoCallFragment;->mIsShowingVideoUI:Z

    .line 589
    return-void

    .line 575
    .end local v0    # "visibility":I
    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    .line 580
    .restart local v0    # "visibility":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->hideView()V

    goto :goto_1
.end method

.method protected showView()V
    .locals 2

    .prologue
    .line 598
    const-string v0, "VideoCallFragment - showView"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->ui(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 600
    return-void
.end method

.method public switchVideoDisplay()V
    .locals 0

    .prologue
    .line 1022
    return-void
.end method

.method protected updateFullscreenMode()V
    .locals 0

    .prologue
    .line 1039
    return-void
.end method

.method public updateFullscreenMode(Z)V
    .locals 0
    .param p1, "isFullScreen"    # Z

    .prologue
    .line 1034
    iput-boolean p1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mFullScreenMode:Z

    .line 1035
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->updateFullscreenMode()V

    .line 1036
    return-void
.end method

.method public updateSmallForVideoBanner()V
    .locals 0

    .prologue
    .line 1045
    return-void
.end method

.method public updateVideoIndicatorArea()V
    .locals 1

    .prologue
    .line 972
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 973
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallFragment;->showVideoIndicatorArea(Z)V

    .line 976
    :goto_0
    return-void

    .line 975
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallFragment;->showVideoIndicatorArea(Z)V

    goto :goto_0
.end method

.method public updateVideoSessionEvent(ILcom/android/incallui/Call;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 817
    sparse-switch p1, :sswitch_data_0

    .line 849
    :cond_0
    :goto_0
    return-void

    .line 819
    :sswitch_0
    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsPreviewReady:Z

    .line 820
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isSwitchCameraClicked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 821
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallFragment;->showSwitchCameraAnimation(Z)V

    .line 822
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallManager;->setSwitchCameraClicked(Z)V

    goto :goto_0

    .line 827
    :sswitch_1
    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsPreviewReady:Z

    .line 828
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isSwitchCameraClicked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallFragment;->showSwitchCameraAnimation(Z)V

    .line 830
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallManager;->setSwitchCameraClicked(Z)V

    goto :goto_0

    .line 835
    :sswitch_2
    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallFragment;->mIsDisplayReady:Z

    .line 836
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallFragment;->showPreparingAnimation(Z)V

    goto :goto_0

    .line 841
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/VideoCallPresenter;->showRecordResult()V

    .line 842
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/incallui/UiAdapter;->showRecordingInfo(ZZ)V

    .line 843
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment;->getUiAdapter()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->updateVideoRecordButton()V

    goto :goto_0

    .line 817
    :sswitch_data_0
    .sparse-switch
        0xc9 -> :sswitch_2
        0x12c -> :sswitch_1
        0x12f -> :sswitch_0
        0x193 -> :sswitch_3
        0x194 -> :sswitch_3
    .end sparse-switch
.end method
