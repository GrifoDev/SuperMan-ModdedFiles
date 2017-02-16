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

    .prologue
    .line 56
    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/widget/GradientAnimationView;->sIdCounter:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 62
    const-string v0, "GradientAnimationView"

    iput-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    .line 82
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixA:Landroid/graphics/Matrix;

    .line 83
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixB:Landroid/graphics/Matrix;

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mPaint:Landroid/graphics/Paint;

    .line 96
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

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    const-string v0, "GradientAnimationView"

    iput-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    .line 82
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixA:Landroid/graphics/Matrix;

    .line 83
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixB:Landroid/graphics/Matrix;

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mPaint:Landroid/graphics/Paint;

    .line 101
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

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    const-string v0, "GradientAnimationView"

    iput-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    .line 82
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixA:Landroid/graphics/Matrix;

    .line 83
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixB:Landroid/graphics/Matrix;

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mPaint:Landroid/graphics/Paint;

    .line 106
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

    .line 107
    return-void
.end method

.method static synthetic access$002(Lcom/android/incallui/widget/GradientAnimationView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/widget/GradientAnimationView;
    .param p1, "x1"    # F

    .prologue
    .line 52
    iput p1, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStreamFactor:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/incallui/widget/GradientAnimationView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/widget/GradientAnimationView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/incallui/widget/GradientAnimationView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/widget/GradientAnimationView;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/incallui/widget/GradientAnimationView;->mIsScaleAnimationRunning:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/incallui/widget/GradientAnimationView;)Lcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/widget/GradientAnimationView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mScaleAnimationCallBack:Lcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;

    return-object v0
.end method

.method private getApproximateHeight(I)I
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 168
    rem-int/lit16 v1, p1, 0x100

    sub-int v0, p1, v1

    .line 169
    .local v0, "result":I
    if-ge v0, p1, :cond_0

    .line 170
    add-int/lit16 v0, v0, 0x100

    .line 172
    :cond_0
    return v0
.end method

