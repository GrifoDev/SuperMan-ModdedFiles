.class public Lcom/android/launcher2/MenuStateAnimatorSet;
.super Ljava/lang/Object;
.source "MenuStateAnimatorSet.java"


# instance fields
.field private mStateChangeAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mStateChangeAnimatorSet:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildAndStart(Ljava/util/List;)V
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

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuStateAnimatorSet;->mStateChangeAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/launcher2/MenuStateAnimatorSet;->mStateChangeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuStateAnimatorSet;->mStateChangeAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/launcher2/MenuStateAnimatorSet;->mStateChangeAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuStateAnimatorSet;->mStateChangeAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/launcher2/MenuStateAnimatorSet;->mStateChangeAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuStateAnimatorSet;->mStateChangeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public end()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuStateAnimatorSet;->mStateChangeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuStateAnimatorSet;->mStateChangeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    return-void
.end method

.method public setListenerAdapter(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuStateAnimatorSet;->mStateChangeAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    return-void
.end method
