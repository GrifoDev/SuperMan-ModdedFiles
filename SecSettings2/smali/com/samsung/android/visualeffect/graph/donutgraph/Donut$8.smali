.class Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$8;
.super Ljava/lang/Object;
.source "Donut.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->setAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$8;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$8;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$8;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    invoke-static {v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->-get14(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->-wrap6(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