.method private declared-synchronized updateGradient()V
    .locals 5

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStartColor:I

    iget v2, p0, Lcom/android/incallui/widget/GradientAnimationView;->mEndColor:I

    iget v3, p0, Lcom/android/incallui/widget/GradientAnimationView;->mGradientWidth:I

    iget v4, p0, Lcom/android/incallui/widget/GradientAnimationView;->mGradientHeight:I

    invoke-static {v1, v2, v3, v4}, Lcom/sec/android/gradient_color_extractor/CallGradient;->getGradation_low_machband(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 181
    .local v0, "resultBitmap":Landroid/graphics/Bitmap;
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

    .line 182
    iput-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mGradientBitmap:Landroid/graphics/Bitmap;

    .line 183
    invoke-virtual {p0}, Lcom/android/incallui/widget/GradientAnimationView;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    .line 176
    .end local v0    # "resultBitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private updateGradientSize(II)Z
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 148
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 149
    .local v0, "context":Landroid/content/Context;
    const-string v1, "hw_home_key"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    invoke-static {v0}, Lcom/android/incallui/util/ScreenControlUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v1

    add-int/2addr p2, v1

    .line 152
    :cond_0
    iget v1, p0, Lcom/android/incallui/widget/GradientAnimationView;->mDisplayWidth:I

    if-ne p1, v1, :cond_1

    iget v1, p0, Lcom/android/incallui/widget/GradientAnimationView;->mDisplayHeight:I

    if-eq p2, v1, :cond_2

    .line 153
    :cond_1
    iput p1, p0, Lcom/android/incallui/widget/GradientAnimationView;->mDisplayWidth:I

    .line 154
    iput p2, p0, Lcom/android/incallui/widget/GradientAnimationView;->mDisplayHeight:I

    .line 156
    iget v1, p0, Lcom/android/incallui/widget/GradientAnimationView;->mDisplayHeight:I

    invoke-direct {p0, v1}, Lcom/android/incallui/widget/GradientAnimationView;->getApproximateHeight(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/widget/GradientAnimationView;->mGradientHeight:I

    .line 157
    iget v1, p0, Lcom/android/incallui/widget/GradientAnimationView;->mGradientHeight:I

    div-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/android/incallui/widget/GradientAnimationView;->mGradientDividedNumber:I

    .line 158
    iget v1, p0, Lcom/android/incallui/widget/GradientAnimationView;->mDisplayWidth:I

    iget v2, p0, Lcom/android/incallui/widget/GradientAnimationView;->mGradientDividedNumber:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/android/incallui/widget/GradientAnimationView;->mGradientWidth:I

    .line 160
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

    .line 162
    const/4 v1, 0x1

    .line 164
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public animateForHide(I)V
    .locals 4
    .param p1, "duration"    # I

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v1, "animateForHide: already running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :goto_0
    return-void

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v1, "animateForHide"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    .line 397
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 398
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/samsung/android/view/animation/SineInOut60;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineInOut60;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 399
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public animateForScale(FILcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;)V
    .locals 3
    .param p1, "scaleY"    # F
    .param p2, "duration"    # I
    .param p3, "callback"    # Lcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;

    .prologue
    .line 382
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/incallui/widget/GradientAnimationView;->getAnimatorForScale(FILcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;)Landroid/animation/Animator;

    move-result-object v0

    .line 383
    .local v0, "animator":Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 384
    iget-object v1, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v2, "animateForScale"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-virtual {p0}, Lcom/android/incallui/widget/GradientAnimationView;->stopStreamAnimation()V

    .line 386
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 388
    :cond_0
    return-void
.end method

.method public animateForShow(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 421
    invoke-virtual {p0, p1}, Lcom/android/incallui/widget/GradientAnimationView;->getAnimatorForShow(I)Landroid/animation/Animator;

    move-result-object v0

    .line 422
    .local v0, "animator":Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 423
    iget-object v1, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v2, "animateForShow"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 426
    :cond_0
    return-void
.end method

.method public declared-synchronized animateForStream()V
    .locals 4

    .prologue
    .line 319
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mGradientBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStreamAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStreamAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v1, "animateForStream: already running"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 324
    :cond_1
    :try_start_1
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStreamAnimator:Landroid/animation/ValueAnimator;

    .line 325
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStreamAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 326
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStreamAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 328
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStreamAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 329
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStreamAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 330
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStreamAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/incallui/widget/GradientAnimationView$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/widget/GradientAnimationView$1;-><init>(Lcom/android/incallui/widget/GradientAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 337
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStreamAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 319
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 328
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public endFadeAnimationImmediately()V
    .locals 0

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/android/incallui/widget/GradientAnimationView;->endShowAnimationImmediately()V

    .line 437
    invoke-virtual {p0}, Lcom/android/incallui/widget/GradientAnimationView;->endHideAnimationImmediately()V

    .line 438
    return-void
.end method

.method public endHideAnimationImmediately()V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v1, "endHideAnimationImmediately"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 407
    :cond_0
    return-void
.end method

.method public endShowAnimationImmediately()V
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v1, "endShowAnimationImmediately"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 433
    :cond_0
    return-void
.end method

.method public getAnimatorForScale(FILcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;)Landroid/animation/Animator;
    .locals 5
    .param p1, "scaleY"    # F
    .param p2, "duration"    # I
    .param p3, "callback"    # Lcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 346
    iget-object v1, p0, Lcom/android/incallui/widget/GradientAnimationView;->mGradientBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 347
    iget-object v1, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v2, "getAnimatorForScale: mGradientBitmap is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :goto_0
    return-object v0

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/widget/GradientAnimationView;->isScaleAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 352
    iget-object v1, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v2, "getAnimatorForScale: already running"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 357
    :cond_1
    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 358
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 359
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 360
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/incallui/widget/GradientAnimationView$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/widget/GradientAnimationView$2;-><init>(Lcom/android/incallui/widget/GradientAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 377
    iput-object p3, p0, Lcom/android/incallui/widget/GradientAnimationView;->mScaleAnimationCallBack:Lcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;

    .line 378
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_0
.end method

.method public getAnimatorForShow(I)Landroid/animation/Animator;
    .locals 4
    .param p1, "duration"    # I

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v1, "getAnimatorForShow: already running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/4 v0, 0x0

    .line 417
    :goto_0
    return-object v0

    .line 414
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

    .line 415
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 416
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/samsung/android/view/animation/SineInOut33;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineInOut33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 417
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_0
.end method

.method public getEndColor()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mEndColor:I

    return v0
.end method

.method public getStartColor()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStartColor:I

    return v0
.end method

.method public isGradientShowing()Z
    .locals 1

    .prologue
    .line 195
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

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mIsScaleAnimationRunning:Z

    return v0
.end method

.method public isStreamAnimationRunning()Z
    .locals 1

    .prologue
    .line 308
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
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mGradientBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2

    .line 450
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mDisplayHeight:I

    move/from16 v24, v0

    .line 451
    .local v24, "screenHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mDisplayWidth:I

    move/from16 v25, v0

    .line 453
    .local v25, "screenWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mGradientBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 454
    .local v11, "gradientHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mGradientBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 456
    .local v13, "gradientWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixA:Landroid/graphics/Matrix;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Matrix;->reset()V

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixB:Landroid/graphics/Matrix;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Matrix;->reset()V

    .line 460
    const/high16 v10, 0x41f00000    # 30.0f

    .line 461
    .local v10, "gradientDegree":F
    float-to-double v0, v10

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v9, v0

    .line 462
    .local v9, "gradientAngleRadian":F
    float-to-double v0, v9

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v16, v0

    .line 463
    .local v16, "nx":F
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

    .line 464
    .local v18, "ny":F
    move/from16 v0, v25

    int-to-float v6, v0

    .line 465
    .local v6, "abx":F
    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v7, v0

    .line 466
    .local v7, "aby":F
    mul-float v27, v16, v6

    mul-float v28, v18, v7

    add-float v27, v27, v28

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v27, v27, v28

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v21

    .line 467
    .local v21, "scaleForRotationX":F
    const-wide v28, -0x4006de04abbbd2e8L    # -1.5707963267948966

    float-to-double v0, v9

    move-wide/from16 v30, v0

    sub-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v16, v0

    .line 468
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

    .line 469
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

    .line 471
    .local v22, "scaleForRotationY":F
    const-wide v28, 0x3ff921fb54442d18L    # 1.5707963267948966

    float-to-double v0, v9

    move-wide/from16 v30, v0

    sub-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v17, v0

    .line 472
    .local v17, "nx2":F
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v20, v27, v17

    .line 474
    .local v20, "positionOffset":F
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v27, v0

    const v28, 0x3fa66666    # 1.3f

    mul-float v23, v27, v28

    .line 476
    .local v23, "scaledGradientHeight":F
    int-to-float v0, v11

    move/from16 v27, v0

    div-float v8, v23, v27

    .line 477
    .local v8, "fitScaler":F
    mul-int/lit8 v27, v11, 0x2

    move/from16 v0, v27

    int-to-float v15, v0

    .line 478
    .local v15, "maxMovingDistance":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mStreamFactor:F

    move/from16 v27, v0

    move/from16 v0, v27

    neg-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x3f800000    # 1.0f

    sub-float v28, v15, v28

    mul-float v12, v27, v28

    .line 480
    .local v12, "gradientPosition":F
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    const/16 v27, 0x4

    move/from16 v0, v27

    if-ge v14, v0, :cond_2

    .line 481
    mul-int v27, v11, v14

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v19, v0

    .line 483
    .local v19, "offsetY":F
    const/16 v26, 0x0

    .local v26, "w":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mGradientDividedNumber:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_1

    .line 484
    rem-int/lit8 v27, v14, 0x2

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_0

    .line 485
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

    .line 489
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

    .line 490
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

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixB:Landroid/graphics/Matrix;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v0, v1, v12}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 493
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

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixB:Landroid/graphics/Matrix;

    move-object/from16 v27, v0

    const v28, 0x3f8147ae    # 1.01f

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v0, v1, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 496
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

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixB:Landroid/graphics/Matrix;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 498
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

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixB:Landroid/graphics/Matrix;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 501
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

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixB:Landroid/graphics/Matrix;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 504
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

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixA:Landroid/graphics/Matrix;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 507
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

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixA:Landroid/graphics/Matrix;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Matrix;->reset()V

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/GradientAnimationView;->mMatrixB:Landroid/graphics/Matrix;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Matrix;->reset()V

    .line 483
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_1

    .line 487
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

    .line 480
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 514
    .end local v6    # "abx":F
    .end local v7    # "aby":F
    .end local v8    # "fitScaler":F
    .end local v9    # "gradientAngleRadian":F
    .end local v10    # "gradientDegree":F
    .end local v11    # "gradientHeight":I
    .end local v12    # "gradientPosition":F
    .end local v13    # "gradientWidth":I
    .end local v14    # "i":I
    .end local v15    # "maxMovingDistance":F
    .end local v16    # "nx":F
    .end local v17    # "nx2":F
    .end local v18    # "ny":F
    .end local v19    # "offsetY":F
    .end local v20    # "positionOffset":F
    .end local v21    # "scaleForRotationX":F
    .end local v22    # "scaleForRotationY":F
    .end local v23    # "scaledGradientHeight":F
    .end local v24    # "screenHeight":I
    .end local v25    # "screenWidth":I
    .end local v26    # "w":I
    :cond_2
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 515
    return-void
.end method

.method public onVideoCallMetricsChagned(Lcom/android/incallui/service/vt/VideoCallMetrics;)V
    .locals 2
    .param p1, "metrics"    # Lcom/android/incallui/service/vt/VideoCallMetrics;

    .prologue
    .line 442
    iget v0, p1, Lcom/android/incallui/service/vt/VideoCallMetrics;->widthPixels:I

    iget v1, p1, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/widget/GradientAnimationView;->updateGradientSize(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    invoke-direct {p0}, Lcom/android/incallui/widget/GradientAnimationView;->updateGradient()V

    .line 445
    :cond_0
    return-void
.end method

.method public resetGradientFactor()V
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStreamFactor:F

    .line 200
    invoke-virtual {p0}, Lcom/android/incallui/widget/GradientAnimationView;->invalidate()V

    .line 201
    return-void
.end method

.method public setUp()V
    .locals 5

    .prologue
    .line 110
    iget-object v3, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v4, "setUp"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 113
    .local v0, "context":Landroid/content/Context;
    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 114
    .local v2, "windowManager":Landroid/view/WindowManager;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 115
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 116
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0, v3, v4}, Lcom/android/incallui/widget/GradientAnimationView;->updateGradientSize(II)Z

    .line 117
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/incallui/widget/GradientAnimationView;->setPivotY(F)V

    .line 119
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->addVideoCallMetricsListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallMetricsListener;)V

    .line 120
    return-void
.end method

.method public declared-synchronized stopStreamAnimation()V
    .locals 2

    .prologue
    .line 312
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStreamAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStreamAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v1, "stopStreamAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStreamAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    :cond_0
    monitor-exit p0

    return-void

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tearDown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 123
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v1, "tearDown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStreamAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStreamAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStreamAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mFadeOutAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 138
    :cond_3
    iput-object v2, p0, Lcom/android/incallui/widget/GradientAnimationView;->mGradientBitmap:Landroid/graphics/Bitmap;

    .line 139
    iput-object v2, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStreamAnimator:Landroid/animation/ValueAnimator;

    .line 140
    iput-object v2, p0, Lcom/android/incallui/widget/GradientAnimationView;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 141
    iput-object v2, p0, Lcom/android/incallui/widget/GradientAnimationView;->mScaleAnimationCallBack:Lcom/android/incallui/widget/GradientAnimationView$ScaleAnimationCallback;

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mIsScaleAnimationRunning:Z

    .line 144
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/service/vt/VideoCallNotifier;->removeVideoCallMetricsListener(Lcom/android/incallui/service/vt/VideoCallNotifier$VideoCallMetricsListener;)V

    .line 145
    return-void
.end method

.method public updateGradientColor()V
    .locals 2

    .prologue
    .line 204
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/widget/GradientAnimationView;->updateGradientColor(Landroid/graphics/drawable/Drawable;Z)V

    .line 205
    return-void
.end method

.method public updateGradientColor(II)V
    .locals 2
    .param p1, "startColor"    # I
    .param p2, "endColor"    # I

    .prologue
    .line 297
    iget v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStartColor:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->mEndColor:I

    if-eq v0, p2, :cond_1

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v1, "updateGradientColor: set color"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iput p1, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStartColor:I

    .line 300
    iput p2, p0, Lcom/android/incallui/widget/GradientAnimationView;->mEndColor:I

    .line 301
    invoke-direct {p0}, Lcom/android/incallui/widget/GradientAnimationView;->updateGradient()V

    .line 305
    :goto_0
    return-void

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v1, "updateGradientColor: duplicated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateGradientColor(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/widget/GradientAnimationView;->updateGradientColor(Landroid/graphics/drawable/Drawable;Z)V

    .line 209
    return-void
.end method

.method public updateGradientColor(Landroid/graphics/drawable/Drawable;Z)V
    .locals 10
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "needToSetDefault"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 215
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 216
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    .line 217
    iget-object v6, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v7, "updateGradientColor: call is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/Call;->isEmergencyCall()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 221
    iget-object v6, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v7, "updateGradientColor: emergency call"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {p0}, Lcom/android/incallui/widget/GradientAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0014

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 223
    .local v5, "gradientStartColor":I
    invoke-virtual {p0}, Lcom/android/incallui/widget/GradientAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0013

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 255
    .local v4, "gradientEndColor":I
    :goto_1
    iget v6, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStartColor:I

    if-ne v6, v5, :cond_1

    iget v6, p0, Lcom/android/incallui/widget/GradientAnimationView;->mEndColor:I

    if-eq v6, v4, :cond_8

    .line 256
    :cond_1
    iput v5, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStartColor:I

    .line 257
    iput v4, p0, Lcom/android/incallui/widget/GradientAnimationView;->mEndColor:I

    .line 258
    invoke-direct {p0}, Lcom/android/incallui/widget/GradientAnimationView;->updateGradient()V

    goto :goto_0

    .line 224
    .end local v4    # "gradientEndColor":I
    .end local v5    # "gradientStartColor":I
    :cond_2
    invoke-static {v0}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/Call;)I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_3

    .line 225
    iget-object v6, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v7, "updateGradientColor: spam call"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {p0}, Lcom/android/incallui/widget/GradientAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0016

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 227
    .restart local v5    # "gradientStartColor":I
    invoke-virtual {p0}, Lcom/android/incallui/widget/GradientAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0015

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .restart local v4    # "gradientEndColor":I
    goto :goto_1

    .line 228
    .end local v4    # "gradientEndColor":I
    .end local v5    # "gradientStartColor":I
    :cond_3
    if-eqz p1, :cond_5

    .line 229
    iget-object v6, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v7, "updateGradientColor: extract color from drawable"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-static {p1}, Lcom/android/incallui/util/GraphicResourceUtils;->getGradientColors(Landroid/graphics/drawable/Drawable;)[I

    move-result-object v1

    .line 231
    .local v1, "colors":[I
    if-nez v1, :cond_4

    .line 232
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getGradientDefaultColors()[I

    move-result-object v1

    .line 234
    :cond_4
    aget v5, v1, v8

    .line 235
    .restart local v5    # "gradientStartColor":I
    aget v4, v1, v9

    .line 236
    .restart local v4    # "gradientEndColor":I
    goto :goto_1

    .line 237
    .end local v1    # "colors":[I
    .end local v4    # "gradientEndColor":I
    .end local v5    # "gradientStartColor":I
    :cond_5
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 238
    .local v2, "context":Landroid/content/Context;
    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v3

    .line 239
    .local v3, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v3, :cond_6

    iget-boolean v6, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isGradientColorExists:Z

    if-eqz v6, :cond_6

    .line 240
    iget-object v6, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v7, "updateGradientColor: color exists"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget v5, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->gradientStartColor:I

    .line 242
    .restart local v5    # "gradientStartColor":I
    iget v4, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->gradientEndColor:I

    .restart local v4    # "gradientEndColor":I
    goto :goto_1

    .line 244
    .end local v4    # "gradientEndColor":I
    .end local v5    # "gradientStartColor":I
    :cond_6
    if-eqz p2, :cond_7

    .line 245
    iget-object v6, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v7, "updateGradientColor: default"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getGradientDefaultColors()[I

    move-result-object v1

    .line 247
    .restart local v1    # "colors":[I
    aget v5, v1, v8

    .line 248
    .restart local v5    # "gradientStartColor":I
    aget v4, v1, v9

    .line 249
    .restart local v4    # "gradientEndColor":I
    goto/16 :goto_1

    .line 250
    .end local v1    # "colors":[I
    .end local v4    # "gradientEndColor":I
    .end local v5    # "gradientStartColor":I
    :cond_7
    iget-object v6, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v7, "updateGradientColor: skip"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 260
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .restart local v4    # "gradientEndColor":I
    .restart local v5    # "gradientStartColor":I
    :cond_8
    iget-object v6, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v7, "updateGradientColor: duplicated"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public updateGradientColorExceptCall(Landroid/graphics/drawable/Drawable;Z)V
    .locals 7
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "needToSetDefault"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 268
    if-eqz p1, :cond_2

    .line 269
    iget-object v3, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v4, "updateGradientColorExceptCall: extract color from drawable"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-static {p1}, Lcom/android/incallui/util/GraphicResourceUtils;->getGradientColors(Landroid/graphics/drawable/Drawable;)[I

    move-result-object v0

    .line 271
    .local v0, "colors":[I
    if-nez v0, :cond_0

    .line 272
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getGradientDefaultColors()[I

    move-result-object v0

    .line 274
    :cond_0
    aget v2, v0, v5

    .line 275
    .local v2, "gradientStartColor":I
    aget v1, v0, v6

    .line 287
    .local v1, "gradientEndColor":I
    :goto_0
    iget v3, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStartColor:I

    if-ne v3, v2, :cond_1

    iget v3, p0, Lcom/android/incallui/widget/GradientAnimationView;->mEndColor:I

    if-eq v3, v1, :cond_4

    .line 288
    :cond_1
    iput v2, p0, Lcom/android/incallui/widget/GradientAnimationView;->mStartColor:I

    .line 289
    iput v1, p0, Lcom/android/incallui/widget/GradientAnimationView;->mEndColor:I

    .line 290
    invoke-direct {p0}, Lcom/android/incallui/widget/GradientAnimationView;->updateGradient()V

    .line 294
    .end local v0    # "colors":[I
    .end local v1    # "gradientEndColor":I
    .end local v2    # "gradientStartColor":I
    :goto_1
    return-void

    .line 277
    :cond_2
    if-eqz p2, :cond_3

    .line 278
    iget-object v3, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v4, "updateGradientColorExceptCall: default"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-static {}, Lcom/android/incallui/util/GraphicResourceUtils;->getGradientDefaultColors()[I

    move-result-object v0

    .line 280
    .restart local v0    # "colors":[I
    aget v2, v0, v5

    .line 281
    .restart local v2    # "gradientStartColor":I
    aget v1, v0, v6

    .line 282
    .restart local v1    # "gradientEndColor":I
    goto :goto_0

    .line 283
    .end local v0    # "colors":[I
    .end local v1    # "gradientEndColor":I
    .end local v2    # "gradientStartColor":I
    :cond_3
    iget-object v3, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v4, "updateGradientColorExceptCall: skip"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 292
    .restart local v0    # "colors":[I
    .restart local v1    # "gradientEndColor":I
    .restart local v2    # "gradientStartColor":I
    :cond_4
    iget-object v3, p0, Lcom/android/incallui/widget/GradientAnimationView;->TAG:Ljava/lang/String;

    const-string v4, "updateGradientColor: duplicated"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
