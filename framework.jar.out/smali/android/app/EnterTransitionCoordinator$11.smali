.class Landroid/app/EnterTransitionCoordinator$11;
.super Ljava/lang/Object;
.source "EnterTransitionCoordinator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/EnterTransitionCoordinator;->startEnterTransitionOnly()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/EnterTransitionCoordinator;


# direct methods
.method constructor <init>(Landroid/app/EnterTransitionCoordinator;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/EnterTransitionCoordinator;

    .prologue
    .line 741
    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator$11;->this$0:Landroid/app/EnterTransitionCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 744
    const/4 v1, 0x1

    .line 745
    .local v1, "startEnterTransition":Z
    const/4 v2, 0x0

    .line 746
    .local v2, "startSharedElementTransition":Z
    iget-object v4, p0, Landroid/app/EnterTransitionCoordinator$11;->this$0:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v4}, Landroid/app/ActivityTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    .line 747
    .local v0, "decorView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 748
    iget-object v4, p0, Landroid/app/EnterTransitionCoordinator$11;->this$0:Landroid/app/EnterTransitionCoordinator;

    invoke-static {v4, v0, v1, v2}, Landroid/app/EnterTransitionCoordinator;->-wrap0(Landroid/app/EnterTransitionCoordinator;Landroid/view/ViewGroup;ZZ)Landroid/transition/Transition;

    move-result-object v3

    .line 750
    .local v3, "transition":Landroid/transition/Transition;
    iget-object v4, p0, Landroid/app/EnterTransitionCoordinator$11;->this$0:Landroid/app/EnterTransitionCoordinator;

    invoke-static {v4, v3}, Landroid/app/EnterTransitionCoordinator;->-wrap3(Landroid/app/EnterTransitionCoordinator;Landroid/transition/Transition;)V

    .line 743
    .end local v3    # "transition":Landroid/transition/Transition;
    :cond_0
    return-void
.end method
