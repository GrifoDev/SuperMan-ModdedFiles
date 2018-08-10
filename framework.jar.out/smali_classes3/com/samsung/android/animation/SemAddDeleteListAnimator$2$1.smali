.class Lcom/samsung/android/animation/SemAddDeleteListAnimator$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SemAddDeleteListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;

    iget-object v2, v2, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v2, v2, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;

    iget-object v2, v2, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v2, v2, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;

    iget-object v2, v2, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v2, v2, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;

    iget-object v2, v2, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v2}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-get1(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidate()V

    iget-object v2, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;

    iget-object v2, v2, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v2}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-get1(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;

    iget-object v2, v2, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v2}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-get2(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;

    iget-object v2, v2, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v2}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-get2(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;->onAnimationEnd(Z)V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-get1(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-get1(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setPressed(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-get1(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-get2(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-get2(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;->onAnimationStart(Z)V

    :cond_1
    return-void
.end method
