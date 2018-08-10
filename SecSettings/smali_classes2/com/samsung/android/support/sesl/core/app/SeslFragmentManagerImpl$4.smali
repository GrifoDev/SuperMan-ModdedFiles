.class Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SeslFragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->completeShowHideFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

.field final synthetic val$animatingView:Landroid/view/View;

.field final synthetic val$container:Landroid/view/ViewGroup;

.field final synthetic val$fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$4;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$4;->val$container:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$4;->val$animatingView:Landroid/view/View;

    iput-object p4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$4;->val$fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$4;->val$container:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$4;->val$animatingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$4;->val$fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$4;->val$fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
