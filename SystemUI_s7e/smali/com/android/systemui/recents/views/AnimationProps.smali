.class public Lcom/android/systemui/recents/views/AnimationProps;
.super Ljava/lang/Object;
.source "AnimationProps.java"


# static fields
.field public static final IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;


# instance fields
.field private mListener:Landroid/animation/Animator$AnimatorListener;

.field private mPropDuration:Landroid/util/SparseLongArray;

.field private mPropInitialPlayTime:Landroid/util/SparseLongArray;

.field private mPropInterpolators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/animation/Interpolator;",
            ">;"
        }
    .end annotation
.end field

.field private mPropStartDelay:Landroid/util/SparseLongArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    sput-object v0, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILandroid/view/animation/Interpolator;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(IILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public constructor <init>(IILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/recents/views/AnimationProps;->setStartDelay(II)Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {p0, v0, p3}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {p0, p4}, Lcom/android/systemui/recents/views/AnimationProps;->setListener(Landroid/animation/Animator$AnimatorListener;)Lcom/android/systemui/recents/views/AnimationProps;

    return-void
.end method

.method public constructor <init>(ILandroid/view/animation/Interpolator;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(IILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public constructor <init>(ILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(IILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method


# virtual methods
.method public apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/animation/ValueAnimator;",
            ">(ITT;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/AnimationProps;->getStartDelay(I)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/AnimationProps;->getDuration(I)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/AnimationProps;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/AnimationProps;->getInitialPlayTime(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    :cond_0
    return-object p2
.end method

.method public createAnimator(Ljava/util/List;)Landroid/animation/AnimatorSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/recents/views/AnimationProps;->mListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/AnimationProps;->mListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDuration(I)J
    .locals 8

    const-wide/16 v6, 0x0

    const-wide/16 v4, -0x1

    iget-object v2, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropDuration:Landroid/util/SparseLongArray;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropDuration:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p1, v4, v5}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropDuration:Landroid/util/SparseLongArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v6, v7}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v2

    return-wide v2

    :cond_1
    return-wide v6
.end method

.method public getInitialPlayTime(I)J
    .locals 4

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropInitialPlayTime:Landroid/util/SparseLongArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropInitialPlayTime:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropInitialPlayTime:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropInitialPlayTime:Landroid/util/SparseLongArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v0

    return-wide v0

    :cond_1
    return-wide v2
.end method

.method public getInterpolator(I)Landroid/view/animation/Interpolator;
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropInterpolators:Landroid/util/SparseArray;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropInterpolators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropInterpolators:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Interpolator;

    return-object v1

    :cond_1
    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    return-object v1
.end method

.method public getListener()Landroid/animation/Animator$AnimatorListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimationProps;->mListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method public getStartDelay(I)J
    .locals 8

    const-wide/16 v6, 0x0

    const-wide/16 v4, -0x1

    iget-object v2, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropStartDelay:Landroid/util/SparseLongArray;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropStartDelay:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p1, v4, v5}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropStartDelay:Landroid/util/SparseLongArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v6, v7}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v2

    return-wide v2

    :cond_1
    return-wide v6
.end method

.method public isImmediate()Z
    .locals 6

    iget-object v2, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropDuration:Landroid/util/SparseLongArray;

    invoke-virtual {v2}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropDuration:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropDuration:Landroid/util/SparseLongArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropDuration:Landroid/util/SparseLongArray;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropDuration:Landroid/util/SparseLongArray;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/util/SparseLongArray;->append(IJ)V

    return-object p0
.end method

.method public setInitialPlayTime(II)Lcom/android/systemui/recents/views/AnimationProps;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropInitialPlayTime:Landroid/util/SparseLongArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropInitialPlayTime:Landroid/util/SparseLongArray;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropInitialPlayTime:Landroid/util/SparseLongArray;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/util/SparseLongArray;->append(IJ)V

    return-object p0
.end method

.method public setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropInterpolators:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropInterpolators:Landroid/util/SparseArray;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropInterpolators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setListener(Landroid/animation/Animator$AnimatorListener;)Lcom/android/systemui/recents/views/AnimationProps;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/AnimationProps;->mListener:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method public setStartDelay(II)Lcom/android/systemui/recents/views/AnimationProps;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropStartDelay:Landroid/util/SparseLongArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropStartDelay:Landroid/util/SparseLongArray;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/AnimationProps;->mPropStartDelay:Landroid/util/SparseLongArray;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/util/SparseLongArray;->append(IJ)V

    return-object p0
.end method
