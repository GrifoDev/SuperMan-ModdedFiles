.class final Landroid/support/v17/leanback/transition/TransitionHelperKitkat;
.super Ljava/lang/Object;
.source "TransitionHelperKitkat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/transition/TransitionHelperKitkat$CustomChangeBounds;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addTransition(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Landroid/transition/TransitionSet;

    check-cast p1, Landroid/transition/Transition;

    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    return-void
.end method

.method static addTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    new-instance v1, Landroid/support/v17/leanback/transition/TransitionHelperKitkat$1;

    invoke-direct {v1, p1}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat$1;-><init>(Landroid/support/v17/leanback/transition/TransitionListener;)V

    iput-object v1, p1, Landroid/support/v17/leanback/transition/TransitionListener;->mImpl:Ljava/lang/Object;

    iget-object v1, p1, Landroid/support/v17/leanback/transition/TransitionListener;->mImpl:Ljava/lang/Object;

    check-cast v1, Landroid/transition/Transition$TransitionListener;

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    return-void
.end method

.method static createChangeBounds(Z)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/transition/TransitionHelperKitkat$CustomChangeBounds;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat$CustomChangeBounds;-><init>()V

    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat$CustomChangeBounds;->setReparent(Z)V

    return-object v0
.end method

.method static createFadeTransition(I)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/transition/Fade;

    invoke-direct {v0, p0}, Landroid/transition/Fade;-><init>(I)V

    return-object v0
.end method

.method static createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/transition/Scene;

    invoke-direct {v0, p0}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v0, p1}, Landroid/transition/Scene;->setEnterAction(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method static createTransitionSet(Z)Ljava/lang/Object;
    .locals 2

    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static exclude(Ljava/lang/Object;IZ)V
    .locals 0

    check-cast p0, Landroid/transition/Transition;

    invoke-virtual {p0, p1, p2}, Landroid/transition/Transition;->excludeTarget(IZ)Landroid/transition/Transition;

    return-void
.end method

.method static exclude(Ljava/lang/Object;Landroid/view/View;Z)V
    .locals 0

    check-cast p0, Landroid/transition/Transition;

    invoke-virtual {p0, p1, p2}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    return-void
.end method

.method static include(Ljava/lang/Object;I)V
    .locals 0

    check-cast p0, Landroid/transition/Transition;

    invoke-virtual {p0, p1}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    return-void
.end method

.method static include(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    check-cast p0, Landroid/transition/Transition;

    invoke-virtual {p0, p1}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    return-void
.end method

.method static loadTransition(Landroid/content/Context;I)Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method static removeTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/support/v17/leanback/transition/TransitionListener;->mImpl:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    iget-object v1, p1, Landroid/support/v17/leanback/transition/TransitionListener;->mImpl:Ljava/lang/Object;

    check-cast v1, Landroid/transition/Transition$TransitionListener;

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    iput-object v2, p1, Landroid/support/v17/leanback/transition/TransitionListener;->mImpl:Ljava/lang/Object;

    return-void
.end method

.method static runTransition(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Landroid/transition/Scene;

    check-cast p1, Landroid/transition/Transition;

    invoke-static {p0, p1}, Landroid/transition/TransitionManager;->go(Landroid/transition/Scene;Landroid/transition/Transition;)V

    return-void
.end method

.method static setStartDelay(Ljava/lang/Object;J)V
    .locals 1

    check-cast p0, Landroid/transition/Transition;

    invoke-virtual {p0, p1, p2}, Landroid/transition/Transition;->setStartDelay(J)Landroid/transition/Transition;

    return-void
.end method
