.class Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SemAddDeleteGridAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->-get0(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->invalidate()V

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->-get0(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)Landroid/widget/GridView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->-get1(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->-get1(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;->onAnimationEnd(Z)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->-get0(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->-get1(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->-get1(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$OnAddDeleteListener;->onAnimationStart(Z)V

    :cond_0
    return-void
.end method
