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
    .locals 51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-get1(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v16

    invoke-virtual/range {v27 .. v27}, Landroid/widget/SemHorizontalListView;->getHeaderViewsCount()I

    move-result v21

    invoke-virtual/range {v27 .. v27}, Landroid/widget/SemHorizontalListView;->getFooterViewsCount()I

    move-result v17

    invoke-virtual/range {v27 .. v27}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$adapter:Landroid/widget/ListAdapter;

    move-object/from16 v46, v0

    invoke-interface/range {v46 .. v46}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    const/16 v41, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/16 v38, 0x0

    const/16 v40, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    if-le v12, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-wrap0(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)I

    move-result v38

    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Landroid/view/View;->getTop()I

    move-result v40

    const/16 v46, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Landroid/view/View;->getHeight()I

    move-result v22

    :goto_0
    const/16 v23, 0x0

    :goto_1
    move/from16 v0, v23

    if-ge v0, v12, :cond_9

    add-int v35, v23, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$adapter:Landroid/widget/ListAdapter;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v24

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    const/16 v44, 0x0

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v46

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v30, v0

    const-wide/16 v46, -0x1

    cmp-long v46, v24, v46

    if-nez v46, :cond_4

    add-int v46, v35, v17

    sub-int v46, v46, v6

    add-int/lit8 v46, v46, 0x1

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v46, v0

    move-wide/from16 v0, v18

    neg-long v0, v0

    move-wide/from16 v48, v0

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    if-nez v44, :cond_2

    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-get0()Ljava/lang/String;

    move-result-object v46

    const-string/jumbo v47, "AFTER header/footer SOMETHING WENT WRONG, in the new layout, header/footer is appearing that was not present before!"

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_2
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual/range {v27 .. v27}, Landroid/widget/SemHorizontalListView;->getHeight()I

    move-result v22

    goto :goto_0

    :cond_2
    invoke-virtual/range {v44 .. v44}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    move-object/from16 v0, v44

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v46, v0

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    cmpl-float v46, v46, v30

    if-nez v46, :cond_3

    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-get0()Ljava/lang/String;

    move-result-object v46

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v48, "AFTER header/footer something strange is happening, the coordinates are same after layout, viewInfo.left="

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v44

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string/jumbo v48, ", newX="

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    move-object/from16 v0, v44

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v46, v0

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    sub-float v41, v46, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v41

    move/from16 v2, v47

    invoke-virtual {v0, v11, v1, v2}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    move-object/from16 v46, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v46, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    if-eqz v44, :cond_5

    invoke-virtual/range {v44 .. v44}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    move-object/from16 v0, v44

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v46, v0

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    cmpl-float v46, v46, v30

    if-eqz v46, :cond_0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v46, v0

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    sub-float v41, v46, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v41

    move/from16 v2, v47

    invoke-virtual {v0, v11, v1, v2}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_5
    if-eqz v39, :cond_6

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v46

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    sub-float v41, v46, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v41

    move/from16 v2, v47

    invoke-virtual {v0, v11, v1, v2}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->getInsertTranslateAlphaScaleAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_6
    add-int v14, v23, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$insertedItems:Ljava/util/ArrayList;

    move-object/from16 v47, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-virtual {v0, v14, v1}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->getShiftCount(ILjava/util/ArrayList;)I

    move-result v37

    sub-int v32, v14, v37

    sub-int v36, v14, v32

    const/16 v34, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-get1(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Landroid/widget/SemHorizontalListView;->isLayoutRtl()Z

    move-result v46

    if-eqz v46, :cond_7

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v46

    mul-int v47, v36, v38

    add-int v34, v46, v47

    :goto_3
    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v46, v0

    sub-float v41, v46, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$insertedItemPosHash:Ljava/util/HashSet;

    move-object/from16 v46, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v41

    move/from16 v2, v47

    invoke-virtual {v0, v11, v1, v2}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->getInsertTranslateAlphaScaleAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v7

    :goto_4
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_7
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v46

    mul-int v47, v36, v38

    sub-int v34, v46, v47

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v41

    move/from16 v2, v47

    invoke-virtual {v0, v11, v1, v2}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v7

    goto :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    invoke-virtual/range {v27 .. v27}, Landroid/widget/SemHorizontalListView;->getLastVisiblePosition()I

    move-result v26

    const/16 v42, 0x0

    move/from16 v14, v26

    :cond_a
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v46

    if-eqz v46, :cond_f

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$insertedItems:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/Map$Entry;

    invoke-interface/range {v43 .. v43}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v46, v0

    move-object/from16 v0, v45

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    move/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$insertedItems:Ljava/util/ArrayList;

    move-object/from16 v48, v0

    invoke-virtual/range {v46 .. v48}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->getNewPositionForInsert(ILjava/util/ArrayList;)I

    move-result v28

    invoke-virtual/range {v27 .. v27}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v46

    move/from16 v0, v28

    move/from16 v1, v46

    if-ge v0, v1, :cond_d

    add-int/lit8 v14, v14, -0x1

    invoke-virtual/range {v27 .. v27}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v46

    sub-int v36, v46, v28

    if-eqz v12, :cond_b

    const/16 v46, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Landroid/view/View;->getLeft()I

    move-result v13

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-get1(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Landroid/widget/SemHorizontalListView;->isLayoutRtl()Z

    move-result v46

    if-eqz v46, :cond_c

    mul-int v46, v36, v38

    add-int v31, v13, v46

    :goto_7
    new-instance v33, Landroid/graphics/Rect;

    move-object/from16 v0, v45

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v46, v0

    move-object/from16 v0, v45

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->right:I

    move/from16 v47, v0

    add-int v48, v40, v22

    move-object/from16 v0, v33

    move/from16 v1, v46

    move/from16 v2, v40

    move/from16 v3, v47

    move/from16 v4, v48

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v29, Landroid/graphics/Rect;

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->width()I

    move-result v46

    add-int v46, v46, v31

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->height()I

    move-result v47

    add-int v47, v47, v40

    move-object/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v40

    move/from16 v3, v46

    move/from16 v4, v47

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v46, v0

    const-string/jumbo v47, "bounds"

    sget-object v48, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/16 v49, 0x2

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    aput-object v33, v49, v50

    const/16 v50, 0x1

    aput-object v29, v49, v50

    invoke-static/range {v46 .. v49}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v42, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/16 v42, 0x1

    goto/16 :goto_5

    :cond_b
    invoke-virtual/range {v27 .. v27}, Landroid/widget/SemHorizontalListView;->getLeft()I

    move-result v13

    goto/16 :goto_6

    :cond_c
    mul-int v46, v36, v38

    sub-int v31, v13, v46

    goto/16 :goto_7

    :cond_d
    move-object/from16 v0, v45

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    move/from16 v46, v0

    sub-int v36, v14, v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-get1(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Landroid/widget/SemHorizontalListView;->isLayoutRtl()Z

    move-result v46

    if-eqz v46, :cond_e

    move-object/from16 v0, v45

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v46, v0

    mul-int v47, v36, v38

    sub-int v31, v46, v47

    goto/16 :goto_7

    :cond_e
    move-object/from16 v0, v45

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v46, v0

    mul-int v47, v36, v38

    add-int v31, v46, v47

    goto/16 :goto_7

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v46

    invoke-interface/range {v46 .. v46}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_8
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v46

    if-eqz v46, :cond_11

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/Map$Entry;

    invoke-interface/range {v43 .. v43}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    move-object/from16 v0, v45

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$insertedItems:Ljava/util/ArrayList;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Ljava/util/ArrayList;->size()I

    move-result v47

    mul-int v47, v47, v38

    add-int v31, v46, v47

    new-instance v33, Landroid/graphics/Rect;

    move-object/from16 v0, v45

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v46, v0

    move-object/from16 v0, v45

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->right:I

    move/from16 v47, v0

    add-int v48, v40, v22

    move-object/from16 v0, v33

    move/from16 v1, v46

    move/from16 v2, v40

    move/from16 v3, v47

    move/from16 v4, v48

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v29, Landroid/graphics/Rect;

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->width()I

    move-result v46

    add-int v46, v46, v31

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->height()I

    move-result v47

    add-int v47, v47, v40

    move-object/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v40

    move/from16 v3, v46

    move/from16 v4, v47

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v46, v0

    const-string/jumbo v47, "bounds"

    sget-object v48, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/16 v49, 0x2

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    aput-object v33, v49, v50

    const/16 v50, 0x1

    aput-object v29, v49, v50

    invoke-static/range {v46 .. v49}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    if-nez v42, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_10
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/LinkedHashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/LinkedHashMap;->clear()V

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    sget-object v46, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->INSERT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v46

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v46, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4$1;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4$1;-><init>(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;)V

    move-object/from16 v0, v46

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget v46, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->TRANSLATION_DURATION:I

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v46, v0

    move-wide/from16 v0, v46

    invoke-virtual {v9, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
