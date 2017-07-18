.class public Lcom/android/incallui/widget/GradientAnimationView;
.super Landroid/view/View;
.source "GradientAnimationView.java"

# interfaces
.implements Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallMetricsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0xbb8

.field private static final GRADIENT_ANGLE:F = 30.0f

.field private static final GRADIENT_HEIGHT_SCALE:F = 1.3f

.field private static final ID_PREFIX:Ljava/lang/String; = "GradientAnimationView"

.field private static sIdCounter:I


# instance fields
.field private TAG:Ljava/lang/String;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mEndColor:I

.field private mFadeInAnimator:Landroid/animation/ObjectAnimator;

.field private mFadeOutAnimator:Landroid/animation/ObjectAnimator;

.field private mGradientBitmap:Landroid/graphics/Bitmap;

.field private mGradientDividedNumber:I

.field private mGradientHeight:I

.field private mGradientWidth:I

.field private mIsScaleAnimationRunning:Z

.field private mMatrixA:Landroid/graphics/Matrix;

.field private mMatrixB:Landroid/graphics/Matrix;

.field private mPaint:Landroid/graphics/Paint;

.field private mScaleAnimationCallBack:Lcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;

.field private mScaleAnimator:Landroid/animation/ObjectAnimator;

.field private mStartColor:I

.field private mStreamAnimator:Landroid/animation/ValueAnimator;

.field private mStreamFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/widget/GradientAnimationView;->sIdCounter:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v0, "GradientAnimationView"

    iput-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixA:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixB:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GradientAnimationView"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/incallui/widget/GradientAnimationView;->sIdCounter:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/android/incallui/widget/GradientAnimationView;->sIdCounter:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "GradientAnimationView"

    iput-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixA:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixB:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GradientAnimationView"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/incallui/widget/GradientAnimationView;->sIdCounter:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/android/incallui/widget/GradientAnimationView;->sIdCounter:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "GradientAnimationView"

    iput-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixA:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixB:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GradientAnimationView"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/incallui/widget/GradientAnimationView;->sIdCounter:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/android/incallui/widget/GradientAnimationView;->sIdCounter:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/android/incallui/widget/GradientAnimationView;F)F
    .locals 0

    iput p1, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStreamFactor:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/incallui/widget/GradientAnimationView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/incallui/widget/GradientAnimationView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/widget/GradientAnimationView;->mIsScaleAnimationRunning:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/incallui/widget/GradientAnimationView;)Lcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mScaleAnimationCallBack:Lcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;

    return-object v0
.end method

.method private getApproximateHeight(I)I
    .locals 2

    rem-int/lit16 v1, p1, 0x100

    sub-int v0, p1, v1

    if-ge v0, p1, :cond_0

    add-int/lit16 v0, v0, 0x100

    :cond_0
    return v0
.end method

