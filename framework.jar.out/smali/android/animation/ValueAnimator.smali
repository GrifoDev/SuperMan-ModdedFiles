.class public Landroid/animation/ValueAnimator;
.super Landroid/animation/Animator;
.source "ValueAnimator.java"

# interfaces
.implements Landroid/animation/AnimationHandler$AnimationFrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final INFINITE:I = -0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ValueAnimator"

.field private static final sDefaultInterpolator:Landroid/animation/TimeInterpolator;

.field private static sDurationScale:F


# instance fields
.field private mAnimationEndRequested:Z

.field private mCurrentFraction:F

.field private mDuration:J

.field private mFirstFrameTime:J

.field mInitialized:Z

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mLastFrameTime:J

.field private mOverallFraction:F

.field private mPauseTime:J

.field private mRepeatCount:I

.field private mRepeatMode:I

.field private mResumed:Z

.field private mReversing:Z

.field private mRunning:Z

.field mSeekFraction:F

.field private mSelfPulse:Z

.field private mStartDelay:J

.field private mStartListenersCalled:Z

.field mStartTime:J

.field mStartTimeCommitted:Z

.field private mStarted:Z

.field private mSuppressSelfPulseRequested:Z

.field mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field mValues:[Landroid/animation/PropertyValuesHolder;

.field mValuesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/animation/ValueAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    iput v1, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    iput v1, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mFirstFrameTime:J

    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    iput v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    iput v3, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    sget-object v0, Landroid/animation/ValueAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    return-void
.end method

.method private addAnimationCallback(J)V
    .locals 1

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimationHandler()Landroid/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/animation/AnimationHandler;->addAnimationFrameCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;J)V

    return-void
.end method

.method private addOneShotCommitCallback()V
    .locals 1

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimationHandler()Landroid/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/AnimationHandler;->addOneShotCommitCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;)V

    return-void
.end method

.method public static areAnimatorsEnabled()Z
    .locals 2

    sget v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clampFraction(F)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    return p1

    :cond_1
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_0
.end method

.method private endAnimation()V
    .locals 12

    const-wide/16 v10, 0x8

    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    if-eqz v4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->removeAnimationCallback()V

    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v4, :cond_3

    :cond_1
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    :cond_2
    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    iput-wide v8, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    iput-wide v8, p0, Landroid/animation/ValueAnimator;->mFirstFrameTime:J

    iput-wide v8, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    if-eqz v1, :cond_4

    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_4

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    iget-boolean v5, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-interface {v4, p0, v5}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-static {v10, v11}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getNameForTrace()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v10, v11, v4, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_5
    return-void
.end method

.method public static getCurrentAnimationsCount()I
    .locals 1

    invoke-static {}, Landroid/animation/AnimationHandler;->getAnimationCount()I

    move-result v0

    return v0
.end method

.method private getCurrentIteration(F)I
    .locals 4

    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    move-result p1

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    float-to-double v2, p1

    cmpl-double v2, v2, v0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    :cond_0
    double-to-int v2, v0

    return v2
.end method

