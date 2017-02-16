.class Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;
.super Ljava/lang/Object;
.source "SemAddDeleteGridAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->prepareInsert(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

.field final synthetic val$adapter:Landroid/widget/ListAdapter;

.field final synthetic val$insertedItemPosHash:Ljava/util/HashSet;

.field final synthetic val$insertedItemPositions:Ljava/util/ArrayList;

.field final synthetic val$upcomingViewsStartCoords:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;Landroid/widget/ListAdapter;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/animation/SemAddDeleteGridAnimator;
    .param p2, "val$adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 457
    .local p3, "val$upcomingViewsStartCoords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[F>;"
    .local p4, "val$insertedItemPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p5, "val$insertedItemPosHash":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    iput-object p2, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->val$adapter:Landroid/widget/ListAdapter;

    iput-object p3, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->val$insertedItemPositions:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->val$insertedItemPosHash:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 45

    .prologue
    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->-get0(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)Landroid/widget/GridView;

    move-result-object v15

    .line 461
    .local v15, "gridView":Landroid/widget/GridView;
    invoke-virtual {v15}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v14

    .line 462
    .local v14, "firstVisiblePos":I
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    .line 463
    .local v11, "childCount":I
    const/16 v34, 0x0

    .line 464
    .local v34, "translationX":F
    const/16 v35, 0x0

    .line 465
    .local v35, "translationY":F
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 467
    .local v9, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {v15}, Landroid/widget/GridView;->getNumColumns()I

    move-result v24

    .line 468
    .local v24, "numColumns":I
    const/16 v32, 0x0

    .line 469
    .local v32, "singleRowHeight":I
    move/from16 v0, v24

    if-le v11, v0, :cond_0

    .line 470
    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getTop()I

    move-result v40

    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getTop()I

    move-result v41

    sub-int v32, v40, v41

    .line 473
    :cond_0
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v11, :cond_5

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->val$adapter:Landroid/widget/ListAdapter;

    move-object/from16 v40, v0

    add-int v41, v16, v14

    invoke-interface/range {v40 .. v41}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v18

    .line 475
    .local v18, "itemId":J
    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 478
    .local v10, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    move-object/from16 v40, v0

    add-int v41, v16, v14

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, [F

    .line 480
    .local v33, "startPos":[F
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v40

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v22, v0

    .line 481
    .local v22, "newX":F
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v40

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v23, v0

    .line 483
    .local v23, "newY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v40, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .line 484
    .local v38, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    if-eqz v38, :cond_2

    .line 485
    invoke-virtual/range {v38 .. v38}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    .line 487
    move-object/from16 v0, v38

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    cmpl-float v40, v40, v22

    if-nez v40, :cond_1

    move-object/from16 v0, v38

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    cmpl-float v40, v40, v23

    if-nez v40, :cond_1

    .line 473
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 490
    :cond_1
    move-object/from16 v0, v38

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    sub-float v34, v40, v22

    .line 491
    move-object/from16 v0, v38

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    sub-float v35, v40, v23

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v10, v1, v2}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 494
    .local v6, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 495
    .end local v6    # "anim":Landroid/animation/ObjectAnimator;
    :cond_2
    if-eqz v33, :cond_3

    .line 497
    const/16 v40, 0x0

    aget v40, v33, v40

    sub-float v34, v40, v22

    .line 498
    const/16 v40, 0x1

    aget v40, v33, v40

    sub-float v35, v40, v23

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v10, v1, v2}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getInsertTranslateAlphaScaleAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 501
    .restart local v6    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 504
    .end local v6    # "anim":Landroid/animation/ObjectAnimator;
    :cond_3
    add-int v12, v16, v14

    .line 505
    .local v12, "currentPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->val$insertedItemPositions:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getShiftCount(ILjava/util/ArrayList;)I

    move-result v31

    .line 506
    .local v31, "shiftCount":I
    sub-int v25, v12, v31

    .line 508
    .local v25, "oldPos":I
    div-int v26, v25, v24

    .line 509
    .local v26, "oldPosRowId":I
    div-int v20, v12, v24

    .line 510
    .local v20, "newPosRowId":I
    sub-int v30, v20, v26

    .line 511
    .local v30, "rowShift":I
    rem-int v40, v25, v24

    move/from16 v0, v40

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getLeft()I

    move-result v28

    .line 512
    .local v28, "oldX":I
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v40

    mul-int v41, v30, v32

    sub-int v29, v40, v41

    .line 513
    .local v29, "oldY":I
    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v40, v0

    sub-float v34, v40, v22

    .line 514
    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v40, v0

    sub-float v35, v40, v23

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->val$insertedItemPosHash:Ljava/util/HashSet;

    move-object/from16 v40, v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_4

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v10, v1, v2}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getInsertTranslateAlphaScaleAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 521
    .restart local v6    # "anim":Landroid/animation/ObjectAnimator;
    :goto_2
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 519
    .end local v6    # "anim":Landroid/animation/ObjectAnimator;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v10, v1, v2}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .restart local v6    # "anim":Landroid/animation/ObjectAnimator;
    goto :goto_2

    .line 527
    .end local v6    # "anim":Landroid/animation/ObjectAnimator;
    .end local v10    # "child":Landroid/view/View;
    .end local v12    # "currentPos":I
    .end local v18    # "itemId":J
    .end local v20    # "newPosRowId":I
    .end local v22    # "newX":F
    .end local v23    # "newY":F
    .end local v25    # "oldPos":I
    .end local v26    # "oldPosRowId":I
    .end local v28    # "oldX":I
    .end local v29    # "oldY":I
    .end local v30    # "rowShift":I
    .end local v31    # "shiftCount":I
    .end local v33    # "startPos":[F
    .end local v38    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v40

    invoke-interface/range {v40 .. v40}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 530
    .local v13, "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    invoke-virtual {v15}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v17

    .line 532
    .local v17, "lastVisiblePosition":I
    move/from16 v12, v17

    .line 533
    .restart local v12    # "currentPos":I
    const/16 v36, 0x0

    .line 534
    .local v36, "updateListenerAdded":Z
    :cond_6
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_7

    .line 535
    add-int/lit8 v12, v12, 0x1

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->val$insertedItemPositions:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_6

    .line 540
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/Map$Entry;

    .line 541
    .local v37, "viewEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    invoke-interface/range {v37 .. v37}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .line 542
    .local v39, "viewinfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    move-object/from16 v0, v39

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    move/from16 v40, v0

    div-int v26, v40, v24

    .line 543
    .restart local v26    # "oldPosRowId":I
    div-int v20, v12, v24

    .line 547
    .restart local v20    # "newPosRowId":I
    sub-int v30, v20, v26

    .line 549
    .restart local v30    # "rowShift":I
    rem-int v40, v12, v24

    move/from16 v0, v40

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getLeft()I

    move-result v40

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v22, v0

    .line 550
    .restart local v22    # "newX":F
    move-object/from16 v0, v39

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v40, v0

    mul-int v41, v30, v32

    add-int v40, v40, v41

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v23, v0

    .line 552
    .restart local v23    # "newY":F
    new-instance v27, Landroid/graphics/Rect;

    move-object/from16 v0, v39

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v40, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v41, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->right:I

    move/from16 v42, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->bottom:I

    move/from16 v43, v0

    move-object/from16 v0, v27

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    move/from16 v4, v43

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 553
    .local v27, "oldViewBounds":Landroid/graphics/Rect;
    new-instance v21, Landroid/graphics/Rect;

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v40, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v41, v0

    .line 554
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->width()I

    move-result v42

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    add-float v42, v42, v22

    move/from16 v0, v42

    float-to-int v0, v0

    move/from16 v42, v0

    .line 555
    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v43, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->height()I

    move-result v44

    add-int v43, v43, v44

    .line 553
    move-object/from16 v0, v21

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    move/from16 v4, v43

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 556
    .local v21, "newViewBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v40, v0

    .line 558
    const-string/jumbo v41, "bounds"

    sget-object v42, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    .line 557
    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    .line 558
    const/16 v44, 0x0

    aput-object v27, v43, v44

    const/16 v44, 0x1

    aput-object v21, v43, v44

    .line 557
    invoke-static/range {v40 .. v43}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 559
    .local v7, "animBounds":Landroid/animation/ObjectAnimator;
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    if-nez v36, :cond_6

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 562
    const/16 v36, 0x1

    goto/16 :goto_3

    .line 565
    .end local v7    # "animBounds":Landroid/animation/ObjectAnimator;
    .end local v20    # "newPosRowId":I
    .end local v21    # "newViewBounds":Landroid/graphics/Rect;
    .end local v22    # "newX":F
    .end local v23    # "newY":F
    .end local v26    # "oldPosRowId":I
    .end local v27    # "oldViewBounds":Landroid/graphics/Rect;
    .end local v30    # "rowShift":I
    .end local v37    # "viewEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    .end local v39    # "viewinfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/LinkedHashMap;->clear()V

    .line 566
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 567
    .local v8, "animSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 568
    sget-object v40, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->INSERT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v40

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 569
    new-instance v40, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4$1;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4$1;-><init>(Lcom/samsung/android/animation/SemAddDeleteGridAnimator$4;)V

    move-object/from16 v0, v40

    invoke-virtual {v8, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 588
    sget v40, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->TRANSLATION_DURATION:I

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v40, v0

    move-wide/from16 v0, v40

    invoke-virtual {v8, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 589
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    .line 458
    return-void
.end method
