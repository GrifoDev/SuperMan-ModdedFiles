.class Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$1;
.super Ljava/lang/Object;
.source "Donut.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$1;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$1;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    invoke-static {v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->-get5(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Landroid/graphics/Canvas;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$1;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$1;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    invoke-static {v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->-get20(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$1;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    invoke-static {v3}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->-get13(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)Z

    move-result v3

    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->-wrap1(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;Ljava/util/ArrayList;FZ)V

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$1;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$1;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    invoke-static {v2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->-get6(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$1;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    invoke-static {v3}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->-get8(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$1;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    invoke-static {v4}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->-get7(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$1;->this$0:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    invoke-static {v5}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->-get4(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->invalidate(IIII)V

    return-void
.end method
