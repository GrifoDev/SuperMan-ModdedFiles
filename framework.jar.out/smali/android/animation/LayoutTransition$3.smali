.class Landroid/animation/LayoutTransition$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LayoutTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/animation/LayoutTransition;->setupChangeAnimation(Landroid/view/ViewGroup;ILandroid/animation/Animator;JLandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/animation/LayoutTransition;

.field final synthetic val$changeReason:I

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$listener:Landroid/view/View$OnLayoutChangeListener;

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;ILandroid/view/View$OnLayoutChangeListener;)V
    .locals 0

    iput-object p1, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    iput-object p2, p0, Landroid/animation/LayoutTransition$3;->val$parent:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/animation/LayoutTransition$3;->val$child:Landroid/view/View;

    iput p4, p0, Landroid/animation/LayoutTransition$3;->val$changeReason:I

    iput-object p5, p0, Landroid/animation/LayoutTransition$3;->val$listener:Landroid/view/View$OnLayoutChangeListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/animation/LayoutTransition$3;->val$child:Landroid/view/View;

    iget-object v1, p0, Landroid/animation/LayoutTransition$3;->val$listener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v0}, Landroid/animation/LayoutTransition;->-get3(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Landroid/animation/LayoutTransition$3;->val$child:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8

    iget-object v3, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v3}, Landroid/animation/LayoutTransition;->-get1(Landroid/animation/LayoutTransition;)Ljava/util/LinkedHashMap;

    move-result-object v3

    iget-object v4, p0, Landroid/animation/LayoutTransition$3;->val$child:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v3}, Landroid/animation/LayoutTransition;->-wrap0(Landroid/animation/LayoutTransition;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v3}, Landroid/animation/LayoutTransition;->-get13(Landroid/animation/LayoutTransition;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/LayoutTransition$TransitionListener;

    iget-object v4, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    iget-object v5, p0, Landroid/animation/LayoutTransition$3;->val$parent:Landroid/view/ViewGroup;

    iget-object v6, p0, Landroid/animation/LayoutTransition$3;->val$child:Landroid/view/View;

    iget v3, p0, Landroid/animation/LayoutTransition$3;->val$changeReason:I

    const/4 v7, 0x2

    if-ne v3, v7, :cond_0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0, v4, v5, v6, v3}, Landroid/animation/LayoutTransition$TransitionListener;->endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    iget v3, p0, Landroid/animation/LayoutTransition$3;->val$changeReason:I

    const/4 v7, 0x3

    if-ne v3, v7, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x4

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 8

    iget-object v3, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v3}, Landroid/animation/LayoutTransition;->-wrap0(Landroid/animation/LayoutTransition;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {v3}, Landroid/animation/LayoutTransition;->-get13(Landroid/animation/LayoutTransition;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/LayoutTransition$TransitionListener;

    iget-object v4, p0, Landroid/animation/LayoutTransition$3;->this$0:Landroid/animation/LayoutTransition;

    iget-object v5, p0, Landroid/animation/LayoutTransition$3;->val$parent:Landroid/view/ViewGroup;

    iget-object v6, p0, Landroid/animation/LayoutTransition$3;->val$child:Landroid/view/View;

    iget v3, p0, Landroid/animation/LayoutTransition$3;->val$changeReason:I

    const/4 v7, 0x2

    if-ne v3, v7, :cond_0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0, v4, v5, v6, v3}, Landroid/animation/LayoutTransition$TransitionListener;->startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    iget v3, p0, Landroid/animation/LayoutTransition$3;->val$changeReason:I

    const/4 v7, 0x3

    if-ne v3, v7, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x4

    goto :goto_1

    :cond_2
    return-void
.end method
