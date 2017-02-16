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

.field private mStartDelay:J

.field private mStartListenersCalled:Z

.field mStartTime:J

.field mStartTimeCommitted:Z

.field private mStarted:Z

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

    .prologue
    .line 76
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    .line 129
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 128
    sput-object v0, Landroid/animation/ValueAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 280
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 112
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 125
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 143
    iput v1, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    .line 149
    iput v1, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    .line 154
    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    .line 164
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 170
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 177
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    .line 183
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 188
    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    .line 195
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    .line 200
    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    .line 204
    iput v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    .line 211
    const/4 v0, 0x1

    iput v0, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    .line 218
    sget-object v0, Landroid/animation/ValueAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 280
    return-void
.end method

.method private clampFraction(F)F
    .locals 2
    .param p1, "fraction"    # F

    .prologue
    .line 652
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 653
    const/4 p1, 0x0

    .line 657
    :cond_0
    :goto_0
    return p1

    .line 654
    :cond_1
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 655
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_0
.end method

.method private endAnimation()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x8

    const/4 v5, 0x0

    .line 1132
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    if-eqz v4, :cond_0

    .line 1133
    return-void

    .line 1135
    :cond_0
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    .line 1136
    .local v0, "handler":Landroid/animation/AnimationHandler;
    invoke-virtual {v0, p0}, Landroid/animation/AnimationHandler;->removeCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;)V

    .line 1138
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    .line 1139
    iput-boolean v5, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    .line 1140
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v4, :cond_3

    :cond_1
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 1141
    iget-boolean v4, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-nez v4, :cond_2

    .line 1143
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    .line 1146
    :cond_2
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1147
    .local v3, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1148
    .local v2, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 1149
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v4, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1152
    .end local v1    # "i":I
    .end local v2    # "numListeners":I
    .end local v3    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_3
    iput-boolean v5, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 1153
    iput-boolean v5, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 1154
    iput-boolean v5, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    .line 1155
    iput-boolean v5, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 1156
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    .line 1157
    invoke-static {v6, v7}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1158
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getNameForTrace()Ljava/lang/String;

    move-result-object v4

    .line 1159
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    .line 1158
    invoke-static {v6, v7, v4, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1131
    :cond_4
    return-void
.end method

.method public static getCurrentAnimationsCount()I
    .locals 1

    .prologue
    .line 1412
    invoke-static {}, Landroid/animation/AnimationHandler;->getAnimationCount()I

    move-result v0

    return v0
.end method

.method private getCurrentIteration(F)I
    .locals 4
    .param p1, "fraction"    # F

    .prologue
    .line 621
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    move-result p1

    .line 625
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    .line 626
    .local v0, "iteration":D
    float-to-double v2, p1

    cmpl-double v2, v2, v0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    .line 627
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    .line 629
    :cond_0
    double-to-int v2, v0

    return v2
.end method

.method private getCurrentIterationFraction(F)F
    .locals 3
    .param p1, "fraction"    # F

    .prologue
    .line 638
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    move-result p1

    .line 639
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->getCurrentIteration(F)I

    move-result v1

    .line 640
    .local v1, "iteration":I
    int-to-float v2, v1

    sub-float v0, p1, v2

    .line 641
    .local v0, "currentFraction":F
    invoke-direct {p0, v1}, Landroid/animation/ValueAnimator;->shouldPlayBackward(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v0

    .end local v0    # "currentFraction":F
    :cond_0
    return v0
.end method

.method public static getDurationScale()F
    .locals 1

    .prologue
    .line 272
    sget v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    return v0
.end method

.method public static getFrameDelay()J
    .locals 2

    .prologue
    .line 745
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    invoke-static {}, Landroid/animation/AnimationHandler;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method private getScaledDuration()J
    .locals 2

    .prologue
    .line 544
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v0, v0

    sget v1, Landroid/animation/ValueAnimator;->sDurationScale:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method private isPulsingInternal()Z
    .locals 4

    .prologue
    .line 1192
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyStartListeners()V
    .locals 4

    .prologue
    .line 943
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    if-eqz v3, :cond_1

    .line 951
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    .line 942
    return-void

    .line 945
    :cond_1
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 946
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 947
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 948
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 947
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static varargs ofArgb([I)Landroid/animation/ValueAnimator;
    .locals 2
    .param p0, "values"    # [I

    .prologue
    .line 312
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 313
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 314
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 315
    return-object v0
.end method

.method public static varargs ofFloat([F)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "values"    # [F

    .prologue
    .line 330
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 331
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 332
    return-object v0
.end method

.method public static varargs ofInt([I)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "values"    # [I

    .prologue
    .line 295
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 296
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 297
    return-object v0
.end method

.method public static varargs ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "evaluator"    # Landroid/animation/TypeEvaluator;
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    .line 372
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 373
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 374
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 375
    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "values"    # [Landroid/animation/PropertyValuesHolder;

    .prologue
    .line 344
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 345
    .local v0, "anim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 346
    return-object v0
.end method

.method public static setDurationScale(F)V
    .locals 0
    .param p0, "durationScale"    # F

    .prologue
    .line 265
    sput p0, Landroid/animation/ValueAnimator;->sDurationScale:F

    .line 264
    return-void
.end method

.method public static setFrameDelay(J)V
    .locals 0
    .param p0, "frameDelay"    # J

    .prologue
    .line 765
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    invoke-static {p0, p1}, Landroid/animation/AnimationHandler;->setFrameDelay(J)V

    .line 764
    return-void
.end method

.method private shouldPlayBackward(I)Z
    .locals 4
    .param p1, "iteration"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 666
    if-lez p1, :cond_4

    iget v2, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 667
    iget v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/lit8 v2, v2, 0x1

    if-lt p1, v2, :cond_0

    iget v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 670
    :cond_0
    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    if-eqz v2, :cond_2

    .line 671
    rem-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 673
    :cond_2
    rem-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 676
    :cond_4
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    return v0
.end method

.method private start(Z)V
    .locals 12
    .param p1, "playBackwards"    # Z

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/high16 v8, -0x40800000    # -1.0f

    const-wide/16 v6, 0x0

    .line 968
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_0

    .line 969
    new-instance v2, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v3, "Animators may only be run on Looper threads"

    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 971
    :cond_0
    iput-boolean p1, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 973
    if-eqz p1, :cond_1

    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v2, v2, v8

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v2, v2, v9

    if-eqz v2, :cond_1

    .line 974
    iget v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 976
    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    float-to-double v2, v2

    iget v4, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v1, v2

    .line 977
    .local v1, "fraction":F
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    iput v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 982
    .end local v1    # "fraction":F
    :cond_1
    :goto_0
    iput-boolean v11, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 983
    iput-boolean v10, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    .line 984
    iput-boolean v10, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 988
    iput-wide v6, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    .line 989
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    .line 990
    .local v0, "animationHandler":Landroid/animation/AnimationHandler;
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    long-to-float v2, v2

    sget v3, Landroid/animation/ValueAnimator;->sDurationScale:F

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-virtual {v0, p0, v2, v3}, Landroid/animation/AnimationHandler;->addAnimationFrameCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;J)V

    .line 992
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v2, v2, v9

    if-ltz v2, :cond_3

    .line 996
    :cond_2
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->startAnimation()V

    .line 997
    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v2, v2, v8

    if-nez v2, :cond_5

    .line 1001
    invoke-virtual {p0, v6, v7}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 967
    :cond_3
    :goto_1
    return-void

    .line 979
    .end local v0    # "animationHandler":Landroid/animation/AnimationHandler;
    :cond_4
    iget v2, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget v3, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    sub-float/2addr v2, v3

    iput v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    goto :goto_0

    .line 1003
    .restart local v0    # "animationHandler":Landroid/animation/AnimationHandler;
    :cond_5
    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    invoke-virtual {p0, v2}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    goto :goto_1
.end method

.method private startAnimation()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x8

    const/4 v2, 0x0

    .line 1168
    invoke-static {v4, v5}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1169
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getNameForTrace()Ljava/lang/String;

    move-result-object v0

    .line 1170
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 1169
    invoke-static {v4, v5, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1173
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    .line 1174
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 1175
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 1176
    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    .line 1177
    iget v0, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    iput v0, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    .line 1181
    :goto_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1182
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    .line 1167
    :cond_1
    return-void

    .line 1179
    :cond_2
    iput v2, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    goto :goto_0
.end method


# virtual methods
.method public addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    .line 858
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 859
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 861
    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 857
    return-void
.end method

.method animateBasedOnTime(J)Z
    .locals 13
    .param p1, "currentTime"    # J

    .prologue
    .line 1233
    const/4 v1, 0x0

    .line 1234
    .local v1, "done":Z
    iget-boolean v10, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v10, :cond_1

    .line 1235
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    move-result-wide v8

    .line 1236
    .local v8, "scaledDuration":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_2

    .line 1237
    iget-wide v10, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long v10, p1, v10

    long-to-float v10, v10

    long-to-float v11, v8

    div-float v2, v10, v11

    .line 1238
    .local v2, "fraction":F
    :goto_0
    iget v4, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    .line 1239
    .local v4, "lastFraction":F
    float-to-int v10, v2

    float-to-int v11, v4

    if-le v10, v11, :cond_3

    const/4 v6, 0x1

    .line 1240
    .local v6, "newIteration":Z
    :goto_1
    iget v10, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/lit8 v10, v10, 0x1

    int-to-float v10, v10

    cmpl-float v10, v2, v10

    if-ltz v10, :cond_5

    .line 1241
    iget v10, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_4

    const/4 v5, 0x1

    .line 1242
    .local v5, "lastIterationFinished":Z
    :goto_2
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-nez v10, :cond_6

    .line 1244
    const/4 v1, 0x1

    .line 1256
    :cond_0
    :goto_3
    invoke-direct {p0, v2}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    move-result v10

    iput v10, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    .line 1257
    iget v10, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    invoke-direct {p0, v10}, Landroid/animation/ValueAnimator;->getCurrentIterationFraction(F)F

    move-result v0

    .line 1258
    .local v0, "currentIterationFraction":F
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 1260
    .end local v0    # "currentIterationFraction":F
    .end local v2    # "fraction":F
    .end local v4    # "lastFraction":F
    .end local v5    # "lastIterationFinished":Z
    .end local v6    # "newIteration":Z
    .end local v8    # "scaledDuration":J
    :cond_1
    return v1

    .line 1237
    .restart local v8    # "scaledDuration":J
    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    .restart local v2    # "fraction":F
    goto :goto_0

    .line 1239
    .restart local v4    # "lastFraction":F
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "newIteration":Z
    goto :goto_1

    .line 1241
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "lastIterationFinished":Z
    goto :goto_2

    .line 1240
    .end local v5    # "lastIterationFinished":Z
    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "lastIterationFinished":Z
    goto :goto_2

    .line 1245
    :cond_6
    if-eqz v6, :cond_7

    if-eqz v5, :cond_8

    .line 1253
    :cond_7
    if-eqz v5, :cond_0

    .line 1254
    const/4 v1, 0x1

    goto :goto_3

    .line 1247
    :cond_8
    iget-object v10, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v10, :cond_0

    .line 1248
    iget-object v10, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1249
    .local v7, "numListeners":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, v7, :cond_0

    .line 1250
    iget-object v10, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v10, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 1249
    add-int/lit8 v3, v3, 0x1

    goto :goto_4
.end method

.method animateValue(F)V
    .locals 4
    .param p1, "fraction"    # F

    .prologue
    .line 1337
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v3, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 1338
    iput p1, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    .line 1339
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v2, v3

    .line 1340
    .local v2, "numValues":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1341
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/animation/PropertyValuesHolder;->calculateValue(F)V

    .line 1340
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1343
    :cond_0
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 1344
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1345
    .local v1, "numListeners":I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 1346
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-interface {v3, p0}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 1345
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1336
    .end local v1    # "numListeners":I
    :cond_1
    return-void
.end method

.method public canReverse()Z
    .locals 1

    .prologue
    .line 1124
    const/4 v0, 0x1

    return v0
.end method

.method public cancel()V
    .locals 5

    .prologue
    .line 1015
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1016
    new-instance v3, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v4, "Animators may only be run on Looper threads"

    invoke-direct {v3, v4}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1021
    :cond_0
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    if-eqz v3, :cond_1

    .line 1022
    return-void

    .line 1028
    :cond_1
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    .line 1029
    iget-boolean v3, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-nez v3, :cond_3

    .line 1031
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->notifyStartListeners()V

    .line 1034
    :cond_3
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1035
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    .line 1036
    .local v0, "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v0, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_0

    .line 1039
    .end local v0    # "listener":Landroid/animation/Animator$AnimatorListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_4
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->endAnimation()V

    .line 1014
    return-void
.end method

.method public bridge synthetic clone()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 1352
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public clone()Landroid/animation/ValueAnimator;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    .line 1353
    invoke-super {p0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 1354
    .local v0, "anim":Landroid/animation/ValueAnimator;
    iget-object v5, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    .line 1355
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, v0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 1357
    :cond_0
    const/high16 v5, -0x40800000    # -1.0f

    iput v5, v0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 1358
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 1359
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 1360
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 1361
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mRunning:Z

    .line 1362
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mPaused:Z

    .line 1363
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 1364
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mStartListenersCalled:Z

    .line 1365
    iput-wide v8, v0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1366
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 1367
    iput-boolean v7, v0, Landroid/animation/ValueAnimator;->mAnimationEndRequested:Z

    .line 1368
    iput-wide v8, v0, Landroid/animation/ValueAnimator;->mPauseTime:J

    .line 1369
    iput-wide v8, v0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    .line 1370
    iput v10, v0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    .line 1371
    iput v10, v0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    .line 1373
    iget-object v4, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 1374
    .local v4, "oldValues":[Landroid/animation/PropertyValuesHolder;
    if-eqz v4, :cond_1

    .line 1375
    array-length v3, v4

    .line 1376
    .local v3, "numValues":I
    new-array v5, v3, [Landroid/animation/PropertyValuesHolder;

    iput-object v5, v0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 1377
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v5, v0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    .line 1378
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 1379
    aget-object v5, v4, v1

    invoke-virtual {v5}, Landroid/animation/PropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1380
    .local v2, "newValuesHolder":Landroid/animation/PropertyValuesHolder;
    iget-object v5, v0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aput-object v2, v5, v1

    .line 1381
    iget-object v5, v0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1378
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1384
    .end local v1    # "i":I
    .end local v2    # "newValuesHolder":Landroid/animation/PropertyValuesHolder;
    .end local v3    # "numValues":I
    :cond_1
    return-object v0
.end method

.method public commitAnimationFrame(J)V
    .locals 5
    .param p1, "frameTime"    # J

    .prologue
    .line 1208
    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    if-nez v2, :cond_0

    .line 1209
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 1210
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    sub-long v0, p1, v2

    .line 1211
    .local v0, "adjustment":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1212
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1207
    .end local v0    # "adjustment":J
    :cond_0
    return-void
.end method

.method public final doAnimationFrame(J)V
    .locals 11
    .param p1, "frameTime"    # J

    .prologue
    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    .line 1271
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v3

    .line 1272
    .local v3, "handler":Landroid/animation/AnimationHandler;
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 1274
    invoke-virtual {v3, p0}, Landroid/animation/AnimationHandler;->addOneShotCommitCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;)V

    .line 1275
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 1276
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->startAnimation()V

    .line 1278
    :cond_0
    iget v6, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    .line 1279
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1285
    :goto_0
    iput-boolean v10, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 1287
    :cond_1
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mLastFrameTime:J

    .line 1288
    iget-boolean v6, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    if-eqz v6, :cond_3

    .line 1289
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    .line 1290
    invoke-virtual {v3, p0}, Landroid/animation/AnimationHandler;->removeCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;)V

    .line 1291
    return-void

    .line 1281
    :cond_2
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    move-result-wide v6

    long-to-float v6, v6

    iget v7, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    mul-float/2addr v6, v7

    float-to-long v4, v6

    .line 1282
    .local v4, "seekTime":J
    sub-long v6, p1, v4

    iput-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1283
    const/high16 v6, -0x40800000    # -1.0f

    iput v6, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    goto :goto_0

    .line 1292
    .end local v4    # "seekTime":J
    :cond_3
    iget-boolean v6, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    if-eqz v6, :cond_5

    .line 1293
    iput-boolean v10, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 1294
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    .line 1296
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    iget-wide v8, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    sub-long v8, p1, v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1297
    iput-boolean v10, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 1299
    :cond_4
    invoke-virtual {v3, p0}, Landroid/animation/AnimationHandler;->addOneShotCommitCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;)V

    .line 1305
    :cond_5
    iget-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    invoke-static {p1, p2, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1306
    .local v0, "currentTime":J
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->animateBasedOnTime(J)Z

    move-result v2

    .line 1308
    .local v2, "finished":Z
    if-eqz v2, :cond_6

    .line 1309
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->endAnimation()V

    .line 1270
    :cond_6
    return-void
.end method

.method public end()V
    .locals 2

    .prologue
    .line 1045
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1046
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1048
    :cond_0
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    if-nez v0, :cond_2

    .line 1050
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->startAnimation()V

    .line 1051
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    .line 1055
    :cond_1
    :goto_0
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    invoke-direct {p0, v0}, Landroid/animation/ValueAnimator;->shouldPlayBackward(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 1056
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->endAnimation()V

    .line 1044
    return-void

    .line 1052
    :cond_2
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-nez v0, :cond_1

    .line 1053
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    goto :goto_0

    .line 1055
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1
.end method

.method public getAnimatedFraction()F
    .locals 1

    .prologue
    .line 1320
    iget v0, p0, Landroid/animation/ValueAnimator;->mCurrentFraction:F

    return v0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 781
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 782
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 785
    :cond_0
    return-object v2
.end method

.method public getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 799
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/PropertyValuesHolder;

    .line 800
    .local v0, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    if-eqz v0, :cond_0

    .line 801
    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 804
    :cond_0
    return-object v2
.end method

.method public getCurrentPlayTime()J
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 690
    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-nez v1, :cond_1

    iget v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 691
    :cond_0
    const-wide/16 v2, 0x0

    return-wide v2

    .line 693
    :cond_1
    iget v1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    .line 694
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v1, v2

    iget v2, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    mul-float/2addr v1, v2

    float-to-long v2, v1

    return-wide v2

    .line 696
    :cond_2
    sget v1, Landroid/animation/ValueAnimator;->sDurationScale:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 697
    .local v0, "durationScale":F
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    div-float/2addr v1, v0

    float-to-long v2, v1

    return-wide v2

    .line 696
    .end local v0    # "durationScale":F
    :cond_3
    sget v0, Landroid/animation/ValueAnimator;->sDurationScale:F

    .restart local v0    # "durationScale":F
    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 554
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mDuration:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method getNameForTrace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1199
    const-string/jumbo v0, "animator"

    return-object v0
.end method

.method public getRepeatCount()I
    .locals 1

    .prologue
    .line 826
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 847
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    return v0
.end method

.method public getStartDelay()J
    .locals 2

    .prologue
    .line 708
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    return-wide v0
.end method

.method public getTotalDuration()J
    .locals 6

    .prologue
    .line 559
    iget v0, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 560
    const-wide/16 v0, -0x1

    return-wide v0

    .line 562
    :cond_0
    iget-wide v0, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mDuration:J

    iget v4, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getValues()[Landroid/animation/PropertyValuesHolder;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    return-object v0
.end method

.method initAnimation()V
    .locals 3

    .prologue
    .line 515
    iget-boolean v2, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    if-nez v2, :cond_1

    .line 516
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v2

    .line 517
    .local v1, "numValues":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 518
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->init()V

    .line 517
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 520
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 514
    .end local v0    # "i":I
    .end local v1    # "numValues":I
    :cond_1
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 1087
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mRunning:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 1092
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    return v0
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 1077
    iget-boolean v0, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    .line 1078
    .local v0, "previouslyPaused":Z
    invoke-super {p0}, Landroid/animation/Animator;->pause()V

    .line 1079
    if-nez v0, :cond_0

    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    if-eqz v1, :cond_0

    .line 1080
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    .line 1081
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 1076
    :cond_0
    return-void
.end method

.method public removeAllUpdateListeners()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 868
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 869
    return-void

    .line 871
    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 872
    iput-object v1, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 867
    return-void
.end method

.method public removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    const/4 v1, 0x0

    .line 882
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 883
    return-void

    .line 885
    :cond_0
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 886
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 887
    iput-object v1, p0, Landroid/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 881
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1061
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1062
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v2, "Animators may only be resumed from the same thread that the animator was started on"

    invoke-direct {v1, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1065
    :cond_0
    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mPaused:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    if-eqz v1, :cond_2

    .line 1072
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/animation/Animator;->resume()V

    .line 1060
    return-void

    .line 1066
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mResumed:Z

    .line 1067
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mPauseTime:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 1068
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    .line 1069
    .local v0, "handler":Landroid/animation/AnimationHandler;
    invoke-virtual {v0, p0, v4, v5}, Landroid/animation/AnimationHandler;->addAnimationFrameCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;J)V

    goto :goto_0
.end method

.method public reverse()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1104
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->isPulsingInternal()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1105
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 1106
    .local v2, "currentTime":J
    iget-wide v8, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    sub-long v0, v2, v8

    .line 1107
    .local v0, "currentPlayTime":J
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    move-result-wide v8

    sub-long v4, v8, v0

    .line 1108
    .local v4, "timeLeft":J
    sub-long v8, v2, v4

    iput-wide v8, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 1109
    iput-boolean v7, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 1110
    iget-boolean v8, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    if-eqz v8, :cond_0

    :goto_0
    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 1103
    .end local v0    # "currentPlayTime":J
    .end local v2    # "currentTime":J
    .end local v4    # "timeLeft":J
    :goto_1
    return-void

    .restart local v0    # "currentPlayTime":J
    .restart local v2    # "currentTime":J
    .restart local v4    # "timeLeft":J
    :cond_0
    move v6, v7

    .line 1110
    goto :goto_0

    .line 1111
    .end local v0    # "currentPlayTime":J
    .end local v2    # "currentTime":J
    .end local v4    # "timeLeft":J
    :cond_1
    iget-boolean v8, p0, Landroid/animation/ValueAnimator;->mStarted:Z

    if-eqz v8, :cond_3

    .line 1112
    iget-boolean v8, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    if-eqz v8, :cond_2

    :goto_2
    iput-boolean v6, p0, Landroid/animation/ValueAnimator;->mReversing:Z

    .line 1113
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_1

    :cond_2
    move v6, v7

    .line 1112
    goto :goto_2

    .line 1115
    :cond_3
    invoke-direct {p0, v7}, Landroid/animation/ValueAnimator;->start(Z)V

    goto :goto_1
.end method

.method public setAllowRunningAsynchronously(Z)V
    .locals 0
    .param p1, "mayRunAsync"    # Z

    .prologue
    .line 1461
    return-void
.end method

.method public setCurrentFraction(F)V
    .locals 8
    .param p1, "fraction"    # F

    .prologue
    .line 599
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .line 600
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->clampFraction(F)F

    move-result p1

    .line 601
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->getScaledDuration()J

    move-result-wide v6

    long-to-float v1, v6

    mul-float/2addr v1, p1

    float-to-long v4, v1

    .line 602
    .local v4, "seekTime":J
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 603
    .local v2, "currentTime":J
    sub-long v6, v2, v4

    iput-wide v6, p0, Landroid/animation/ValueAnimator;->mStartTime:J

    .line 604
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/animation/ValueAnimator;->mStartTimeCommitted:Z

    .line 605
    invoke-direct {p0}, Landroid/animation/ValueAnimator;->isPulsingInternal()Z

    move-result v1

    if-nez v1, :cond_0

    .line 608
    iput p1, p0, Landroid/animation/ValueAnimator;->mSeekFraction:F

    .line 610
    :cond_0
    iput p1, p0, Landroid/animation/ValueAnimator;->mOverallFraction:F

    .line 611
    invoke-direct {p0, p1}, Landroid/animation/ValueAnimator;->getCurrentIterationFraction(F)F

    move-result v0

    .line 612
    .local v0, "currentIterationFraction":F
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->animateValue(F)V

    .line 598
    return-void
.end method

.method public setCurrentPlayTime(J)V
    .locals 7
    .param p1, "playTime"    # J

    .prologue
    .line 577
    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mDuration:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    long-to-float v1, p1

    iget-wide v2, p0, Landroid/animation/ValueAnimator;->mDuration:J

    long-to-float v2, v2

    div-float v0, v1, v2

    .line 578
    .local v0, "fraction":F
    :goto_0
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 576
    return-void

    .line 577
    .end local v0    # "fraction":F
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 534
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Landroid/animation/ValueAnimator;
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 535
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 536
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

    .line 539
    :cond_0
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mDuration:J

    .line 540
    return-object p0
.end method

.method public setEvaluator(Landroid/animation/TypeEvaluator;)V
    .locals 2
    .param p1, "value"    # Landroid/animation/TypeEvaluator;

    .prologue
    const/4 v1, 0x0

    .line 937
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 938
    iget-object v0, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 936
    :cond_0
    return-void
.end method

.method public varargs setFloatValues([F)V
    .locals 4
    .param p1, "values"    # [F

    .prologue
    const/4 v3, 0x0

    .line 421
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 422
    :cond_0
    return-void

    .line 424
    :cond_1
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_3

    .line 425
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const-string/jumbo v2, ""

    invoke-static {v2, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 431
    :goto_0
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 420
    return-void

    .line 427
    :cond_3
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v1, v3

    .line 428
    .local v0, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    goto :goto_0
.end method

.method public varargs setIntValues([I)V
    .locals 4
    .param p1, "values"    # [I

    .prologue
    const/4 v3, 0x0

    .line 393
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 394
    :cond_0
    return-void

    .line 396
    :cond_1
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_3

    .line 397
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const-string/jumbo v2, ""

    invoke-static {v2, p1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 403
    :goto_0
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 392
    return-void

    .line 399
    :cond_3
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v1, v3

    .line 400
    .local v0, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    goto :goto_0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 1
    .param p1, "value"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 903
    if-eqz p1, :cond_0

    .line 904
    iput-object p1, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 902
    :goto_0
    return-void

    .line 906
    :cond_0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroid/animation/ValueAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .locals 5
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 458
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 459
    :cond_0
    return-void

    .line 461
    :cond_1
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_3

    .line 462
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const-string/jumbo v2, ""

    invoke-static {v2, v4, p1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 468
    :goto_0
    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 457
    return-void

    .line 464
    :cond_3
    iget-object v1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v0, v1, v3

    .line 465
    .local v0, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setRepeatCount(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 817
    iput p1, p0, Landroid/animation/ValueAnimator;->mRepeatCount:I

    .line 816
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 837
    iput p1, p0, Landroid/animation/ValueAnimator;->mRepeatMode:I

    .line 836
    return-void
.end method

.method public setStartDelay(J)V
    .locals 3
    .param p1, "startDelay"    # J

    .prologue
    .line 721
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 722
    const-string/jumbo v0, "ValueAnimator"

    const-string/jumbo v1, "Start delay should always be non-negative"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    const-wide/16 p1, 0x0

    .line 725
    :cond_0
    iput-wide p1, p0, Landroid/animation/ValueAnimator;->mStartDelay:J

    .line 719
    return-void
.end method

.method public varargs setValues([Landroid/animation/PropertyValuesHolder;)V
    .locals 5
    .param p1, "values"    # [Landroid/animation/PropertyValuesHolder;

    .prologue
    .line 480
    array-length v1, p1

    .line 481
    .local v1, "numValues":I
    iput-object p1, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    .line 482
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    .line 483
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 484
    aget-object v2, p1, v0

    .line 485
    .local v2, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    iget-object v3, p0, Landroid/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 488
    .end local v2    # "valuesHolder":Landroid/animation/PropertyValuesHolder;
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/animation/ValueAnimator;->mInitialized:Z

    .line 479
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 1010
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/animation/ValueAnimator;->start(Z)V

    .line 1009
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1417
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

    .line 1418
    .local v1, "returnVal":Ljava/lang/String;
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v2, :cond_0

    .line 1419
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/animation/ValueAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1420
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

    .line 1419
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1423
    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method
