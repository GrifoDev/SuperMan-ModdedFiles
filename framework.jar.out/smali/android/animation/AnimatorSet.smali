.class public final Landroid/animation/AnimatorSet;
.super Landroid/animation/Animator;
.source "AnimatorSet.java"

# interfaces
.implements Landroid/animation/AnimationHandler$AnimationFrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/AnimatorSet$1;,
        Landroid/animation/AnimatorSet$AnimationEvent;,
        Landroid/animation/AnimatorSet$Builder;,
        Landroid/animation/AnimatorSet$Node;,
        Landroid/animation/AnimatorSet$SeekState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AnimatorSet"


# instance fields
.field private mChildrenInitialized:Z

.field private mDelayAnim:Landroid/animation/ValueAnimator;

.field private mDependencyDirty:Z

.field private mDummyListener:Landroid/animation/AnimatorListenerAdapter;

.field private mDuration:J

.field private final mEndCanBeCalled:Z

.field private mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$AnimationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstFrame:J

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mLastEventId:I

.field private mLastFrameTime:J

.field private mNodeMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mPauseTime:J

.field private mPlayingSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mReversing:Z

.field private mRootNode:Landroid/animation/AnimatorSet$Node;

.field private mSeekState:Landroid/animation/AnimatorSet$SeekState;

.field private mSelfPulse:Z

.field private final mShouldIgnoreEndWithoutStart:Z

.field private final mShouldResetValuesAtStart:Z

.field private mStartDelay:J

.field private mStarted:Z

.field private mTotalDuration:J


