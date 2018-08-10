.class public Lcom/android/internal/policy/MultiWindowDecorSupport;
.super Ljava/lang/Object;
.source "MultiWindowDecorSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/MultiWindowDecorSupport$1;,
        Lcom/android/internal/policy/MultiWindowDecorSupport$2;,
        Lcom/android/internal/policy/MultiWindowDecorSupport$3;,
        Lcom/android/internal/policy/MultiWindowDecorSupport$4;,
        Lcom/android/internal/policy/MultiWindowDecorSupport$5;,
        Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;,
        Lcom/android/internal/policy/MultiWindowDecorSupport$FrameColors;
    }
.end annotation


# static fields
.field private static final CAPTION_SHOW_DURATION:I = 0x3e8

.field private static final DEBUG:Z = false

.field private static final DEBUG_DRAW:Z = false

.field private static final DEX_FRAME_THICKNESS:F = 1.0f

.field private static final DURATION_HEADER_APPEARING_IN_IMMERSIVE:I = 0x0

.field private static final HEIGHT_APPEARING_IN_IMMERSIVE_IN_DP:F = 40.0f

.field private static final HEIGHT_TO_SHOW_HEADER_IN_IMMERSIVE_IN_PX:F = 1.0f

.field private static final SAFE_DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "MultiWindowDecorSupport"


# instance fields
.field private mCanMaximize:Z

.field private mCaptionDownTranslateAnimInImmersive:Landroid/view/animation/TranslateAnimation;

.field private mCheckEdgeFirst:Z

.field private mDecorCaptionColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mDecorCaptionWindow:Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;

.field private mDecorView:Lcom/android/internal/policy/DecorView;

.field private mEdgeFlag:I

.field private mFrameDefaultThickness:F

.field private mFrameInsidePaint:Landroid/graphics/Paint;

.field private mFrameInsideThickness:F

.field private mFrameOutsidePaint:Landroid/graphics/Paint;

.field private mFrameOutsideThickness:F

.field private mFreeformBorderRadius:I

.field private final mHandler:Landroid/os/Handler;

.field private final mHideCaptionRunnable:Ljava/lang/Runnable;

.field private final mHideDecorCaptionWindowRunnable:Ljava/lang/Runnable;

.field private mIsEnteredToShowingCaptionAreaInImmersive:Z

.field private mIsHeaderClicked:Z

.field private mIsInMultiWindow:Z

.field mIsMovingTask:Z

.field private mIsPreserveOrientationMode:Z

.field private mLastWindowSystemUiVisibility:I

.field private final mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field private mOutsideStrokeOffset:F

.field private mOutsideStrokeRadius:F

.field mRequestTransientBarDelay:I

.field private mResizeMode:I

.field private final mShowCaptionRunnable:Ljava/lang/Runnable;

.field private final mShowDecorCaptionWindowRunnable:Ljava/lang/Runnable;

.field private mTempShowingFullscreenFreeformWindowCaption:Z

.field private mTmpRegion:Landroid/graphics/Region;

.field private mUseFreeformBorder:Z

