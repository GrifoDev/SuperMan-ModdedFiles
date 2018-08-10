.class Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl;
.super Ljava/lang/Object;
.source "TransitionHelper.java"

# interfaces
.implements Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/transition/TransitionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransitionHelperStubImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addTransition(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public addTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;

    iget-object v1, v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object v1, v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public createChangeBounds(Z)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;-><init>()V

    return-object v0
.end method

.method public createChangeTransform()Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;-><init>()V

    return-object v0
.end method

.method public createFadeAndShortSlide(I)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;-><init>()V

    return-object v0
.end method

.method public createFadeAndShortSlide(IF)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;-><init>()V

    return-object v0
.end method

.method public createFadeTransition(I)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;-><init>()V

    return-object v0
.end method

.method public createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;
    .locals 0

    return-object p2
.end method

.method public createTransitionSet(Z)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;-><init>()V

    return-object v0
.end method

.method public exclude(Ljava/lang/Object;IZ)V
    .locals 0

    return-void
.end method

.method public exclude(Ljava/lang/Object;Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public getEnterTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getReturnTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSharedElementEnterTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSharedElementReturnTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public include(Ljava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method public include(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public loadTransition(Landroid/content/Context;I)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;-><init>()V

    return-object v0
.end method

.method public removeTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;

    iget-object v1, v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public runTransition(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    move-object v3, p2

    check-cast v3, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;

    if-eqz v3, :cond_0

    iget-object v4, v3, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    const/4 v0, 0x0

    iget-object v4, v3, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v4, v3, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/transition/TransitionListener;

    invoke-virtual {v4, p2}, Landroid/support/v17/leanback/transition/TransitionListener;->onTransitionStart(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v1, p1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_1
    if-eqz v3, :cond_2

    iget-object v4, v3, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    const/4 v0, 0x0

    iget-object v4, v3, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_2

    iget-object v4, v3, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/transition/TransitionListener;

    invoke-virtual {v4, p2}, Landroid/support/v17/leanback/transition/TransitionListener;->onTransitionEnd(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setEnterTransition(Landroid/app/Fragment;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setEnterTransition(Landroid/view/Window;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setEpicenterCallback(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionEpicenterCallback;)V
    .locals 0

    return-void
.end method

.method public setExitTransition(Landroid/app/Fragment;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setReturnTransition(Landroid/view/Window;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setSharedElementEnterTransition(Landroid/app/Fragment;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setSharedElementEnterTransition(Landroid/view/Window;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setSharedElementReturnTransition(Landroid/view/Window;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setStartDelay(Ljava/lang/Object;J)V
    .locals 0

    return-void
.end method

.method public setTransitionGroup(Landroid/view/ViewGroup;Z)V
    .locals 0

    return-void
.end method
