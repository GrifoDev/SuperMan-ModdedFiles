.class public Lcom/android/systemui/pip/phone/PipMotionHelper;
.super Ljava/lang/Object;
.source "PipMotionHelper.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final RECT_EVALUATOR:Landroid/animation/RectEvaluator;


# instance fields
.field private mActivityManager:Landroid/app/IActivityManager;

.field private mAnimationHandler:Landroid/animation/AnimationHandler;

.field private final mBounds:Landroid/graphics/Rect;

.field private mBoundsAnimator:Landroid/animation/ValueAnimator;

.field private mContext:Landroid/content/Context;

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mHandler:Landroid/os/Handler;

.field private mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

.field private mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

.field private final mStableInsets:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/pip/phone/PipMotionHelper;)Landroid/animation/AnimationHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mAnimationHandler:Landroid/animation/AnimationHandler;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/animation/RectEvaluator;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v1}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    sput-object v0, Lcom/android/systemui/pip/phone/PipMotionHelper;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Lcom/android/systemui/pip/phone/PipMenuActivityController;Lcom/android/internal/policy/PipSnapAlgorithm;Lcom/android/systemui/statusbar/FlingAnimationUtils;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mStableInsets:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/systemui/recents/misc/ForegroundThread;->get()Lcom/android/systemui/recents/misc/ForegroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/ForegroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mActivityManager:Landroid/app/IActivityManager;

    iput-object p3, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    iput-object p4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    iput-object p5, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    new-instance v0, Landroid/animation/AnimationHandler;

    invoke-direct {v0}, Landroid/animation/AnimationHandler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mAnimationHandler:Landroid/animation/AnimationHandler;

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mAnimationHandler:Landroid/animation/AnimationHandler;

    new-instance v1, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

    invoke-direct {v1}, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimationHandler;->setProvider(Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;)V

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->onConfigurationChanged()V

    return-void
.end method

