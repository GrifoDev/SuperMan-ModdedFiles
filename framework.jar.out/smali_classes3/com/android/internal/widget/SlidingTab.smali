.class public Lcom/android/internal/widget/SlidingTab;
.super Landroid/view/ViewGroup;
.source "SlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/SlidingTab$1;,
        Lcom/android/internal/widget/SlidingTab$OnTriggerListener;,
        Lcom/android/internal/widget/SlidingTab$Slider;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:I = 0xfa

.field private static final ANIM_TARGET_TIME:I = 0x1f4

.field private static final DBG:Z = false

.field private static final HORIZONTAL:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "SlidingTab"

.field private static final THRESHOLD:F = 0.6666667f

.field private static final TRACKING_MARGIN:I = 0x32

.field private static final VERTICAL:I = 0x1

.field private static final VIBRATE_LONG:J = 0x28L

.field private static final VIBRATE_SHORT:J = 0x1eL

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field private mAnimating:Z

.field private final mAnimationDoneListener:Landroid/view/animation/Animation$AnimationListener;

.field private mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

.field private final mDensity:F

.field private mGrabbedState:I

.field private mHoldLeftOnTransition:Z

.field private mHoldRightOnTransition:Z

.field private final mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

.field private mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

.field private final mOrientation:I

.field private mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

.field private final mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

.field private mThreshold:F

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mTracking:Z

.field private mTriggered:Z

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static synthetic -get0(Lcom/android/internal/widget/SlidingTab;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mAnimationDoneListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/widget/SlidingTab;)Lcom/android/internal/widget/SlidingTab$Slider;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/widget/SlidingTab;)Lcom/android/internal/widget/SlidingTab$Slider;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/widget/SlidingTab;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/widget/SlidingTab;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->onAnimationDone()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/widget/SlidingTab;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->resetView()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/SlidingTab;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/SlidingTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const v5, 0x1080569

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTab;->mHoldLeftOnTransition:Z

    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTab;->mHoldRightOnTransition:Z

    iput v3, p0, Lcom/android/internal/widget/SlidingTab;->mGrabbedState:I

    iput-boolean v3, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    new-instance v2, Lcom/android/internal/widget/SlidingTab$1;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/SlidingTab$1;-><init>(Lcom/android/internal/widget/SlidingTab;)V

    iput-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mAnimationDoneListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    sget-object v2, Lcom/android/internal/R$styleable;->SlidingTab:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/SlidingTab;->mOrientation:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/android/internal/widget/SlidingTab;->mDensity:F

    new-instance v2, Lcom/android/internal/widget/SlidingTab$Slider;

    const v3, 0x108055b

    const v4, 0x108054a

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/internal/widget/SlidingTab$Slider;-><init>(Landroid/view/ViewGroup;III)V

    iput-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    new-instance v2, Lcom/android/internal/widget/SlidingTab$Slider;

    const v3, 0x1080564

    const v4, 0x1080553

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/internal/widget/SlidingTab$Slider;-><init>(Landroid/view/ViewGroup;III)V

    iput-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    return-void
.end method