# direct methods
.method static synthetic -get0(Landroid/animation/AnimatorSet;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -get1(Landroid/animation/AnimatorSet;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    return v0
.end method

.method static synthetic -get2(Landroid/animation/AnimatorSet;)J
    .locals 2

    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    return-wide v0
.end method

.method static synthetic -set0(Landroid/animation/AnimatorSet;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Node;
    .locals 1

    invoke-direct {p0, p1}, Landroid/animation/AnimatorSet;->getNodeForAnimation(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Node;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v8, 0x1

    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    iput-boolean v5, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    iput-boolean v5, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    iput-wide v10, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/animation/AnimatorSet$Node;

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    invoke-direct {v2, v3}, Landroid/animation/AnimatorSet$Node;-><init>(Landroid/animation/Animator;)V

    iput-object v2, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    iput-wide v6, p0, Landroid/animation/AnimatorSet;->mDuration:J

    iput-object v4, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    iput-wide v10, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    iput-wide v6, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    iput-wide v6, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    const/4 v2, -0x1

    iput v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    iput-boolean v5, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    iput-boolean v8, p0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    new-instance v2, Landroid/animation/AnimatorSet$SeekState;

    invoke-direct {v2, p0, v4}, Landroid/animation/AnimatorSet$SeekState;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet$SeekState;)V

    iput-object v2, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    iput-boolean v5, p0, Landroid/animation/AnimatorSet;->mChildrenInitialized:Z

    iput-wide v6, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    new-instance v2, Landroid/animation/AnimatorSet$1;

    invoke-direct {v2, p0}, Landroid/animation/AnimatorSet$1;-><init>(Landroid/animation/AnimatorSet;)V

    iput-object v2, p0, Landroid/animation/AnimatorSet;->mDummyListener:Landroid/animation/AnimatorListenerAdapter;

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    iput-boolean v8, p0, Landroid/animation/AnimatorSet;->mShouldIgnoreEndWithoutStart:Z

    const/4 v1, 0x1

    :goto_0
    xor-int/lit8 v2, v1, 0x1

    iput-boolean v2, p0, Landroid/animation/AnimatorSet;->mShouldResetValuesAtStart:Z

    xor-int/lit8 v2, v1, 0x1

    iput-boolean v2, p0, Landroid/animation/AnimatorSet;->mEndCanBeCalled:Z

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_2

    iput-boolean v8, p0, Landroid/animation/AnimatorSet;->mShouldIgnoreEndWithoutStart:Z

    :goto_1
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v5, p0, Landroid/animation/AnimatorSet;->mShouldIgnoreEndWithoutStart:Z

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private addAnimationCallback(J)V
    .locals 3

    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/animation/AnimationHandler;->addAnimationFrameCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;J)V

    return-void
.end method

.method private addDummyListener()V
    .locals 3

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    iget-object v1, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mDummyListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createDependencyGraph()V
    .locals 14

    iget-boolean v9, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    if-nez v9, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v9, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_0

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$Node;

    iget-object v0, v9, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$Node;

    iget-wide v10, v9, Landroid/animation/AnimatorSet$Node;->mTotalDuration:J

    invoke-virtual {v0}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-eqz v9, :cond_1

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_2

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v7, :cond_3

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$Node;

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/animation/AnimatorSet$Node;->mParentsAdded:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v7, :cond_7

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/AnimatorSet$Node;

    iget-boolean v9, v4, Landroid/animation/AnimatorSet$Node;->mParentsAdded:Z

    if-eqz v9, :cond_5

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v9, 0x1

    iput-boolean v9, v4, Landroid/animation/AnimatorSet$Node;->mParentsAdded:Z

    iget-object v9, v4, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    if-eqz v9, :cond_4

    iget-object v9, v4, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v9}, Landroid/animation/AnimatorSet;->findSiblings(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    iget-object v9, v4, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v9, v4, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v6, :cond_6

    iget-object v9, v4, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$Node;

    iget-object v9, v9, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Landroid/animation/AnimatorSet$Node;->addParents(Ljava/util/ArrayList;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v6, :cond_4

    iget-object v9, v4, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$Node;

    iget-object v9, v4, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Landroid/animation/AnimatorSet$Node;->addParents(Ljava/util/ArrayList;)V

    const/4 v9, 0x1

    iput-boolean v9, v5, Landroid/animation/AnimatorSet$Node;->mParentsAdded:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v7, :cond_9

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/AnimatorSet$Node;

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-eq v4, v9, :cond_8

    iget-object v9, v4, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    if-nez v9, :cond_8

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v4, v9}, Landroid/animation/AnimatorSet$Node;->addParent(Landroid/animation/AnimatorSet$Node;)V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_9
    new-instance v8, Ljava/util/ArrayList;

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    const-wide/16 v10, 0x0

    iput-wide v10, v9, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    iget-object v10, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v10

    iput-wide v10, v9, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-direct {p0, v9, v8}, Landroid/animation/AnimatorSet;->updatePlayTime(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->sortAnimationEvents()V

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    iget-object v10, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$AnimationEvent;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v10

    iput-wide v10, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    return-void
.end method

.method private endAnimation()V
    .locals 8

    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    iput-wide v6, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    iput-wide v6, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    const/4 v3, -0x1

    iput v3, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    iput-boolean v5, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    iput-wide v6, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet$SeekState;->reset()V

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->removeAnimationCallback()V

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

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

    iget-boolean v4, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-interface {v3, p0, v4}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->removeDummyListener()V

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    iput-boolean v5, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    return-void
.end method

.method private findLatestEventIdForTime(J)I
    .locals 9

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v3, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    iget-boolean v5, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v6

    sub-long p1, v6, p1

    iget v5, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    :goto_0
    iput v4, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    iget v5, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    add-int/lit8 v2, v5, -0x1

    :goto_1
    if-ltz v2, :cond_4

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$AnimationEvent;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v6

    cmp-long v5, v6, p1

    if-ltz v5, :cond_0

    move v3, v2

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    iget v4, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    goto :goto_0

    :cond_2
    iget v5, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    add-int/lit8 v1, v5, 0x1

    :goto_2
    if-ge v1, v4, :cond_4

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$AnimationEvent;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v6

    cmp-long v5, v6, p1

    if-gtz v5, :cond_3

    move v3, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return v3
.end method

.method private findSiblings(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet$Node;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p1, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p1, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    invoke-direct {p0, v1, p2}, Landroid/animation/AnimatorSet;->findSiblings(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private forceToEnd()V
    .locals 6

    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mEndCanBeCalled:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    return-void

    :cond_0
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v4

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/animation/AnimatorSet;->handleAnimationEvents(IIJ)V

    :goto_0
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->endAnimation()V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    const-wide/32 v0, 0x7fffffff

    :cond_2
    iget v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/animation/AnimatorSet;->handleAnimationEvents(IIJ)V

    goto :goto_0
.end method

.method private getNodeForAnimation(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Node;
    .locals 2

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$Node;

    if-nez v0, :cond_0

    new-instance v0, Landroid/animation/AnimatorSet$Node;

    invoke-direct {v0, p1}, Landroid/animation/AnimatorSet$Node;-><init>(Landroid/animation/Animator;)V

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method private getPlayTimeForNode(JLandroid/animation/AnimatorSet$Node;)J
    .locals 3

    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/animation/AnimatorSet;->getPlayTimeForNode(JLandroid/animation/AnimatorSet$Node;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private getPlayTimeForNode(JLandroid/animation/AnimatorSet$Node;Z)J
    .locals 3

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    sub-long p1, v0, p1

    iget-wide v0, p3, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    sub-long/2addr v0, p1

    return-wide v0

    :cond_0
    iget-wide v0, p3, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    sub-long v0, p1, v0

    return-wide v0
.end method

.method private handleAnimationEvents(IIJ)V
    .locals 7

    iget-boolean v3, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v3, :cond_4

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    :cond_0
    add-int/lit8 v1, p1, -0x1

    :goto_0
    if-lt v1, p2, :cond_8

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v2, v0, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget v3, v0, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget-object v3, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    iget-object v4, v0, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->startWithoutPulsing(Z)V

    const-wide/16 v4, 0x0

    invoke-direct {p0, v2, v4, v5}, Landroid/animation/AnimatorSet;->pulseFrame(Landroid/animation/AnimatorSet$Node;J)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    iget v3, v0, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    invoke-direct {p0, p3, p4, v2}, Landroid/animation/AnimatorSet;->getPlayTimeForNode(JLandroid/animation/AnimatorSet$Node;)J

    move-result-wide v4

    invoke-direct {p0, v2, v4, v5}, Landroid/animation/AnimatorSet;->pulseFrame(Landroid/animation/AnimatorSet$Node;J)V

    goto :goto_1

    :cond_4
    add-int/lit8 v1, p1, 0x1

    :goto_2
    if-gt v1, p2, :cond_8

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v2, v0, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget v3, v0, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-nez v3, :cond_7

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    iget-object v4, v0, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    :cond_5
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    iget-object v3, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->startWithoutPulsing(Z)V

    const-wide/16 v4, 0x0

    invoke-direct {p0, v2, v4, v5}, Landroid/animation/AnimatorSet;->pulseFrame(Landroid/animation/AnimatorSet$Node;J)V

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    iget v3, v0, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    iget-boolean v3, v2, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_6

    invoke-direct {p0, p3, p4, v2}, Landroid/animation/AnimatorSet;->getPlayTimeForNode(JLandroid/animation/AnimatorSet$Node;)J

    move-result-wide v4

    invoke-direct {p0, v2, v4, v5}, Landroid/animation/AnimatorSet;->pulseFrame(Landroid/animation/AnimatorSet$Node;J)V

    goto :goto_3

    :cond_8
    return-void
.end method

.method private initAnimation()V
    .locals 4

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    iget-object v2, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->updateAnimatorsDuration()V

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->createDependencyGraph()V

    return-void
.end method

.method private initChildren()V
    .locals 1

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mChildrenInitialized:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->skipToEndValue(Z)V

    :cond_0
    return-void
.end method

.method private static isEmptySet(Landroid/animation/AnimatorSet;)Z
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getStartDelay()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    return v6

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    instance-of v2, v0, Landroid/animation/AnimatorSet;

    if-nez v2, :cond_1

    return v6

    :cond_1
    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-static {v0}, Landroid/animation/AnimatorSet;->isEmptySet(Landroid/animation/AnimatorSet;)Z

    move-result v2

    if-nez v2, :cond_2

    return v6

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method private printChildCount()V
    .locals 10

    new-instance v4, Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v8, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v8, "AnimatorSet"

    const-string/jumbo v9, "Current tree: "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    if-ge v3, v5, :cond_2

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/AnimatorSet$Node;

    const/4 v7, 0x0

    iget-object v8, v6, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    if-eqz v8, :cond_1

    const/4 v2, 0x0

    :goto_2
    iget-object v8, v6, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_1

    iget-object v8, v6, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    iget-object v8, v1, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    if-ne v8, v6, :cond_0

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    const-string/jumbo v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v8, "AnimatorSet"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    return-void
.end method

.method private pulseFrame(Landroid/animation/AnimatorSet$Node;J)V
    .locals 4

    iget-boolean v1, p1, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-nez v1, :cond_1

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_0
    iget-object v1, p1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    long-to-float v2, p2

    mul-float/2addr v2, v0

    float-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->pulseAnimationFrame(J)Z

    move-result v1

    iput-boolean v1, p1, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    :cond_1
    return-void
.end method

.method private removeAnimationCallback()V
    .locals 2

    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/AnimationHandler;->removeCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;)V

    return-void
.end method

.method private removeDummyListener()V
    .locals 3

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    iget-object v1, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mDummyListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private skipToStartValue(Z)V
    .locals 1

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->skipToEndValue(Z)V

    return-void
.end method

.method private sortAnimationEvents()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/AnimatorSet$Node;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v13, Landroid/animation/AnimatorSet$AnimationEvent;

    const/4 v14, 0x0

    invoke-direct {v13, v7, v14}, Landroid/animation/AnimatorSet$AnimationEvent;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v13, Landroid/animation/AnimatorSet$AnimationEvent;

    const/4 v14, 0x1

    invoke-direct {v13, v7, v14}, Landroid/animation/AnimatorSet$AnimationEvent;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v13, Landroid/animation/AnimatorSet$AnimationEvent;

    const/4 v14, 0x2

    invoke-direct {v13, v7, v14}, Landroid/animation/AnimatorSet$AnimationEvent;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v13, Landroid/animation/AnimatorSet$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/animation/AnimatorSet$3;-><init>(Landroid/animation/AnimatorSet;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v12, v2, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_a

    iget-object v12, v2, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v12, v12, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    iget-object v14, v2, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v14, v14, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    cmp-long v12, v12, v14

    if-nez v12, :cond_2

    const/4 v6, 0x1

    :goto_2
    move v11, v3

    move v9, v3

    add-int/lit8 v5, v4, 0x1

    :goto_3
    if-ge v5, v3, :cond_1

    if-ge v11, v3, :cond_4

    if-ge v9, v3, :cond_4

    :cond_1
    if-eqz v6, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ne v11, v12, :cond_7

    new-instance v12, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v13, "Something went wrong, no start isfound after stop for an animation that has the same start and endtime."

    invoke-direct {v12, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_2
    iget-object v12, v2, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v12, v12, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    iget-object v14, v2, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v14, v14, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    iget-object v0, v2, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v16

    add-long v14, v14, v16

    cmp-long v12, v12, v14

    if-nez v12, :cond_3

    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v12, v12, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v13, v2, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    if-ne v12, v13, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v12, v12, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-nez v12, :cond_6

    move v11, v5

    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v12, v12, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    move v9, v5

    goto :goto_4

    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ne v9, v12, :cond_8

    new-instance v12, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v13, "Something went wrong, no startdelay end is found after stop for an animation"

    invoke-direct {v12, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_8
    if-eqz v6, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/AnimatorSet$AnimationEvent;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12, v4, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/AnimatorSet$AnimationEvent;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12, v4, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x2

    goto/16 :goto_1

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v12, v12, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-eqz v12, :cond_c

    new-instance v12, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v13, "Sorting went bad, the start event should always be at index 0"

    invoke-direct {v12, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v13, Landroid/animation/AnimatorSet$AnimationEvent;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Landroid/animation/AnimatorSet$AnimationEvent;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    const/4 v14, 0x0

    invoke-virtual {v12, v14, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v13, Landroid/animation/AnimatorSet$AnimationEvent;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    const/4 v15, 0x1

    invoke-direct {v13, v14, v15}, Landroid/animation/AnimatorSet$AnimationEvent;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    const/4 v14, 0x1

    invoke-virtual {v12, v14, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v13, Landroid/animation/AnimatorSet$AnimationEvent;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    const/4 v15, 0x2

    invoke-direct {v13, v14, v15}, Landroid/animation/AnimatorSet$AnimationEvent;-><init>(Landroid/animation/AnimatorSet$Node;I)V

    const/4 v14, 0x2

    invoke-virtual {v12, v14, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v12, v12, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-eqz v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v12, v12, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_e

    :cond_d
    new-instance v12, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v13, "Something went wrong, the last event is not an end event"

    invoke-direct {v12, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_e
    return-void
.end method

.method private start(ZZ)V
    .locals 9

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    if-nez v6, :cond_0

    new-instance v6, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v7, "Animators may only be run on Looper threads"

    invoke-direct {v6, v7}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    iput-boolean p2, p0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    iput-boolean v8, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    const-wide/16 v6, -0x1

    iput-wide v6, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    iget-object v6, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    iget-object v6, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    iput-boolean v8, v2, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    iget-object v6, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v6, v8}, Landroid/animation/Animator;->setAllowRunningAsynchronously(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->initAnimation()V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->canReverse()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v7, "Cannot reverse infinite AnimatorSet"

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    iput-boolean p1, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-static {p0}, Landroid/animation/AnimatorSet;->isEmptySet(Landroid/animation/AnimatorSet;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->startAnimation()V

    :cond_3
    iget-object v6, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_4

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v6, p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    :cond_5
    return-void
.end method

.method private startAnimation()V
    .locals 11

    const/4 v10, 0x1

    const-wide/16 v8, 0x0

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->addDummyListener()V

    invoke-direct {p0, v8, v9}, Landroid/animation/AnimatorSet;->addAnimationCallback(J)V

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet$SeekState;->getPlayTimeNormalized()J

    move-result-wide v6

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    iget-boolean v5, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet$SeekState;->reset()V

    :cond_0
    iget-boolean v5, p0, Landroid/animation/AnimatorSet;->mShouldResetValuesAtStart:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isInitialized()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    xor-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Landroid/animation/AnimatorSet;->skipToEndValue(Z)V

    :cond_1
    :goto_0
    iget-boolean v5, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-nez v5, :cond_2

    iget-wide v6, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_7

    :cond_2
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet$SeekState;->isActive()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    iget-boolean v6, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet$SeekState;->updateSeekDirection(Z)V

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet$SeekState;->getPlayTime()J

    move-result-wide v2

    :goto_1
    invoke-direct {p0, v2, v3}, Landroid/animation/AnimatorSet;->findLatestEventIdForTime(J)I

    move-result v4

    const/4 v5, -0x1

    invoke-direct {p0, v5, v4, v2, v3}, Landroid/animation/AnimatorSet;->handleAnimationEvents(IIJ)V

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_2
    if-ltz v1, :cond_9

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$Node;

    iget-boolean v5, v5, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_4
    iget-boolean v5, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v5, :cond_5

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->initChildren()V

    iget-boolean v5, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    xor-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Landroid/animation/AnimatorSet;->skipToEndValue(Z)V

    goto :goto_0

    :cond_5
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_3
    if-ltz v1, :cond_1

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v5, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v5, v10, :cond_6

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v5, v5, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v0, v5, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isInitialized()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v0, v10}, Landroid/animation/Animator;->skipToEndValue(Z)V

    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_7
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet$SeekState;->isActive()Z

    move-result v5

    if-nez v5, :cond_2

    :goto_4
    return-void

    :cond_8
    const-wide/16 v2, 0x0

    goto :goto_1

    :cond_9
    iput v4, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    goto :goto_4
.end method

.method private updateAnimatorsDuration()V
    .locals 8

    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mDuration:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    iget-object v3, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mDuration:J

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method private updatePlayTime(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet$Node;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet$Node;",
            ">;)V"
        }
    .end annotation

    iget-object v8, p1, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    if-nez v8, :cond_2

    iget-object v8, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-ne p1, v8, :cond_1

    const/4 v4, 0x0

    :goto_0
    iget-object v8, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_1

    iget-object v8, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/AnimatorSet$Node;

    iget-object v8, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-eq v7, v8, :cond_0

    const-wide/16 v8, -0x1

    iput-wide v8, v7, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    const-wide/16 v8, -0x1

    iput-wide v8, v7, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p1, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_9

    iget-object v8, p1, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet$Node;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_4

    move v6, v5

    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_3

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/AnimatorSet$Node;

    const/4 v9, 0x0

    iput-object v9, v8, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/AnimatorSet$Node;

    const-wide/16 v10, -0x1

    iput-wide v10, v8, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/AnimatorSet$Node;

    const-wide/16 v10, -0x1

    iput-wide v10, v8, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    const-wide/16 v8, -0x1

    iput-wide v8, v0, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    const-wide/16 v8, -0x1

    iput-wide v8, v0, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    const/4 v8, 0x0

    iput-object v8, v0, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    const-string/jumbo v8, "AnimatorSet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Cycle found in AnimatorSet: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget-wide v8, v0, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_5

    iget-wide v8, p1, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_6

    iput-object p1, v0, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    const-wide/16 v8, -0x1

    iput-wide v8, v0, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    const-wide/16 v8, -0x1

    iput-wide v8, v0, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    :cond_5
    :goto_4
    invoke-direct {p0, v0, p2}, Landroid/animation/AnimatorSet;->updatePlayTime(Landroid/animation/AnimatorSet$Node;Ljava/util/ArrayList;)V

    goto :goto_3

    :cond_6
    iget-wide v8, p1, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    iget-wide v10, v0, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    cmp-long v8, v8, v10

    if-ltz v8, :cond_7

    iput-object p1, v0, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    iget-wide v8, p1, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    iput-wide v8, v0, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    :cond_7
    iget-object v8, v0, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v8}, Landroid/animation/Animator;->getTotalDuration()J

    move-result-wide v2

    const-wide/16 v8, -0x1

    cmp-long v8, v2, v8

    if-nez v8, :cond_8

    const-wide/16 v8, -0x1

    :goto_5
    iput-wide v8, v0, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    goto :goto_4

    :cond_8
    iget-wide v8, v0, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    add-long/2addr v8, v2

    goto :goto_5

    :cond_9
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method animateBasedOnPlayTime(JJZ)V
    .locals 19

    const-wide/16 v8, 0x0

    cmp-long v5, p1, v8

    if-ltz v5, :cond_0

    const-wide/16 v8, 0x0

    cmp-long v5, p3, v8

    if-gez v5, :cond_1

    :cond_0
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v8, "Error: Play time should never be negative."

    invoke-direct {v5, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    if-eqz p5, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v8

    const-wide/16 v16, -0x1

    cmp-long v5, v8, v16

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v8, "Cannot reverse AnimatorSet with infinite duration"

    invoke-direct {v5, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/animation/AnimatorSet;->mStartDelay:J

    move-wide/from16 v16, v0

    sub-long v12, v8, v16

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    sub-long p1, v12, p1

    sub-long p3, v12, p3

    const/16 p5, 0x0

    :cond_3
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/animation/AnimatorSet;->skipToStartValue(Z)V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v11, v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/AnimatorSet$AnimationEvent;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet$AnimationEvent;->getTime()J

    move-result-wide v8

    cmp-long v5, v8, p1

    if-lez v5, :cond_6

    :cond_4
    const/4 v11, 0x0

    :goto_1
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v11, v5, :cond_a

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/animation/AnimatorSet$Node;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v14, v3}, Landroid/animation/AnimatorSet;->getPlayTimeForNode(JLandroid/animation/AnimatorSet$Node;Z)J

    move-result-wide v6

    if-nez p5, :cond_5

    iget-object v5, v14, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v8

    sub-long/2addr v6, v8

    :cond_5
    iget-object v5, v14, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    move-wide/from16 v8, p3

    move/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Landroid/animation/Animator;->animateBasedOnPlayTime(JJZ)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_6
    iget v5, v4, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_8

    iget-object v5, v4, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v8, v5, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    const-wide/16 v16, -0x1

    cmp-long v5, v8, v16

    if-eqz v5, :cond_7

    iget-object v5, v4, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-wide v8, v5, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    cmp-long v5, v8, p1

    if-lez v5, :cond_8

    :cond_7
    iget-object v5, v4, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget v5, v4, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_9

    iget-object v5, v4, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v5, v5, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/animation/Animator;->skipToEndValue(Z)V

    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_a
    return-void
.end method

.method public canReverse()Z
    .locals 4

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancel()V
    .locals 7

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    if-nez v5, :cond_0

    new-instance v5, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v6, "Animators may only be run on Looper threads"

    invoke-direct {v5, v6}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v5, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$Node;

    iget-object v5, v5, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->cancel()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v5, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->endAnimation()V

    :cond_3
    return-void
.end method

.method public bridge synthetic clone()Landroid/animation/Animator;
    .locals 1

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->clone()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Landroid/animation/AnimatorSet;
    .locals 15

    const/4 v14, 0x1

    const-wide/16 v12, -0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    invoke-super {p0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    iput-boolean v11, v0, Landroid/animation/AnimatorSet;->mStarted:Z

    iput-wide v12, v0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    iput-wide v12, v0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    const/4 v9, -0x1

    iput v9, v0, Landroid/animation/AnimatorSet;->mLastEventId:I

    iput-boolean v11, v0, Landroid/animation/AnimatorSet;->mPaused:Z

    iput-wide v12, v0, Landroid/animation/AnimatorSet;->mPauseTime:J

    new-instance v9, Landroid/animation/AnimatorSet$SeekState;

    invoke-direct {v9, p0, v10}, Landroid/animation/AnimatorSet$SeekState;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet$SeekState;)V

    iput-object v9, v0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    iput-boolean v14, v0, Landroid/animation/AnimatorSet;->mSelfPulse:Z

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    iput-object v9, v0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v9, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    new-instance v9, Landroid/animation/AnimatorSet$2;

    invoke-direct {v9, p0, v0}, Landroid/animation/AnimatorSet$2;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/AnimatorSet;)V

    iput-object v9, v0, Landroid/animation/AnimatorSet;->mDummyListener:Landroid/animation/AnimatorListenerAdapter;

    iput-boolean v11, v0, Landroid/animation/AnimatorSet;->mReversing:Z

    iput-boolean v14, v0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v7}, Ljava/util/HashMap;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v7, :cond_0

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet$Node;->clone()Landroid/animation/AnimatorSet$Node;

    move-result-object v6

    iget-object v9, v6, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-object v11, p0, Landroid/animation/AnimatorSet;->mDummyListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v9, v11}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, v0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    iget-object v11, v6, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v9, v11, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v9, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$Node;

    iput-object v9, v0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    iget-object v9, v0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    iget-object v9, v9, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    check-cast v9, Landroid/animation/ValueAnimator;

    iput-object v9, v0, Landroid/animation/AnimatorSet;->mDelayAnim:Landroid/animation/ValueAnimator;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v7, :cond_8

    iget-object v9, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/AnimatorSet$Node;

    iget-object v9, v5, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    if-nez v9, :cond_1

    move-object v9, v10

    :goto_2
    iput-object v9, v6, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    iget-object v9, v5, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    if-nez v9, :cond_2

    const/4 v8, 0x0

    :goto_3
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v8, :cond_3

    iget-object v11, v6, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    iget-object v9, v5, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v11, v3, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_1
    iget-object v9, v5, Landroid/animation/AnimatorSet$Node;->mLatestParent:Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$Node;

    goto :goto_2

    :cond_2
    iget-object v9, v5, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    goto :goto_3

    :cond_3
    iget-object v9, v5, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    if-nez v9, :cond_4

    const/4 v8, 0x0

    :goto_5
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v8, :cond_5

    iget-object v11, v6, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    iget-object v9, v5, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v11, v3, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_4
    iget-object v9, v5, Landroid/animation/AnimatorSet$Node;->mSiblings:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    goto :goto_5

    :cond_5
    iget-object v9, v5, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    if-nez v9, :cond_6

    const/4 v8, 0x0

    :goto_7
    const/4 v3, 0x0

    :goto_8
    if-ge v3, v8, :cond_7

    iget-object v11, v6, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    iget-object v9, v5, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/AnimatorSet$Node;

    invoke-virtual {v11, v3, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_6
    iget-object v9, v5, Landroid/animation/AnimatorSet$Node;->mParents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    goto :goto_7

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_8
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->clone()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public commitAnimationFrame(J)V
    .locals 0

    return-void
.end method

.method public doAnimationFrame(J)Z
    .locals 19

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v4

    const/4 v12, 0x0

    cmpl-float v12, v4, v12

    if-nez v12, :cond_0

    invoke-direct/range {p0 .. p0}, Landroid/animation/AnimatorSet;->forceToEnd()V

    const/4 v12, 0x1

    return v12

    :cond_0
    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-gez v12, :cond_1

    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/animation/AnimatorSet;->mFirstFrame:J

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/animation/AnimatorSet;->mPaused:Z

    if-eqz v12, :cond_2

    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/animation/AnimatorSet;->mPauseTime:J

    invoke-direct/range {p0 .. p0}, Landroid/animation/AnimatorSet;->removeAnimationCallback()V

    const/4 v12, 0x0

    return v12

    :cond_2
    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/animation/AnimatorSet;->mPauseTime:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_3

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/animation/AnimatorSet;->mPauseTime:J

    sub-long v14, p1, v14

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    const-wide/16 v12, -0x1

    move-object/from16 v0, p0

    iput-wide v12, v0, Landroid/animation/AnimatorSet;->mPauseTime:J

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v12}, Landroid/animation/AnimatorSet$SeekState;->isActive()Z

    move-result v12

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet$SeekState;->updateSeekDirection(Z)V

    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v12, :cond_5

    move-wide/from16 v0, p1

    long-to-float v12, v0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v13}, Landroid/animation/AnimatorSet$SeekState;->getPlayTime()J

    move-result-wide v14

    long-to-float v13, v14

    mul-float/2addr v13, v4

    sub-float/2addr v12, v13

    float-to-long v12, v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v12}, Landroid/animation/AnimatorSet$SeekState;->reset()V

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-nez v12, :cond_6

    move-wide/from16 v0, p1

    long-to-float v12, v0

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    long-to-float v13, v14

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/animation/AnimatorSet;->mStartDelay:J

    long-to-float v14, v14

    mul-float/2addr v14, v4

    add-float/2addr v13, v14

    cmpg-float v12, v12, v13

    if-gez v12, :cond_6

    const/4 v12, 0x0

    return v12

    :cond_5
    move-wide/from16 v0, p1

    long-to-float v12, v0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v13}, Landroid/animation/AnimatorSet$SeekState;->getPlayTime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/animation/AnimatorSet;->mStartDelay:J

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    long-to-float v13, v14

    mul-float/2addr v13, v4

    sub-float/2addr v12, v13

    float-to-long v12, v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    goto :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    sub-long v12, p1, v12

    long-to-float v12, v12

    div-float/2addr v12, v4

    float-to-long v10, v12

    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Landroid/animation/AnimatorSet;->findLatestEventIdForTime(J)I

    move-result v7

    move-object/from16 v0, p0

    iget v9, v0, Landroid/animation/AnimatorSet;->mLastEventId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7, v10, v11}, Landroid/animation/AnimatorSet;->handleAnimationEvents(IIJ)V

    move-object/from16 v0, p0

    iput v7, v0, Landroid/animation/AnimatorSet;->mLastEventId:I

    const/4 v6, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v6, v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/AnimatorSet$Node;

    iget-boolean v12, v8, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-nez v12, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v8}, Landroid/animation/AnimatorSet;->getPlayTimeForNode(JLandroid/animation/AnimatorSet$Node;)J

    move-result-wide v12

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v12, v13}, Landroid/animation/AnimatorSet;->pulseFrame(Landroid/animation/AnimatorSet$Node;J)V

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v6, v12, -0x1

    :goto_2
    if-ltz v6, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/animation/AnimatorSet$Node;

    iget-boolean v12, v12, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_a
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-ne v12, v13, :cond_c

    const/4 v5, 0x1

    :cond_b
    :goto_3
    if-eqz v5, :cond_f

    invoke-direct/range {p0 .. p0}, Landroid/animation/AnimatorSet;->endAnimation()V

    const/4 v12, 0x1

    return v12

    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    iget v12, v0, Landroid/animation/AnimatorSet;->mLastEventId:I

    const/4 v13, 0x3

    if-ge v12, v13, :cond_b

    const/4 v5, 0x1

    goto :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget v12, v0, Landroid/animation/AnimatorSet;->mLastEventId:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v12, v13, :cond_e

    const/4 v5, 0x1

    goto :goto_3

    :cond_e
    const/4 v5, 0x0

    goto :goto_3

    :cond_f
    const/4 v12, 0x0

    return v12
.end method

.method public end()V
    .locals 5

    const/4 v4, 0x2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v3, "Animators may only be run on Looper threads"

    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mShouldIgnoreEndWithoutStart:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v2, :cond_5

    iget v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    iput v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    :cond_2
    :goto_1
    iget v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    if-lez v2, :cond_7

    iget v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    iget v3, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v2, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v0, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    iget-boolean v2, v2, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-nez v2, :cond_2

    iget v2, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v2, v4, :cond_4

    invoke-virtual {v0}, Landroid/animation/Animator;->reverse()V

    goto :goto_1

    :cond_3
    iget v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    goto :goto_0

    :cond_4
    iget v2, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    goto :goto_1

    :cond_5
    :goto_2
    iget v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_7

    iget v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    iget v3, p0, Landroid/animation/AnimatorSet;->mLastEventId:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v2, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v0, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodeMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    iget-boolean v2, v2, Landroid/animation/AnimatorSet$Node;->mEnded:Z

    if-nez v2, :cond_5

    iget v2, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-nez v2, :cond_6

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_2

    :cond_6
    iget v2, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v2, v4, :cond_5

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    goto :goto_2

    :cond_7
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_8
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->endAnimation()V

    return-void
.end method

.method public getChangingConfigurations()I
    .locals 4

    invoke-super {p0}, Landroid/animation/Animator;->getChangingConfigurations()I

    move-result v0

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    iget-object v3, v3, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getChildAnimations()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-eq v2, v4, :cond_0

    iget-object v4, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getCurrentPlayTime()J
    .locals 6

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet$SeekState;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet$SeekState;->getPlayTime()J

    move-result-wide v2

    return-wide v2

    :cond_0
    iget-wide v2, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    const-wide/16 v2, 0x0

    return-wide v2

    :cond_1
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_2
    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v1, :cond_3

    iget-wide v2, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    div-float/2addr v1, v0

    float-to-long v2, v1

    return-wide v2

    :cond_3
    iget-wide v2, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mFirstFrame:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    div-float/2addr v1, v0

    float-to-long v2, v1

    return-wide v2
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mDuration:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public getStartDelay()J
    .locals 2

    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    return-wide v0
.end method

.method public getTotalDuration()J
    .locals 2

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->updateAnimatorsDuration()V

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->createDependencyGraph()V

    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    return-wide v0
.end method

.method isInitialized()Z
    .locals 3

    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mChildrenInitialized:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    iget-object v2, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x0

    :cond_1
    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mChildrenInitialized:Z

    iget-boolean v2, p0, Landroid/animation/AnimatorSet;->mChildrenInitialized:Z

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    return v0

    :cond_0
    iget-wide v0, p0, Landroid/animation/AnimatorSet;->mLastFrameTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 1

    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mStarted:Z

    return v0
.end method

.method public pause()V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v2, "Animators may only be run on Looper threads"

    invoke-direct {v1, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    invoke-super {p0}, Landroid/animation/Animator;->pause()V

    if-nez v0, :cond_1

    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    if-eqz v1, :cond_1

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    :cond_1
    return-void
.end method

.method public play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Landroid/animation/AnimatorSet$Builder;

    invoke-direct {v0, p0, p1}, Landroid/animation/AnimatorSet$Builder;-><init>(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    return-object v0

    :cond_0
    return-object v0
.end method

.method public playSequentially(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public varargs playSequentially([Landroid/animation/Animator;)V
    .locals 3

    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public playTogether(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public varargs playTogether([Landroid/animation/Animator;)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method pulseAnimationFrame(J)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet;->doAnimationFrame(J)Z

    move-result v0

    return v0
.end method

.method public resume()V
    .locals 6

    const-wide/16 v4, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v2, "Animators may only be run on Looper threads"

    invoke-direct {v1, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    invoke-super {p0}, Landroid/animation/Animator;->resume()V

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mPaused:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-wide v2, p0, Landroid/animation/AnimatorSet;->mPauseTime:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    invoke-direct {p0, v4, v5}, Landroid/animation/AnimatorSet;->addAnimationCallback(J)V

    :cond_1
    return-void
.end method

.method public reverse()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Landroid/animation/AnimatorSet;->start(ZZ)V

    return-void
.end method

.method public setCurrentPlayTime(J)V
    .locals 7

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Error: Cannot seek in reverse in an infinite AnimatorSet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    sub-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Error: Play time should always be in between0 and duration."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    cmp-long v0, p1, v4

    if-ltz v0, :cond_1

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->initAnimation()V

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Error: Something went wrong. mReversing should not be set when AnimatorSet is not started."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet$SeekState;->isActive()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, v4, v5}, Landroid/animation/AnimatorSet;->findLatestEventIdForTime(J)I

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->initChildren()V

    iget-boolean v0, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-direct {p0, v0}, Landroid/animation/AnimatorSet;->skipToStartValue(Z)V

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-virtual {v0, v4, v5, v1}, Landroid/animation/AnimatorSet$SeekState;->setPlayTime(JZ)V

    :cond_4
    iget-boolean v6, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    move-object v1, p0

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/animation/AnimatorSet;->animateBasedOnPlayTime(JJZ)V

    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-virtual {v0, p1, p2, v1}, Landroid/animation/AnimatorSet$SeekState;->setPlayTime(JZ)V

    :goto_0
    return-void

    :cond_5
    iget-object v0, p0, Landroid/animation/AnimatorSet;->mSeekState:Landroid/animation/AnimatorSet$SeekState;

    iget-boolean v1, p0, Landroid/animation/AnimatorSet;->mReversing:Z

    invoke-virtual {v0, p1, p2, v1}, Landroid/animation/AnimatorSet$SeekState;->setPlayTime(JZ)V

    goto :goto_0
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Landroid/animation/AnimatorSet;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "duration must be a value of zero or greater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    iput-wide p1, p0, Landroid/animation/AnimatorSet;->mDuration:J

    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0

    iput-object p1, p0, Landroid/animation/AnimatorSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public setStartDelay(J)V
    .locals 13

    const-wide/16 v10, 0x0

    const-wide/16 v8, -0x1

    cmp-long v5, p1, v10

    if-gez v5, :cond_0

    const-string/jumbo v5, "AnimatorSet"

    const-string/jumbo v6, "Start delay should always be non-negative"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p1, 0x0

    :cond_0
    iget-wide v6, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    sub-long v0, p1, v6

    cmp-long v5, v0, v10

    if-nez v5, :cond_1

    return-void

    :cond_1
    iput-wide p1, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    iget-boolean v5, p0, Landroid/animation/AnimatorSet;->mDependencyDirty:Z

    if-nez v5, :cond_6

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_5

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet$Node;

    iget-object v5, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-ne v3, v5, :cond_2

    iget-wide v6, p0, Landroid/animation/AnimatorSet;->mStartDelay:J

    iput-wide v6, v3, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-wide v6, v3, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_3

    move-wide v6, v8

    :goto_2
    iput-wide v6, v3, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    iget-wide v6, v3, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_4

    move-wide v6, v8

    :goto_3
    iput-wide v6, v3, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    goto :goto_1

    :cond_3
    iget-wide v6, v3, Landroid/animation/AnimatorSet$Node;->mStartTime:J

    add-long/2addr v6, v0

    goto :goto_2

    :cond_4
    iget-wide v6, v3, Landroid/animation/AnimatorSet$Node;->mEndTime:J

    add-long/2addr v6, v0

    goto :goto_3

    :cond_5
    iget-wide v6, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_6

    iget-wide v6, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    add-long/2addr v6, v0

    iput-wide v6, p0, Landroid/animation/AnimatorSet;->mTotalDuration:J

    :cond_6
    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 5

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet$Node;

    iget-object v0, v2, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    instance-of v4, v0, Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_1

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    instance-of v4, v0, Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_0

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setupEndValues()V
    .locals 4

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-eq v1, v3, :cond_0

    iget-object v3, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->setupEndValues()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setupStartValues()V
    .locals 4

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    iget-object v3, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    if-eq v1, v3, :cond_0

    iget-object v3, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->setupStartValues()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public shouldPlayTogether()Z
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->updateAnimatorsDuration()V

    invoke-direct {p0}, Landroid/animation/AnimatorSet;->createDependencyGraph()V

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    iget-object v1, v1, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mRootNode:Landroid/animation/AnimatorSet$Node;

    iget-object v1, v1, Landroid/animation/AnimatorSet$Node;->mChildNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method skipToEndValue(Z)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "Children must be initialized."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0}, Landroid/animation/AnimatorSet;->initAnimation()V

    if-eqz p1, :cond_2

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_4

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v1, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v1, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v1, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->skipToEndValue(Z)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$AnimationEvent;

    iget v1, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mEvent:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroid/animation/AnimatorSet;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$AnimationEvent;

    iget-object v1, v1, Landroid/animation/AnimatorSet$AnimationEvent;->mNode:Landroid/animation/AnimatorSet$Node;

    iget-object v1, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->skipToEndValue(Z)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public start()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/animation/AnimatorSet;->start(ZZ)V

    return-void
.end method

.method startWithoutPulsing(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/AnimatorSet;->start(ZZ)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AnimatorSet@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v4, p0, Landroid/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet$Node;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/animation/AnimatorSet$Node;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
