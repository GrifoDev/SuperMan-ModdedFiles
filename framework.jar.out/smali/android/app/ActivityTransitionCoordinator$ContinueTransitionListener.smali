.class public Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;
.super Landroid/transition/Transition$TransitionListenerAdapter;
.source "ActivityTransitionCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityTransitionCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ContinueTransitionListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityTransitionCoordinator;


# direct methods
.method protected constructor <init>(Landroid/app/ActivityTransitionCoordinator;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityTransitionCoordinator;

    .prologue
    .line 975
    iput-object p1, p0, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;->this$0:Landroid/app/ActivityTransitionCoordinator;

    invoke-direct {p0}, Landroid/transition/Transition$TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 4
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    const/4 v3, 0x0

    .line 978
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;->this$0:Landroid/app/ActivityTransitionCoordinator;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/app/ActivityTransitionCoordinator;->-set0(Landroid/app/ActivityTransitionCoordinator;Z)Z

    .line 979
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;->this$0:Landroid/app/ActivityTransitionCoordinator;

    invoke-static {v1}, Landroid/app/ActivityTransitionCoordinator;->-get0(Landroid/app/ActivityTransitionCoordinator;)Ljava/lang/Runnable;

    move-result-object v0

    .line 980
    .local v0, "pending":Ljava/lang/Runnable;
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;->this$0:Landroid/app/ActivityTransitionCoordinator;

    invoke-static {v1, v3}, Landroid/app/ActivityTransitionCoordinator;->-set1(Landroid/app/ActivityTransitionCoordinator;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 981
    if-eqz v0, :cond_0

    .line 982
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator$ContinueTransitionListener;->this$0:Landroid/app/ActivityTransitionCoordinator;

    invoke-virtual {v1, v0}, Landroid/app/ActivityTransitionCoordinator;->startTransition(Ljava/lang/Runnable;)V

    .line 977
    :cond_0
    return-void
.end method
