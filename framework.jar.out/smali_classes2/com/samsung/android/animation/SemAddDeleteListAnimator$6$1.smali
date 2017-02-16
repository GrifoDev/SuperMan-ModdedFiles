.class Lcom/samsung/android/animation/SemAddDeleteListAnimator$6$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SemAddDeleteListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;


# direct methods
.method constructor <init>(Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;

    .prologue
    .line 1071
    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x1

    .line 1085
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1086
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-get1(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1087
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-get1(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1088
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-get2(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-get2(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;->onAnimationEnd(Z)V

    .line 1084
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 1075
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-get1(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-get1(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1078
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-get1(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1079
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-get2(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1080
    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6$1;->this$1:Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-get2(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;->onAnimationStart(Z)V

    .line 1073
    :cond_1
    return-void
.end method