.method private cancelGrab()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab$Slider;->show(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0}, Lcom/android/internal/widget/SlidingTab$Slider;->hideTarget()V

    iput-object v3, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iput-object v3, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-direct {p0, v2}, Lcom/android/internal/widget/SlidingTab;->setGrabbedState(I)V

    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .locals 2

    const-wide/16 v0, 0x28

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/SlidingTab;->vibrate(J)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/widget/SlidingTab$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private isHorizontal()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/widget/SlidingTab;->mOrientation:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "SlidingTab"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private moveHandle(FF)V
    .locals 6

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-static {v4}, Lcom/android/internal/widget/SlidingTab$Slider;->-get0(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-static {v4}, Lcom/android/internal/widget/SlidingTab$Slider;->-get1(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v4

    if-eqz v4, :cond_0

    float-to-int v4, p1

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v1, v4, v5

    invoke-virtual {v3, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->invalidate()V

    return-void

    :cond_0
    float-to-int v4, p2

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v2, v4, v5

    invoke-virtual {v3, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0
.end method

.method private onAnimationDone()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->resetView()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    return-void
.end method

.method private resetView()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    return-void
.end method

.method private setGrabbedState(I)V
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/SlidingTab;->mGrabbedState:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/internal/widget/SlidingTab;->mGrabbedState:I

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    iget v1, p0, Lcom/android/internal/widget/SlidingTab;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/android/internal/widget/SlidingTab$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private declared-synchronized vibrate(J)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "haptic_feedback_enabled"

    const/4 v3, 0x1

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab;->mVibrator:Landroid/os/Vibrator;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/internal/widget/SlidingTab;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab;->mVibrator:Landroid/os/Vibrator;

    sget-object v2, Lcom/android/internal/widget/SlidingTab;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v1, p1, p2, v2}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private withinView(FFLandroid/view/View;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v3, -0x3db80000    # -50.0f

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v2

    if-eqz v2, :cond_1

    cmpl-float v2, p2, v3

    if-lez v2, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, 0x32

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v2

    if-nez v2, :cond_2

    cmpl-float v2, p1, v3

    if-lez v2, :cond_2

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, 0x32

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    const v8, 0x3f2aaaab

    const v9, 0x3eaaaaaa

    const/4 v13, 0x0

    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-boolean v10, p0, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    if-eqz v10, :cond_0

    return v13

    :cond_0
    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-static {v10}, Lcom/android/internal/widget/SlidingTab$Slider;->-get0(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v10}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    float-to-int v11, v5

    float-to-int v12, v6

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-static {v10}, Lcom/android/internal/widget/SlidingTab$Slider;->-get0(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v10}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    float-to-int v11, v5

    float-to-int v12, v6

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    iget-boolean v10, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    if-nez v10, :cond_2

    if-nez v2, :cond_1

    :goto_0
    xor-int/lit8 v10, v4, 0x1

    if-eqz v10, :cond_2

    return v13

    :cond_1
    move v4, v7

    goto :goto_0

    :cond_2
    packed-switch v0, :pswitch_data_0

    :goto_1
    return v7

    :pswitch_0
    iput-boolean v7, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    iput-boolean v13, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    const-wide/16 v10, 0x1e

    invoke-direct {p0, v10, v11}, Lcom/android/internal/widget/SlidingTab;->vibrate(J)V

    if-eqz v2, :cond_4

    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iput-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iput-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v10

    if-eqz v10, :cond_3

    :goto_2
    iput v8, p0, Lcom/android/internal/widget/SlidingTab;->mThreshold:F

    invoke-direct {p0, v7}, Lcom/android/internal/widget/SlidingTab;->setGrabbedState(I)V

    :goto_3
    iget-object v8, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v8, v7}, Lcom/android/internal/widget/SlidingTab$Slider;->setState(I)V

    iget-object v8, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v8}, Lcom/android/internal/widget/SlidingTab$Slider;->showTarget()V

    iget-object v8, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v8}, Lcom/android/internal/widget/SlidingTab$Slider;->hide()V

    goto :goto_1

    :cond_3
    move v8, v9

    goto :goto_2

    :cond_4
    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iput-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iput-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v10

    if-eqz v10, :cond_5

    :goto_4
    iput v9, p0, Lcom/android/internal/widget/SlidingTab;->mThreshold:F

    const/4 v8, 0x2

    invoke-direct {p0, v8}, Lcom/android/internal/widget/SlidingTab;->setGrabbedState(I)V

    goto :goto_3

    :cond_5
    move v9, v8

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v5, 0x0

    :goto_0
    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/SlidingTab$Slider;->layout(IIIII)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v5, 0x1

    :goto_1
    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/SlidingTab$Slider;->layout(IIIII)V

    return-void

    :cond_1
    const/4 v5, 0x3

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 11

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v10, p1, p2}, Lcom/android/internal/widget/SlidingTab$Slider;->measure(II)V

    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v10, p1, p2}, Lcom/android/internal/widget/SlidingTab$Slider;->measure(II)V

    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v10}, Lcom/android/internal/widget/SlidingTab$Slider;->getTabWidth()I

    move-result v4

    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v10}, Lcom/android/internal/widget/SlidingTab$Slider;->getTabWidth()I

    move-result v6

    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v10}, Lcom/android/internal/widget/SlidingTab$Slider;->getTabHeight()I

    move-result v3

    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v10}, Lcom/android/internal/widget/SlidingTab$Slider;->getTabHeight()I

    move-result v5

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v10

    if-eqz v10, :cond_0

    add-int v10, v4, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    invoke-virtual {p0, v7, v0}, Lcom/android/internal/widget/SlidingTab;->setMeasuredDimension(II)V

    return-void

    :cond_0
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int v10, v3, v5

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    const/4 v9, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x1

    iget-boolean v7, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    if-nez v7, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    :cond_1
    return v8

    :pswitch_0
    invoke-direct {p0, v5, v6, p0}, Lcom/android/internal/widget/SlidingTab;->withinView(FFLandroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-direct {p0, v5, v6}, Lcom/android/internal/widget/SlidingTab;->moveHandle(FF)V

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v7

    if-eqz v7, :cond_2

    move v2, v5

    :goto_1
    iget v10, p0, Lcom/android/internal/widget/SlidingTab;->mThreshold:F

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getWidth()I

    move-result v7

    :goto_2
    int-to-float v7, v7

    mul-float v3, v10, v7

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    if-ne v7, v10, :cond_5

    cmpl-float v7, v2, v3

    if-lez v7, :cond_4

    :goto_3
    const/4 v4, 0x1

    :goto_4
    iget-boolean v7, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    if-nez v7, :cond_0

    if-eqz v4, :cond_0

    iput-boolean v8, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    iput-boolean v11, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v7, v9}, Lcom/android/internal/widget/SlidingTab$Slider;->setState(I)V

    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    if-ne v7, v10, :cond_9

    const/4 v1, 0x1

    :goto_5
    if-eqz v1, :cond_a

    move v7, v8

    :goto_6
    invoke-direct {p0, v7}, Lcom/android/internal/widget/SlidingTab;->dispatchTriggerEvent(I)V

    if-eqz v1, :cond_b

    iget-boolean v7, p0, Lcom/android/internal/widget/SlidingTab;->mHoldLeftOnTransition:Z

    :goto_7
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/SlidingTab;->startAnimating(Z)V

    invoke-direct {p0, v11}, Lcom/android/internal/widget/SlidingTab;->setGrabbedState(I)V

    goto :goto_0

    :cond_2
    move v2, v6

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getHeight()I

    move-result v7

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    goto :goto_4

    :cond_5
    cmpg-float v7, v2, v3

    if-gez v7, :cond_4

    goto :goto_3

    :cond_6
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    if-ne v7, v10, :cond_8

    cmpg-float v7, v2, v3

    if-gez v7, :cond_7

    :goto_8
    const/4 v4, 0x1

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    goto :goto_4

    :cond_8
    cmpl-float v7, v2, v3

    if-lez v7, :cond_7

    goto :goto_8

    :cond_9
    const/4 v1, 0x0

    goto :goto_5

    :cond_a
    move v7, v9

    goto :goto_6

    :cond_b
    iget-boolean v7, p0, Lcom/android/internal/widget/SlidingTab;->mHoldRightOnTransition:Z

    goto :goto_7

    :cond_c
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->cancelGrab()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    if-ne p1, p0, :cond_0

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/internal/widget/SlidingTab;->mGrabbedState:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->cancelGrab()V

    :cond_0
    return-void
