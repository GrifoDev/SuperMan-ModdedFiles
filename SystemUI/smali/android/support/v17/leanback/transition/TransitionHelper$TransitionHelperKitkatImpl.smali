.class Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperKitkatImpl;
.super Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl;
.source "TransitionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/transition/TransitionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransitionHelperKitkatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionHelperStubImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public addTransition(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public addTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat;->addTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V

    return-void
.end method

.method public createChangeBounds(Z)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat;->createChangeBounds(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createFadeTransition(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat;->createFadeTransition(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat;->createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createTransitionSet(Z)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat;->createTransitionSet(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public exclude(Ljava/lang/Object;IZ)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat;->exclude(Ljava/lang/Object;IZ)V

    return-void
.end method

.method public exclude(Ljava/lang/Object;Landroid/view/View;Z)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat;->exclude(Ljava/lang/Object;Landroid/view/View;Z)V

    return-void
.end method

.method public include(Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat;->include(Ljava/lang/Object;I)V

    return-void
.end method

.method public include(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat;->include(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public loadTransition(Landroid/content/Context;I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat;->loadTransition(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat;->removeTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V

    return-void
.end method

.method public runTransition(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat;->runTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setStartDelay(Ljava/lang/Object;J)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat;->setStartDelay(Ljava/lang/Object;J)V

    return-void
.end method
