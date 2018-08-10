.class Landroid/support/v17/leanback/widget/GridLayoutManager$2;
.super Ljava/lang/Object;
.source "GridLayoutManager.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/Grid$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/GridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/Object;IIII)V
    .locals 16

    move-object/from16 v4, p1

    check-cast v4, Landroid/view/View;

    const/high16 v2, -0x80000000

    move/from16 v0, p5

    if-eq v0, v2, :cond_0

    const v2, 0x7fffffff

    move/from16 v0, p5

    if-ne v0, v2, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->isReversedFlow()Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingMin()I

    move-result p5

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->isReversedFlow()Z

    move-result v2

    xor-int/lit8 v14, v2, 0x1

    if-eqz v14, :cond_6

    move/from16 v5, p5

    add-int v6, p5, p3

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowStartSecondary(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/WindowAlignment;->secondAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingMin()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v3, v3, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    sub-int v7, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    move/from16 v0, p2

    invoke-virtual {v2, v4, v0}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->loadView(Landroid/view/View;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    move/from16 v3, p4

    invoke-virtual/range {v2 .. v7}, Landroid/support/v17/leanback/widget/GridLayoutManager;->layoutChild(ILandroid/view/View;III)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollLimits()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-boolean v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->consumePendingMovesAfterLayout()V

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildLaidOutListener:Landroid/support/v17/leanback/widget/OnChildLaidOutListener;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2, v4}, Landroid/support/v17/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v8, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildLaidOutListener:Landroid/support/v17/leanback/widget/OnChildLaidOutListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v9, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    if-nez v15, :cond_7

    const-wide/16 v12, -0x1

    :goto_2
    move-object v10, v4

    move/from16 v11, p2

    invoke-interface/range {v8 .. v13}, Landroid/support/v17/leanback/widget/OnChildLaidOutListener;->onChildLaidOut(Landroid/view/ViewGroup;Landroid/view/View;IJ)V

    :cond_4
    return-void

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getSize()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingMax()I

    move-result v3

    sub-int p5, v2, v3

    goto/16 :goto_0

    :cond_6
    sub-int v5, p5, p3

    move/from16 v6, p5

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v12

    goto :goto_2
.end method

.method public createItem(IZ[Ljava/lang/Object;Z)I
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v5, v5, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    sub-int v5, p1, v5

    invoke-virtual {v4, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewForPosition(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v4, v2}, Landroid/support/v17/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    const-class v5, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    invoke-virtual {v4, v3, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getFacet(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->setItemAlignmentFacet(Landroid/support/v17/leanback/widget/ItemAlignmentFacet;)V

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz p4, :cond_5

    if-eqz p2, :cond_4

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;)V

    :goto_0
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildVisibility:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildVisibility:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->consumePendingMovesBeforeLayout()V

    :cond_1
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSubPositionByView(Landroid/view/View;Landroid/view/View;)I

    move-result v1

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-boolean v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    if-nez v4, :cond_7

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ne p1, v4, :cond_2

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    if-ne v1, v4, :cond_2

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    :cond_2
    :goto_1
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->measureChild(Landroid/view/View;)V

    :cond_3
    aput-object v2, p3, v6

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v4, :cond_9

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result v4

    :goto_2
    return v4

    :cond_4
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v2, v6}, Landroid/support/v17/leanback/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_6

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_6
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v2, v6}, Landroid/support/v17/leanback/widget/GridLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_7
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-boolean v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInFastRelayout:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-boolean v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayoutSearchFocus:Z

    if-nez v4, :cond_8

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ne p1, v4, :cond_8

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    if-ne v1, v4, :cond_8

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    goto :goto_1

    :cond_8
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-boolean v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayoutSearchFocus:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-lt p1, v4, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iput p1, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iput v1, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iput-boolean v6, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayoutSearchFocus:Z

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    goto :goto_1

    :cond_9
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v4

    goto :goto_2
.end method

.method public getCount()I
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v1, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getEdge(I)I
    .locals 3

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-boolean v1, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method public getMinIndex()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    return v0
.end method

.method public getSize(I)I
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewPrimarySize(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public removeItem(I)V
    .locals 3

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-boolean v1, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v1, v0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->detachAndScrapView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v1, v0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeAndRecycleView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    goto :goto_0
.end method
