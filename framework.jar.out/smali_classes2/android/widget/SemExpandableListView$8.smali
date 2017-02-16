.class Landroid/widget/SemExpandableListView$8;
.super Ljava/lang/Object;
.source "SemExpandableListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SemExpandableListView;->startCollapseAnimation(ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SemExpandableListView;

.field final synthetic val$animationEndRunnable:Ljava/lang/Runnable;

.field final synthetic val$collapsedGroupFlatPosBefore:I

.field final synthetic val$collapsedGroupTopBefore:I

.field final synthetic val$firstVisiblePosBefore:I

.field final synthetic val$groupCountBefore:I

.field final synthetic val$groupPosBefore:I

.field final synthetic val$listTotalChildrenCountBefore:I


# direct methods
.method constructor <init>(Landroid/widget/SemExpandableListView;Ljava/lang/Runnable;IIIIII)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/SemExpandableListView;
    .param p2, "val$animationEndRunnable"    # Ljava/lang/Runnable;
    .param p3, "val$groupPosBefore"    # I
    .param p4, "val$collapsedGroupFlatPosBefore"    # I
    .param p5, "val$groupCountBefore"    # I
    .param p6, "val$firstVisiblePosBefore"    # I
    .param p7, "val$listTotalChildrenCountBefore"    # I
    .param p8, "val$collapsedGroupTopBefore"    # I

    .prologue
    .line 1510
    iput-object p1, p0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    iput-object p2, p0, Landroid/widget/SemExpandableListView$8;->val$animationEndRunnable:Ljava/lang/Runnable;

    iput p3, p0, Landroid/widget/SemExpandableListView$8;->val$groupPosBefore:I

    iput p4, p0, Landroid/widget/SemExpandableListView$8;->val$collapsedGroupFlatPosBefore:I

    iput p5, p0, Landroid/widget/SemExpandableListView$8;->val$groupCountBefore:I

    iput p6, p0, Landroid/widget/SemExpandableListView$8;->val$firstVisiblePosBefore:I

    iput p7, p0, Landroid/widget/SemExpandableListView$8;->val$listTotalChildrenCountBefore:I

    iput p8, p0, Landroid/widget/SemExpandableListView$8;->val$collapsedGroupTopBefore:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 29

    .prologue
    .line 1513
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1515
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    .line 1516
    .local v9, "childCount":I
    if-nez v9, :cond_0

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/widget/SemExpandableListView;->-wrap9(Landroid/widget/SemExpandableListView;)V

    .line 1518
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$8;->val$animationEndRunnable:Ljava/lang/Runnable;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/lang/Runnable;->run()V

    .line 1519
    const/16 v25, 0x1

    return v25

    .line 1522
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/SemExpandableListView;->getExpandCollapseDuration()I

    move-result v6

    .line 1525
    .local v6, "animationDuration":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1526
    .local v7, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v14

    .line 1528
    .local v14, "firstVisiblePosAfter":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemExpandableListView$8;->val$groupPosBefore:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/widget/SemExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Landroid/widget/SemExpandableListView;->getFlatListPosition(J)I

    move-result v11

    .line 1529
    .local v11, "collapsedGroupFlatPosAfter":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v25, v0

    sub-int v26, v11, v14

    invoke-virtual/range {v25 .. v26}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1530
    .local v10, "collapsedGroupAfter":Landroid/view/View;
    if-nez v10, :cond_1

    .line 1533
    invoke-static {}, Landroid/widget/SemExpandableListView;->-get4()Ljava/lang/String;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "startCollapseAnimation() BEFORE: groupPos="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 1534
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemExpandableListView$8;->val$groupPosBefore:I

    move/from16 v27, v0

    .line 1533
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 1534
    const-string/jumbo v27, ", flatPos="

    .line 1533
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 1534
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemExpandableListView$8;->val$collapsedGroupFlatPosBefore:I

    move/from16 v27, v0

    .line 1533
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 1535
    const-string/jumbo v27, ", groupCount="

    .line 1533
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 1535
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemExpandableListView$8;->val$groupCountBefore:I

    move/from16 v27, v0

    .line 1533
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 1535
    const-string/jumbo v27, ", firstPos="

    .line 1533
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 1535
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemExpandableListView$8;->val$firstVisiblePosBefore:I

    move/from16 v27, v0

    .line 1533
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 1536
    const-string/jumbo v27, ", totalListChildrenCount="

    .line 1533
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 1536
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemExpandableListView$8;->val$listTotalChildrenCountBefore:I

    move/from16 v27, v0

    .line 1533
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 1536
    const-string/jumbo v27, "; "

    .line 1533
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 1537
    const-string/jumbo v27, "AFTER: flatPos="

    .line 1533
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 1537
    const-string/jumbo v27, ", groupCount="

    .line 1533
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 1537
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/widget/SemExpandableListView;->-get5(Landroid/widget/SemExpandableListView;)Landroid/widget/ExpandableListAdapter;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v27

    .line 1533
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 1538
    const-string/jumbo v27, ", firstPos="

    .line 1533
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 1538
    const-string/jumbo v27, ", totalListChildrenCount="

    .line 1533
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 1538
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v27

    .line 1533
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/widget/SemExpandableListView;->-wrap9(Landroid/widget/SemExpandableListView;)V

    .line 1540
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$8;->val$animationEndRunnable:Ljava/lang/Runnable;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/lang/Runnable;->run()V

    .line 1541
    const/16 v25, 0x1

    return v25

    .line 1543
    :cond_1
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v13

    .line 1545
    .local v13, "collapsedGroupTopAfter":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemExpandableListView$8;->val$collapsedGroupTopBefore:I

    move/from16 v25, v0

    sub-int v12, v13, v25

    .line 1546
    .local v12, "collapsedGroupShift":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v9, :cond_8

    .line 1547
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1548
    .local v8, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v25, v0

    add-int v26, v16, v14

    invoke-virtual/range {v25 .. v26}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v20

    .line 1549
    .local v20, "packedPos":J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/widget/SemExpandableListView;->-get34(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/widget/SemExpandableListView$ViewInfo;

    .line 1552
    .local v18, "oldViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    if-eqz v18, :cond_2

    .line 1553
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/widget/SemExpandableListView;->-get34(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 1555
    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/SemExpandableListView$ViewInfo;->top:I

    move/from16 v25, v0

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v26

    sub-int v17, v25, v26

    .line 1573
    .local v17, "offset":I
    :goto_1
    if-nez v17, :cond_6

    .line 1546
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 1557
    .end local v17    # "offset":I
    :cond_2
    invoke-static/range {v20 .. v21}, Landroid/widget/SemExpandableListView;->getPackedPositionGroup(J)I

    move-result v15

    .line 1558
    .local v15, "groupPosAfter":I
    const/16 v25, -0x3

    move/from16 v0, v25

    if-ne v15, v0, :cond_3

    .line 1560
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/widget/SemExpandableListView;->-get33(Landroid/widget/SemExpandableListView;)I

    move-result v25

    sub-int v17, v25, v12

    .restart local v17    # "offset":I
    goto :goto_1

    .line 1561
    .end local v17    # "offset":I
    :cond_3
    const/16 v25, -0x2

    move/from16 v0, v25

    if-ne v15, v0, :cond_4

    .line 1563
    neg-int v0, v12

    move/from16 v17, v0

    .restart local v17    # "offset":I
    goto :goto_1

    .line 1564
    .end local v17    # "offset":I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemExpandableListView$8;->val$groupPosBefore:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-le v15, v0, :cond_5

    .line 1566
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/widget/SemExpandableListView;->-get33(Landroid/widget/SemExpandableListView;)I

    move-result v25

    sub-int v17, v25, v12

    .restart local v17    # "offset":I
    goto :goto_1

    .line 1569
    .end local v17    # "offset":I
    :cond_5
    neg-int v0, v12

    move/from16 v17, v0

    .restart local v17    # "offset":I
    goto :goto_1

    .line 1575
    .end local v15    # "groupPosAfter":I
    :cond_6
    add-int v25, v16, v14

    move/from16 v0, v25

    if-ne v0, v11, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    if-eqz v25, :cond_7

    .line 1577
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/widget/SemExpandableListView;->-wrap0(Landroid/widget/SemExpandableListView;I)Landroid/animation/Animator;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1580
    :cond_7
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1581
    sget-object v25, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    aput v27, v26, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v8, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v22

    .line 1582
    .local v22, "translateAnim":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1585
    .end local v8    # "child":Landroid/view/View;
    .end local v17    # "offset":I
    .end local v18    # "oldViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    .end local v20    # "packedPos":J
    .end local v22    # "translateAnim":Landroid/animation/ObjectAnimator;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v0, v10, v1, v6}, Landroid/widget/SemExpandableListView;->-wrap11(Landroid/widget/SemExpandableListView;Landroid/view/View;ZI)V

    .line 1587
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/widget/SemExpandableListView;->-get34(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/util/LongSparseArray;->size()I

    move-result v24

    .line 1589
    .local v24, "viewSnapshotsCount":I
    const/16 v16, 0x0

    :goto_3
    move/from16 v0, v16

    move/from16 v1, v24

    if-ge v0, v1, :cond_9

    .line 1590
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/widget/SemExpandableListView;->-get34(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/widget/SemExpandableListView$ViewInfo;

    .line 1592
    .local v23, "viewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-static {v0, v12, v1}, Landroid/widget/SemExpandableListView;->-wrap2(Landroid/widget/SemExpandableListView;ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 1593
    .local v5, "animBounds":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/widget/SemExpandableListView;->-get20(Landroid/widget/SemExpandableListView;)Ljava/util/ArrayList;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1594
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1589
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 1596
    .end local v5    # "animBounds":Landroid/animation/ObjectAnimator;
    .end local v23    # "viewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    :cond_9
    if-lez v24, :cond_a

    .line 1597
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    aput v26, v25, v27

    const/high16 v26, 0x3f800000    # 1.0f

    const/16 v27, 0x1

    aput v26, v25, v27

    invoke-static/range {v25 .. v25}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 1598
    .local v4, "anim":Landroid/animation/ValueAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/widget/SemExpandableListView;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1599
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1601
    .end local v4    # "anim":Landroid/animation/ValueAnimator;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/widget/SemExpandableListView;->-get13(Landroid/widget/SemExpandableListView;)I

    move-result v26

    add-int v26, v26, v12

    invoke-static/range {v25 .. v26}, Landroid/widget/SemExpandableListView;->-set1(Landroid/widget/SemExpandableListView;I)I

    .line 1603
    new-instance v19, Landroid/animation/AnimatorSet;

    invoke-direct/range {v19 .. v19}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1604
    .local v19, "set":Landroid/animation/AnimatorSet;
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1605
    int-to-long v0, v6

    move-wide/from16 v26, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1606
    invoke-static {}, Landroid/widget/SemExpandableListView;->-get1()Landroid/view/animation/Interpolator;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1607
    new-instance v25, Landroid/widget/SemExpandableListView$8$1;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$8;->val$animationEndRunnable:Ljava/lang/Runnable;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/widget/SemExpandableListView$8$1;-><init>(Landroid/widget/SemExpandableListView$8;Ljava/lang/Runnable;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1621
    invoke-virtual/range {v19 .. v19}, Landroid/animation/AnimatorSet;->start()V

    .line 1622
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/widget/SemExpandableListView;->-get34(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/util/LongSparseArray;->clear()V

    .line 1624
    const/16 v25, 0x0

    return v25
.end method
