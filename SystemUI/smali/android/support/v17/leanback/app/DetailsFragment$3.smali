.class Landroid/support/v17/leanback/app/DetailsFragment$3;
.super Landroid/support/v17/leanback/util/StateMachine$State;
.source "DetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/DetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/DetailsFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/DetailsFragment;Ljava/lang/String;ZZ)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsFragment$3;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    invoke-direct {p0, p2, p3, p4}, Landroid/support/v17/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsFragment$3;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    iget-object v3, v3, Landroid/support/v17/leanback/app/DetailsFragment;->mWaitEnterTransitionTimeout:Landroid/support/v17/leanback/app/DetailsFragment$WaitEnterTransitionTimeout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsFragment$3;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    iget-object v3, v3, Landroid/support/v17/leanback/app/DetailsFragment;->mWaitEnterTransitionTimeout:Landroid/support/v17/leanback/app/DetailsFragment$WaitEnterTransitionTimeout;

    iget-object v3, v3, Landroid/support/v17/leanback/app/DetailsFragment$WaitEnterTransitionTimeout;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_0
    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsFragment$3;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/app/DetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsFragment$3;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/app/DetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v17/leanback/transition/TransitionHelper;->getReturnTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2}, Landroid/support/v17/leanback/transition/TransitionHelper;->getSharedElementReturnTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v4}, Landroid/support/v17/leanback/transition/TransitionHelper;->setEnterTransition(Landroid/view/Window;Ljava/lang/Object;)V

    invoke-static {v2, v4}, Landroid/support/v17/leanback/transition/TransitionHelper;->setSharedElementEnterTransition(Landroid/view/Window;Ljava/lang/Object;)V

    invoke-static {v2, v0}, Landroid/support/v17/leanback/transition/TransitionHelper;->setReturnTransition(Landroid/view/Window;Ljava/lang/Object;)V

    invoke-static {v2, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->setSharedElementReturnTransition(Landroid/view/Window;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
