.class Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$2;
.super Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationListenerWrapper;
.source "SeslFragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->animateRemoveFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationOrAnimator;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

.field final synthetic val$fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;Landroid/view/animation/Animation$AnimationListener;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$2;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iput-object p3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$2;->val$fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationListenerWrapper;-><init>(Landroid/view/animation/Animation$AnimationListener;Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimationListenerWrapper;->onAnimationEnd(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$2;->val$fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$2;->val$fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setAnimatingAway(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$2;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$2;->val$fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$2;->val$fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getStateAfterAnimating()I

    move-result v2

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;IIIZ)V

    goto :goto_0
.end method
