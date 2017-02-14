.class final Lcom/android/server/display/RampAnimator;
.super Ljava/lang/Object;
.source "RampAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/RampAnimator$1;,
        Lcom/android/server/display/RampAnimator$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final FORCE_1STEP_DELTA_TIME:F = 0.016f

.field private static final TAG:Ljava/lang/String; = "RampAnimator"


# instance fields
.field private mAnimatedValue:F

.field private mAnimating:Z

.field private final mAnimationCallback:Ljava/lang/Runnable;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mCurrentValue:I

.field private mFirstTime:Z

.field private mLastFrameTimeNanos:J

.field private mListener:Lcom/android/server/display/RampAnimator$Listener;

.field private final mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mProperty:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mRate:I

.field private mTargetValue:I


# direct methods
.method static synthetic -get0(Lcom/android/server/display/RampAnimator;)F
    .locals 1

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/display/RampAnimator;)Landroid/view/Choreographer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/display/RampAnimator;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/display/RampAnimator;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    return-wide v0
.end method

.method static synthetic -get4(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/display/RampAnimator;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/display/RampAnimator;)Landroid/util/IntProperty;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/display/RampAnimator;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/display/RampAnimator;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/display/RampAnimator;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/display/RampAnimator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/display/RampAnimator;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/display/RampAnimator;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/server/display/RampAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->postAnimationCallback()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/util/IntProperty;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/util/IntProperty",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    new-instance v0, Lcom/android/server/display/RampAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/RampAnimator$1;-><init>(Lcom/android/server/display/RampAnimator;)V

    iput-object v0, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method private cancelAnimationCallback()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method private postAnimationCallback()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public animateTo(II)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    if-nez v1, :cond_0

    if-gtz p2, :cond_5

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-eq p1, v1, :cond_4

    :cond_1
    iput-boolean v3, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    iput v3, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v2, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    iget-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-eqz v1, :cond_2

    iput-boolean v3, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->cancelAnimationCallback()V

    :cond_2
    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    invoke-interface {v1}, Lcom/android/server/display/RampAnimator$Listener;->onAnimationEnd()V

    :cond_3
    return v4

    :cond_4
    return v3

    :cond_5
    iget-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    if-le p2, v1, :cond_9

    :cond_6
    :goto_0
    iput p2, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    :cond_7
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    if-eq v1, p1, :cond_b

    const/4 v0, 0x1

    :goto_1
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    iget-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-nez v1, :cond_8

    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-eq p1, v1, :cond_8

    iput-boolean v4, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->postAnimationCallback()V

    :cond_8
    return v0

    :cond_9
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-gt p1, v1, :cond_a

    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    iget v2, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    if-le v1, v2, :cond_6

    :cond_a
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    iget v2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-gt v1, v2, :cond_7

    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-gt v1, p1, :cond_7

    goto :goto_0

    :cond_b
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    return-void
.end method

.method public setListener(Lcom/android/server/display/RampAnimator$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    return-void
.end method