.method private getCurrentIterationFraction(FZ)F
    .locals 3

    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    move-result p1

    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->getCurrentIteration(F)I

    move-result v1

    int-to-float v2, v1

    sub-float v0, p1, v2

    invoke-direct {p0, v1, p2}, Landroid/animation/ValueAnimator;->shouldPlayBackward(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v0

    :cond_0
    return v0
.end method

.method public static getDurationScale()F
    .locals 1

    sget v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    return v0
.end method

.method public static getFrameDelay()J
    .locals 2

    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    invoke-static {}, Landroid/animation/AnimationHandler;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method private getScaledDuration()J
    .locals 2

    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v0, v0

    sget v1, Landroid/animation/ValueAnimator;->sDurationScale:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method private isPulsingInternal()Z
    .locals 4

    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyStartListeners()V
    .locals 5

    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-interface {v3, p0, v4}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    return-void
.end method

.method public static varargs ofArgb([I)Landroid/animation/ValueAnimator;
    .locals 2

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-object v0
.end method

.method public static varargs ofFloat([F)Landroid/animation/ValueAnimator;
    .locals 1

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    return-object v0
.end method

.method public static varargs ofInt([I)Landroid/animation/ValueAnimator;
    .locals 1

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    return-object v0
.end method

.method public static varargs ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;
    .locals 1

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;
    .locals 1

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    return-object v0
.end method

.method private removeAnimationCallback()V
    .locals 1

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimationHandler()Landroid/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/AnimationHandler;->removeCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;)V

    return-void
.end method

.method public static setDurationScale(F)V
    .locals 0

    sput p0, Landroid/animation/ValueAnimator;->sDurationScale:F

    return-void
.end method

.method public static setFrameDelay(J)V
    .locals 0

    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    invoke-static {p0, p1}, Landroid/animation/AnimationHandler;->setFrameDelay(J)V

    return-void
.end method

.method private shouldPlayBackward(IZ)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_4

    iget v2, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    iget v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/lit8 v2, v2, 0x1

    if-lt p1, v2, :cond_0

    iget v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    :cond_0
    if-eqz p2, :cond_2

    rem-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    rem-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    return p2
.end method

.method private start(Z)V
    .locals 13

    const/4 v12, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const-wide/16 v10, 0x0

    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v2, "Animators may only be run on Looper threads"

    invoke-direct {v1, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    if-eqz p1, :cond_1

    iget v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v1, v1, v7

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v1, v1, v12

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    iget v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    float-to-double v2, v1

    iget v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iput v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    :cond_1
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    iput-wide v8, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    iput-wide v8, p0, Landroid/animation/ValueAnimator;->mFirstFrameTime:J

    iput-wide v8, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    invoke-direct {p0, v10, v11}, Landroid/animation/ValueAnimator;->addAnimationCallback(J)V

    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    cmp-long v1, v2, v10

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v1, v1, v12

    if-ltz v1, :cond_5

    :cond_2
    :goto_1
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->startAnimation()V

    iget v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v1, v1, v7

    if-nez v1, :cond_6

    invoke-virtual {p0, v10, v11}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    iget v1, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    sub-float/2addr v1, v2

    iput v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    goto :goto_0

    :cond_5
    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_6
    iget v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    goto :goto_2
.end method

.method private startAnimation()V
    .locals 6

    const-wide/16 v4, 0x8

    const/4 v2, 0x0

    invoke-static {v4, v5}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getNameForTrace()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v4, v5, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    iput v0, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    :goto_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    :cond_1
    return-void

    :cond_2
    iput v2, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    goto :goto_0
.end method


# virtual methods
.method public addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method animateBasedOnPlayTime(JJZ)V
    .locals 13

    const-wide/16 v8, 0x0

    cmp-long v7, p1, v8

    if-ltz v7, :cond_0

    cmp-long v7, p3, v8

    if-gez v7, :cond_1

    :cond_0
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v8, "Error: Play time should never be negative."

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    iget v7, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    if-lez v7, :cond_2

    iget-wide v8, p0, Landroid/animation/ValueAnimator;->mDuration:J

    div-long v8, p1, v8

    long-to-int v4, v8

    iget-wide v8, p0, Landroid/animation/ValueAnimator;->mDuration:J

    div-long v8, p3, v8

    long-to-int v5, v8

    iget v7, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v7, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-eq v4, v5, :cond_2

    iget-object v7, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v6, :cond_2

    iget-object v7, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v7, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget v7, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    iget v7, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/lit8 v7, v7, 0x1

    int-to-long v8, v7

    iget-wide v10, p0, Landroid/animation/ValueAnimator;->mDuration:J

    mul-long/2addr v8, v10

    cmp-long v7, p1, v8

    if-ltz v7, :cond_3

    move/from16 v0, p5

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->skipToEndValue(Z)V

    :goto_1
    return-void

    :cond_3
    long-to-float v7, p1

    iget-wide v8, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v8, v8

    div-float v2, v7, v8

    move/from16 v0, p5

    invoke-direct {p0, v2, v0}, Landroid/animation/ValueAnimator;->getCurrentIterationFraction(FZ)F

    move-result v2

    invoke-virtual {p0, v2}, Landroid/animation/ValueAnimator;->animateValue(F)V

    goto :goto_1
.end method

.method animateBasedOnTime(J)Z
    .locals 13

    const/4 v1, 0x0

    iget-boolean v10, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v10, :cond_1

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_2

    iget-wide v10, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long v10, p1, v10

    long-to-float v10, v10

    long-to-float v11, v8

    div-float v2, v10, v11

    :goto_0
    iget v4, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    float-to-int v10, v2

    float-to-int v11, v4

    if-le v10, v11, :cond_3

    const/4 v6, 0x1

    :goto_1
    iget v10, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/lit8 v10, v10, 0x1

    int-to-float v10, v10

    cmpl-float v10, v2, v10

    if-ltz v10, :cond_5

    iget v10, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_4

    const/4 v5, 0x1

    :goto_2
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-nez v10, :cond_6

    const/4 v1, 0x1

    :cond_0
    :goto_3
    invoke-direct {p0, v2}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    move-result v10

    iput v10, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    iget v10, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    iget-boolean v11, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-direct {p0, v10, v11}, Landroid/animation/ValueAnimator;->getCurrentIterationFraction(FZ)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->animateValue(F)V

    :cond_1
    return v1

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    :cond_6
    if-eqz v6, :cond_7

    xor-int/lit8 v10, v5, 0x1

    if-eqz v10, :cond_7

    iget-object v10, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v7, :cond_0

    iget-object v10, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v10, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    if-eqz v5, :cond_0

    const/4 v1, 0x1

    goto :goto_3
.end method

.method animateValue(F)V
    .locals 4

    iget-object v3, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v3, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    iput p1, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v2, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/animation/PropertyValuesHolder;->calculateValue(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-interface {v3, p0}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public canReverse()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public cancel()V
    .locals 5

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v4, "Animators may only be run on Looper threads"

    invoke-direct {v3, v4}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    if-eqz v3, :cond_1

    return-void

    :cond_1
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-nez v3, :cond_3

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    :cond_3
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->endAnimation()V

    return-void
.end method

.method public bridge synthetic clone()Landroid/animation/Animator;
    .locals 1

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public clone()Landroid/animation/ValueAnimator;
    .locals 11

    const/4 v10, 0x0

    const-wide/16 v8, -0x1

    const/4 v7, 0x0

    invoke-super {p0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    iget-object v5, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, v0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    :cond_0
    const/high16 v5, -0x40800000    # -1.0f

    iput v5, v0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mReversing:Z

    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mInitialized:Z

    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mStarted:Z

    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mRunning:Z

    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mPaused:Z

    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mResumed:Z

    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    iput-wide v8, v0, Landroid/animation/ValueAnimator;->mStartTime:J

    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    iput-wide v8, v0, Landroid/animation/ValueAnimator;->mPauseTime:J

    iput-wide v8, v0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    iput-wide v8, v0, Landroid/animation/ValueAnimator;->mFirstFrameTime:J

    iput v10, v0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    iput v10, v0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    iget-object v4, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v4, :cond_1

    array-length v3, v4

    new-array v5, v3, [Landroid/animation/PropertyValuesHolder;

    iput-object v5, v0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v5, v0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v5, v4, v1

    invoke-virtual {v5}, Landroid/animation/PropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    iget-object v5, v0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aput-object v2, v5, v1

    iget-object v5, v0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public commitAnimationFrame(J)V
    .locals 5

    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    sub-long v0, p1, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    :cond_0
    return-void
.end method

.method public final doAnimationFrame(J)Z
    .locals 11

    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-gez v3, :cond_0

    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    if-eqz v3, :cond_1

    move-wide v6, p1

    :goto_0
    iput-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    :cond_0
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    if-eqz v3, :cond_2

    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->removeAnimationCallback()V

    const/4 v3, 0x0

    return v3

    :cond_1
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    long-to-float v3, v6

    sget v6, Landroid/animation/ValueAnimator;->sDurationScale:F

    mul-float/2addr v3, v6

    float-to-long v6, v3

    add-long/2addr v6, p1

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_3

    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    iget-wide v8, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    sub-long v8, p1, v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    :cond_3
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-nez v3, :cond_5

    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    cmp-long v3, v6, p1

    if-lez v3, :cond_4

    iget v3, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v3, v3, v6

    if-nez v3, :cond_4

    const/4 v3, 0x0

    return v3

    :cond_4
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->startAnimation()V

    :cond_5
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-gez v3, :cond_7

    iget v3, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_6

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    move-result-wide v6

    long-to-float v3, v6

    iget v6, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    mul-float/2addr v3, v6

    float-to-long v4, v3

    sub-long v6, p1, v4

    iput-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    :cond_6
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    :cond_7
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    invoke-static {p1, p2, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->animateBasedOnTime(J)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->endAnimation()V

    :cond_8
    return v2
.end method

.method public end()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->startAnimation()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    :cond_1
    :goto_0
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-direct {p0, v0, v1}, Landroid/animation/ValueAnimator;->shouldPlayBackward(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->animateValue(F)V

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->endAnimation()V

    return-void

    :cond_2
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    goto :goto_0

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1
.end method

.method public getAnimatedFraction()F
    .locals 1

    iget v0, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    return v0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v2
.end method

.method public getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v2
.end method

.method public getAnimationHandler()Landroid/animation/AnimationHandler;
    .locals 1

    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPlayTime()J
    .locals 6

    const/4 v2, 0x0

    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-nez v1, :cond_1

    iget v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    :cond_0
    const-wide/16 v2, 0x0

    return-wide v2

    :cond_1
    iget v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v1, v2

    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    mul-float/2addr v1, v2

    float-to-long v2, v1

    return-wide v2

    :cond_2
    sget v1, Landroid/animation/ValueAnimator;->sDurationScale:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    div-float/2addr v1, v0

    float-to-long v2, v1

    return-wide v2

    :cond_3
    sget v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method getNameForTrace()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "animator"

    return-object v0
.end method

.method public getRepeatCount()I
    .locals 1

    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    return v0
.end method

.method public getStartDelay()J
    .locals 2

    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    return-wide v0
.end method

.method public getTotalDuration()J
    .locals 8

    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mDuration:J

    iget v4, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    int-to-long v4, v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getValues()[Landroid/animation/PropertyValuesHolder;
    .locals 1

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    return-object v0
.end method

.method initAnimation()V
    .locals 3

    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->init()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    :cond_1
    return-void
.end method

.method isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    return v0
.end method

.method public pause()V
    .locals 4

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    invoke-super {p0}, Landroid/animation/Animator;->pause()V

    if-nez v0, :cond_0

    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    if-eqz v1, :cond_0

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    :cond_0
    return-void
.end method

.method pulseAnimationFrame(J)Z
    .locals 1

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mSelfPulse:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->doAnimationFrame(J)Z

    move-result v0

    return v0
.end method

.method public removeAllUpdateListeners()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iput-object v1, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method public resume()V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v1, "Animators may only be resumed from the same thread that the animator was started on"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-direct {p0, v2, v3}, Landroid/animation/ValueAnimator;->addAnimationCallback(J)V

    :cond_1
    invoke-super {p0}, Landroid/animation/Animator;->resume()V

    return-void
.end method

.method public reverse()V
    .locals 9

    const/4 v8, 0x1

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->isPulsingInternal()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long v0, v2, v6

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    move-result-wide v6

    sub-long v4, v6, v0

    sub-long v6, v2, v4

    iput-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    iput-boolean v8, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    iget-boolean v6, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    xor-int/lit8 v6, v6, 0x1

    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    :goto_0
    return-void

    :cond_0
    iget-boolean v6, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    xor-int/lit8 v6, v6, 0x1

    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v8}, Landroid/animation/ValueAnimator;->start(Z)V

    goto :goto_0
.end method

.method public setAllowRunningAsynchronously(Z)V
    .locals 0

    return-void
.end method

.method public setCurrentFraction(F)V
    .locals 8

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    move-result p1

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->isPulsingInternal()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    move-result-wide v6

    long-to-float v1, v6

    mul-float/2addr v1, p1

    float-to-long v4, v1

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    sub-long v6, v2, v4

    iput-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    :goto_0
    iput p1, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    invoke-direct {p0, p1, v1}, Landroid/animation/ValueAnimator;->getCurrentIterationFraction(FZ)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->animateValue(F)V

    return-void

    :cond_0
    iput p1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    goto :goto_0
.end method

.method public setCurrentPlayTime(J)V
    .locals 7

    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mDuration:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    long-to-float v1, p1

    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v2, v2

    div-float v0, v1, v2

    :goto_0
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Landroid/animation/ValueAnimator;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Animators cannot have negative duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mDuration:J

    return-object p0
.end method

.method public setEvaluator(Landroid/animation/TypeEvaluator;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    :cond_0
    return-void
.end method

.method public varargs setFloatValues([F)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const-string/jumbo v2, ""

    invoke-static {v2, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :goto_0
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    return-void

    :cond_3
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v1, v3

    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    goto :goto_0
.end method

.method public varargs setIntValues([I)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const-string/jumbo v2, ""

    invoke-static {v2, p1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :goto_0
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    return-void

    :cond_3
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v1, v3

    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    goto :goto_0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const-string/jumbo v2, ""

    invoke-static {v2, v4, p1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :goto_0
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    return-void

    :cond_3
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v1, v3

    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setRepeatCount(I)V
    .locals 0

    iput p1, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0

    iput p1, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    return-void
.end method

.method public setStartDelay(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-string/jumbo v0, "ValueAnimator"

    const-string/jumbo v1, "Start delay should always be non-negative"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p1, 0x0

    :cond_0
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    return-void
.end method

.method public varargs setValues([Landroid/animation/PropertyValuesHolder;)V
    .locals 5

    array-length v1, p1

    iput-object p1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    return-void
.end method

.method skipToEndValue(Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->animateValue(F)V

    return-void

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/animation/ValueAnimator;->start(Z)V

    return-void
.end method

.method startWithoutPulsing(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mSuppressSelfPulseRequested:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ValueAnimator@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
