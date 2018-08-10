.class Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$2;
.super Ljava/lang/Object;
.source "SeslFragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->scheduleTargetChange(Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/view/View;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$enterTransition:Landroid/transition/Transition;

.field final synthetic val$enteringViews:Ljava/util/ArrayList;

.field final synthetic val$exitTransition:Landroid/transition/Transition;

.field final synthetic val$exitingViews:Ljava/util/ArrayList;

.field final synthetic val$inFragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

.field final synthetic val$nonExistentView:Landroid/view/View;

.field final synthetic val$sharedElementsIn:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/transition/Transition;Landroid/view/View;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$2;->val$enterTransition:Landroid/transition/Transition;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$2;->val$nonExistentView:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$2;->val$inFragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iput-object p4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$2;->val$sharedElementsIn:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$2;->val$enteringViews:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    iput-object p7, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$2;->val$exitTransition:Landroid/transition/Transition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$2;->val$enterTransition:Landroid/transition/Transition;

    if-nez v2, :cond_0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    :goto_1
    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$2;->val$enterTransition:Landroid/transition/Transition;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$2;->val$nonExistentView:Landroid/view/View;

    invoke-static {v2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->removeTarget(Landroid/transition/Transition;Landroid/view/View;)V

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$2;->val$enterTransition:Landroid/transition/Transition;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$2;->val$inFragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$2;->val$sharedElementsIn:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$2;->val$nonExistentView:Landroid/view/View;

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->access$100(Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$2;->val$enteringViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$2;->val$exitTransition:Landroid/transition/Transition;

    if-nez v2, :cond_2

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$2;->val$nonExistentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$2;->val$nonExistentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$2;->val$exitTransition:Landroid/transition/Transition;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    invoke-static {v2, v3, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->replaceTargets(Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_2
.end method
