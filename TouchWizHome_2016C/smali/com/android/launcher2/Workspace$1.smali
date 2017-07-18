.class Lcom/android/launcher2/Workspace$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->initWorkspace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    iget-object v2, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/launcher2/Workspace;->access$002(Lcom/android/launcher2/Workspace;Z)Z

    iget-object v2, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/launcher2/Workspace;->access$102(Lcom/android/launcher2/Workspace;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->isExitingAllApps()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Launcher;->exitAllappsAnimation(Z)V

    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$200(Lcom/android/launcher2/Workspace;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    iget-object v3, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v3}, Lcom/android/launcher2/Workspace;->access$300(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Workspace$State;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayout;->onStateAnimationEnd(Lcom/android/launcher2/Workspace$State;)V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    sget-object v3, Lcom/android/launcher2/PagedView$LayerOptions;->DEFAULT:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    iget-object v3, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v3}, Lcom/android/launcher2/Workspace;->access$300(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Workspace$State;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/launcher2/Workspace;->access$400(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;)V

    iget-object v2, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$300(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Workspace$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    iget-object v3, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v3}, Lcom/android/launcher2/Workspace;->access$300(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Workspace$State;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/launcher2/Workspace;->access$500(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;)V

    iget-object v2, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->setDirtyFlags()V

    :cond_2
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher2/Workspace;->access$002(Lcom/android/launcher2/Workspace;Z)Z

    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    sget-object v1, Lcom/android/launcher2/PagedView$LayerOptions;->FORCE_HARDWARE:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    goto :goto_0
.end method
