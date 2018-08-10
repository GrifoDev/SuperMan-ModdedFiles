.class Landroid/widget/SemHorizontalAbsListView$FlingRunnable;
.super Ljava/lang/Object;
.source "SemHorizontalAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemHorizontalAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SemHorizontalAbsListView$FlingRunnable$1;
    }
.end annotation


# static fields
.field private static final FLYWHEEL_TIMEOUT:I = 0x28


# instance fields
.field private final mCheckFlywheel:Ljava/lang/Runnable;

.field private mLastFlingX:I

.field private final mScroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Landroid/widget/SemHorizontalAbsListView;


# direct methods
.method static synthetic -get0(Landroid/widget/SemHorizontalAbsListView$FlingRunnable;)Landroid/widget/OverScroller;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method

.method constructor <init>(Landroid/widget/SemHorizontalAbsListView;)V
    .locals 2

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable$1;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable$1;-><init>(Landroid/widget/SemHorizontalAbsListView$FlingRunnable;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/SemHorizontalAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    return-void
.end method


# virtual methods
.method edgeReached(I)V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v3}, Landroid/widget/SemHorizontalAbsListView;->-get23(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v4, v4, Landroid/widget/SemHorizontalAbsListView;->mOverflingDistance:I

    invoke-virtual {v2, v3, v5, v4}, Landroid/widget/OverScroller;->notifyHorizontalEdgeReached(III)V

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView;->getOverScrollMode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v2}, Landroid/widget/SemHorizontalAbsListView;->-wrap1(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    :cond_0
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v3, 0x6

    iput v3, v2, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v1, v2

    if-lez p1, :cond_2

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v2}, Landroid/widget/SemHorizontalAbsListView;->-get6(Landroid/widget/SemHorizontalAbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2, p0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v2}, Landroid/widget/SemHorizontalAbsListView;->-get7(Landroid/widget/SemHorizontalAbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v3, -0x1

    iput v3, v2, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v2, v2, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v2, v2, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    goto :goto_0
.end method

.method endFling()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->-wrap5(Landroid/widget/SemHorizontalAbsListView;)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->-get11(Landroid/widget/SemHorizontalAbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->-get11(Landroid/widget/SemHorizontalAbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0, v2}, Landroid/widget/SemHorizontalAbsListView;->-set1(Landroid/widget/SemHorizontalAbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    :cond_0
    return-void
.end method

.method flywheelTouch()V
    .locals 4

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/SemHorizontalAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 29

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v2, v2, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    return-void

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v2, v2, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v2, v2, Landroid/widget/SemHorizontalAbsListView;->mItemCount:I

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v22

    invoke-virtual/range {v26 .. v26}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v28

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mLastFlingX:I

    sub-int v19, v2, v28

    if-lez v19, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v4, v4, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    iput v4, v2, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v2, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v4}, Landroid/widget/SemHorizontalAbsListView;->-get20(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v4}, Landroid/widget/SemHorizontalAbsListView;->-get19(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v4

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v19

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v19

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v4, v4, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v6, v6, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    sub-int/2addr v4, v6

    invoke-virtual {v2, v4}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    const/16 v25, 0x0

    if-eqz v23, :cond_4

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLeft()I

    move-result v25

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move/from16 v0, v19

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/widget/SemHorizontalAbsListView;->trackMotionScroll(II)Z

    move-result v14

    if-eqz v14, :cond_8

    if-eqz v19, :cond_8

    const/4 v15, 0x1

    :goto_1
    if-eqz v15, :cond_9

    if-eqz v23, :cond_5

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v2, v2, v25

    sub-int v2, v19, v2

    neg-int v3, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v4}, Landroid/widget/SemHorizontalAbsListView;->-get23(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v9, v4, Landroid/widget/SemHorizontalAbsListView;->mOverflingDistance:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v2 .. v11}, Landroid/widget/SemHorizontalAbsListView;->-wrap2(Landroid/widget/SemHorizontalAbsListView;IIIIIIIIZ)Z

    :cond_5
    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->edgeReached(I)V

    :cond_6
    :goto_2
    return-void

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView;->getChildCount()I

    move-result v2

    add-int/lit8 v24, v2, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v4, v4, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    add-int v4, v4, v24

    iput v4, v2, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/widget/SemHorizontalAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v2, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v4}, Landroid/widget/SemHorizontalAbsListView;->-get20(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v4}, Landroid/widget/SemHorizontalAbsListView;->-get19(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v4

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    neg-int v2, v2

    move/from16 v0, v19

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v19

    goto/16 :goto_0

    :cond_8
    const/4 v15, 0x0

    goto/16 :goto_1

    :cond_9
    if-eqz v22, :cond_b

    xor-int/lit8 v2, v15, 0x1

    if-eqz v2, :cond_b

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    :cond_a
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mLastFlingX:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v2}, Landroid/widget/SemHorizontalAbsListView;->-get16(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v2

    invoke-static {}, Landroid/widget/SemHorizontalAbsListView;->-get0()I

    move-result v4

    if-ne v2, v4, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v2, v2, Landroid/widget/SemHorizontalAbsListView;->mFirstPosition:I

    if-nez v2, :cond_6

    if-nez v19, :cond_6

    xor-int/lit8 v2, v22, 0x1

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {}, Landroid/widget/SemHorizontalAbsListView;->-get1()I

    move-result v4

    invoke-static {v2, v4}, Landroid/widget/SemHorizontalAbsListView;->-set3(Landroid/widget/SemHorizontalAbsListView;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v2}, Landroid/widget/SemHorizontalAbsListView;->-wrap7(Landroid/widget/SemHorizontalAbsListView;)V

    goto/16 :goto_2

    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    goto :goto_3

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v2}, Landroid/widget/SemHorizontalAbsListView;->-get23(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v7

    invoke-virtual/range {v26 .. v26}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v18

    sub-int v5, v18, v7

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget v11, v2, Landroid/widget/SemHorizontalAbsListView;->mOverflingDistance:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v4 .. v13}, Landroid/widget/SemHorizontalAbsListView;->-wrap2(Landroid/widget/SemHorizontalAbsListView;IIIIIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_11

    if-gtz v7, :cond_e

    if-lez v18, :cond_e

    const/16 v17, 0x1

    :goto_4
    if-ltz v7, :cond_f

    if-gez v18, :cond_f

    const/16 v16, 0x1

    :goto_5
    if-nez v17, :cond_c

    if-eqz v16, :cond_10

    :cond_c
    invoke-virtual/range {v26 .. v26}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v0, v2

    move/from16 v27, v0

    if-eqz v16, :cond_d

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    :cond_d
    invoke-virtual/range {v26 .. v26}, Landroid/widget/OverScroller;->abortAnimation()V

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_2

    :cond_e
    const/16 v17, 0x0

    goto :goto_4

    :cond_f
    const/16 v16, 0x0

    goto :goto_5

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_2

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method start(I)V
    .locals 9

    const/4 v3, 0x0

    const v6, 0x7fffffff

    const/4 v2, 0x0

    if-gez p1, :cond_1

    const v1, 0x7fffffff

    :goto_0
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mLastFlingX:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, v3}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move v3, p1

    move v4, v2

    move v5, v2

    move v7, v2

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v2, 0x4

    iput v2, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->-get11(Landroid/widget/SemHorizontalAbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const-string/jumbo v2, "SemHorizontalAbsListView-fling"

    invoke-static {v2}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/widget/SemHorizontalAbsListView;->-set1(Landroid/widget/SemHorizontalAbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method startOverfling(I)V
    .locals 11

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v1}, Landroid/widget/SemHorizontalAbsListView;->-get23(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v1

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v3}, Landroid/widget/SemHorizontalAbsListView;->getWidth()I

    move-result v9

    const/high16 v5, -0x80000000

    const v6, 0x7fffffff

    move v3, p1

    move v4, v2

    move v7, v2

    move v8, v2

    move v10, v2

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method startScroll(IIZ)V
    .locals 6

    const/4 v2, 0x0

    if-gez p1, :cond_0

    const v1, 0x7fffffff

    :goto_0
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mLastFlingX:I

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    if-eqz p3, :cond_1

    sget-object v0, Landroid/widget/SemHorizontalAbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move v3, p1

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v2, 0x4

    iput v2, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method startSpringback()V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v1}, Landroid/widget/SemHorizontalAbsListView;->-get23(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->invalidate()V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/SemHorizontalAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    goto :goto_0
.end method
