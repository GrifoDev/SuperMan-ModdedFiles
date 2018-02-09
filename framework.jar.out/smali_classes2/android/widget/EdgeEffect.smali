.class public Landroid/widget/EdgeEffect;
.super Ljava/lang/Object;
.source "EdgeEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/EdgeEffect$1;,
        Landroid/widget/EdgeEffect$2;
    }
.end annotation


# static fields
.field private static final ABSORB_START_ALPHA:F = 0.11f

.field private static final ANGLE:D = 0.5235987755982988

.field private static final COS:F

.field private static final EDGE_CONTROL_POINT_HEIGHT_NON_TAB_IN_DIP:F = 29.0f

.field private static final EDGE_CONTROL_POINT_HEIGHT_TAB_IN_DIP:F = 19.0f

.field private static final EDGE_PADDING_NON_TAB_IN_DIP:F = 5.0f

.field private static final EDGE_PADDING_TAB_IN_DIP:F = 3.0f

.field private static final EPSILON:F = 0.001f

.field private static final MAX_ALPHA:F = 0.15f

.field private static final MAX_GLOW_SCALE:F = 2.0f

.field private static final MAX_VELOCITY:I = 0x2710

.field private static final MIN_VELOCITY:I = 0x64

.field private static final MSG_CALL_ONRELEASE:I = 0x1

.field private static final PULL_DECAY_TIME:I = 0x7d0

.field private static final PULL_DISTANCE_ALPHA_GLOW_FACTOR:F = 0.4f

.field private static final PULL_GLOW_BEGIN:F = 0.0f

.field private static final PULL_TIME:I = 0xa7

.field private static final RECEDE_TIME:I = 0x1c2

.field private static final SEM_APPEAR_TIME:I = 0xfa

.field private static final SEM_KEEP_TIME:I = 0x0

.field private static final SEM_STATE_APPEAR:I = 0x5

.field private static final SEM_STATE_KEEP:I = 0x6

.field private static final SIN:F

.field private static final STATE_ABSORB:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PULL:I = 0x1

.field private static final STATE_PULL_DECAY:I = 0x4

.field private static final STATE_RECEDE:I = 0x3

.field private static final TAB_HEIGHT_BUFFER_IN_DIP:F = 5.0f

.field private static final TAG:Ljava/lang/String; = "EdgeEffect"

.field private static final VELOCITY_GLOW_FACTOR:I = 0x6


# instance fields
.field private SEM_MAX_ALPHA:F

.field private SEM_MAX_SCALE:F

.field private final mBounds:Landroid/graphics/Rect;

.field private mDisplacement:F

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDuration:F

.field private mEdgeControlPointHeight:F

.field private mEdgePadding:F

.field private mForceCallOnRelease:Ljava/lang/Runnable;

.field private mGlowAlpha:F

.field private mGlowAlphaFinish:F

.field private mGlowAlphaStart:F

.field private mGlowScaleY:F

.field private mGlowScaleYFinish:F

.field private mGlowScaleYStart:F

.field private mHandler:Landroid/os/Handler;

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mOnReleaseCalled:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mPullDistance:F

.field private mStartTime:J

.field private mState:I

.field private final mTabHeight:F

.field private final mTabHeightBuffer:F

.field private mTargetDisplacement:F

.field private mTempDeltaDistance:F

.field private mTempDisplacement:F


# direct methods
.method static synthetic -get0(Landroid/widget/EdgeEffect;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/widget/EdgeEffect;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/EdgeEffect;)F
    .locals 1

    iget v0, p0, Landroid/widget/EdgeEffect;->mTempDeltaDistance:F

    return v0
.end method

.method static synthetic -get2(Landroid/widget/EdgeEffect;)F
    .locals 1

    iget v0, p0, Landroid/widget/EdgeEffect;->mTempDisplacement:F

    return v0
.end method

