.class Lcom/samsung/android/animation/SemAddDeleteListAnimator$4;
.super Ljava/lang/Object;
.source "SemAddDeleteListAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemAddDeleteListAnimator;->prepareInsert(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

.field final synthetic val$adapter:Landroid/widget/ListAdapter;

.field final synthetic val$insertedItemPosHash:Ljava/util/HashSet;

.field final synthetic val$insertedItems:Ljava/util/ArrayList;

.field final synthetic val$upcomingViewsStartCoords:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/samsung/android/animation/SemAddDeleteListAnimator;Landroid/widget/ListAdapter;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/animation/SemAddDeleteListAnimator;
    .param p2, "val$adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 521
    .local p3, "val$upcomingViewsStartCoords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local p4, "val$insertedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p5, "val$insertedItemPosHash":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iput-object p2, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$4;->val$adapter:Landroid/widget/ListAdapter;

    iput-object p3, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$4;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$4;->val$insertedItems:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$4;->val$insertedItemPosHash:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 50

    .prologue
    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-get1(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object v26

    .line 524
    .local v26, "listview":Landroid/widget/ListView;
    invoke-virtual/range {v26 .. v26}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v15

    .line 525
    .local v15, "firstVisiblePos":I
    invoke-virtual/range {v26 .. v26}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v20

    .line 526
    .local v20, "headerViewsCount":I
    invoke-virtual/range {v26 .. v26}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v18

    .line 527
    .local v18, "footerViewsCount":I
    invoke-virtual/range {v26 .. v26}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    .line 528
    .local v12, "childCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$4;->val$adapter:Landroid/widget/ListAdapter;

    move-object/from16 v45, v0

    invoke-interface/range {v45 .. v45}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    .line 529
    .local v6, "adapterCount":I
    const/16 v39, 0x0

    .line 530
    .local v39, "translationY":F
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 533
    .local v10, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/16 v37, 0x0

    .line 534
    .local v37, "singleItemHeight":I
    const/16 v25, 0x0

    .line 535
    .local v25, "left":I
    const/16 v44, 0x0

    .line 536
    .local v44, "width":I
    move/from16 v0, v20

    if-le v12, v0, :cond_1

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-wrap0(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)I

    move-result v45

    invoke-virtual/range {v26 .. v26}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v46

    add-int v37, v45, v46

    .line 538
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/view/View;->getLeft()I

    move-result v25

    .line 539
    const/16 v45, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/view/View;->getWidth()I

    move-result v44

    .line 544
    :goto_0
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_1
    move/from16 v0, v21

    if-ge v0, v12, :cond_8

    .line 545
    add-int v34, v21, v15

    .line 546
    .local v34, "position":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$4;->val$adapter:Landroid/widget/ListAdapter;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v22

    .line 547
    .local v22, "itemId":J
    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 548
    .local v11, "child":Landroid/view/View;
    const/16 v42, 0x0

    .line 550
    .local v42, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v45

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v29, v0

    .line 551
    .local v29, "newY":F
    const-wide/16 v46, -0x1

    cmp-long v45, v22, v46

    if-nez v45, :cond_4

    .line 552
    add-int v45, v34, v18

    sub-int v45, v45, v6

    add-int/lit8 v45, v45, 0x1

    move/from16 v0, v45

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 553
    .local v16, "footerId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v45, v0

    move-wide/from16 v0, v16

    neg-long v0, v0

    move-wide/from16 v46, v0

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    .end local v42    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    check-cast v42, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .line 554
    .local v42, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    if-nez v42, :cond_2

    .line 556
    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-get0()Ljava/lang/String;

    move-result-object v45

    const-string/jumbo v46, "AFTER header/footer SOMETHING WENT WRONG, in the new layout, header/footer is appearing that was not present before!"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    .end local v16    # "footerId":J
    :cond_0
    :goto_2
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 541
    .end local v11    # "child":Landroid/view/View;
    .end local v21    # "i":I
    .end local v22    # "itemId":J
    .end local v29    # "newY":F
    .end local v34    # "position":I
    .end local v42    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    :cond_1
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getWidth()I

    move-result v44

    goto :goto_0

    .line 560
    .restart local v11    # "child":Landroid/view/View;
    .restart local v16    # "footerId":J
    .restart local v21    # "i":I
    .restart local v22    # "itemId":J
    .restart local v29    # "newY":F
    .restart local v34    # "position":I
    .restart local v42    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    :cond_2
    invoke-virtual/range {v42 .. v42}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    .line 561
    move-object/from16 v0, v42

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v45, v0

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    cmpl-float v45, v45, v29

    if-nez v45, :cond_3

    .line 563
    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-get0()Ljava/lang/String;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v47, "AFTER header/footer something strange is happening, the coordinates are same after layout, viewInfo.top="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    .line 564
    move-object/from16 v0, v42

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v47, v0

    .line 563
    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    .line 564
    const-string/jumbo v47, ", newY="

    .line 563
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

    .line 567
    :cond_3
    move-object/from16 v0, v42

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v45, v0

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    sub-float v39, v45, v29

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v46

    move/from16 v2, v39

    invoke-virtual {v0, v11, v1, v2}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 569
    .local v7, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 573
    .end local v7    # "anim":Landroid/animation/ObjectAnimator;
    .end local v16    # "footerId":J
    .local v42, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$4;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    move-object/from16 v45, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/Integer;

    .line 575
    .local v38, "startPos":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v45, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    .end local v42    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    check-cast v42, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .line 576
    .local v42, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    if-eqz v42, :cond_5

    .line 577
    invoke-virtual/range {v42 .. v42}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    .line 579
    move-object/from16 v0, v42

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v45, v0

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    cmpl-float v45, v45, v29

    if-eqz v45, :cond_0

    .line 582
    move-object/from16 v0, v42

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v45, v0

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    sub-float v39, v45, v29

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v46

    move/from16 v2, v39

    invoke-virtual {v0, v11, v1, v2}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 584
    .restart local v7    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 585
    .end local v7    # "anim":Landroid/animation/ObjectAnimator;
    :cond_5
    if-eqz v38, :cond_6

    .line 587
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v45

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    sub-float v39, v45, v29

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v46

    move/from16 v2, v39

    invoke-virtual {v0, v11, v1, v2}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getInsertTranslateAlphaScaleAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 589
    .restart local v7    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 592
    .end local v7    # "anim":Landroid/animation/ObjectAnimator;
    :cond_6
    add-int v13, v21, v15

    .line 593
    .local v13, "currentPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$4;->val$insertedItems:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    invoke-virtual {v0, v13, v1}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getShiftCount(ILjava/util/ArrayList;)I

    move-result v36

    .line 594
    .local v36, "shiftCount":I
    sub-int v31, v13, v36

    .line 596
    .local v31, "oldPos":I
    sub-int v35, v13, v31

    .line 597
    .local v35, "rowShift":I
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v45

    mul-int v46, v35, v37

    sub-int v33, v45, v46

    .line 598
    .local v33, "oldY":I
    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v45, v0

    sub-float v39, v45, v29

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$4;->val$insertedItemPosHash:Ljava/util/HashSet;

    move-object/from16 v45, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_7

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v46

    move/from16 v2, v39

    invoke-virtual {v0, v11, v1, v2}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getInsertTranslateAlphaScaleAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 605
    .restart local v7    # "anim":Landroid/animation/ObjectAnimator;
    :goto_3
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 603
    .end local v7    # "anim":Landroid/animation/ObjectAnimator;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v46

    move/from16 v2, v39

    invoke-virtual {v0, v11, v1, v2}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .restart local v7    # "anim":Landroid/animation/ObjectAnimator;
    goto :goto_3

    .line 609
    .end local v7    # "anim":Landroid/animation/ObjectAnimator;
    .end local v11    # "child":Landroid/view/View;
    .end local v13    # "currentPos":I
    .end local v22    # "itemId":J
    .end local v29    # "newY":F
    .end local v31    # "oldPos":I
    .end local v33    # "oldY":I
    .end local v34    # "position":I
    .end local v35    # "rowShift":I
    .end local v36    # "shiftCount":I
    .end local v38    # "startPos":Ljava/lang/Integer;
    .end local v42    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$4;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/util/HashMap;->clear()V

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v45

    invoke-interface/range {v45 .. v45}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 616
    .local v14, "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    invoke-virtual/range {v26 .. v26}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v24

    .line 617
    .local v24, "lastVisiblePosition":I
    const/16 v40, 0x0

    .line 619
    .local v40, "updateListenerAdded":Z
    move/from16 v13, v24

    .line 620
    .restart local v13    # "currentPos":I
    :cond_9
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_b

    .line 621
    add-int/lit8 v13, v13, 0x1

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$4;->val$insertedItems:Ljava/util/ArrayList;

    move-object/from16 v45, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_9

    .line 626
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/Map$Entry;

    .line 627
    .local v41, "viewEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    invoke-interface/range {v41 .. v41}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .line 631
    .local v43, "viewinfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v45, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$4;->val$insertedItems:Ljava/util/ArrayList;

    move-object/from16 v47, v0

    invoke-virtual/range {v45 .. v47}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getNewPositionForInsert(ILjava/util/ArrayList;)I

    move-result v27

    .line 632
    .local v27, "newPosition":I
    invoke-virtual/range {v26 .. v26}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v45

    move/from16 v0, v27

    move/from16 v1, v45

    if-ge v0, v1, :cond_a

    .line 633
    add-int/lit8 v13, v13, -0x1

    .line 634
    invoke-virtual/range {v26 .. v26}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v45

    sub-int v35, v45, v27

    .line 635
    .restart local v35    # "rowShift":I
    const/16 v45, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Landroid/view/View;->getTop()I

    move-result v45

    mul-int v46, v35, v37

    sub-int v30, v45, v46

    .line 641
    .local v30, "newY":I
    :goto_5
    new-instance v32, Landroid/graphics/Rect;

    move-object/from16 v0, v43

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v45, v0

    add-int v46, v25, v44

    move-object/from16 v0, v43

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->bottom:I

    move/from16 v47, v0

    move-object/from16 v0, v32

    move/from16 v1, v25

    move/from16 v2, v45

    move/from16 v3, v46

    move/from16 v4, v47

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 642
    .local v32, "oldViewBounds":Landroid/graphics/Rect;
    new-instance v28, Landroid/graphics/Rect;

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Rect;->width()I

    move-result v45

    add-int v45, v45, v25

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Rect;->height()I

    move-result v46

    add-int v46, v46, v30

    move-object/from16 v0, v28

    move/from16 v1, v25

    move/from16 v2, v30

    move/from16 v3, v45

    move/from16 v4, v46

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 643
    .local v28, "newViewBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v45, v0

    .line 645
    const-string/jumbo v46, "bounds"

    sget-object v47, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    .line 644
    const/16 v48, 0x2

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v48, v0

    .line 645
    const/16 v49, 0x0

    aput-object v32, v48, v49

    const/16 v49, 0x1

    aput-object v28, v48, v49

    .line 644
    invoke-static/range {v45 .. v48}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 646
    .local v8, "animBounds":Landroid/animation/ObjectAnimator;
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    if-nez v40, :cond_9

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 649
    const/16 v40, 0x1

    goto/16 :goto_4

    .line 637
    .end local v8    # "animBounds":Landroid/animation/ObjectAnimator;
    .end local v28    # "newViewBounds":Landroid/graphics/Rect;
    .end local v30    # "newY":I
    .end local v32    # "oldViewBounds":Landroid/graphics/Rect;
    .end local v35    # "rowShift":I
    :cond_a
    move-object/from16 v0, v43

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    move/from16 v45, v0

    sub-int v35, v13, v45

    .line 638
    .restart local v35    # "rowShift":I
    move-object/from16 v0, v43

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v45, v0

    mul-int v46, v35, v37

    add-int v30, v45, v46

    .restart local v30    # "newY":I
    goto/16 :goto_5

    .line 655
    .end local v27    # "newPosition":I
    .end local v30    # "newY":I
    .end local v35    # "rowShift":I
    .end local v41    # "viewEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    .end local v43    # "viewinfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v45

    invoke-interface/range {v45 .. v45}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 657
    .local v19, "headerFootersIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    :goto_6
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_d

    .line 658
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/Map$Entry;

    .line 659
    .restart local v41    # "viewEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    invoke-interface/range {v41 .. v41}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .line 661
    .restart local v43    # "viewinfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    move-object/from16 v0, v43

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$4;->val$insertedItems:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v46

    mul-int v46, v46, v37

    add-int v30, v45, v46

    .line 663
    .restart local v30    # "newY":I
    new-instance v32, Landroid/graphics/Rect;

    move-object/from16 v0, v43

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v45, v0

    add-int v46, v25, v44

    move-object/from16 v0, v43

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->bottom:I

    move/from16 v47, v0

    move-object/from16 v0, v32

    move/from16 v1, v25

    move/from16 v2, v45

    move/from16 v3, v46

    move/from16 v4, v47

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 664
    .restart local v32    # "oldViewBounds":Landroid/graphics/Rect;
    new-instance v28, Landroid/graphics/Rect;

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Rect;->width()I

    move-result v45

    add-int v45, v45, v25

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Rect;->height()I

    move-result v46

    add-int v46, v46, v30

    move-object/from16 v0, v28

    move/from16 v1, v25

    move/from16 v2, v30

    move/from16 v3, v45

    move/from16 v4, v46

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 665
    .restart local v28    # "newViewBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v45, v0

    .line 667
    const-string/jumbo v46, "bounds"

    sget-object v47, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    .line 666
    const/16 v48, 0x2

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v48, v0

    .line 667
    const/16 v49, 0x0

    aput-object v32, v48, v49

    const/16 v49, 0x1

    aput-object v28, v48, v49

    .line 666
    invoke-static/range {v45 .. v48}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 668
    .restart local v8    # "animBounds":Landroid/animation/ObjectAnimator;
    if-nez v40, :cond_c

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 671
    :cond_c
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 674
    .end local v8    # "animBounds":Landroid/animation/ObjectAnimator;
    .end local v28    # "newViewBounds":Landroid/graphics/Rect;
    .end local v30    # "newY":I
    .end local v32    # "oldViewBounds":Landroid/graphics/Rect;
    .end local v41    # "viewEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    .end local v43    # "viewinfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/util/LinkedHashMap;->clear()V

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/util/LinkedHashMap;->clear()V

    .line 677
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    .line 678
    .local v9, "animSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 679
    sget-object v45, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->INSERT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v45

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 680
    new-instance v45, Lcom/samsung/android/animation/SemAddDeleteListAnimator$4$1;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator$4$1;-><init>(Lcom/samsung/android/animation/SemAddDeleteListAnimator$4;)V

    move-object/from16 v0, v45

    invoke-virtual {v9, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 702
    sget v45, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->TRANSLATION_DURATION:I

    move/from16 v0, v45

    int-to-long v0, v0

    move-wide/from16 v46, v0

    move-wide/from16 v0, v46

    invoke-virtual {v9, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 703
    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    .line 522
    return-void
.end method
