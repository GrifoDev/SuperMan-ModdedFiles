.class public Landroid/animation/TimeAnimator;
.super Landroid/animation/ValueAnimator;
.source "TimeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/TimeAnimator$TimeListener;
    }
.end annotation


# instance fields
.field private mListener:Landroid/animation/TimeAnimator$TimeListener;

.field private mPreviousTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    return-void
.end method


# virtual methods
.method animateBasedOnTime(J)Z
    .locals 9

    iget-object v0, p0, Landroid/animation/TimeAnimator;->mListener:Landroid/animation/TimeAnimator$TimeListener;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/animation/TimeAnimator;->mStartTime:J

    sub-long v2, p1, v0

    iget-wide v0, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-gez v0, :cond_1

    const-wide/16 v4, 0x0

    :goto_0
    iput-wide p1, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    iget-object v0, p0, Landroid/animation/TimeAnimator;->mListener:Landroid/animation/TimeAnimator$TimeListener;

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Landroid/animation/TimeAnimator$TimeListener;->onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget-wide v0, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    sub-long v4, p1, v0

    goto :goto_0
.end method

.method animateValue(F)V
    .locals 0

    return-void
.end method

.method initAnimation()V
    .locals 0

    return-void
.end method

.method public setCurrentPlayTime(J)V
    .locals 7

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/animation/TimeAnimator;->mStartTime:J

    sub-long v4, v0, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/animation/TimeAnimator;->mStartTime:J

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/animation/TimeAnimator;->mStartTimeCommitted:Z

    invoke-virtual {p0, v0, v1}, Landroid/animation/TimeAnimator;->animateBasedOnTime(J)Z

    return-void
.end method

.method public setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V
    .locals 0

    iput-object p1, p0, Landroid/animation/TimeAnimator;->mListener:Landroid/animation/TimeAnimator$TimeListener;

    return-void
.end method

.method public start()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/animation/TimeAnimator;->mPreviousTime:J

    invoke-super {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