.method private declared-synchronized updateGradient()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStartColor:I

    iget v2, p0, Lcom/android/incallui/widget/GradientAnimationView;->mEndColor:I

    iget v3, p0, Lcom/android/incallui/widget/GradientAnimationView;->mGradientWidth:I

    iget v4, p0, Lcom/android/incallui/widget/GradientAnimationView;->mGradientHeight:I

    invoke-static {v1, v2, v3, v4}, Lcom/sec/android/gradient_color_extractor/CallGradient;->getGradation_low_machband(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateGradient: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mGradientBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/incallui/widget/GradientAnimationView;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private updateGradientSize(II)Z
    .locals 4

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "hw_home_key"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/incallui/util/ScreenControlUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v1

    add-int/2addr p2, v1

    :cond_0
    iget v1, p0, Lcom/android/incallui/widget/GradientAnimationView;->mDisplayWidth:I

    if-ne p1, v1, :cond_1

    iget v1, p0, Lcom/android/incallui/widget/GradientAnimationView;->mDisplayHeight:I

    if-eq p2, v1, :cond_2

    :cond_1
    iput p1, p0, Lcom/android/incallui/widget/GradientAnimationView;->mDisplayWidth:I

    iput p2, p0, Lcom/android/incallui/widget/GradientAnimationView;->mDisplayHeight:I

    iget v1, p0, Lcom/android/incallui/widget/GradientAnimationView;->mDisplayHeight:I

    invoke-direct {p0, v1}, Lcom/android/incallui/widget/GradientAnimationView;->getApproximateHeight(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/widget/GradientAnimationView;->mGradientHeight:I

    iget v1, p0, Lcom/android/incallui/widget/GradientAnimationView;->mGradientHeight:I

    div-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/android/incallui/widget/GradientAnimationView;->mGradientDividedNumber:I

    iget v1, p0, Lcom/android/incallui/widget/GradientAnimationView;->mDisplayWidth:I

    iget v2, p0, Lcom/android/incallui/widget/GradientAnimationView;->mGradientDividedNumber:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/android/incallui/widget/GradientAnimationView;->mGradientWidth:I

    iget-object v1, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateGradientSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/incallui/widget/GradientAnimationView;->mGradientWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/incallui/widget/GradientAnimationView;->mGradientHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/incallui/widget/GradientAnimationView;->mGradientDividedNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public animateForHide(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v1, "animateForHide: already running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v1, "animateForHide"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/samsung/android/view/animation/SineInOut60;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineInOut60;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public animateForScale(FILcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;)V
    .locals 3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/incallui/widget/GradientAnimationView;->getAnimatorForScale(FILcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;)Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v2, "animateForScale"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/incallui/widget/GradientAnimationView;->stopStreamAnimation()V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_0
    return-void
.end method

.method public animateForShow(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/incallui/widget/GradientAnimationView;->getAnimatorForShow(I)Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v2, "animateForShow"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_0
    return-void
.end method

.method public declared-synchronized animateForStream()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mGradientBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStreamAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStreamAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v1, "animateForStream: already running"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStreamAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStreamAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStreamAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStreamAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStreamAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStreamAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/incallui/widget/GradientAnimationView$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/widget/GradientAnimationView$1;-><init>(Lcom/android/incallui/widget/GradientAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStreamAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public endFadeAnimationImmediately()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/widget/GradientAnimationView;->endShowAnimationImmediately()V

    invoke-virtual {p0}, Lcom/android/incallui/widget/GradientAnimationView;->endHideAnimationImmediately()V

    return-void
.end method

.method public endHideAnimationImmediately()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v1, "endHideAnimationImmediately"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    :cond_0
    return-void
.end method

.method public endShowAnimationImmediately()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v1, "endShowAnimationImmediately"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    :cond_0
    return-void
.end method

.method public getAnimatorForScale(FILcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;)Landroid/animation/Animator;
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/incallui/widget/GradientAnimationView;->mGradientBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v2, "getAnimatorForScale: mGradientBitmap is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/widget/GradientAnimationView;->isScaleAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v2, "getAnimatorForScale: already running"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/incallui/widget/GradientAnimationView$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/widget/GradientAnimationView$2;-><init>(Lcom/android/incallui/widget/GradientAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p3, p0, Lcom/android/incallui/widget/GradientAnimationView;->mScaleAnimationCallBack:Lcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_0
.end method

.method public getAnimatorForShow(I)Landroid/animation/Animator;
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v1, "getAnimatorForShow: already running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/samsung/android/view/animation/SineInOut33;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineInOut33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_0
.end method

.method public getEndColor()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mEndColor:I

    return v0
.end method

.method public getStartColor()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStartColor:I

    return v0
.end method

.method public isGradientShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mGradientBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScaleAnimationRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mIsScaleAnimationRunning:Z

    return v0
.end method

.method public isStreamAnimationRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStreamAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStreamAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mGradientBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mDisplayHeight:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mDisplayWidth:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mGradientBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mGradientBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixA:Landroid/graphics/Matrix;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Matrix;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixB:Landroid/graphics/Matrix;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Matrix;->reset()V

    const/high16 v10, 0x41f00000    # 30.0f

    float-to-double v0, v10

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v9, v0

    float-to-double v0, v9

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v16, v0

    float-to-double v0, v9

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    neg-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v25

    int-to-float v6, v0

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v7, v0

    mul-float v27, v16, v6

    mul-float v28, v18, v7

    add-float v27, v27, v28

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v27, v27, v28

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v21

    const-wide v28, -0x4006de04abbbd2e8L    # -1.5707963267948966

    float-to-double v0, v9

    move-wide/from16 v30, v0

    sub-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v16, v0

    const-wide v28, -0x4006de04abbbd2e8L    # -1.5707963267948966

    float-to-double v0, v9

    move-wide/from16 v30, v0

    sub-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    neg-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v18, v0

    neg-float v0, v6

    move/from16 v27, v0

    mul-float v27, v27, v16

    neg-float v0, v7

    move/from16 v28, v0

    mul-float v28, v28, v18

    add-float v27, v27, v28

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v27, v27, v28

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v22

    const-wide v28, 0x3ff921fb54442d18L    # 1.5707963267948966

    float-to-double v0, v9

    move-wide/from16 v30, v0

    sub-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v20, v27, v17

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v27, v0

    const v28, 0x3fa66666    # 1.3f

    mul-float v23, v27, v28

    int-to-float v0, v11

    move/from16 v27, v0

    div-float v8, v23, v27

    mul-int/lit8 v27, v11, 0x2

    move/from16 v0, v27

    int-to-float v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mStreamFactor:F

    move/from16 v27, v0

    move/from16 v0, v27

    neg-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x3f800000    # 1.0f

    sub-float v28, v15, v28

    mul-float v12, v27, v28

    const/4 v14, 0x0

    :goto_0
    const/16 v27, 0x4

    move/from16 v0, v27

    if-ge v14, v0, :cond_2

    mul-int v27, v11, v14

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v19, v0

    const/16 v26, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mGradientDividedNumber:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_1

    rem-int/lit8 v27, v14, 0x2

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixA:Landroid/graphics/Matrix;

    move-object/from16 v27, v0

    const/high16 v28, 0x43340000    # 180.0f

    int-to-float v0, v13

    move/from16 v29, v0

    const/high16 v30, 0x40000000    # 2.0f

    div-float v29, v29, v30

    int-to-float v0, v11

    move/from16 v30, v0

    const/high16 v31, 0x40000000    # 2.0f

    div-float v30, v30, v31

    invoke-virtual/range {v27 .. v30}, Landroid/graphics/Matrix;->setRotate(FFF)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixB:Landroid/graphics/Matrix;

    move-object/from16 v27, v0

    mul-int v28, v13, v26

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixA:Landroid/graphics/Matrix;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixB:Landroid/graphics/Matrix;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixA:Landroid/graphics/Matrix;

    move-object/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixB:Landroid/graphics/Matrix;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v0, v1, v12}, Landroid/graphics/Matrix;->setTranslate(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixA:Landroid/graphics/Matrix;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixB:Landroid/graphics/Matrix;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixA:Landroid/graphics/Matrix;

    move-object/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixB:Landroid/graphics/Matrix;

    move-object/from16 v27, v0

    const v28, 0x3f8147ae    # 1.01f

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v0, v1, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixA:Landroid/graphics/Matrix;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixB:Landroid/graphics/Matrix;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixA:Landroid/graphics/Matrix;

    move-object/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixB:Landroid/graphics/Matrix;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixA:Landroid/graphics/Matrix;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixB:Landroid/graphics/Matrix;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixA:Landroid/graphics/Matrix;

    move-object/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixB:Landroid/graphics/Matrix;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Landroid/graphics/Matrix;->setTranslate(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixA:Landroid/graphics/Matrix;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixB:Landroid/graphics/Matrix;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixA:Landroid/graphics/Matrix;

    move-object/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixB:Landroid/graphics/Matrix;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Landroid/graphics/Matrix;->setRotate(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixA:Landroid/graphics/Matrix;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixB:Landroid/graphics/Matrix;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixA:Landroid/graphics/Matrix;

    move-object/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixA:Landroid/graphics/Matrix;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mGradientBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixA:Landroid/graphics/Matrix;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Matrix;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixB:Landroid/graphics/Matrix;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Matrix;->reset()V

    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixA:Landroid/graphics/Matrix;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    int-to-float v0, v13

    move/from16 v29, v0

    const/high16 v30, 0x40000000    # 2.0f

    div-float v29, v29, v30

    int-to-float v0, v11

    move/from16 v30, v0

    const/high16 v31, 0x40000000    # 2.0f

    div-float v30, v30, v31

    invoke-virtual/range {v27 .. v30}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto/16 :goto_2

    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    :cond_2
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onVideoCallMetricsChagned(Lcom/android/incallui/service/vt/VideoCallMetrics;)V
    .locals 2

    iget v0, p1, Lcom/android/incallui/service/vt/VideoCallMetrics;->widthPixels:I

    iget v1, p1, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/widget/GradientAnimationView;->updateGradientSize(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/widget/GradientAnimationView;->updateGradient()V

    :cond_0
    return-void
.end method

.method public resetGradientFactor()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStreamFactor:F

    invoke-virtual {p0}, Lcom/android/incallui/widget/GradientAnimationView;->invalidate()V

    return-void
.end method

.method public setUp()V
    .locals 5

    iget-object v3, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v4, "setUp"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0, v3, v4}, Lcom/android/incallui/widget/GradientAnimationView;->updateGradientSize(II)Z

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/incallui/widget/GradientAnimationView;->setPivotY(F)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->addVideoCallMetricsListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallMetricsListener;)V

    return-void
.end method

.method public declared-synchronized stopStreamAnimation()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStreamAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStreamAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v1, "stopStreamAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStreamAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tearDown()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v1, "tearDown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStreamAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStreamAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStreamAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_3
    iput-object v2, p0, Lcom/android/incallui/widget/GradientAnimationView;->mGradientBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStreamAnimator:Landroid/animation/ValueAnimator;

    iput-object v2, p0, Lcom/android/incallui/widget/GradientAnimationView;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    iput-object v2, p0, Lcom/android/incallui/widget/GradientAnimationView;->mScaleAnimationCallBack:Lcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mIsScaleAnimationRunning:Z

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->removeVideoCallMetricsListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallMetricsListener;)V

    return-void
.end method

.method public updateGradientColor()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/widget/GradientAnimationView;->updateGradientColor(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method public updateGradientColor(II)V
    .locals 2

    iget v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStartColor:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mEndColor:I

    if-eq v0, p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v1, "updateGradientColor: set color"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStartColor:I

    iput p2, p0, Lcom/android/incallui/widget/GradientAnimationView;->mEndColor:I

    invoke-direct {p0}, Lcom/android/incallui/widget/GradientAnimationView;->updateGradient()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v1, "updateGradientColor: duplicated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateGradientColor(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/widget/GradientAnimationView;->updateGradientColor(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method public updateGradientColor(Landroid/graphics/drawable/Drawable;Z)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v6, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v7, "updateGradientColor: call is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/Call;->isEmergencyCall()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v7, "updateGradientColor: emergency call"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/incallui/widget/GradientAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0014

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/incallui/widget/GradientAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0013

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    :goto_1
    iget v6, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStartColor:I

    if-ne v6, v5, :cond_1

    iget v6, p0, Lcom/android/incallui/widget/GradientAnimationView;->mEndColor:I

    if-eq v6, v4, :cond_8

    :cond_1
    iput v5, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStartColor:I

    iput v4, p0, Lcom/android/incallui/widget/GradientAnimationView;->mEndColor:I

    invoke-direct {p0}, Lcom/android/incallui/widget/GradientAnimationView;->updateGradient()V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/Call;)I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_3

    iget-object v6, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v7, "updateGradientColor: spam call"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/incallui/widget/GradientAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0016

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/incallui/widget/GradientAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0015

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_5

    iget-object v6, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v7, "updateGradientColor: extract color from drawable"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/incallui/util/GraphicResourceUtils;->getGradientColors(Landroid/graphics/drawable/Drawable;)[I

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getGradientDefaultColors()[I

    move-result-object v1

    :cond_4
    aget v5, v1, v8

    aget v4, v1, v9

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-boolean v6, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isGradientColorExists:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v7, "updateGradientColor: color exists"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->gradientStartColor:I

    iget v4, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->gradientEndColor:I

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_7

    iget-object v6, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v7, "updateGradientColor: default"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getGradientDefaultColors()[I

    move-result-object v1

    aget v5, v1, v8

    aget v4, v1, v9

    goto/16 :goto_1

    :cond_7
    iget-object v6, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v7, "updateGradientColor: skip"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    iget-object v6, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v7, "updateGradientColor: duplicated"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public updateGradientColorExceptCall(Landroid/graphics/drawable/Drawable;Z)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v4, "updateGradientColorExceptCall: extract color from drawable"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/incallui/util/GraphicResourceUtils;->getGradientColors(Landroid/graphics/drawable/Drawable;)[I

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getGradientDefaultColors()[I

    move-result-object v0

    :cond_0
    aget v2, v0, v5

    aget v1, v0, v6

    :goto_0
    iget v3, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStartColor:I

    if-ne v3, v2, :cond_1

    iget v3, p0, Lcom/android/incallui/widget/GradientAnimationView;->mEndColor:I

    if-eq v3, v1, :cond_4

    :cond_1
    iput v2, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStartColor:I

    iput v1, p0, Lcom/android/incallui/widget/GradientAnimationView;->mEndColor:I

    invoke-direct {p0}, Lcom/android/incallui/widget/GradientAnimationView;->updateGradient()V

    :goto_1
    return-void

    :cond_2
    if-eqz p2, :cond_3

    iget-object v3, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v4, "updateGradientColorExceptCall: default"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getGradientDefaultColors()[I

    move-result-object v0

    aget v2, v0, v5

    aget v1, v0, v6

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v4, "updateGradientColorExceptCall: skip"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v4, "updateGradientColor: duplicated"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
