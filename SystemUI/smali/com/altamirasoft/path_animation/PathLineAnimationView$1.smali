.class Lcom/altamirasoft/path_animation/PathLineAnimationView$1;
.super Ljava/lang/Object;
.source "PathLineAnimationView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/altamirasoft/path_animation/PathLineAnimationView;->resetListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;


# direct methods
.method constructor <init>(Lcom/altamirasoft/path_animation/PathLineAnimationView;)V
    .locals 0

    iput-object p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    iget-boolean v1, v1, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-nez v1, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    iget-boolean v1, v1, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isReverse:Z

    if-nez v1, :cond_2

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-static {v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->access$100(Lcom/altamirasoft/path_animation/PathLineAnimationView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v1, "log"

    const-string/jumbo v2, "onAnimationCancel"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-static {v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->access$000(Lcom/altamirasoft/path_animation/PathLineAnimationView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-static {v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->access$000(Lcom/altamirasoft/path_animation/PathLineAnimationView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v1, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-static {v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->access$100(Lcom/altamirasoft/path_animation/PathLineAnimationView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v1, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    iget-boolean v1, v1, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-nez v1, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    iput-boolean v3, v1, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isFinished:Z

    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    iput-boolean v3, v1, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isFinishedSingleAnimation:Z

    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    iget-boolean v1, v1, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isReverse:Z

    if-nez v1, :cond_2

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-static {v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->access$100(Lcom/altamirasoft/path_animation/PathLineAnimationView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v1, "log"

    const-string/jumbo v2, "onAnimationEnd"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-static {v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->access$000(Lcom/altamirasoft/path_animation/PathLineAnimationView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-static {v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->access$000(Lcom/altamirasoft/path_animation/PathLineAnimationView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v1, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-static {v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->access$100(Lcom/altamirasoft/path_animation/PathLineAnimationView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v1, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    iget-boolean v1, v1, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-nez v1, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    iput-boolean v3, v1, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isFinished:Z

    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    iget-boolean v1, v1, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isReverse:Z

    if-nez v1, :cond_2

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-static {v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->access$100(Lcom/altamirasoft/path_animation/PathLineAnimationView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v1, "log"

    const-string/jumbo v2, "onAnimationStart"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-static {v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->access$000(Lcom/altamirasoft/path_animation/PathLineAnimationView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-static {v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->access$000(Lcom/altamirasoft/path_animation/PathLineAnimationView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v1, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;->this$0:Lcom/altamirasoft/path_animation/PathLineAnimationView;

    invoke-static {v1}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->access$100(Lcom/altamirasoft/path_animation/PathLineAnimationView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v1, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
