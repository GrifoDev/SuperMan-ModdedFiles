.class public Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;
.super Landroid/view/View;
.source "BixbyUserSayingView.java"


# static fields
.field private static final CIRCLE_RADIUS_INIT_FACTOR:[F

.field private static final CIRCLE_WIGGLE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final COLOR_VALUE:[I

.field private static final LISTENING_TIMER_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final PURPLE_COLOR_VALUE:[I

.field private static final RED_COLOR_VALUE:[I

.field private static final START_LISTENING_NORMALIZED_DB_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final STOP_LISTENING_NORMALIZED_DB_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final TAG:Ljava/lang/String;

.field private static final USER_SAYING_NORMALIZED_DB_DOWN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final USER_SAYING_NORMALIZED_DB_UP_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field private mAnimHelper:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/animations/AnimatorHelper;

.field private mCenterX:F

.field private mCenterY:F

.field private mCircleBaseRadius:F

.field private mCirclePaint:[Landroid/graphics/Paint;

.field private mCircleRadius:[F

.field private mCircleRadiusScale:[F

.field private mCircleXPos:[F

.field private mCircleYPos:[F

.field private mNormalizedDb:F

.field private mPivotGapX:F

.field private mPivotGapY:F

.field private mRunStopSequence:Z

.field private mUserSayingTimeoutHandler:Landroid/os/Handler;

.field private mUserSayingTimeoutRunnable:Ljava/lang/Runnable;

.field private mVAnimCircleWiggleX:[Landroid/animation/ValueAnimator;

.field private mVAnimCircleWiggleY:[Landroid/animation/ValueAnimator;

.field private mVAnimNormalizedDbDown:Landroid/animation/ValueAnimator;

.field private mVAnimNormalizedDbUp:Landroid/animation/ValueAnimator;

.field private mVAnimStartListeningTimer:Landroid/animation/ValueAnimator;

.field private mWiggleHandler:Landroid/os/Handler;

.field private mWiggleMaxX:F

.field private mWiggleMaxY:F

.field private mWiggleMinX:F

.field private mWiggleMinY:F

.field private mWiggleRunnable:Ljava/lang/Runnable;

.field private mWiggleXFactor:F

.field private mWiggleYFactor:F


# direct methods
.method static synthetic -get0()Landroid/animation/TimeInterpolator;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->CIRCLE_WIGGLE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)[Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimCircleWiggleX:[Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)[Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimCircleWiggleY:[Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimNormalizedDbDown:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimStartListeningTimer:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mWiggleHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get15(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mWiggleMinX:F

    return v0
.end method

.method static synthetic -get16(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mWiggleMinY:F

    return v0
.end method

.method static synthetic -get17(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mWiggleXFactor:F

    return v0
.end method

.method static synthetic -get18(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mWiggleYFactor:F

    return v0
.end method

.method static synthetic -get2()Landroid/animation/TimeInterpolator;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->USER_SAYING_NORMALIZED_DB_DOWN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/animations/AnimatorHelper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mAnimHelper:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/animations/AnimatorHelper;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)[F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mCircleRadiusScale:[F

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)[F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mCircleXPos:[F

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)[F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mCircleYPos:[F

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mNormalizedDb:F

    return v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mPivotGapX:F

    return v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mPivotGapY:F

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mNormalizedDb:F

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mRunStopSequence:Z

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimNormalizedDbDown:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 6

    const v5, 0x3e2e147b    # 0.17f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const-class v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->TAG:Ljava/lang/String;

    const v0, 0x66ccf2ff

    const v1, 0x4cb2ecff    # 9.3808632E7f

    const v2, 0x2699e5ff

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->COLOR_VALUE:[I

    const v0, 0x26f1c40f

    const v1, 0x4ce67e22    # 1.2084456E8f

    const v2, 0x66e74c3c

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->RED_COLOR_VALUE:[I

    const v0, 0x66c22dd5

    const v1, 0x4ccb71d7    # 1.06663608E8f

    const v2, 0x26d68adf

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->PURPLE_COLOR_VALUE:[I

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->CIRCLE_RADIUS_INIT_FACTOR:[F

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->LISTENING_TIMER_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3c23d70a    # 0.01f

    invoke-direct {v0, v1, v3, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->START_LISTENING_NORMALIZED_DB_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v5, v5, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->STOP_LISTENING_NORMALIZED_DB_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const v2, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v1, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->USER_SAYING_NORMALIZED_DB_UP_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->USER_SAYING_NORMALIZED_DB_DOWN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->CIRCLE_WIGGLE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f90a3d7    # 1.13f
        0x3fa66666    # 1.3f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mRunStopSequence:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mRunStopSequence:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mAnimHelper:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/animations/AnimatorHelper;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/animations/AnimatorHelper;

    invoke-direct {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/animations/AnimatorHelper;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mAnimHelper:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/animations/AnimatorHelper;

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->initValues()V

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->initPaint()V

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->initAnim()V

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->initHandler()V

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->initRunnable()V

    return-void
.end method

.method private initAnim()V
    .locals 2

    const/4 v1, 0x3

    new-array v0, v1, [Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimCircleWiggleX:[Landroid/animation/ValueAnimator;

    new-array v0, v1, [Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimCircleWiggleY:[Landroid/animation/ValueAnimator;

    return-void
.end method

.method private initHandler()V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mUserSayingTimeoutHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mWiggleHandler:Landroid/os/Handler;

    return-void
.end method

.method private initPaint()V
    .locals 4

    const/4 v3, 0x3

    new-array v2, v3, [Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mCirclePaint:[Landroid/graphics/Paint;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v2, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->COLOR_VALUE:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mCirclePaint:[Landroid/graphics/Paint;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initRunnable()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$1;-><init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mUserSayingTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$2;-><init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mWiggleRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private initValues()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07087d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    div-float/2addr v1, v4

    iput v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mCenterX:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07087d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    div-float/2addr v1, v4

    iput v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mCenterY:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07086f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const v2, 0x3ca3d70a    # 0.02f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mPivotGapX:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07086f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const v2, 0x3c75c28f    # 0.015f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mPivotGapY:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070884

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mCircleBaseRadius:F

    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mCircleXPos:[F

    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mCircleYPos:[F

    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mCircleRadius:[F

    iput v6, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mNormalizedDb:F

    new-array v1, v5, [F

    iput-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mCircleRadiusScale:[F

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mCircleXPos:[F

    iget v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mCenterX:F

    aput v2, v1, v7

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mCircleXPos:[F

    iget v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mCenterX:F

    iget v3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mPivotGapX:F

    sub-float/2addr v2, v3

    aput v2, v1, v8

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mCircleXPos:[F

    iget v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mCenterX:F

    iget v3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mPivotGapX:F

    add-float/2addr v2, v3

    const/4 v3, 0x2

    aput v2, v1, v3

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mCircleYPos:[F

    iget v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mCenterY:F

    iget v3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mPivotGapY:F

    sub-float/2addr v2, v3

    aput v2, v1, v7

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mCircleYPos:[F

    iget v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mCenterY:F

    iget v3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mPivotGapY:F

    add-float/2addr v2, v3

    aput v2, v1, v8

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mCircleYPos:[F

    iget v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mCenterY:F

    iget v3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mPivotGapY:F

    add-float/2addr v2, v3

    const/4 v3, 0x2

    aput v2, v1, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mCircleRadius:[F

    iget v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mCircleBaseRadius:F

    sget-object v3, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->CIRCLE_RADIUS_INIT_FACTOR:[F

    aget v3, v3, v0

    mul-float/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mCircleRadiusScale:[F

    aput v6, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mCenterX:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070886

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mWiggleMinX:F

    iget v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mCenterX:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070886

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mWiggleMaxX:F

    iget v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mCenterY:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070885

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mWiggleMinY:F

    iget v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mCenterY:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070885

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mWiggleMaxY:F

    iget v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mWiggleMaxX:F

    iget v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mWiggleMinX:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mWiggleXFactor:F

    iget v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mWiggleMaxY:F

    iget v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mWiggleMinY:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mWiggleYFactor:F

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    sget-object v1, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onDetachedFromWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mWiggleHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mWiggleHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mWiggleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mWiggleHandler:Landroid/os/Handler;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mUserSayingTimeoutHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mUserSayingTimeoutHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mUserSayingTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mUserSayingTimeoutHandler:Landroid/os/Handler;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimStartListeningTimer:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimStartListeningTimer:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimStartListeningTimer:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimStartListeningTimer:Landroid/animation/ValueAnimator;

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimNormalizedDbUp:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimNormalizedDbUp:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimNormalizedDbUp:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iput-object v3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimNormalizedDbUp:Landroid/animation/ValueAnimator;

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimNormalizedDbDown:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimNormalizedDbDown:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimNormalizedDbDown:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iput-object v3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimNormalizedDbDown:Landroid/animation/ValueAnimator;

    :cond_4
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimCircleWiggleX:[Landroid/animation/ValueAnimator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimCircleWiggleX:[Landroid/animation/ValueAnimator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimCircleWiggleX:[Landroid/animation/ValueAnimator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimCircleWiggleX:[Landroid/animation/ValueAnimator;

    aput-object v3, v1, v0

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimCircleWiggleY:[Landroid/animation/ValueAnimator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimCircleWiggleY:[Landroid/animation/ValueAnimator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimCircleWiggleY:[Landroid/animation/ValueAnimator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimCircleWiggleY:[Landroid/animation/ValueAnimator;

    aput-object v3, v1, v0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mCircleXPos:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mCircleYPos:[F

    aget v2, v2, v0

    iget-object v3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mCircleRadius:[F

    aget v3, v3, v0

    iget-object v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mCircleRadiusScale:[F

    aget v4, v4, v0

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mCirclePaint:[Landroid/graphics/Paint;

    aget-object v4, v4, v0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setBlueColor()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v2, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->COLOR_VALUE:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mCirclePaint:[Landroid/graphics/Paint;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setClearViewMode()V
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->COLOR_VALUE:[I

    const v1, 0x7fffffff

    const/4 v2, 0x0

    aput v1, v0, v2

    sget-object v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->COLOR_VALUE:[I

    const v1, 0x4cffffff    # 1.3421772E8f

    const/4 v2, 0x1

    aput v1, v0, v2

    sget-object v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->COLOR_VALUE:[I

    const v1, 0x33ffffff

    const/4 v2, 0x2

    aput v1, v0, v2

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->initPaint()V

    return-void
.end method

.method public setPurpleColor()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v2, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->PURPLE_COLOR_VALUE:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mCirclePaint:[Landroid/graphics/Paint;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setRedColor()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v2, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->RED_COLOR_VALUE:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mCirclePaint:[Landroid/graphics/Paint;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startDefaultListeningAnimation()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimNormalizedDbDown:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimNormalizedDbDown:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimNormalizedDbDown:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimNormalizedDbDown:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    new-instance v9, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$3;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$3;-><init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)V

    new-instance v10, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$4;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$4;-><init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimNormalizedDbUp:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimNormalizedDbUp:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimNormalizedDbUp:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimNormalizedDbUp:Landroid/animation/ValueAnimator;

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mAnimHelper:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/animations/AnimatorHelper;

    const/4 v3, 0x2

    new-array v3, v3, [F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mNormalizedDb:F

    const/4 v5, 0x0

    aput v4, v3, v5

    const/high16 v4, 0x42700000    # 60.0f

    const/4 v5, 0x1

    aput v4, v3, v5

    sget-object v8, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->START_LISTENING_NORMALIZED_DB_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const-wide/16 v4, 0x320

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/animations/AnimatorHelper;->makeVAnimFloat([FJJLandroid/animation/TimeInterpolator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimNormalizedDbUp:Landroid/animation/ValueAnimator;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimNormalizedDbUp:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    new-instance v19, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$5;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$5;-><init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimStartListeningTimer:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimStartListeningTimer:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimStartListeningTimer:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimStartListeningTimer:Landroid/animation/ValueAnimator;

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mAnimHelper:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/animations/AnimatorHelper;

    const/4 v2, 0x2

    new-array v13, v2, [F

    fill-array-data v13, :array_0

    sget-object v18, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->LISTENING_TIMER_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    const-wide/16 v14, 0x1388

    const-wide/16 v16, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v12 .. v20}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/animations/AnimatorHelper;->makeVAnimFloat([FJJLandroid/animation/TimeInterpolator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimStartListeningTimer:Landroid/animation/ValueAnimator;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimStartListeningTimer:Landroid/animation/ValueAnimator;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimStartListeningTimer:Landroid/animation/ValueAnimator;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimStartListeningTimer:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    sget-object v2, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startDefaultListeningAnimation - clear mRunStopSequence value as false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mRunStopSequence:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mWiggleRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x40a00000    # 5.0f
    .end array-data
.end method

.method public stopUserSaying()V
    .locals 9

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mRunStopSequence:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mRunStopSequence is already running, ignore reqeust"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopUserSaying sequence run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mRunStopSequence:Z

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimNormalizedDbUp:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimNormalizedDbUp:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimNormalizedDbUp:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimNormalizedDbUp:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mUserSayingTimeoutHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mUserSayingTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mUserSayingTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    new-instance v7, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$7;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$7;-><init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)V

    new-instance v8, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$8;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$8;-><init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimNormalizedDbDown:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimNormalizedDbDown:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimNormalizedDbDown:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iput-object v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimNormalizedDbDown:Landroid/animation/ValueAnimator;

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mAnimHelper:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/animations/AnimatorHelper;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mNormalizedDb:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x0

    aput v2, v1, v4

    sget-object v6, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->STOP_LISTENING_NORMALIZED_DB_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    const-wide/16 v2, 0x258

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/animations/AnimatorHelper;->makeVAnimFloat([FJJLandroid/animation/TimeInterpolator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimNormalizedDbDown:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mVAnimNormalizedDbDown:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mWiggleHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mWiggleHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->mWiggleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method