.field private mWindow:Lcom/android/internal/policy/PhoneWindow;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/policy/MultiWindowDecorSupport;->SAFE_DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/internal/policy/MultiWindowDecorSupport;)Landroid/view/animation/TranslateAnimation;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mCaptionDownTranslateAnimInImmersive:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/policy/MultiWindowDecorSupport;)Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorCaptionWindow:Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/policy/MultiWindowDecorSupport;)Lcom/android/internal/policy/DecorView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/policy/MultiWindowDecorSupport;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/internal/policy/MultiWindowDecorSupport;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mHideCaptionRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/internal/policy/MultiWindowDecorSupport;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mHideDecorCaptionWindowRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/internal/policy/MultiWindowDecorSupport;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mTempShowingFullscreenFreeformWindowCaption:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/internal/policy/MultiWindowDecorSupport;)Lcom/android/internal/policy/PhoneWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/policy/MultiWindowDecorSupport;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mTempShowingFullscreenFreeformWindowCaption:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/policy/MultiWindowDecorSupport;IZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/MultiWindowDecorSupport;->updateFullScreenFreeformWindowCaptionVisibility(IZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/MultiWindowDecorSupport;->SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/DecorView;Lcom/android/internal/policy/PhoneWindow;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFrameInsidePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFrameOutsidePaint:Landroid/graphics/Paint;

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFrameOutsideThickness:F

    const/16 v0, 0x11

    iput v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFreeformBorderRadius:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mUseFreeformBorder:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mCheckEdgeFirst:Z

    iput v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mEdgeFlag:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mResizeMode:I

    iput-boolean v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mIsMovingTask:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mIsInMultiWindow:Z

    iput v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mRequestTransientBarDelay:I

    new-instance v0, Lcom/android/internal/policy/MultiWindowDecorSupport$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/MultiWindowDecorSupport$1;-><init>(Lcom/android/internal/policy/MultiWindowDecorSupport;)V

    iput-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mCanMaximize:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mIsPreserveOrientationMode:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mTempShowingFullscreenFreeformWindowCaption:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mIsEnteredToShowingCaptionAreaInImmersive:Z

    new-instance v0, Lcom/android/internal/policy/MultiWindowDecorSupport$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/MultiWindowDecorSupport$2;-><init>(Lcom/android/internal/policy/MultiWindowDecorSupport;)V

    iput-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mShowCaptionRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/MultiWindowDecorSupport$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/MultiWindowDecorSupport$3;-><init>(Lcom/android/internal/policy/MultiWindowDecorSupport;)V

    iput-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mHideCaptionRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/MultiWindowDecorSupport$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/MultiWindowDecorSupport$4;-><init>(Lcom/android/internal/policy/MultiWindowDecorSupport;)V

    iput-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mShowDecorCaptionWindowRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/MultiWindowDecorSupport$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/MultiWindowDecorSupport$5;-><init>(Lcom/android/internal/policy/MultiWindowDecorSupport;)V

    iput-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mHideDecorCaptionWindowRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mTmpRegion:Landroid/graphics/Region;

    iput-object p1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iput-object p2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->initDecorViewResources()V

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getWindowSystemUiVisibility()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mLastWindowSystemUiVisibility:I

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, -0x3e100000    # -30.0f

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mCaptionDownTranslateAnimInImmersive:Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mCaptionDownTranslateAnimInImmersive:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mCaptionDownTranslateAnimInImmersive:Landroid/view/animation/TranslateAnimation;

    sget-object v1, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method private applyMultiWindowDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/internal/widget/DecorCaptionView;->getMaximizeView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorCaptionColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/DecorCaptionView;->getCloseView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorCaptionColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/DecorCaptionView;->getMinimizeView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorCaptionColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method private checkEdgeFlags(IILandroid/view/MotionEvent;)I
    .locals 4

    const/4 v3, 0x0

    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    return v3

    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v2

    if-gt p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v2

    if-gt p2, v2, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    const/16 v3, 0x1002

    if-ne v2, v3, :cond_2

    const/high16 v2, 0x41000000    # 8.0f

    invoke-direct {p0, v2}, Lcom/android/internal/policy/MultiWindowDecorSupport;->dipToPx(F)F

    move-result v2

    float-to-int v1, v2

    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    if-le p2, v2, :cond_3

    const/4 v0, 0x2

    :cond_3
    if-ge p1, v1, :cond_5

    or-int/lit8 v0, v0, 0x4

    :cond_4
    :goto_0
    return v0

    :cond_5
    iget-object v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    if-le p1, v2, :cond_4

    or-int/lit8 v0, v0, 0x8

    goto :goto_0
.end method

.method private dipToPx(F)F
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private hasDecorCaptionView()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDecorCaptionWindow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private isFullscreenDexCompatMode()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFullScreenFreeform()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-boolean v0, v0, Lcom/android/internal/policy/DecorView;->mIsDexCompatWindow:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isImmersiveDecorCaptionWindow(I)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isImmersiveMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_2

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method private isInResizableArea(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v1, 0x0

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-direct {p0, v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->dipToPx(F)F

    move-result v0

    float-to-int v6, v0

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mTmpRegion:Landroid/graphics/Region;

    neg-int v2, v6

    neg-int v3, v6

    iget-object v4, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v4

    add-int/2addr v4, v6

    iget-object v5, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v5}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v5

    add-int/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Region;->set(IIII)Z

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mTmpRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->contains(II)Z

    move-result v0

    return v0
.end method

.method private isOutOfInnerBoundsByEdgeFlag(III)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    and-int/lit8 v2, p3, 0x4

    if-eqz v2, :cond_1

    if-gez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_3

    if-gez p2, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v2

    if-le p1, v2, :cond_4

    :goto_2
    return v0

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v2

    if-le p2, v2, :cond_6

    :goto_3
    return v0

    :cond_6
    move v0, v1

    goto :goto_3

    :cond_7
    return v1
.end method

.method static synthetic lambda$-com_android_internal_policy_MultiWindowDecorSupport_10961(Landroid/graphics/Paint;)V
    .locals 1

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private updateDecorCaptionWindowVisibility()V
    .locals 0

    return-void
.end method

.method private updateFreeformFramePaint()V
    .locals 5

    const v3, -0x69696a

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFrameInsideThickness:F

    if-eqz v1, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    iget-boolean v4, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mIsMovingTask:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mIsHeaderClicked:Z

    if-eqz v4, :cond_1

    :cond_0
    const/high16 v2, 0x40000000    # 2.0f

    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFrameInsidePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v4, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mIsMovingTask:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mIsHeaderClicked:Z

    if-eqz v4, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFrameInsidePaint:Landroid/graphics/Paint;

    const v4, -0x33c44015    # -4.9217452E7f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/DecorView;->hasWindowFocus()Z

    move-result v0

    iget-object v4, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFrameInsidePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_6

    if-eqz v1, :cond_5

    :cond_4
    :goto_1
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_5
    const v3, -0x50506

    goto :goto_1

    :cond_6
    if-nez v1, :cond_4

    const v3, -0x111112

    goto :goto_1
.end method

.method private updateFullScreenFreeformWindowCaptionVisibility(IZZ)V
    .locals 3

    if-eqz p3, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorCaptionWindow:Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    const/16 v1, 0x8

    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorCaptionWindow:Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->setVisibility(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-object v2, v2, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-object v2, v2, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/DecorCaptionView;->updateFullScreenFreeformWindowCaptionVisibility(IZ)V

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :goto_2
    iget-object v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2, v0}, Lcom/android/internal/policy/DecorView;->enableCaption(Z)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method


# virtual methods
.method public addDecorCaptionWindow()V
    .locals 0

    return-void
.end method

.method public canMaximize()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mCanMaximize:Z

    return v0
.end method

.method public canUseFreeformBorder()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mUseFreeformBorder:Z

    return v0
.end method

.method public changeBorderColorWhenHeaderClicked(Z)V
    .locals 0

    return-void
.end method

.method public checkReadyToResizeFreeform(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    return v7

    :pswitch_0
    iput-boolean v7, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mCheckEdgeFirst:Z

    invoke-direct {p0, v2, v3, p1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->checkEdgeFlags(IILandroid/view/MotionEvent;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mEdgeFlag:I

    goto :goto_0

    :pswitch_1
    iget-boolean v4, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mCheckEdgeFirst:Z

    if-nez v4, :cond_0

    iget v4, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mEdgeFlag:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isOutOfInnerBoundsByEdgeFlag(III)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mCheckEdgeFirst:Z

    iget-object v4, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v4, v0, Landroid/app/Activity;

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v1, v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowManager;->startResizingFreeformTask(Landroid/os/IBinder;II)V

    goto :goto_0

    :pswitch_2
    iput-boolean v7, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mCheckEdgeFirst:Z

    iput v7, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mEdgeFlag:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public dispatchRequestedOrientation(I)V
    .locals 0

    return-void
.end method

.method public dispatchWindowSystemUiVisiblityChanged(I)V
    .locals 2

    iget v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mLastWindowSystemUiVisibility:I

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mLastWindowSystemUiVisibility:I

    invoke-direct {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->hasDecorCaptionView()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget v1, v1, Lcom/android/internal/policy/DecorView;->mStackId:I

    invoke-static {v1}, Landroid/app/ActivityManager$StackId;->hasWindowDecor(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFullWindow()Z

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/DecorCaptionView;->onConfigurationChanged(Z)V

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/DecorView;->enableCaption(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFullscreenDexCompatMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getSystemUiVisibility()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2}, Lcom/android/internal/policy/DecorView;->getWindowSystemUiVisibility()I

    move-result v2

    or-int v0, v1, v2

    invoke-direct {p0, v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isImmersiveDecorCaptionWindow(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v3, v3, v1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->updateFullScreenFreeformWindowCaptionVisibility(IZZ)V

    :cond_0
    return-void
.end method

.method drawFreeformFrameIfNeeded(Landroid/graphics/Canvas;)V
    .locals 11

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsStartingWindow:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget v0, v0, Lcom/android/internal/policy/DecorView;->mStackId:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mUseFreeformBorder:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->updateFreeformFramePaint()V

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getWidth()I

    move-result v10

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getHeight()I

    move-result v9

    const/4 v8, 0x0

    iget v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFrameInsideThickness:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v8, v0, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    neg-float v1, v8

    neg-float v2, v8

    int-to-float v0, v10

    add-float v3, v0, v8

    int-to-float v0, v9

    add-float v4, v0, v8

    iget v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFreeformBorderRadius:I

    int-to-float v5, v0

    iget v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFreeformBorderRadius:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFrameInsidePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isDesktopMode()Z

    move-result v0

    if-nez v0, :cond_2

    neg-float v0, v8

    iget v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mOutsideStrokeOffset:F

    sub-float v1, v0, v1

    neg-float v0, v8

    iget v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mOutsideStrokeOffset:F

    sub-float v2, v0, v2

    int-to-float v0, v10

    add-float/2addr v0, v8

    iget v3, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mOutsideStrokeOffset:F

    add-float/2addr v3, v0

    int-to-float v0, v9

    add-float/2addr v0, v8

    iget v4, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mOutsideStrokeOffset:F

    add-float/2addr v4, v0

    iget v5, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mOutsideStrokeRadius:F

    iget v6, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mOutsideStrokeRadius:F

    iget-object v7, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFrameOutsidePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getFreeformOutlineProvider()Landroid/view/ViewOutlineProvider;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->getFreeformOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    return-object v0
.end method

.method public hasDecorCaptionWindow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasEdgeFlag()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mEdgeFlag:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method initDecorViewResources()V
    .locals 13

    const/high16 v12, 0x40000000    # 2.0f

    iget-object v6, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v6}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    :goto_0
    const v6, 0x1050144

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFrameDefaultThickness:F

    iget v6, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFrameDefaultThickness:F

    mul-float/2addr v6, v12

    iput v6, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFrameInsideThickness:F

    new-instance v5, Lcom/android/internal/policy/-$Lambda$PNdeaP7UR_41sgfIgKp0IbZadIw;

    invoke-direct {v5}, Lcom/android/internal/policy/-$Lambda$PNdeaP7UR_41sgfIgKp0IbZadIw;-><init>()V

    iget-object v6, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFrameInsidePaint:Landroid/graphics/Paint;

    invoke-interface {v5, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFrameOutsidePaint:Landroid/graphics/Paint;

    invoke-interface {v5, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFrameOutsidePaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFrameOutsideThickness:F

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v6, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFrameOutsidePaint:Landroid/graphics/Paint;

    const/high16 v7, 0xd000000

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget v6, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFrameInsideThickness:F

    float-to-double v6, v6

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide v8, -0x413f39085f4a1273L    # -2.0E-6

    mul-double/2addr v6, v8

    iget v8, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFrameInsideThickness:F

    float-to-double v8, v8

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    const-wide v10, 0x3f547ae147ae147bL    # 0.00125

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iget v8, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFrameInsideThickness:F

    float-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    const-wide v10, 0x3f33a92a30553261L    # 3.0E-4

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iget v8, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFrameInsideThickness:F

    float-to-double v8, v8

    const-wide v10, 0x3fdac3c9eecbfb16L    # 0.4182

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const-wide v8, 0x4029c51eb851eb85L    # 12.885

    add-double/2addr v6, v8

    double-to-float v6, v6

    iput v6, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mOutsideStrokeRadius:F

    iget v6, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFrameInsideThickness:F

    div-float/2addr v6, v12

    iput v6, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mOutsideStrokeOffset:F

    invoke-direct {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->updateFreeformFramePaint()V

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const v8, -0xababac

    invoke-direct {v6, v8, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v6, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorCaptionColorFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v6, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v6, v1, Landroid/app/Activity;

    if-eqz v6, :cond_0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_0

    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v7, "com.samsung.android.sdk.multiwindow.freeform.border"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mUseFreeformBorder:Z

    iget v6, v3, Landroid/content/pm/ActivityInfo;->requestTransientBarDelay:I

    if-ltz v6, :cond_0

    iget v6, v3, Landroid/content/pm/ActivityInfo;->requestTransientBarDelay:I

    iput v6, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mRequestTransientBarDelay:I

    :cond_0
    sget-boolean v6, Lcom/android/internal/policy/MultiWindowDecorSupport;->SAFE_DEBUG:Z

    if-eqz v6, :cond_1

    const-string/jumbo v6, "MultiWindowDecorSupport"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "initDecorViewResources() : mRequestTransientBarDelay="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mRequestTransientBarDelay:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const v6, 0x1050150

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mFreeformBorderRadius:I

    return-void

    :cond_2
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public isDeXCompatWindow()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-boolean v0, v0, Lcom/android/internal/policy/DecorView;->mIsDexCompatWindow:Z

    return v0
.end method

.method public isDesktopMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isDesktopMode()Z

    move-result v0

    return v0
.end method

.method public isFreeform()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget v0, v0, Lcom/android/internal/policy/DecorView;->mStackId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullScreenFreeform()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mIsInMultiWindow:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget v1, v1, Lcom/android/internal/policy/DecorView;->mStackId:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isFullWindow()Z
    .locals 4

    const/4 v3, -0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v2, :cond_0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v2, :cond_0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public isImmersiveMode(I)Z
    .locals 2

    const/4 v0, 0x0

    and-int/lit16 v1, p1, 0x1800

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isPreserveOrientationMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mIsPreserveOrientationMode:Z

    return v0
.end method

.method public isTransientShowingDecorCaption()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mTempShowingFullscreenFreeformWindowCaption:Z

    return v0
.end method

.method public keepShowingCaption()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorCaptionWindow:Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorCaptionWindow:Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport$DecorCaptionWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mHideDecorCaptionWindowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mHideCaptionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public notifyMovingTask(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mIsMovingTask:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mIsMovingTask:Z

    invoke-direct {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->updateFreeformFramePaint()V

    iget-boolean v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mIsMovingTask:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "start movingTask"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->requestInvalidateRenderNode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->invalidate()V

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->requestLayout()V

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "stop movingTask"

    goto :goto_0
.end method

.method onConfigurationChanged(Landroid/content/res/Configuration;IIZ)V
    .locals 3

    invoke-static {p2}, Landroid/app/ActivityManager$StackId;->hasWindowDecor(I)Z

    move-result v1

    invoke-static {p3}, Landroid/app/ActivityManager$StackId;->hasWindowDecor(I)Z

    move-result v0

    iget-boolean v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mIsMovingTask:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/MultiWindowDecorSupport;->notifyMovingTask(Z)V

    return-void

    :cond_0
    if-eq v1, v0, :cond_1

    if-eqz v0, :cond_1

    const/4 p4, 0x1

    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->initDecorViewResources()V

    const-string/jumbo v2, "config_changed"

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/MultiWindowDecorSupport;->requestInvalidateRenderNode(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mIsInMultiWindow:Z

    return-void
.end method

.method onWindowFocusChanged(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->updateFreeformFramePaint()V

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget v0, v0, Lcom/android/internal/policy/DecorView;->mStackId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/DecorCaptionView;->updateButtonFocus(Z)V

    :cond_0
    const-string/jumbo v0, "focus_changed"

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->requestInvalidateRenderNode(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public removeDecorCaptionWindow()V
    .locals 0

    return-void
.end method

.method requestInvalidateRenderNode(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v2}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    :cond_0
    return-void
.end method

.method public resetDecorViewStateIfNeeded()V
    .locals 2

    iget-object v1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-object v0, v1, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "reset"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DecorCaptionView;->clearMaximizeRequested(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->updateButtonVisibility()V

    :cond_0
    return-void
.end method

.method setDarkDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/internal/widget/DecorCaptionView;->getMaximizeView()Landroid/view/View;

    move-result-object v0

    const v1, 0x108075f

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1}, Lcom/android/internal/widget/DecorCaptionView;->getCloseView()Landroid/view/View;

    move-result-object v0

    const v1, 0x108075d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1}, Lcom/android/internal/widget/DecorCaptionView;->getMinimizeView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1080761

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GHOST_MODE:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/widget/DecorCaptionView;->getGhostView()Landroid/view/View;

    move-result-object v0

    const v1, 0x10802ab

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->applyMultiWindowDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V

    return-void
.end method

.method public setLightDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/internal/widget/DecorCaptionView;->getMaximizeView()Landroid/view/View;

    move-result-object v0

    const v1, 0x108075f

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1}, Lcom/android/internal/widget/DecorCaptionView;->getCloseView()Landroid/view/View;

    move-result-object v0

    const v1, 0x108075d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1}, Lcom/android/internal/widget/DecorCaptionView;->getMinimizeView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1080761

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GHOST_MODE:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/widget/DecorCaptionView;->getGhostView()Landroid/view/View;

    move-result-object v0

    const v1, 0x10802ac

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->applyMultiWindowDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V

    return-void
.end method

.method public setResizeMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/policy/MultiWindowDecorSupport;->mResizeMode:I

    invoke-direct {p0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->updateFreeformFramePaint()V

    return-void
.end method

.method public updateDexInfo()V
    .locals 0

    return-void
.end method
