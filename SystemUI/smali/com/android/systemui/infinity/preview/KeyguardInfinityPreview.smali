.class public Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;
.super Landroid/widget/FrameLayout;
.source "KeyguardInfinityPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$1;,
        Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;
    }
.end annotation


# static fields
.field private static final AOD_PREVIEW_IMAGE_PORT:Ljava/lang/String; = "/Android/data/com.samsung.android.app.aodservice/cache/aod_capture.png"

.field private static final AOD_PREVIEW_PATH:Ljava/lang/String; = "/Android/data/com.samsung.android.app.aodservice/cache/"

.field private static final DUMMY_HOME_PREVIEW_IMAGE_PORT:Ljava/lang/String; = "android.resource://com.sec.android.app.wallpaperchooser/drawable/default_home_dummy"

.field private static final DUMMY_HOME_PREVIEW_PATH:Ljava/lang/String; = "android.resource://com.sec.android.app.wallpaperchooser/drawable/"

.field private static final DUMMY_LOCK_PREVIEW_IMAGE_PORT:Ljava/lang/String; = "android.resource://com.android.systemui/drawable/lockscreen_capture_dummy_port"

.field private static final DUMMY_LOCK_PREVIEW_PATH:Ljava/lang/String; = "android.resource://com.android.systemui/drawable/"

.field private static final HOME_PREVIEW_IMAGE_PORT:Ljava/lang/String; = "/Android/data/com.sec.android.app.launcher/cache/homescreenPreview.png"

.field private static final HOME_PREVIEW_PATH:Ljava/lang/String; = "/Android/data/com.sec.android.app.launcher/cache/"

.field private static final LOCK_PREVIEW_IMAGE_PORT:Ljava/lang/String; = "/Android/data/com.android.systemui/cache/lockscreen_capture_port.png"

.field private static final LOCK_PREVIEW_PATH:Ljava/lang/String; = "/Android/data/com.android.systemui/cache/"

.field private static final MODE_AOD:I = 0x1

.field private static final MODE_HOME:I = 0x3

.field private static final MODE_LOCK:I = 0x2

.field private static final MODE_OFF:I = 0x0

.field private static final MSG_GO_NEXT_MODE:I = 0x63

.field private static final ORIGIN_VIEW_HEIGHT:I = 0xb90

.field private static final ORIGIN_VIEW_WIDTH:I = 0x5a0

.field private static final PREVIEW_ROOT:Ljava/lang/String; = "/storage/emulated/"

.field private static final TAG:Ljava/lang/String; = "KeyguardInfinityPreview"

.field private static final WALLPAPER_PACKAGE:Ljava/lang/String; = "com.samsung.android.wallpaper.res"


# instance fields
.field private mAodCapturedView:Landroid/widget/ImageView;

.field private mAodGradientView:Lcom/android/systemui/infinity/preview/GradientView;

.field private mBackgroundView:Landroid/view/View;

.field private mCallback:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;

.field private mColorInfo:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentMode:I

.field private mCurrentPlusValue:F

.field private mDPlus:I

.field private mGalaxyView:Lcom/android/systemui/infinity/preview/GalaxyViewCircle;

.field private mHandler:Landroid/os/Handler;

.field private mHomeBackgroundView:Landroid/widget/ImageView;

.field private mHomeCapturedView:Landroid/widget/ImageView;

.field private mIsAodAvailable:Z

.field private mIsChangeHolding:Z

.field private mIsShowing:Z

.field private mLockBackgroundView:Landroid/widget/ImageView;

.field private mLockCapturedView:Landroid/widget/ImageView;

.field private mRootView:Landroid/view/View;

.field private mStartPlusValue:I

