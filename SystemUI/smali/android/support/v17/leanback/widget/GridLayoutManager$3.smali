.class Landroid/support/v17/leanback/widget/GridLayoutManager$3;
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

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

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

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->isReversedFlow()Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get15(Landroid/support/v17/leanback/widget/GridLayoutManager;)Landroid/support/v17/leanback/widget/WindowAlignment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingLow()I

    move-result p5

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->isReversedFlow()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v14, 0x0

    :goto_1
    if-eqz v14, :cond_8

    move/from16 v5, p5

    add-int v6, p5, p3

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    move/from16 v0, p4

    invoke-static {v2, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-wrap3(Landroid/support/v17/leanback/widget/GridLayoutManager;I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get12(Landroid/support/v17/leanback/widget/GridLayoutManager;)I

    move-result v3

    sub-int v7, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    move/from16 v0, p2

    invoke-virtual {v2, v4, v0}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->loadView(Landroid/view/View;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    move/from16 v3, p4

    invoke-static/range {v2 .. v7}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-wrap11(Landroid/support/v17/leanback/widget/GridLayoutManager;ILandroid/view/View;III)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->isReversedFlow()Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-wrap16(Landroid/support/v17/leanback/widget/GridLayoutManager;)V

    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->isReversedFlow()Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-wrap15(Landroid/support/v17/leanback/widget/GridLayoutManager;)V

    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get5(Landroid/support/v17/leanback/widget/GridLayoutManager;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get9(Landroid/support/v17/leanback/widget/GridLayoutManager;)Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get9(Landroid/support/v17/leanback/widget/GridLayoutManager;)Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->consumePendingMovesAfterLayout()V

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get1(Landroid/support/v17/leanback/widget/GridLayoutManager;)Landroid/support/v17/leanback/widget/OnChildLaidOutListener;

    move-result-object v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get0(Landroid/support/v17/leanback/widget/GridLayoutManager;)Landroid/support/v17/leanback/widget/BaseGridView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/support/v17/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get1(Landroid/support/v17/leanback/widget/GridLayoutManager;)Landroid/support/v17/leanback/widget/OnChildLaidOutListener;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get0(Landroid/support/v17/leanback/widget/GridLayoutManager;)Landroid/support/v17/leanback/widget/BaseGridView;

    move-result-object v9

    if-nez v15, :cond_b

    const-wide/16 v12, -0x1

    :goto_5
    move-object v10, v4

    move/from16 v11, p2

    invoke-interface/range {v8 .. v13}, Landroid/support/v17/leanback/widget/OnChildLaidOutListener;->onChildLaidOut(Landroid/view/ViewGroup;Landroid/view/View;IJ)V

    :cond_5
    return-void

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get15(Landroid/support/v17/leanback/widget/GridLayoutManager;)Landroid/support/v17/leanback/widget/WindowAlignment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getSize()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get15(Landroid/support/v17/leanback/widget/GridLayoutManager;)Landroid/support/v17/leanback/widget/WindowAlignment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingHigh()I

    move-result v3

    sub-int p5, v2, v3

    goto/16 :goto_0

    :cond_7
    const/4 v14, 0x1

    goto/16 :goto_1

    :cond_8
    sub-int v5, p5, p3

    move/from16 v6, p5

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-wrap15(Landroid/support/v17/leanback/widget/GridLayoutManager;)V

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-wrap16(Landroid/support/v17/leanback/widget/GridLayoutManager;)V

    goto/16 :goto_4

    :cond_b
    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v12

    goto :goto_5
.end method

.method public createItem(IZ[Ljava/lang/Object;)I
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewForPosition(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get0(Landroid/support/v17/leanback/widget/GridLayoutManager;)Landroid/support/v17/leanback/widget/BaseGridView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/v17/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    const-class v5, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    invoke-static {v4, v3, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-wrap9(Landroid/support/v17/leanback/widget/GridLayoutManager;Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->setItemAlignmentFacet(Landroid/support/v17/leanback/widget/ItemAlignmentFacet;)V

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz p2, :cond_4

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->addView(Landroid/view/View;)V

    :goto_0
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get2(Landroid/support/v17/leanback/widget/GridLayoutManager;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get2(Landroid/support/v17/leanback/widget/GridLayoutManager;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get9(Landroid/support/v17/leanback/widget/GridLayoutManager;)Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get9(Landroid/support/v17/leanback/widget/GridLayoutManager;)Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->consumePendingMovesBeforeLayout()V

    :cond_1
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v5

    invoke-static {v4, v2, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-wrap4(Landroid/support/v17/leanback/widget/GridLayoutManager;Landroid/view/View;Landroid/view/View;)I

    move-result v1

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get5(Landroid/support/v17/leanback/widget/GridLayoutManager;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get3(Landroid/support/v17/leanback/widget/GridLayoutManager;)I

    move-result v4

    if-ne p1, v4, :cond_2

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get14(Landroid/support/v17/leanback/widget/GridLayoutManager;)I

    move-result v4

    if-ne v1, v4, :cond_2

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get9(Landroid/support/v17/leanback/widget/GridLayoutManager;)Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-wrap10(Landroid/support/v17/leanback/widget/GridLayoutManager;)V

    :cond_2
    :goto_1
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-wrap12(Landroid/support/v17/leanback/widget/GridLayoutManager;Landroid/view/View;)V

    :cond_3
    aput-object v2, p3, v6

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get8(Landroid/support/v17/leanback/widget/GridLayoutManager;)I

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result v4

    :goto_2
    return v4

    :cond_4
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v2, v6}, Landroid/support/v17/leanback/widget/GridLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get4(Landroid/support/v17/leanback/widget/GridLayoutManager;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get6(Landroid/support/v17/leanback/widget/GridLayoutManager;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get3(Landroid/support/v17/leanback/widget/GridLayoutManager;)I

    move-result v4

    if-ne p1, v4, :cond_6

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get14(Landroid/support/v17/leanback/widget/GridLayoutManager;)I

    move-result v4

    if-ne v1, v4, :cond_6

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-wrap10(Landroid/support/v17/leanback/widget/GridLayoutManager;)V

    goto :goto_1

    :cond_6
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get6(Landroid/support/v17/leanback/widget/GridLayoutManager;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get3(Landroid/support/v17/leanback/widget/GridLayoutManager;)I

    move-result v4

    if-lt p1, v4, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-set0(Landroid/support/v17/leanback/widget/GridLayoutManager;I)I

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-set4(Landroid/support/v17/leanback/widget/GridLayoutManager;I)I

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4, v6}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-set1(Landroid/support/v17/leanback/widget/GridLayoutManager;Z)Z

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-wrap10(Landroid/support/v17/leanback/widget/GridLayoutManager;)V

    goto :goto_1

    :cond_7
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v4

    goto :goto_2
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get13(Landroid/support/v17/leanback/widget/GridLayoutManager;)Landroid/support/v7/widget/RecyclerView$State;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getEdge(I)I
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get11(Landroid/support/v17/leanback/widget/GridLayoutManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-wrap5(Landroid/support/v17/leanback/widget/GridLayoutManager;Landroid/view/View;)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-wrap6(Landroid/support/v17/leanback/widget/GridLayoutManager;Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getSize(I)I
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-wrap7(Landroid/support/v17/leanback/widget/GridLayoutManager;Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public removeItem(I)V
    .locals 3

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get5(Landroid/support/v17/leanback/widget/GridLayoutManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get10(Landroid/support/v17/leanback/widget/GridLayoutManager;)Landroid/support/v7/widget/RecyclerView$Recycler;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->detachAndScrapView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get10(Landroid/support/v17/leanback/widget/GridLayoutManager;)Landroid/support/v7/widget/RecyclerView$Recycler;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeAndRecycleView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    goto :goto_0
.end method
