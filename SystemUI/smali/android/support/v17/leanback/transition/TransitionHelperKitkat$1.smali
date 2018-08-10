.class final Landroid/support/v17/leanback/transition/TransitionHelperKitkat$1;
.super Ljava/lang/Object;
.source "TransitionHelperKitkat.java"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/transition/TransitionHelperKitkat;->addTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/support/v17/leanback/transition/TransitionListener;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/transition/TransitionListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/transition/TransitionHelperKitkat$1;->val$listener:Landroid/support/v17/leanback/transition/TransitionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/transition/TransitionHelperKitkat$1;->val$listener:Landroid/support/v17/leanback/transition/TransitionListener;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/transition/TransitionListener;->onTransitionCancel(Ljava/lang/Object;)V

    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/transition/TransitionHelperKitkat$1;->val$listener:Landroid/support/v17/leanback/transition/TransitionListener;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/transition/TransitionListener;->onTransitionEnd(Ljava/lang/Object;)V

    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/transition/TransitionHelperKitkat$1;->val$listener:Landroid/support/v17/leanback/transition/TransitionListener;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/transition/TransitionListener;->onTransitionPause(Ljava/lang/Object;)V

    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/transition/TransitionHelperKitkat$1;->val$listener:Landroid/support/v17/leanback/transition/TransitionListener;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/transition/TransitionListener;->onTransitionResume(Ljava/lang/Object;)V

    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/transition/TransitionHelperKitkat$1;->val$listener:Landroid/support/v17/leanback/transition/TransitionListener;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/transition/TransitionListener;->onTransitionStart(Ljava/lang/Object;)V

    return-void
.end method