.field private mTarget:[F


# direct methods
.method static synthetic -get0(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCallback:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)Lcom/android/systemui/infinity/preview/GalaxyViewCircle;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mGalaxyView:Lcom/android/systemui/infinity/preview/GalaxyViewCircle;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mIsShowing:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCurrentPlusValue:F

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mIsChangeHolding:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->goNextMode()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IIZZLcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;)V
    .locals 6

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v3, -0xc8

    iput v3, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mDPlus:I

    const/16 v3, 0x64

    iput v3, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mStartPlusValue:I

    iget v3, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mStartPlusValue:I

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCurrentPlusValue:F

    const/4 v3, 0x3

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mTarget:[F

    new-instance v3, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$1;-><init>(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)V

    iput-object v3, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mColorInfo:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mIsAodAvailable:Z

    iput-object p7, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCallback:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;

    iget-object v3, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0079

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->addView(Landroid/view/View;)V

    const v3, 0x7f0a0439

    invoke-virtual {p0, v3}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mRootView:Landroid/view/View;

    const v3, 0x7f0a0076

    invoke-virtual {p0, v3}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mBackgroundView:Landroid/view/View;

    const v3, 0x7f0a0043

    invoke-virtual {p0, v3}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/infinity/preview/GradientView;

    iput-object v3, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mAodGradientView:Lcom/android/systemui/infinity/preview/GradientView;

    const v3, 0x7f0a030a

    invoke-virtual {p0, v3}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mLockBackgroundView:Landroid/widget/ImageView;

    const v3, 0x7f0a0218

    invoke-virtual {p0, v3}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHomeBackgroundView:Landroid/widget/ImageView;

    const v3, 0x7f0a0042

    invoke-virtual {p0, v3}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mAodCapturedView:Landroid/widget/ImageView;

    const v3, 0x7f0a030b

    invoke-virtual {p0, v3}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mLockCapturedView:Landroid/widget/ImageView;

    const v3, 0x7f0a0219

    invoke-virtual {p0, v3}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHomeCapturedView:Landroid/widget/ImageView;

    const v3, 0x7f0a01cd

    invoke-virtual {p0, v3}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;

    iput-object v3, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mGalaxyView:Lcom/android/systemui/infinity/preview/GalaxyViewCircle;

    invoke-direct {p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->isRTL()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mRootView:Landroid/view/View;

    const/high16 v4, 0x44b40000    # 1440.0f

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotX(F)V

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mRootView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotY(F)V

    iget-object v3, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mRootView:Landroid/view/View;

    int-to-float v4, p3

    const/high16 v5, 0x44b40000    # 1440.0f

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleX(F)V

    iget-object v3, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mRootView:Landroid/view/View;

    int-to-float v4, p4

    const/high16 v5, 0x45390000    # 2960.0f

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleY(F)V

    invoke-direct {p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->isRTL()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mBackgroundView:Landroid/view/View;

    const/high16 v4, 0x44b40000    # 1440.0f

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotX(F)V

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mBackgroundView:Landroid/view/View;

    int-to-float v4, p3

    const/high16 v5, 0x44b40000    # 1440.0f

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleX(F)V

    if-eqz p6, :cond_4

    int-to-float v3, p4

    int-to-float v4, p3

    div-float v2, v3, v4

    const/high16 v3, 0x44b40000    # 1440.0f

    mul-float/2addr v3, v2

    const/high16 v4, 0x45390000    # 2960.0f

    sub-float v0, v4, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v1, v3, v0

    iget-object v3, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mBackgroundView:Landroid/view/View;

    const/high16 v4, -0x40800000    # -1.0f

    mul-float/2addr v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->setY(F)V

    iget-object v3, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setPivotY(F)V

    iget-object v3, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mBackgroundView:Landroid/view/View;

    int-to-float v4, p3

    const/high16 v5, 0x44b40000    # 1440.0f

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleY(F)V

    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->initBackgroundView()V

    invoke-direct {p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->initCapturedView()V

    const-string/jumbo v3, "orchid"

    iget-object v4, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mColorInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "silver"

    iget-object v4, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mColorInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mGalaxyView:Lcom/android/systemui/infinity/preview/GalaxyViewCircle;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->setHorizontalLocation(I)V

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mGalaxyView:Lcom/android/systemui/infinity/preview/GalaxyViewCircle;

    invoke-virtual {v3}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$2;-><init>(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mRootView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotX(F)V

    goto/16 :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mBackgroundView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotX(F)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mBackgroundView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotY(F)V

    iget-object v3, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mBackgroundView:Landroid/view/View;

    int-to-float v4, p4

    const/high16 v5, 0x45390000    # 2960.0f

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleY(F)V

    goto :goto_2
.end method

.method private goAodMode()V
    .locals 12

    const/4 v11, 0x1

    const/4 v4, 0x2

    const-string/jumbo v1, "KeyguardInfinityPreview"

    const-string/jumbo v2, "goAodMode()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x8fc

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->holdChangeMode(J)V

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCallback:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;

    invoke-interface {v1, v11}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;->onModeChanged(I)V

    new-array v1, v4, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v10

    new-instance v1, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$5;-><init>(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)V

    invoke-virtual {v10, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/samsung/android/view/animation/SineInOut90;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineInOut90;-><init>()V

    invoke-virtual {v10, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v10, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->start()V

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mAodGradientView:Lcom/android/systemui/infinity/preview/GradientView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v4, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mAodCapturedView:Landroid/widget/ImageView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v4, [F

    fill-array-data v3, :array_2

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v4, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v9, v1, v2

    aput-object v8, v1, v11

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v2, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mGalaxyView:Lcom/android/systemui/infinity/preview/GalaxyViewCircle;

    iget v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCurrentPlusValue:F

    iget v3, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mDPlus:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x7d0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->plusAnimation(Lcom/android/systemui/infinity/preview/GalaxyViewCircle;FJJ)V

    iput v11, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCurrentMode:I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private goHomeMode()V
    .locals 18

    const-string/jumbo v3, "KeyguardInfinityPreview"

    const-string/jumbo v4, "goHomeMode()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x8fc

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->holdChangeMode(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCallback:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;->onModeChanged(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mLockCapturedView:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mLockCapturedView:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mLockCapturedView:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v17

    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v15, v3, v4

    const/4 v4, 0x1

    aput-object v16, v3, v4

    const/4 v4, 0x2

    aput-object v17, v3, v4

    invoke-virtual {v14, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v14, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/samsung/android/view/animation/SineIn90;

    invoke-direct {v3}, Lcom/samsung/android/view/animation/SineIn90;-><init>()V

    invoke-virtual {v14, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v14}, Landroid/animation/AnimatorSet;->start()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHomeBackgroundView:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_3

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHomeCapturedView:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_4

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHomeCapturedView:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_5

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHomeCapturedView:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x4

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v10, v3, v4

    const/4 v4, 0x1

    aput-object v11, v3, v4

    const/4 v4, 0x2

    aput-object v12, v3, v4

    const/4 v4, 0x3

    aput-object v13, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    new-instance v3, Lcom/samsung/android/view/animation/SineOut90;

    invoke-direct {v3}, Lcom/samsung/android/view/animation/SineOut90;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mGalaxyView:Lcom/android/systemui/infinity/preview/GalaxyViewCircle;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCurrentPlusValue:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mDPlus:I

    int-to-float v5, v5

    add-float/2addr v3, v5

    const/high16 v5, 0x42480000    # 50.0f

    add-float/2addr v5, v3

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x7d0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->plusAnimation(Lcom/android/systemui/infinity/preview/GalaxyViewCircle;FJJ)V

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCurrentMode:I

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private goLockMode()V
    .locals 13

    const/4 v6, 0x0

    const-wide/16 v4, 0x12c

    const/4 v12, 0x2

    const-string/jumbo v1, "KeyguardInfinityPreview"

    const-string/jumbo v2, "goLockMode()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x8fc

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->holdChangeMode(J)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$6;-><init>(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-boolean v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mIsAodAvailable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mAodCapturedView:Landroid/widget/ImageView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v12, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/samsung/android/view/animation/SineIn90;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineIn90;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mLockBackgroundView:Landroid/widget/ImageView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v12, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mLockCapturedView:Landroid/widget/ImageView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v12, [F

    fill-array-data v3, :array_2

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v12, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v10, v1, v2

    const/4 v2, 0x1

    aput-object v11, v1, v2

    invoke-virtual {v9, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v9, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v9, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    new-instance v1, Lcom/samsung/android/view/animation/SineOut90;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineOut90;-><init>()V

    invoke-virtual {v9, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    iget-object v2, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mGalaxyView:Lcom/android/systemui/infinity/preview/GalaxyViewCircle;

    iget v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCurrentPlusValue:F

    iget v3, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mDPlus:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    const/high16 v3, 0x42480000    # 50.0f

    sub-float v3, v1, v3

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x7d0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->plusAnimation(Lcom/android/systemui/infinity/preview/GalaxyViewCircle;FJJ)V

    iput v12, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCurrentMode:I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mAodGradientView:Lcom/android/systemui/infinity/preview/GradientView;

    invoke-virtual {v1, v6}, Lcom/android/systemui/infinity/preview/GradientView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mAodCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    new-array v1, v12, [F

    fill-array-data v1, :array_3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    new-instance v1, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$7;-><init>(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)V

    invoke-virtual {v8, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/samsung/android/view/animation/SineInOut90;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineInOut90;-><init>()V

    invoke-virtual {v8, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v8, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private goNextMode()V
    .locals 3

    const-string/jumbo v0, "KeyguardInfinityPreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "goNextMode(): mCurrentMode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCurrentMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mIsChangeHolding:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCurrentMode:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mIsAodAvailable:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->goAodMode()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->goLockMode()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->goLockMode()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->goHomeMode()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->goOffMode()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private goOffMode()V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "KeyguardInfinityPreview"

    const-string/jumbo v2, "goOffMode()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x258

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->holdChangeMode(J)V

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCallback:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;

    invoke-interface {v1, v4}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;->onModeChanged(I)V

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$4;-><init>(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private holdChangeMode(J)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mIsChangeHolding:Z

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$3;-><init>(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private initBackgroundView()V
    .locals 11

    const-string/jumbo v8, "KeyguardInfinityPreview"

    const-string/jumbo v9, "initBackgroundView()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mAodGradientView:Lcom/android/systemui/infinity/preview/GradientView;

    iget-object v9, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mColorInfo:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/systemui/infinity/preview/GradientView;->setGradientColor(Ljava/lang/String;)V

    const-string/jumbo v5, "keyguard_default_wallpaper"

    const-string/jumbo v3, "default_wallpaper"

    const-string/jumbo v8, "black"

    iget-object v9, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mColorInfo:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mColorInfo:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mColorInfo:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    iget-object v8, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string/jumbo v9, "drawable"

    iget-object v10, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v5, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_1

    iget-object v8, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mLockBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :try_start_0
    iget-object v8, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "com.samsung.android.wallpaper.res"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string/jumbo v9, "drawable"

    const-string/jumbo v10, "com.samsung.android.wallpaper.res"

    invoke-virtual {v8, v3, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v1, v8, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v8, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHomeBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private initCapturedView()V
    .locals 17

    const-string/jumbo v14, "KeyguardInfinityPreview"

    const-string/jumbo v15, "initCapturedView()"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "/storage/emulated/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "/Android/data/com.samsung.android.app.aodservice/cache/aod_capture.png"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v14, 0x0

    invoke-direct {v2, v14, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mAodCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v14, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v11, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "/storage/emulated/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "/Android/data/com.android.systemui/cache/lockscreen_capture_port.png"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-static {v13}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    :goto_1
    if-eqz v11, :cond_1

    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v14, 0x0

    invoke-direct {v12, v14, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mLockCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v14, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const/4 v7, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "/storage/emulated/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "/Android/data/com.sec.android.app.launcher/cache/homescreenPreview.png"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    :goto_2
    if-eqz v7, :cond_2

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v14, 0x0

    invoke-direct {v8, v14, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHomeCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v14, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v14, "KeyguardInfinityPreview"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "initCapturedView(): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " isn\'t exist"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v14, "KeyguardInfinityPreview"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "initCapturedView(): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " isn\'t exist"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v14, "android.resource://com.android.systemui/drawable/lockscreen_capture_dummy_port"

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    :catch_1
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v14, "KeyguardInfinityPreview"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "initCapturedView(): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " isn\'t exist"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    const-string/jumbo v14, "android.resource://com.sec.android.app.wallpaperchooser/drawable/default_home_dummy"

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_2

    :catch_2
    move-exception v5

    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_2

    :catch_3
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2
.end method

.method private isRTL()Z
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v1, 0xc0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private plusAnimation(Lcom/android/systemui/infinity/preview/GalaxyViewCircle;FJJ)V
    .locals 5

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCurrentPlusValue:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$8;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$8;-><init>(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;Lcom/android/systemui/infinity/preview/GalaxyViewCircle;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v0, p5, p6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/view/animation/SineOut90;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineOut90;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 3

    const/16 v2, 0x63

    const-string/jumbo v0, "KeyguardInfinityPreview"

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mIsShowing:Z

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    const/16 v2, 0x63

    const-string/jumbo v0, "KeyguardInfinityPreview"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mIsShowing:Z

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public reset()V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const-string/jumbo v0, "KeyguardInfinityPreview"

    const-string/jumbo v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCurrentMode:I

    iget v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mStartPlusValue:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mCurrentPlusValue:F

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mGalaxyView:Lcom/android/systemui/infinity/preview/GalaxyViewCircle;

    invoke-virtual {v0, v2}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->changePlusValue(F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mGalaxyView:Lcom/android/systemui/infinity/preview/GalaxyViewCircle;

    invoke-virtual {v0, v2}, Lcom/android/systemui/infinity/preview/GalaxyViewCircle;->changeAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mAodGradientView:Lcom/android/systemui/infinity/preview/GradientView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/infinity/preview/GradientView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mLockBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHomeBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mAodCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mAodCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mAodCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mLockCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mLockCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mLockCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHomeCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHomeCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mHomeCapturedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->setAlpha(F)V

    return-void
.end method

.method public setHomeSensorEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setIsAodAvailable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->mIsAodAvailable:Z

    return-void
.end method