.method static synthetic -set0(Landroid/widget/EdgeEffect;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/EdgeEffect;->mOnReleaseCalled:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 4

    const-wide v2, 0x3fe0c152382d7365L    # 0.5235987755982988

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/widget/EdgeEffect;->SIN:F

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/widget/EdgeEffect;->COS:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/widget/EdgeEffect;->SEM_MAX_SCALE:F

    const v2, 0x3e19999a    # 0.15f

    iput v2, p0, Landroid/widget/EdgeEffect;->SEM_MAX_ALPHA:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mState:I

    iput-boolean v4, p0, Landroid/widget/EdgeEffect;->mOnReleaseCalled:Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    iput v3, p0, Landroid/widget/EdgeEffect;->mDisplacement:F

    iput v3, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Landroid/widget/EdgeEffect;->mPath:Landroid/graphics/Path;

    new-instance v2, Landroid/widget/EdgeEffect$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/widget/EdgeEffect$1;-><init>(Landroid/widget/EdgeEffect;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/widget/EdgeEffect;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/widget/EdgeEffect$2;

    invoke-direct {v2, p0}, Landroid/widget/EdgeEffect$2;-><init>(Landroid/widget/EdgeEffect;)V

    iput-object v2, p0, Landroid/widget/EdgeEffect;->mForceCallOnRelease:Ljava/lang/Runnable;

    iget-object v2, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v2, Lcom/android/internal/R$styleable;->EdgeEffect:[I

    invoke-virtual {p1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const v2, -0x99999a

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v2, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    const v3, 0xffffff

    and-int/2addr v3, v1

    const/high16 v4, 0x33000000

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v2, p0, Landroid/widget/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/EdgeEffect;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/high16 v2, 0x42aa0000    # 85.0f

    invoke-direct {p0, v2}, Landroid/widget/EdgeEffect;->dipToPixels(F)F

    move-result v2

    iput v2, p0, Landroid/widget/EdgeEffect;->mTabHeight:F

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-direct {p0, v2}, Landroid/widget/EdgeEffect;->dipToPixels(F)F

    move-result v2

    iput v2, p0, Landroid/widget/EdgeEffect;->mTabHeightBuffer:F

    return-void
.end method

.method private dipToPixels(F)F
    .locals 2

    iget-object v0, p0, Landroid/widget/EdgeEffect;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private isEdgeEffectRunning()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private update()V
    .locals 11

    const/4 v10, 0x6

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    iget v5, p0, Landroid/widget/EdgeEffect;->mDuration:F

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v4, p0, Landroid/widget/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iget v4, p0, Landroid/widget/EdgeEffect;->mDisplacement:F

    iget v5, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iput v4, p0, Landroid/widget/EdgeEffect;->mDisplacement:F

    const v4, 0x3f7fbe77    # 0.999f

    cmpl-float v4, v1, v4

    if-gez v4, :cond_0

    iget v4, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    :cond_0
    iget v4, p0, Landroid/widget/EdgeEffect;->mState:I

    packed-switch v4, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iput v10, p0, Landroid/widget/EdgeEffect;->mState:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    iput v7, p0, Landroid/widget/EdgeEffect;->mDuration:F

    iget v4, p0, Landroid/widget/EdgeEffect;->SEM_MAX_ALPHA:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iget v4, p0, Landroid/widget/EdgeEffect;->SEM_MAX_SCALE:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    :pswitch_1
    const/4 v4, 0x5

    iput v4, p0, Landroid/widget/EdgeEffect;->mState:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    const/high16 v4, 0x437a0000    # 250.0f

    iput v4, p0, Landroid/widget/EdgeEffect;->mDuration:F

    iput v7, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iput v7, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iget v4, p0, Landroid/widget/EdgeEffect;->SEM_MAX_ALPHA:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iget v4, p0, Landroid/widget/EdgeEffect;->SEM_MAX_SCALE:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    iput v7, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput-boolean v8, p0, Landroid/widget/EdgeEffect;->mOnReleaseCalled:Z

    goto :goto_0

    :pswitch_2
    iput v10, p0, Landroid/widget/EdgeEffect;->mState:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    iput v7, p0, Landroid/widget/EdgeEffect;->mDuration:F

    iget v4, p0, Landroid/widget/EdgeEffect;->SEM_MAX_ALPHA:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iget v4, p0, Landroid/widget/EdgeEffect;->SEM_MAX_SCALE:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    :pswitch_3
    iput v9, p0, Landroid/widget/EdgeEffect;->mState:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    const/high16 v4, 0x43e10000    # 450.0f

    iput v4, p0, Landroid/widget/EdgeEffect;->mDuration:F

    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v7, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iput v7, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    :pswitch_4
    iput v9, p0, Landroid/widget/EdgeEffect;->mState:I

    goto :goto_0

    :pswitch_5
    iput v8, p0, Landroid/widget/EdgeEffect;->mState:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 14

    invoke-direct {p0}, Landroid/widget/EdgeEffect;->update()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    iget-object v0, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v8, v0

    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v3, v0, v8, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/EdgeEffect;->mDisplacement:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float v11, v0, v1

    const/high16 v7, 0x3f000000    # 0.5f

    move v9, v8

    iget v0, p0, Landroid/widget/EdgeEffect;->mEdgeControlPointHeight:F

    iget v1, p0, Landroid/widget/EdgeEffect;->mEdgePadding:F

    add-float v2, v0, v1

    iget-object v0, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float v13, v0, v1

    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    iget v3, p0, Landroid/widget/EdgeEffect;->mEdgePadding:F

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPath:Landroid/graphics/Path;

    sub-float v1, v8, v13

    add-float v3, v8, v13

    iget-object v4, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v5, v4

    iget v6, p0, Landroid/widget/EdgeEffect;->mEdgePadding:F

    move v4, v2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    const/4 v12, 0x0

    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v12, 0x1

    :cond_0
    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    if-nez v0, :cond_1

    :goto_0
    return v12

    :cond_1
    const/4 v12, 0x1

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    return-void
.end method

.method public getColor()I
    .locals 1

    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getMaxHeight()I
    .locals 2

    iget-object v0, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public isFinished()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/EdgeEffect;->mState:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onAbsorb(I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/widget/EdgeEffect;->isEdgeEffectRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-boolean v4, p0, Landroid/widget/EdgeEffect;->mOnReleaseCalled:Z

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x64

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    const/high16 v0, 0x437a0000    # 250.0f

    iput v0, p0, Landroid/widget/EdgeEffect;->mDuration:F

    iput v2, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iput v2, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iget v0, p0, Landroid/widget/EdgeEffect;->SEM_MAX_SCALE:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    iget v0, p0, Landroid/widget/EdgeEffect;->SEM_MAX_ALPHA:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    iget-object v0, p0, Landroid/widget/EdgeEffect;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onPull(F)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1, v0}, Landroid/widget/EdgeEffect;->onPull(FF)V

    return-void
.end method

.method public onPull(FF)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v2, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/EdgeEffect;->mOnReleaseCalled:Z

    invoke-direct {p0}, Landroid/widget/EdgeEffect;->isEdgeEffectRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    add-float/2addr v2, p1

    iput v2, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput p2, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    iget v2, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    iget-wide v2, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Landroid/widget/EdgeEffect;->mDuration:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    return-void

    :cond_1
    iget v2, p0, Landroid/widget/EdgeEffect;->mState:I

    if-eq v2, v5, :cond_2

    iget v2, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    :cond_2
    invoke-direct {p0}, Landroid/widget/EdgeEffect;->isEdgeEffectRunning()Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/widget/EdgeEffect;->mOnReleaseCalled:Z

    if-eqz v2, :cond_4

    :cond_3
    iput v5, p0, Landroid/widget/EdgeEffect;->mState:I

    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    const/high16 v2, 0x43270000    # 167.0f

    iput v2, p0, Landroid/widget/EdgeEffect;->mDuration:F

    iget v2, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    add-float/2addr v2, p1

    iput v2, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    return-void

    :cond_4
    return-void
.end method

.method public onPullCallOnRelease(FFI)V
    .locals 4

    iput p1, p0, Landroid/widget/EdgeEffect;->mTempDeltaDistance:F

    iput p2, p0, Landroid/widget/EdgeEffect;->mTempDisplacement:F

    iget-object v0, p0, Landroid/widget/EdgeEffect;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/EdgeEffect;->mForceCallOnRelease:Ljava/lang/Runnable;

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onRelease()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    iput-boolean v1, p0, Landroid/widget/EdgeEffect;->mOnReleaseCalled:Z

    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v2, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iput v2, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    const/high16 v0, 0x43e10000    # 450.0f

    iput v0, p0, Landroid/widget/EdgeEffect;->mDuration:F

    return-void
.end method

.method public setColor(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setSize(II)V
    .locals 10

    const/high16 v8, 0x3f400000    # 0.75f

    int-to-float v6, p1

    mul-float/2addr v6, v8

    sget v7, Landroid/widget/EdgeEffect;->SIN:F

    div-float v4, v6, v7

    sget v6, Landroid/widget/EdgeEffect;->COS:F

    mul-float v5, v6, v4

    sub-float v0, v4, v5

    int-to-float v6, p2

    mul-float/2addr v6, v8

    sget v7, Landroid/widget/EdgeEffect;->SIN:F

    div-float v2, v6, v7

    sget v6, Landroid/widget/EdgeEffect;->COS:F

    mul-float v3, v6, v2

    sub-float v1, v2, v3

    int-to-float v6, p1

    iget v7, p0, Landroid/widget/EdgeEffect;->mTabHeight:F

    iget v8, p0, Landroid/widget/EdgeEffect;->mTabHeightBuffer:F

    add-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_0

    const/high16 v6, 0x40400000    # 3.0f

    invoke-direct {p0, v6}, Landroid/widget/EdgeEffect;->dipToPixels(F)F

    move-result v6

    iput v6, p0, Landroid/widget/EdgeEffect;->mEdgePadding:F

    const/high16 v6, 0x41980000    # 19.0f

    invoke-direct {p0, v6}, Landroid/widget/EdgeEffect;->dipToPixels(F)F

    move-result v6

    iput v6, p0, Landroid/widget/EdgeEffect;->mEdgeControlPointHeight:F

    :goto_0
    iget-object v6, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v9, p2

    invoke-static {v9, v0}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v6, v7, v8, p1, v9}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_0
    const/high16 v6, 0x40a00000    # 5.0f

    invoke-direct {p0, v6}, Landroid/widget/EdgeEffect;->dipToPixels(F)F

    move-result v6

    iput v6, p0, Landroid/widget/EdgeEffect;->mEdgePadding:F

    const/high16 v6, 0x41e80000    # 29.0f

    invoke-direct {p0, v6}, Landroid/widget/EdgeEffect;->dipToPixels(F)F

    move-result v6

    iput v6, p0, Landroid/widget/EdgeEffect;->mEdgeControlPointHeight:F

    goto :goto_0
.end method
