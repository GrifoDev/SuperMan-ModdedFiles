.class Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$4;
.super Ljava/lang/Object;
.source "SeslFragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->configureSharedElementsOrdered(Landroid/view/ViewGroup;Landroid/view/View;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/transition/Transition;Landroid/transition/Transition;)Landroid/transition/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$enterTransition:Landroid/transition/Transition;

.field final synthetic val$finalSharedElementTransition:Landroid/transition/Transition;

.field final synthetic val$fragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;

.field final synthetic val$inEpicenter:Landroid/graphics/Rect;

.field final synthetic val$inFragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

.field final synthetic val$inIsPop:Z

.field final synthetic val$nameOverrides:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

.field final synthetic val$nonExistentView:Landroid/view/View;

.field final synthetic val$outFragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

.field final synthetic val$sharedElementsIn:Ljava/util/ArrayList;

.field final synthetic val$sharedElementsOut:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Lcom/samsung/android/support/sesl/core/app/SeslFragment;ZLjava/util/ArrayList;Landroid/transition/Transition;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$4;->val$nameOverrides:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$4;->val$finalSharedElementTransition:Landroid/transition/Transition;

    iput-object p3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$4;->val$fragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;

    iput-object p4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$4;->val$nonExistentView:Landroid/view/View;

    iput-object p6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$4;->val$inFragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iput-object p7, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$4;->val$outFragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iput-boolean p8, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$4;->val$inIsPop:Z

    iput-object p9, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$4;->val$sharedElementsOut:Ljava/util/ArrayList;

    iput-object p10, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$4;->val$enterTransition:Landroid/transition/Transition;

    iput-object p11, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$4;->val$inEpicenter:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$4;->val$nameOverrides:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$4;->val$finalSharedElementTransition:Landroid/transition/Transition;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$4;->val$fragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->access$300(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;)Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$4;->val$inFragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$4;->val$outFragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$4;->val$inIsPop:Z

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v1, v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->access$200(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Lcom/samsung/android/support/sesl/core/app/SeslFragment;ZLcom/samsung/android/support/sesl/core/util/SeslArrayMap;Z)V

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$4;->val$finalSharedElementTransition:Landroid/transition/Transition;

    if-nez v2, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$4;->val$nonExistentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$4;->val$finalSharedElementTransition:Landroid/transition/Transition;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$4;->val$sharedElementsOut:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->swapSharedElementTargets(Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$4;->val$fragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$4;->val$enterTransition:Landroid/transition/Transition;

    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$4;->val$inIsPop:Z

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;->access$400(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;Landroid/transition/Transition;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$4;->val$inEpicenter:Landroid/graphics/Rect;

    invoke-static {v0, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->getBoundsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_1
.end method
