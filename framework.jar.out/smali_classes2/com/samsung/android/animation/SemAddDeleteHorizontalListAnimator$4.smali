.class Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;
.super Ljava/lang/Object;
.source "SemAddDeleteHorizontalListAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->prepareInsert(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

.field final synthetic val$adapter:Landroid/widget/ListAdapter;

.field final synthetic val$insertedItemPosHash:Ljava/util/HashSet;

.field final synthetic val$insertedItems:Ljava/util/ArrayList;

.field final synthetic val$upcomingViewsStartCoords:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;Landroid/widget/ListAdapter;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;
    .param p2, "val$adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 533
    .local p3, "val$upcomingViewsStartCoords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local p4, "val$insertedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p5, "val$insertedItemPosHash":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iput-object p2, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$adapter:Landroid/widget/ListAdapter;

    iput-object p3, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$insertedItems:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$insertedItemPosHash:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 50

    .prologue
    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-get1(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v26

    .line 536
    .local v26, "listview":Landroid/widget/SemHorizontalListView;
    invoke-virtual/range {v26 .. v26}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v15

    .line 537
    .local v15, "firstVisiblePos":I
    invoke-virtual/range {v26 .. v26}, Landroid/widget/SemHorizontalListView;->getHeaderViewsCount()I

    move-result v20

    .line 538
    .local v20, "headerViewsCount":I
    invoke-virtual/range {v26 .. v26}, Landroid/widget/SemHorizontalListView;->getFooterViewsCount()I

    move-result v18

    .line 539
    .local v18, "footerViewsCount":I
    invoke-virtual/range {v26 .. v26}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    .line 540
    .local v12, "childCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$adapter:Landroid/widget/ListAdapter;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    .line 541
    .local v6, "adapterCount":I
    const/16 v40, 0x0

    .line 542
    .local v40, "translationX":F
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 545
    .local v10, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/16 v37, 0x0

    .line 546
    .local v37, "singleItemWidth":I
    const/16 v39, 0x0

    .line 547
    .local v39, "top":I
    const/16 v21, 0x0

    .line 548
    .local v21, "height":I
    move/from16 v0, v20

    if-le v12, v0, :cond_1

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-wrap0(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)I

    move-result v37

    .line 550
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/view/View;->getTop()I

    move-result v39

    .line 551
    const/16 v45, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/view/View;->getHeight()I

    move-result v21

    .line 556
    :goto_0
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_1
    move/from16 v0, v22

    if-ge v0, v12, :cond_9

    .line 557
    add-int v34, v22, v15

    .line 558
    .local v34, "position":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$adapter:Landroid/widget/ListAdapter;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v24

    .line 559
    .local v24, "itemId":J
    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 560
    .local v11, "child":Landroid/view/View;
    const/16 v43, 0x0

    .line 562
    .local v43, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v45

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v29, v0

    .line 563
    .local v29, "newX":F
    const-wide/16 v46, -0x1

    cmp-long v45, v24, v46

    if-nez v45, :cond_4

    .line 564
    add-int v45, v34, v18

    sub-int v45, v45, v6

    add-int/lit8 v45, v45, 0x1

    move/from16 v0, v45

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 565
    .local v16, "footerId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v45, v0

    move-wide/from16 v0, v16

    neg-long v0, v0

    move-wide/from16 v46, v0

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    .end local v43    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    check-cast v43, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .line 566
    .local v43, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    if-nez v43, :cond_2

    .line 568
    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-get0()Ljava/lang/String;

    move-result-object v45

    const-string/jumbo v46, "AFTER header/footer SOMETHING WENT WRONG, in the new layout, header/footer is appearing that was not present before!"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    .end local v16    # "footerId":J
    :cond_0
    :goto_2
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 553
    .end local v11    # "child":Landroid/view/View;
    .end local v22    # "i":I
    .end local v24    # "itemId":J
    .end local v29    # "newX":F
    .end local v34    # "position":I
    .end local v43    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    :cond_1
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHeight()I

    move-result v21

    goto :goto_0

    .line 572
    .restart local v11    # "child":Landroid/view/View;
    .restart local v16    # "footerId":J
    .restart local v22    # "i":I
    .restart local v24    # "itemId":J
    .restart local v29    # "newX":F
    .restart local v34    # "position":I
    .restart local v43    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    :cond_2
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    .line 573
    move-object/from16 v0, v43

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v45, v0

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    cmpl-float v45, v45, v29

    if-nez v45, :cond_3

    .line 575
    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-get0()Ljava/lang/String;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v47, "AFTER header/footer something strange is happening, the coordinates are same after layout, viewInfo.left="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    .line 576
    move-object/from16 v0, v43

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v47, v0

    .line 575
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    .line 576
    const-string/jumbo v47, ", newX="

    .line 575
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 579
    :cond_3
    move-object/from16 v0, v43

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v45, v0

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    sub-float v40, v45, v29

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v40

    move/from16 v2, v46

    invoke-virtual {v0, v11, v1, v2}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 581
    .local v7, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 585
    .end local v7    # "anim":Landroid/animation/ObjectAnimator;
    .end local v16    # "footerId":J
    .local v43, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    move-object/from16 v45, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/Integer;

    .line 587
    .local v38, "startPos":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v45, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    .end local v43    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    check-cast v43, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .line 588
    .local v43, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    if-eqz v43, :cond_5

    .line 589
    invoke-virtual/range {v43 .. v43}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    .line 591
    move-object/from16 v0, v43

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v45, v0

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    cmpl-float v45, v45, v29

    if-eqz v45, :cond_0

    .line 594
    move-object/from16 v0, v43

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v45, v0

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    sub-float v40, v45, v29

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v40

    move/from16 v2, v46

    invoke-virtual {v0, v11, v1, v2}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 596
    .restart local v7    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 597
    .end local v7    # "anim":Landroid/animation/ObjectAnimator;
    :cond_5
    if-eqz v38, :cond_6

    .line 599
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v45

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    sub-float v40, v45, v29

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v40

    move/from16 v2, v46

    invoke-virtual {v0, v11, v1, v2}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getInsertTranslateAlphaScaleAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 601
    .restart local v7    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 604
    .end local v7    # "anim":Landroid/animation/ObjectAnimator;
    :cond_6
    add-int v13, v22, v15

    .line 605
    .local v13, "currentPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$insertedItems:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    invoke-virtual {v0, v13, v1}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getShiftCount(ILjava/util/ArrayList;)I

    move-result v36

    .line 606
    .local v36, "shiftCount":I
    sub-int v31, v13, v36

    .line 608
    .local v31, "oldPos":I
    sub-int v35, v13, v31

    .line 609
    .local v35, "rowShift":I
    const/16 v33, -0x1

    .line 610
    .local v33, "oldX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-get1(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/view/View;->isLayoutRtl()Z

    move-result v45

    if-eqz v45, :cond_7

    .line 611
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v45

    mul-int v46, v35, v37

    add-int v33, v45, v46

    .line 616
    :goto_3
    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v45, v0

    sub-float v40, v45, v29

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$insertedItemPosHash:Ljava/util/HashSet;

    move-object/from16 v45, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_8

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v40

    move/from16 v2, v46

    invoke-virtual {v0, v11, v1, v2}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getInsertTranslateAlphaScaleAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 623
    .restart local v7    # "anim":Landroid/animation/ObjectAnimator;
    :goto_4
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 613
    .end local v7    # "anim":Landroid/animation/ObjectAnimator;
    :cond_7
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v45

    mul-int v46, v35, v37

    sub-int v33, v45, v46

    goto :goto_3

    .line 621
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v40

    move/from16 v2, v46

    invoke-virtual {v0, v11, v1, v2}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .restart local v7    # "anim":Landroid/animation/ObjectAnimator;
    goto :goto_4

    .line 627
    .end local v7    # "anim":Landroid/animation/ObjectAnimator;
    .end local v11    # "child":Landroid/view/View;
    .end local v13    # "currentPos":I
    .end local v24    # "itemId":J
    .end local v29    # "newX":F
    .end local v31    # "oldPos":I
    .end local v33    # "oldX":I
    .end local v34    # "position":I
    .end local v35    # "rowShift":I
    .end local v36    # "shiftCount":I
    .end local v38    # "startPos":Ljava/lang/Integer;
    .end local v43    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/util/HashMap;->clear()V

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v45

    invoke-interface/range {v45 .. v45}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 634
    .local v14, "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    invoke-virtual/range {v26 .. v26}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v23

    .line 635
    .local v23, "lastVisiblePosition":I
    const/16 v41, 0x0

    .line 637
    .local v41, "updateListenerAdded":Z
    move/from16 v13, v23

    .line 638
    .restart local v13    # "currentPos":I
    :cond_a
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_e

    .line 639
    add-int/lit8 v13, v13, 0x1

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$insertedItems:Ljava/util/ArrayList;

    move-object/from16 v45, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_a

    .line 644
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/util/Map$Entry;

    .line 645
    .local v42, "viewEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    invoke-interface/range {v42 .. v42}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .line 657
    .local v44, "viewinfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v45, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$insertedItems:Ljava/util/ArrayList;

    move-object/from16 v47, v0

    invoke-virtual/range {v45 .. v47}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getNewPositionForInsert(ILjava/util/ArrayList;)I

    move-result v27

    .line 658
    .local v27, "newPosition":I
    invoke-virtual/range {v26 .. v26}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v45

    move/from16 v0, v27

    move/from16 v1, v45

    if-ge v0, v1, :cond_c

    .line 659
    add-int/lit8 v13, v13, -0x1

    .line 660
    invoke-virtual/range {v26 .. v26}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v45

    sub-int v35, v45, v27

    .line 661
    .restart local v35    # "rowShift":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-get1(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/view/View;->isLayoutRtl()Z

    move-result v45

    if-eqz v45, :cond_b

    .line 662
    const/16 v45, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/view/View;->getLeft()I

    move-result v45

    mul-int v46, v35, v37

    add-int v30, v45, v46

    .line 675
    .local v30, "newX":I
    :goto_6
    new-instance v32, Landroid/graphics/Rect;

    move-object/from16 v0, v44

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->right:I

    move/from16 v46, v0

    add-int v47, v39, v21

    move-object/from16 v0, v32

    move/from16 v1, v45

    move/from16 v2, v39

    move/from16 v3, v46

    move/from16 v4, v47

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 676
    .local v32, "oldViewBounds":Landroid/graphics/Rect;
    new-instance v28, Landroid/graphics/Rect;

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Rect;->width()I

    move-result v45

    add-int v45, v45, v30

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Rect;->height()I

    move-result v46

    add-int v46, v46, v39

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v39

    move/from16 v3, v45

    move/from16 v4, v46

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 677
    .local v28, "newViewBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v45, v0

    .line 679
    const-string/jumbo v46, "bounds"

    sget-object v47, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    .line 678
    const/16 v48, 0x2

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v48, v0

    .line 679
    const/16 v49, 0x0

    aput-object v32, v48, v49

    const/16 v49, 0x1

    aput-object v28, v48, v49

    .line 678
    invoke-static/range {v45 .. v48}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 680
    .local v8, "animBounds":Landroid/animation/ObjectAnimator;
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    if-nez v41, :cond_a

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 683
    const/16 v41, 0x1

    goto/16 :goto_5

    .line 664
    .end local v8    # "animBounds":Landroid/animation/ObjectAnimator;
    .end local v28    # "newViewBounds":Landroid/graphics/Rect;
    .end local v30    # "newX":I
    .end local v32    # "oldViewBounds":Landroid/graphics/Rect;
    :cond_b
    const/16 v45, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/view/View;->getLeft()I

    move-result v45

    mul-int v46, v35, v37

    sub-int v30, v45, v46

    .restart local v30    # "newX":I
    goto/16 :goto_6

    .line 667
    .end local v30    # "newX":I
    .end local v35    # "rowShift":I
    :cond_c
    move-object/from16 v0, v44

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    move/from16 v45, v0

    sub-int v35, v13, v45

    .line 668
    .restart local v35    # "rowShift":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-get1(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/view/View;->isLayoutRtl()Z

    move-result v45

    if-eqz v45, :cond_d

    .line 669
    move-object/from16 v0, v44

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v45, v0

    mul-int v46, v35, v37

    sub-int v30, v45, v46

    .restart local v30    # "newX":I
    goto/16 :goto_6

    .line 671
    .end local v30    # "newX":I
    :cond_d
    move-object/from16 v0, v44

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v45, v0

    mul-int v46, v35, v37

    add-int v30, v45, v46

    .restart local v30    # "newX":I
    goto/16 :goto_6

    .line 689
    .end local v27    # "newPosition":I
    .end local v30    # "newX":I
    .end local v35    # "rowShift":I
    .end local v42    # "viewEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    .end local v44    # "viewinfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v45

    invoke-interface/range {v45 .. v45}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 691
    .local v19, "headerFootersIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    :goto_7
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_10

    .line 692
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/util/Map$Entry;

    .line 693
    .restart local v42    # "viewEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    invoke-interface/range {v42 .. v42}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .line 695
    .restart local v44    # "viewinfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    move-object/from16 v0, v44

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$insertedItems:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v46

    mul-int v46, v46, v37

    add-int v30, v45, v46

    .line 697
    .restart local v30    # "newX":I
    new-instance v32, Landroid/graphics/Rect;

    move-object/from16 v0, v44

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v45, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->right:I

    move/from16 v46, v0

    add-int v47, v39, v21

    move-object/from16 v0, v32

    move/from16 v1, v45

    move/from16 v2, v39

    move/from16 v3, v46

    move/from16 v4, v47

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 698
    .restart local v32    # "oldViewBounds":Landroid/graphics/Rect;
    new-instance v28, Landroid/graphics/Rect;

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Rect;->width()I

    move-result v45

    add-int v45, v45, v30

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Rect;->height()I

    move-result v46

    add-int v46, v46, v39

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v39

    move/from16 v3, v45

    move/from16 v4, v46

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 699
    .restart local v28    # "newViewBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v45, v0

    .line 701
    const-string/jumbo v46, "bounds"

    sget-object v47, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    .line 700
    const/16 v48, 0x2

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v48, v0

    .line 701
    const/16 v49, 0x0

    aput-object v32, v48, v49

    const/16 v49, 0x1

    aput-object v28, v48, v49

    .line 700
    invoke-static/range {v45 .. v48}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 702
    .restart local v8    # "animBounds":Landroid/animation/ObjectAnimator;
    if-nez v41, :cond_f

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 705
    :cond_f
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 708
    .end local v8    # "animBounds":Landroid/animation/ObjectAnimator;
    .end local v28    # "newViewBounds":Landroid/graphics/Rect;
    .end local v30    # "newX":I
    .end local v32    # "oldViewBounds":Landroid/graphics/Rect;
    .end local v42    # "viewEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    .end local v44    # "viewinfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/util/LinkedHashMap;->clear()V

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/util/LinkedHashMap;->clear()V

    .line 711
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    .line 712
    .local v9, "animSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 713
    sget-object v45, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->INSERT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v45

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 714
    new-instance v45, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4$1;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4$1;-><init>(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;)V

    move-object/from16 v0, v45

    invoke-virtual {v9, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 733
    sget v45, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->TRANSLATION_DURATION:I

    move/from16 v0, v45

    int-to-long v0, v0

    move-wide/from16 v46, v0

    move-wide/from16 v0, v46

    invoke-virtual {v9, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 734
    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    .line 534
    return-void
.end method
