.class Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;
.super Ljava/lang/Object;
.source "SemAddDeleteListAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemAddDeleteListAnimator;->prepareInsertDelete(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

.field final synthetic val$adapter:Landroid/widget/ListAdapter;

.field final synthetic val$childCountBefore:I

.field final synthetic val$deletedItemPosHash:Ljava/util/HashSet;

.field final synthetic val$deletedItems:Ljava/util/ArrayList;

.field final synthetic val$insertedItemPosHash:Ljava/util/HashSet;

.field final synthetic val$insertedItems:Ljava/util/ArrayList;

.field final synthetic val$upcomingViewsStartCoords:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/samsung/android/animation/SemAddDeleteListAnimator;Landroid/widget/ListAdapter;ILjava/util/HashMap;Ljava/util/HashSet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iput-object p2, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$adapter:Landroid/widget/ListAdapter;

    iput p3, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$childCountBefore:I

    iput-object p4, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    iput-object p5, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$insertedItemPosHash:Ljava/util/HashSet;

    iput-object p6, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$insertedItems:Ljava/util/ArrayList;

    iput-object p7, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$deletedItems:Ljava/util/ArrayList;

    iput-object p8, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$deletedItemPosHash:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-get1(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v19

    invoke-virtual/range {v33 .. v33}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v30

    invoke-virtual/range {v33 .. v33}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v24

    invoke-virtual/range {v33 .. v33}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v22

    invoke-virtual/range {v33 .. v33}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$adapter:Landroid/widget/ListAdapter;

    move-object/from16 v65, v0

    invoke-interface/range {v65 .. v65}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    const/16 v57, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/16 v54, 0x0

    const/16 v32, 0x0

    const/16 v64, 0x0

    move/from16 v0, v24

    if-le v12, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-wrap0(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)I

    move-result v65

    invoke-virtual/range {v33 .. v33}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v66

    add-int v54, v65, v66

    move-object/from16 v0, v33

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Landroid/view/View;->getLeft()I

    move-result v32

    const/16 v65, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Landroid/view/View;->getWidth()I

    move-result v64

    :goto_0
    const/16 v34, 0x1

    move/from16 v35, v19

    move/from16 v36, v19

    add-int/lit8 v65, v30, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$childCountBefore:I

    move/from16 v66, v0

    sub-int v66, v66, v12

    add-int v41, v65, v66

    const/16 v26, 0x0

    :goto_1
    move/from16 v0, v26

    if-ge v0, v12, :cond_b

    add-int v47, v26, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$adapter:Landroid/widget/ListAdapter;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v28

    move-object/from16 v0, v33

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    const/16 v62, 0x0

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v65

    move/from16 v0, v65

    int-to-float v0, v0

    move/from16 v39, v0

    const-wide/16 v66, -0x1

    cmp-long v65, v28, v66

    if-nez v65, :cond_6

    move/from16 v0, v47

    move/from16 v1, v24

    if-ge v0, v1, :cond_3

    add-int/lit8 v65, v47, 0x1

    move/from16 v0, v65

    int-to-long v0, v0

    move-wide/from16 v28, v0

    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v65, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v66

    invoke-virtual/range {v65 .. v66}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    if-nez v62, :cond_4

    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-get0()Ljava/lang/String;

    move-result-object v65

    const-string/jumbo v66, "AFTER header/footer SOMETHING WENT WRONG, in the new layout, header/footer is appearing that was not present before!"

    invoke-static/range {v65 .. v66}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_3
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getWidth()I

    move-result v64

    goto :goto_0

    :cond_3
    sub-int v65, v6, v22

    move/from16 v0, v47

    move/from16 v1, v65

    if-lt v0, v1, :cond_0

    add-int v65, v47, v22

    sub-int v65, v65, v6

    add-int/lit8 v65, v65, 0x1

    move/from16 v0, v65

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    neg-long v0, v0

    move-wide/from16 v28, v0

    goto :goto_2

    :cond_4
    invoke-virtual/range {v62 .. v62}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    move-object/from16 v0, v62

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v65, v0

    move/from16 v0, v65

    int-to-float v0, v0

    move/from16 v65, v0

    cmpl-float v65, v65, v39

    if-nez v65, :cond_5

    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-get0()Ljava/lang/String;

    move-result-object v65

    new-instance v66, Ljava/lang/StringBuilder;

    invoke-direct/range {v66 .. v66}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v67, "AFTER header/footer something strange is happening, the coordinates are same after layout, viewInfo.top="

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    move-object/from16 v0, v62

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v67, v0

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v66

    const-string/jumbo v67, ", newY="

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    move-object/from16 v0, v66

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v66

    invoke-static/range {v65 .. v66}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    move-object/from16 v0, v62

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v65, v0

    move/from16 v0, v65

    int-to-float v0, v0

    move/from16 v65, v0

    sub-float v57, v65, v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v65, v0

    const/16 v66, 0x0

    move-object/from16 v0, v65

    move/from16 v1, v66

    move/from16 v2, v57

    invoke-virtual {v0, v11, v1, v2}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    move-object/from16 v65, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v66

    invoke-virtual/range {v65 .. v66}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v65, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v66

    invoke-virtual/range {v65 .. v66}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    if-eqz v62, :cond_7

    invoke-virtual/range {v62 .. v62}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    const/16 v34, 0x0

    move-object/from16 v0, v62

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v65, v0

    move/from16 v0, v65

    int-to-float v0, v0

    move/from16 v65, v0

    cmpl-float v65, v65, v39

    if-eqz v65, :cond_1

    move-object/from16 v0, v62

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v65, v0

    move/from16 v0, v65

    int-to-float v0, v0

    move/from16 v65, v0

    sub-float v57, v65, v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v65, v0

    const/16 v66, 0x0

    move-object/from16 v0, v65

    move/from16 v1, v66

    move/from16 v2, v57

    invoke-virtual {v0, v11, v1, v2}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_7
    if-eqz v55, :cond_8

    invoke-virtual/range {v55 .. v55}, Ljava/lang/Integer;->intValue()I

    move-result v65

    move/from16 v0, v65

    int-to-float v0, v0

    move/from16 v65, v0

    sub-float v57, v65, v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v65, v0

    const/16 v66, 0x0

    move-object/from16 v0, v65

    move/from16 v1, v66

    move/from16 v2, v57

    invoke-virtual {v0, v11, v1, v2}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getInsertTranslateAlphaScaleAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_8
    add-int v13, v26, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$insertedItemPosHash:Ljava/util/HashSet;

    move-object/from16 v65, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v66

    invoke-virtual/range {v65 .. v66}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v65

    if-eqz v65, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v65, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$insertedItems:Ljava/util/ArrayList;

    move-object/from16 v66, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$deletedItems:Ljava/util/ArrayList;

    move-object/from16 v67, v0

    move-object/from16 v0, v65

    move-object/from16 v1, v66

    move-object/from16 v2, v67

    invoke-virtual {v0, v13, v1, v2}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getShiftCount(ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v53

    sub-int v42, v13, v53

    sub-int v52, v13, v42

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v65

    mul-int v66, v52, v54

    sub-int v46, v65, v66

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v65, v0

    sub-float v58, v65, v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v65, v0

    const/16 v66, 0x0

    move-object/from16 v0, v65

    move/from16 v1, v66

    move/from16 v2, v58

    invoke-virtual {v0, v11, v1, v2}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getInsertTranslateAlphaScaleAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_9
    if-lez v36, :cond_a

    if-eqz v34, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v65, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$insertedItems:Ljava/util/ArrayList;

    move-object/from16 v66, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$deletedItems:Ljava/util/ArrayList;

    move-object/from16 v67, v0

    move-object/from16 v0, v65

    move-object/from16 v1, v66

    move-object/from16 v2, v67

    invoke-virtual {v0, v13, v1, v2}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getShiftCount(ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v65

    move/from16 v0, v65

    neg-int v0, v0

    move/from16 v51, v0

    add-int/lit8 v36, v36, -0x1

    :goto_4
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v65

    mul-int v66, v51, v54

    add-int v45, v65, v66

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v65, v0

    sub-float v57, v65, v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v65, v0

    const/16 v66, 0x0

    move-object/from16 v0, v65

    move/from16 v1, v66

    move/from16 v2, v57

    invoke-virtual {v0, v11, v1, v2}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_a
    sub-int v51, v41, v47

    add-int/lit8 v41, v41, 0x1

    goto :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v65

    invoke-interface/range {v65 .. v65}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    invoke-virtual/range {v33 .. v33}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v31

    const/16 v59, 0x0

    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v65

    if-eqz v65, :cond_12

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/util/Map$Entry;

    invoke-interface/range {v44 .. v44}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    iget-object v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v56, Landroid/graphics/Rect;

    move-object/from16 v0, v62

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v65, v0

    add-int v66, v32, v64

    move-object/from16 v0, v62

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->bottom:I

    move/from16 v67, v0

    move-object/from16 v0, v56

    move/from16 v1, v32

    move/from16 v2, v65

    move/from16 v3, v66

    move/from16 v4, v67

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v65, v0

    move-object/from16 v0, v62

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    move/from16 v66, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$insertedItems:Ljava/util/ArrayList;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$deletedItems:Ljava/util/ArrayList;

    move-object/from16 v68, v0

    invoke-virtual/range {v65 .. v68}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getNewPosition(ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$deletedItemPosHash:Ljava/util/HashSet;

    move-object/from16 v65, v0

    move-object/from16 v0, v62

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    move/from16 v66, v0

    invoke-static/range {v66 .. v66}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v66

    invoke-virtual/range {v65 .. v66}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v27

    sub-int v14, v37, v19

    if-gez v14, :cond_e

    if-nez v12, :cond_d

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getPaddingTop()I

    move-result v65

    move/from16 v0, v65

    int-to-float v0, v0

    move/from16 v18, v0

    :goto_6
    move-object/from16 v0, v62

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v65, v0

    move/from16 v0, v65

    int-to-float v0, v0

    move/from16 v65, v0

    sub-float v57, v18, v65

    neg-int v0, v14

    move/from16 v65, v0

    mul-int v65, v65, v54

    move/from16 v0, v65

    int-to-float v0, v0

    move/from16 v65, v0

    sub-float v57, v57, v65

    :goto_7
    new-instance v15, Landroid/graphics/Rect;

    move-object/from16 v0, v56

    invoke-direct {v15, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move/from16 v0, v57

    float-to-int v0, v0

    move/from16 v65, v0

    const/16 v66, 0x0

    move/from16 v0, v66

    move/from16 v1, v65

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    if-eqz v27, :cond_11

    sget v65, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->START_SCALE_FACTOR:F

    const/high16 v66, 0x3f800000    # 1.0f

    sub-float v65, v66, v65

    const/high16 v66, 0x40000000    # 2.0f

    div-float v65, v65, v66

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v66

    move/from16 v0, v66

    int-to-float v0, v0

    move/from16 v66, v0

    mul-float v65, v65, v66

    move/from16 v0, v65

    float-to-int v0, v0

    move/from16 v25, v0

    sget v65, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->START_SCALE_FACTOR:F

    const/high16 v66, 0x3f800000    # 1.0f

    sub-float v65, v66, v65

    const/high16 v66, 0x40000000    # 2.0f

    div-float v65, v65, v66

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v66

    move/from16 v0, v66

    int-to-float v0, v0

    move/from16 v66, v0

    mul-float v65, v65, v66

    move/from16 v0, v65

    float-to-int v0, v0

    move/from16 v60, v0

    new-instance v16, Landroid/graphics/Rect;

    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v65, v0

    add-int v65, v65, v25

    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v66, v0

    add-int v66, v66, v60

    iget v0, v15, Landroid/graphics/Rect;->right:I

    move/from16 v67, v0

    sub-int v67, v67, v25

    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    move/from16 v68, v0

    sub-int v68, v68, v60

    move-object/from16 v0, v16

    move/from16 v1, v65

    move/from16 v2, v66

    move/from16 v3, v67

    move/from16 v4, v68

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string/jumbo v65, "bounds"

    sget-object v66, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/16 v67, 0x2

    move/from16 v0, v67

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    aput-object v56, v67, v68

    const/16 v68, 0x1

    aput-object v16, v67, v68

    invoke-static/range {v65 .. v67}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v49

    const-string/jumbo v65, "alpha"

    const/16 v66, 0xff

    const/16 v67, 0x0

    filled-new-array/range {v66 .. v67}, [I

    move-result-object v66

    invoke-static/range {v65 .. v66}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v48

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v65, v0

    const/16 v66, 0x2

    move/from16 v0, v66

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v66, v0

    const/16 v67, 0x0

    aput-object v49, v66, v67

    const/16 v67, 0x1

    aput-object v48, v66, v67

    invoke-static/range {v65 .. v66}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    move-object/from16 v15, v16

    :goto_8
    if-nez v59, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    iget-object v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/16 v59, 0x1

    :cond_c
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_d
    const/16 v65, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Landroid/view/View;->getTop()I

    move-result v65

    move/from16 v0, v65

    int-to-float v0, v0

    move/from16 v18, v0

    goto/16 :goto_6

    :cond_e
    if-lt v14, v12, :cond_10

    add-int/lit8 v65, v12, -0x1

    move-object/from16 v0, v33

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v65

    if-nez v65, :cond_f

    move-object/from16 v0, v62

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v65, v0

    rsub-int/lit8 v65, v65, 0x0

    move/from16 v0, v65

    int-to-float v0, v0

    move/from16 v57, v0

    :goto_9
    sub-int v65, v14, v12

    add-int/lit8 v65, v65, 0x1

    mul-int v65, v65, v54

    move/from16 v0, v65

    int-to-float v0, v0

    move/from16 v65, v0

    add-float v57, v57, v65

    goto/16 :goto_7

    :cond_f
    add-int/lit8 v65, v12, -0x1

    move-object/from16 v0, v33

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Landroid/view/View;->getTop()I

    move-result v65

    move-object/from16 v0, v62

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v66, v0

    sub-int v65, v65, v66

    move/from16 v0, v65

    int-to-float v0, v0

    move/from16 v57, v0

    goto :goto_9

    :cond_10
    move-object/from16 v0, v33

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Landroid/view/View;->getTop()I

    move-result v65

    move/from16 v0, v65

    int-to-float v0, v0

    move/from16 v50, v0

    move-object/from16 v0, v62

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v65, v0

    move/from16 v0, v65

    int-to-float v0, v0

    move/from16 v65, v0

    sub-float v57, v50, v65

    goto/16 :goto_7

    :cond_11
    const-string/jumbo v65, "bounds"

    sget-object v66, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/16 v67, 0x2

    move/from16 v0, v67

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    aput-object v56, v67, v68

    const/16 v68, 0x1

    aput-object v15, v67, v68

    invoke-static/range {v65 .. v67}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v49

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v65, v0

    const-string/jumbo v66, "bounds"

    sget-object v67, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/16 v68, 0x2

    move/from16 v0, v68

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v68, v0

    const/16 v69, 0x0

    aput-object v56, v68, v69

    const/16 v69, 0x1

    aput-object v15, v68, v69

    invoke-static/range {v65 .. v68}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    goto/16 :goto_8

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v65

    invoke-interface/range {v65 .. v65}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_a
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v65

    if-eqz v65, :cond_14

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/util/Map$Entry;

    invoke-interface/range {v61 .. v61}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    move-object/from16 v0, v63

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v65, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$insertedItems:Ljava/util/ArrayList;

    move-object/from16 v66, v0

    invoke-virtual/range {v66 .. v66}, Ljava/util/ArrayList;->size()I

    move-result v66

    mul-int v66, v66, v54

    add-int v40, v65, v66

    new-instance v43, Landroid/graphics/Rect;

    move-object/from16 v0, v63

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v65, v0

    add-int v66, v32, v64

    move-object/from16 v0, v63

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->bottom:I

    move/from16 v67, v0

    move-object/from16 v0, v43

    move/from16 v1, v32

    move/from16 v2, v65

    move/from16 v3, v66

    move/from16 v4, v67

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v38, Landroid/graphics/Rect;

    invoke-virtual/range {v43 .. v43}, Landroid/graphics/Rect;->width()I

    move-result v65

    add-int v65, v65, v32

    invoke-virtual/range {v43 .. v43}, Landroid/graphics/Rect;->height()I

    move-result v66

    add-int v66, v66, v40

    move-object/from16 v0, v38

    move/from16 v1, v32

    move/from16 v2, v40

    move/from16 v3, v65

    move/from16 v4, v66

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    iget-object v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v65, v0

    const-string/jumbo v66, "bounds"

    sget-object v67, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/16 v68, 0x2

    move/from16 v0, v68

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v68, v0

    const/16 v69, 0x0

    aput-object v43, v68, v69

    const/16 v69, 0x1

    aput-object v38, v68, v69

    invoke-static/range {v65 .. v68}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    if-nez v59, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    iget-object v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_13
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Ljava/util/LinkedHashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Ljava/util/LinkedHashMap;->clear()V

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    sget-object v65, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->INSERT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v65

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v65, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6$1;

    move-object/from16 v0, v65

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6$1;-><init>(Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;)V

    move-object/from16 v0, v65

    invoke-virtual {v9, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget v65, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->TRANSLATION_DURATION:I

    move/from16 v0, v65

    int-to-long v0, v0

    move-wide/from16 v66, v0

    move-wide/from16 v0, v66

    invoke-virtual {v9, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
