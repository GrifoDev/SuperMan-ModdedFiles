.class Landroid/app/ExitTransitionCoordinator$10;
.super Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;
.source "ExitTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ExitTransitionCoordinator;->getSharedElementExitTransition()Landroid/transition/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ExitTransitionCoordinator;


# direct methods
.method constructor <init>(Landroid/app/ExitTransitionCoordinator;Landroid/app/ActivityTransitionCoordinator;)V
    .locals 0

    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator$10;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-direct {p0, p2}, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;-><init>(Landroid/app/ActivityTransitionCoordinator;)V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 3

    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$10;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v0}, Landroid/app/ExitTransitionCoordinator;->sharedElementTransitionComplete()V

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$10;->this$0:Landroid/app/ExitTransitionCoordinator;

    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->-get2(Landroid/app/ExitTransitionCoordinator;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$10;->this$0:Landroid/app/ExitTransitionCoordinator;

    iget-object v1, p0, Landroid/app/ExitTransitionCoordinator$10;->this$0:Landroid/app/ExitTransitionCoordinator;

    iget-object v1, v1, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/ExitTransitionCoordinator;->showViews(Ljava/util/ArrayList;Z)V

    :cond_0
    return-void
.end method
