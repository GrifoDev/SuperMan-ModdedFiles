.class Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/AutoScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollAnimationRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/AutoScrollHelper;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/AutoScrollHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/AutoScrollHelper;

    .prologue
    .line 683
    iput-object p1, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/AutoScrollHelper;Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/AutoScrollHelper;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;-><init>(Lcom/android/internal/widget/AutoScrollHelper;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 686
    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v3}, Lcom/android/internal/widget/AutoScrollHelper;->-get0(Lcom/android/internal/widget/AutoScrollHelper;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 687
    return-void

    .line 690
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v3}, Lcom/android/internal/widget/AutoScrollHelper;->-get2(Lcom/android/internal/widget/AutoScrollHelper;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 691
    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v3, v4}, Lcom/android/internal/widget/AutoScrollHelper;->-set2(Lcom/android/internal/widget/AutoScrollHelper;Z)Z

    .line 692
    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v3}, Lcom/android/internal/widget/AutoScrollHelper;->-get3(Lcom/android/internal/widget/AutoScrollHelper;)Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->start()V

    .line 695
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v3}, Lcom/android/internal/widget/AutoScrollHelper;->-get3(Lcom/android/internal/widget/AutoScrollHelper;)Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    move-result-object v2

    .line 696
    .local v2, "scroller":Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;
    invoke-virtual {v2}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v3}, Lcom/android/internal/widget/AutoScrollHelper;->-wrap0(Lcom/android/internal/widget/AutoScrollHelper;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 701
    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v3}, Lcom/android/internal/widget/AutoScrollHelper;->-get1(Lcom/android/internal/widget/AutoScrollHelper;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 702
    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v3, v4}, Lcom/android/internal/widget/AutoScrollHelper;->-set1(Lcom/android/internal/widget/AutoScrollHelper;Z)Z

    .line 703
    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v3}, Lcom/android/internal/widget/AutoScrollHelper;->-wrap3(Lcom/android/internal/widget/AutoScrollHelper;)V

    .line 706
    :cond_2
    invoke-virtual {v2}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->computeScrollDelta()V

    .line 708
    invoke-virtual {v2}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->getDeltaX()I

    move-result v0

    .line 709
    .local v0, "deltaX":I
    invoke-virtual {v2}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->getDeltaY()I

    move-result v1

    .line 710
    .local v1, "deltaY":I
    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/widget/AutoScrollHelper;->scrollTargetBy(II)V

    .line 713
    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v3}, Lcom/android/internal/widget/AutoScrollHelper;->-get4(Lcom/android/internal/widget/AutoScrollHelper;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 685
    return-void

    .line 697
    .end local v0    # "deltaX":I
    .end local v1    # "deltaY":I
    :cond_3
    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Lcom/android/internal/widget/AutoScrollHelper;

    invoke-static {v3, v4}, Lcom/android/internal/widget/AutoScrollHelper;->-set0(Lcom/android/internal/widget/AutoScrollHelper;Z)Z

    .line 698
    return-void
.end method