.end method

.method public reset(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    :cond_0
    return-void
.end method

.method public setHoldAfterTrigger(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/SlidingTab;->mHoldLeftOnTransition:Z

    iput-boolean p2, p0, Lcom/android/internal/widget/SlidingTab;->mHoldRightOnTransition:Z

    return-void
.end method

.method public setLeftHintText(I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setHintText(I)V

    :cond_0
    return-void
.end method

.method public setLeftTabResources(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setIcon(I)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/SlidingTab$Slider;->setTarget(I)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p3}, Lcom/android/internal/widget/SlidingTab$Slider;->setBarBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p4}, Lcom/android/internal/widget/SlidingTab$Slider;->setTabBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0}, Lcom/android/internal/widget/SlidingTab$Slider;->updateDrawableStates()V

    return-void
.end method

.method public setOnTriggerListener(Lcom/android/internal/widget/SlidingTab$OnTriggerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/SlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    return-void
.end method

.method public setRightHintText(I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setHintText(I)V

    :cond_0
    return-void
.end method

.method public setRightTabResources(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setIcon(I)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/SlidingTab$Slider;->setTarget(I)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p3}, Lcom/android/internal/widget/SlidingTab$Slider;->setBarBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p4}, Lcom/android/internal/widget/SlidingTab$Slider;->setTabBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0}, Lcom/android/internal/widget/SlidingTab$Slider;->updateDrawableStates()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SlidingTab;->reset(Z)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method startAnimating(Z)V
    .locals 23

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-static {v12}, Lcom/android/internal/widget/SlidingTab$Slider;->-get0(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getRight()I

    move-result v11

    invoke-static {v12}, Lcom/android/internal/widget/SlidingTab$Slider;->-get0(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getWidth()I

    move-result v18

    invoke-static {v12}, Lcom/android/internal/widget/SlidingTab$Slider;->-get0(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getLeft()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SlidingTab;->getWidth()I

    move-result v17

    if-eqz p1, :cond_0

    const/4 v8, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-ne v12, v0, :cond_1

    add-int v19, v11, v17

    sub-int v19, v19, v8

    move/from16 v0, v19

    neg-int v5, v0

    :goto_1
    const/4 v6, 0x0

    :goto_2
    new-instance v14, Landroid/view/animation/TranslateAnimation;

    const/16 v19, 0x0

    int-to-float v0, v5

    move/from16 v20, v0

    const/16 v21, 0x0

    int-to-float v0, v6

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v20, 0xfa

    move-wide/from16 v0, v20

    invoke-virtual {v14, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v19, Landroid/view/animation/LinearInterpolator;

    invoke-direct/range {v19 .. v19}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v15, Landroid/view/animation/TranslateAnimation;

    const/16 v19, 0x0

    int-to-float v0, v5

    move/from16 v20, v0

    const/16 v21, 0x0

    int-to-float v0, v6

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v15, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v20, 0xfa

    move-wide/from16 v0, v20

    invoke-virtual {v15, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v19, Landroid/view/animation/LinearInterpolator;

    invoke-direct/range {v19 .. v19}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v19, Lcom/android/internal/widget/SlidingTab$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/android/internal/widget/SlidingTab$2;-><init>(Lcom/android/internal/widget/SlidingTab;ZII)V

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v12}, Lcom/android/internal/widget/SlidingTab$Slider;->hideTarget()V

    invoke-virtual {v12, v14, v15}, Lcom/android/internal/widget/SlidingTab$Slider;->startAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    return-void

    :cond_0
    move/from16 v8, v18

    goto/16 :goto_0

    :cond_1
    sub-int v19, v17, v9

    add-int v19, v19, v17

    sub-int v5, v19, v8

    goto :goto_1

    :cond_2
    invoke-static {v12}, Lcom/android/internal/widget/SlidingTab$Slider;->-get0(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getTop()I

    move-result v13

    invoke-static {v12}, Lcom/android/internal/widget/SlidingTab$Slider;->-get0(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getBottom()I

    move-result v4

    invoke-static {v12}, Lcom/android/internal/widget/SlidingTab$Slider;->-get0(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SlidingTab;->getHeight()I

    move-result v16

    if-eqz p1, :cond_3

    const/4 v8, 0x0

    :goto_3
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-ne v12, v0, :cond_4

    add-int v19, v13, v16

    sub-int v6, v19, v8

    goto/16 :goto_2

    :cond_3
    move v8, v7

    goto :goto_3

    :cond_4
    sub-int v19, v16, v4

    add-int v19, v19, v16

    sub-int v19, v19, v8

    move/from16 v0, v19

    neg-int v6, v0

    goto/16 :goto_2
.end method