.method private createAnimationToBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/view/animation/Interpolator;)Landroid/animation/ValueAnimator;
    .locals 4

    new-instance v0, Lcom/android/systemui/pip/phone/PipMotionHelper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipMotionHelper$2;-><init>(Lcom/android/systemui/pip/phone/PipMotionHelper;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    sget-object v1, Lcom/android/systemui/pip/phone/PipMotionHelper;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/systemui/pip/phone/-$Lambda$gnd6A7bpdbRyoF4aZCm-9Zo-dBQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/phone/-$Lambda$gnd6A7bpdbRyoF4aZCm-9Zo-dBQ;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method private distanceBetweenRectOffsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 3

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/graphics/PointF;->length(FF)F

    move-result v0

    return v0
.end method

.method private getDismissEndPoint(Landroid/graphics/Rect;FFZ)Landroid/graphics/Point;
    .locals 9

    const/4 v8, 0x0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v5, v1, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3dcccccd    # 0.1f

    mul-float/2addr v6, v7

    add-float v0, v5, v6

    if-eqz p4, :cond_0

    cmpl-float v5, p2, v8

    if-eqz v5, :cond_0

    cmpl-float v5, p3, v8

    if-eqz v5, :cond_0

    div-float v2, p3, p2

    iget v5, p1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget v6, p1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    sub-float v4, v5, v6

    sub-float v5, v0, v4

    div-float v3, v5, v2

    new-instance v5, Landroid/graphics/Point;

    float-to-int v6, v3

    float-to-int v7, v0

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    return-object v5

    :cond_0
    new-instance v5, Landroid/graphics/Point;

    iget v6, p1, Landroid/graphics/Rect;->left:I

    float-to-int v7, v0

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    return-object v5
.end method

.method private resizeAndAnimatePipUnchecked(Landroid/graphics/Rect;I)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private resizePipUnchecked(Landroid/graphics/Rect;)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method animateDismiss(Landroid/graphics/Rect;FFLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/graphics/Rect;
    .locals 8

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->cancelAnimations()V

    invoke-static {p2, p3}, Landroid/graphics/PointF;->length(FF)F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getDismissEndPoint(Landroid/graphics/Rect;FFZ)Landroid/graphics/Point;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    sget-object v5, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    const/16 v6, 0xaf

    invoke-direct {p0, v4, v2, v6, v5}, Lcom/android/systemui/pip/phone/PipMotionHelper;->createAnimationToBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/view/animation/Interpolator;)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/systemui/pip/phone/PipMotionHelper$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/pip/phone/PipMotionHelper$1;-><init>(Lcom/android/systemui/pip/phone/PipMotionHelper;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v7, v2}, Lcom/android/systemui/pip/phone/PipMotionHelper;->distanceBetweenRectOffsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    :cond_0
    if-eqz p4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    return-object v2

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method animateToClosestMinimizedState(Landroid/graphics/Rect;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/graphics/Rect;
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->cancelAnimations()V

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getClosestMinimizedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    sget-object v2, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/16 v3, 0xc8

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/android/systemui/pip/phone/PipMotionHelper;->createAnimationToBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/view/animation/Interpolator;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-object v0
.end method

.method animateToClosestSnapTarget(Landroid/graphics/Rect;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)Landroid/graphics/Rect;
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->cancelAnimations()V

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/policy/PipSnapAlgorithm;->findClosestSnapBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/16 v3, 0xe1

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/android/systemui/pip/phone/PipMotionHelper;->createAnimationToBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/view/animation/Interpolator;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-object v0
.end method

.method animateToExpandedState(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2, p2}, Lcom/android/internal/policy/PipSnapAlgorithm;->getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    invoke-virtual {v1, p1, p3, v0}, Lcom/android/internal/policy/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    const/16 v1, 0xfa

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->resizeAndAnimatePipUnchecked(Landroid/graphics/Rect;I)V

    return v0
.end method

.method animateToIMEOffset(Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->cancelAnimations()V

    const/16 v0, 0x12c

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->resizeAndAnimatePipUnchecked(Landroid/graphics/Rect;I)V

    return-void
.end method

.method animateToUnexpandedState(Landroid/graphics/Rect;FLandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1, p4}, Lcom/android/internal/policy/PipSnapAlgorithm;->getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result p2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    invoke-virtual {v0, p1, p3, p2}, Lcom/android/internal/policy/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    if-eqz p5, :cond_1

    invoke-virtual {p0, p1, p3}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getClosestMinimizedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    :cond_1
    if-eqz p6, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->movePip(Landroid/graphics/Rect;)V

    :goto_0
    return-void

    :cond_2
    const/16 v0, 0xfa

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->resizeAndAnimatePipUnchecked(Landroid/graphics/Rect;I)V

    goto :goto_0
.end method

.method cancelAnimations()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method dismissPip()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->dismissPip(Z)V

    return-void
.end method

.method dismissPip(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->cancelAnimations()V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->hideMenuWithoutResize()V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/pip/phone/-$Lambda$gnd6A7bpdbRyoF4aZCm-9Zo-dBQ$1;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/pip/phone/-$Lambda$gnd6A7bpdbRyoF4aZCm-9Zo-dBQ$1;-><init>(ZLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "PipMotionHelper"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mStableInsets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method expandPip()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->expandPip(Z)V

    return-void
.end method

.method expandPip(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->cancelAnimations()V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->hideMenuWithoutResize()V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/pip/phone/-$Lambda$gnd6A7bpdbRyoF4aZCm-9Zo-dBQ$2;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/pip/phone/-$Lambda$gnd6A7bpdbRyoF4aZCm-9Zo-dBQ$2;-><init>(ZLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method flingToSnapTarget(FFFLandroid/graphics/Rect;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)Landroid/graphics/Rect;
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->cancelAnimations()V

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p4, v2, p2, p3}, Lcom/android/internal/policy/PipSnapAlgorithm;->findClosestSnapBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;FF)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/android/systemui/pip/phone/PipMotionHelper;->createAnimationToBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/view/animation/Interpolator;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v4, v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->distanceBetweenRectOffsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v4

    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    if-eqz p5, :cond_0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    if-eqz p6, :cond_1

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-object v0
.end method

.method getBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method getClosestMinimizedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    invoke-virtual {v2, p2, p1}, Lcom/android/internal/policy/PipSnapAlgorithm;->findClosestSnapBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, p2, v0, v3}, Lcom/android/internal/policy/PipSnapAlgorithm;->applyMinimizedOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Rect;)V

    return-object v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 11

    const/4 v1, 0x0

    const/4 v10, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    iget-object v2, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Landroid/app/IActivityManager;->resizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v10

    :catch_0
    move-exception v8

    const-string/jumbo v0, "PipMotionHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not resize pinned stack to bounds: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_1
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    iget-object v2, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    iget v6, v7, Lcom/android/internal/os/SomeArgs;->argi1:I

    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v9

    if-nez v9, :cond_0

    return v10

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return v10

    :catch_1
    move-exception v8

    const-string/jumbo v0, "PipMotionHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not animate resize pinned stack to bounds: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isGestureToDismissArea(Landroid/graphics/Rect;FFZ)Z
    .locals 8

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getDismissEndPoint(Landroid/graphics/Rect;FFZ)Landroid/graphics/Point;

    move-result-object v1

    iget v4, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Point;->y:I

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v4, v3, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, v4, 0x3

    new-instance v0, Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    mul-int/lit8 v5, v2, 0x2

    iget v6, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v0, v2, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    return v4
.end method

.method synthetic lambda$-com_android_systemui_pip_phone_PipMotionHelper_16717(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->resizePipUnchecked(Landroid/graphics/Rect;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_pip_phone_PipMotionHelper_6028(Z)V
    .locals 8

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->moveTasksToFullscreenStack(IZ)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/16 v6, 0x12c

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->resizeStack(ILandroid/graphics/Rect;ZZZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    const-string/jumbo v0, "PipMotionHelper"

    const-string/jumbo v1, "Error expanding PiP activity"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_pip_phone_PipMotionHelper_7075(Z)V
    .locals 6

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getPipAppTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const v5, 0x7f120845

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->removeStack(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "PipMotionHelper"

    const-string/jumbo v3, "Failed to remove PiP"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method movePip(Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->cancelAnimations()V

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->resizePipUnchecked(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method onConfigurationChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/PipSnapAlgorithm;->onConfigurationChanged()V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getStableInsets(Landroid/graphics/Rect;)V

    return-void
.end method

.method shouldDismissPip()Z
    .locals 5

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    if-le v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    const v3, 0x3e99999a    # 0.3f

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    return v2
.end method

.method shouldMinimizePip()Z
    .locals 7

    const/4 v2, 0x1

    const v6, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-gez v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float v1, v4, v5

    cmpl-float v4, v1, v6

    if-ltz v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Point;->x:I

    if-le v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float v1, v4, v5

    cmpl-float v4, v1, v6

    if-ltz v4, :cond_2

    :goto_1
    return v2

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    return v3
.end method

.method synchronizePinnedStackBounds()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->cancelAnimations()V

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    iget-object v3, v1, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "PipMotionHelper"

    const-string/jumbo v3, "Failed to get pinned stack bounds"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
