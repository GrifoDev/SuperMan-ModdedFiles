.class Landroid/widget/SemHorizontalAbsListView$FlingRunnable$1;
.super Ljava/lang/Object;
.source "SemHorizontalAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemHorizontalAbsListView$FlingRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;


# direct methods
.method constructor <init>(Landroid/widget/SemHorizontalAbsListView$FlingRunnable;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    .prologue
    .line 7022
    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable$1;->this$1:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 7024
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable$1;->this$1:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    iget-object v4, v4, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v4}, Landroid/widget/SemHorizontalAbsListView;->-get3(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v0

    .line 7025
    .local v0, "activeId":I
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable$1;->this$1:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    iget-object v4, v4, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v4}, Landroid/widget/SemHorizontalAbsListView;->-get33(Landroid/widget/SemHorizontalAbsListView;)Landroid/view/VelocityTracker;

    move-result-object v2

    .line 7026
    .local v2, "vt":Landroid/view/VelocityTracker;
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable$1;->this$1:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-static {v4}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->-get0(Landroid/widget/SemHorizontalAbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v1

    .line 7027
    .local v1, "scroller":Landroid/widget/OverScroller;
    if-eqz v2, :cond_0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 7028
    :cond_0
    return-void

    .line 7031
    :cond_1
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable$1;->this$1:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    iget-object v4, v4, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v4}, Landroid/widget/SemHorizontalAbsListView;->-get17(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v4

    int-to-float v4, v4

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 7032
    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    neg-float v3, v4

    .line 7034
    .local v3, "xvel":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable$1;->this$1:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    iget-object v5, v5, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v5}, Landroid/widget/SemHorizontalAbsListView;->-get18(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    .line 7035
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/widget/OverScroller;->isScrollingInDirection(FF)Z

    move-result v4

    .line 7034
    if-eqz v4, :cond_2

    .line 7037
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable$1;->this$1:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    iget-object v4, v4, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const-wide/16 v6, 0x28

    invoke-virtual {v4, p0, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7023
    :goto_0
    return-void

    .line 7039
    :cond_2
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable$1;->this$1:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    .line 7040
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable$1;->this$1:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    iget-object v4, v4, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v5, 0x3

    iput v5, v4, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 7041
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable$1;->this$1:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    iget-object v4, v4, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    goto :goto_0
.end method
