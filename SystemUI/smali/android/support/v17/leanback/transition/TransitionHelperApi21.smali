.class final Landroid/support/v17/leanback/transition/TransitionHelperApi21;
.super Ljava/lang/Object;
.source "TransitionHelperApi21.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Landroid/transition/Transition;

    invoke-static {p0, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    return-void
.end method

.method public static createChangeTransform()Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/transition/ChangeTransform;

    invoke-direct {v0}, Landroid/transition/ChangeTransform;-><init>()V

    return-object v0
.end method

.method public static createFadeAndShortSlide(I)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;-><init>(I)V

    return-object v0
.end method

.method public static createFadeAndShortSlide(IF)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->setDistance(F)V

    return-object v0
.end method

.method public static getEnterTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/view/Window;->getEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public static getReturnTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/view/Window;->getReturnTransition()Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public static getSharedElementEnterTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/view/Window;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public static getSharedElementReturnTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/view/Window;->getSharedElementReturnTransition()Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public static setEnterTransition(Landroid/app/Fragment;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/transition/Transition;

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->setEnterTransition(Landroid/transition/Transition;)V

    return-void
.end method

.method public static setEnterTransition(Landroid/view/Window;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/transition/Transition;

    invoke-virtual {p0, p1}, Landroid/view/Window;->setEnterTransition(Landroid/transition/Transition;)V

    return-void
.end method

.method public static setEpicenterCallback(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionEpicenterCallback;)V
    .locals 2

    const/4 v1, 0x0

    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/support/v17/leanback/transition/TransitionHelperApi21$1;

    invoke-direct {v1, p1}, Landroid/support/v17/leanback/transition/TransitionHelperApi21$1;-><init>(Landroid/support/v17/leanback/transition/TransitionEpicenterCallback;)V

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    goto :goto_0
.end method

.method public static setExitTransition(Landroid/app/Fragment;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/transition/Transition;

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->setExitTransition(Landroid/transition/Transition;)V

    return-void
.end method

.method public static setReturnTransition(Landroid/view/Window;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/transition/Transition;

    invoke-virtual {p0, p1}, Landroid/view/Window;->setReturnTransition(Landroid/transition/Transition;)V

    return-void
.end method

.method public static setSharedElementEnterTransition(Landroid/app/Fragment;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/transition/Transition;

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->setSharedElementEnterTransition(Landroid/transition/Transition;)V

    return-void
.end method

.method public static setSharedElementEnterTransition(Landroid/view/Window;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/transition/Transition;

    invoke-virtual {p0, p1}, Landroid/view/Window;->setSharedElementEnterTransition(Landroid/transition/Transition;)V

    return-void
.end method

.method public static setSharedElementReturnTransition(Landroid/view/Window;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/transition/Transition;

    invoke-virtual {p0, p1}, Landroid/view/Window;->setSharedElementReturnTransition(Landroid/transition/Transition;)V

    return-void
.end method

.method public static setTransitionGroup(Landroid/view/ViewGroup;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTransitionGroup(Z)V

    return-void
.end method
