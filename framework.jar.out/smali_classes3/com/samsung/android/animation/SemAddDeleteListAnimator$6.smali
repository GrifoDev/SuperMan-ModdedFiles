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
    .locals 69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-get1(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v19

    invoke-virtual/range {v32 .. v32}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v30

    invoke-virtual/range {v32 .. v32}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v24

    invoke-virtual/range {v32 .. v32}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v22

    invoke-virtual/range {v32 .. v32}, Landroid/widget/ListView;->getChildCount()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$adapter:Landroid/widget/ListAdapter;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    const/16 v56, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/16 v53, 0x0

    const/16 v31, 0x0

    const/16 v63, 0x0

    move/from16 v0, v24

    if-le v12, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v64, v0

    invoke-static/range {v64 .. v64}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-wrap0(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)I

    move-result v64

    invoke-virtual/range {v32 .. v32}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v65

    add-int v53, v64, v65

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Landroid/view/View;->getLeft()I

    move-result v31

    const/16 v64, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Landroid/view/View;->getWidth()I

    move-result v63

    :goto_0
    const/16 v33, 0x1

    move/from16 v34, v19

    move/from16 v35, v19

    add-int/lit8 v64, v30, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$childCountBefore:I

    move/from16 v65, v0

    sub-int v65, v65, v12

    add-int v40, v64, v65

    const/16 v26, 0x0

    :goto_1
    move/from16 v0, v26

    if-ge v0, v12, :cond_b

    add-int v46, v26, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$adapter:Landroid/widget/ListAdapter;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v28

    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    const/16 v61, 0x0

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v64

    move/from16 v0, v64

    int-to-float v0, v0

    move/from16 v38, v0

    const-wide/16 v64, -0x1

    cmp-long v64, v28, v64

    if-nez v64, :cond_6

    move/from16 v0, v46

    move/from16 v1, v24

    if-ge v0, v1, :cond_3

    add-int/lit8 v64, v46, 0x1

    move/from16 v0, v64

    int-to-long v0, v0

    move-wide/from16 v28, v0

    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v64, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    if-nez v61, :cond_4

    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-get0()Ljava/lang/String;

    move-result-object v64

    const-string/jumbo v65, "AFTER header/footer SOMETHING WENT WRONG, in the new layout, header/footer is appearing that was not present before!"

    invoke-static/range {v64 .. v65}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_3
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual/range {v32 .. v32}, Landroid/widget/ListView;->getWidth()I

    move-result v63

    goto :goto_0

    :cond_3
    sub-int v64, v6, v22

    move/from16 v0, v46

    move/from16 v1, v64

    if-lt v0, v1, :cond_0

    add-int v64, v46, v22

    sub-int v64, v64, v6

    add-int/lit8 v64, v64, 0x1

    move/from16 v0, v64

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    neg-long v0, v0

    move-wide/from16 v28, v0

    goto :goto_2

    :cond_4
    invoke-virtual/range {v61 .. v61}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    move-object/from16 v0, v61

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v64, v0

    move/from16 v0, v64

    int-to-float v0, v0

    move/from16 v64, v0

    cmpl-float v64, v64, v38

    if-nez v64, :cond_5

    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-get0()Ljava/lang/String;

    move-result-object v64

    new-instance v65, Ljava/lang/StringBuilder;

    invoke-direct/range {v65 .. v65}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v66, "AFTER header/footer something strange is happening, the coordinates are same after layout, viewInfo.top="

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, v61

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v66, v0

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v65

    const-string/jumbo v66, ", newY="

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, v65

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    invoke-static/range {v64 .. v65}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    move-object/from16 v0, v61

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v64, v0

    move/from16 v0, v64

    int-to-float v0, v0

    move/from16 v64, v0

    sub-float v56, v64, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    move-object/from16 v0, v64

    move/from16 v1, v65

    move/from16 v2, v56

    invoke-virtual {v0, v11, v1, v2}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    move-object/from16 v64, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v64, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    if-eqz v61, :cond_7

    invoke-virtual/range {v61 .. v61}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    const/16 v33, 0x0

    move-object/from16 v0, v61

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v64, v0

    move/from16 v0, v64

    int-to-float v0, v0

    move/from16 v64, v0

    cmpl-float v64, v64, v38

    if-eqz v64, :cond_1

    move-object/from16 v0, v61

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v64, v0

    move/from16 v0, v64

    int-to-float v0, v0

    move/from16 v64, v0

    sub-float v56, v64, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    move-object/from16 v0, v64

    move/from16 v1, v65

    move/from16 v2, v56

    invoke-virtual {v0, v11, v1, v2}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_7
    if-eqz v54, :cond_8

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Integer;->intValue()I

    move-result v64

    move/from16 v0, v64

    int-to-float v0, v0

    move/from16 v64, v0

    sub-float v56, v64, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    move-object/from16 v0, v64

    move/from16 v1, v65

    move/from16 v2, v56

    invoke-virtual {v0, v11, v1, v2}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getInsertTranslateAlphaScaleAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_8
    add-int v13, v26, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$insertedItemPosHash:Ljava/util/HashSet;

    move-object/from16 v64, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v64

    if-eqz v64, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v64, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$insertedItems:Ljava/util/ArrayList;

    move-object/from16 v65, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$deletedItems:Ljava/util/ArrayList;

    move-object/from16 v66, v0

    move-object/from16 v0, v64

    move-object/from16 v1, v65

    move-object/from16 v2, v66

    invoke-virtual {v0, v13, v1, v2}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getShiftCount(ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v52

    sub-int v41, v13, v52

    sub-int v51, v13, v41

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v64

    mul-int v65, v51, v53

    sub-int v45, v64, v65

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v64, v0

    sub-float v57, v64, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    move-object/from16 v0, v64

    move/from16 v1, v65

    move/from16 v2, v57

    invoke-virtual {v0, v11, v1, v2}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getInsertTranslateAlphaScaleAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_9
    if-lez v35, :cond_a

    if-eqz v33, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v64, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$insertedItems:Ljava/util/ArrayList;

    move-object/from16 v65, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$deletedItems:Ljava/util/ArrayList;

    move-object/from16 v66, v0

    move-object/from16 v0, v64

    move-object/from16 v1, v65

    move-object/from16 v2, v66

    invoke-virtual {v0, v13, v1, v2}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getShiftCount(ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v64

    move/from16 v0, v64

    neg-int v0, v0

    move/from16 v50, v0

    add-int/lit8 v35, v35, -0x1

    :goto_4
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v64

    mul-int v65, v50, v53

    add-int v44, v64, v65

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v64, v0

    sub-float v56, v64, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    move-object/from16 v0, v64

    move/from16 v1, v65

    move/from16 v2, v56

    invoke-virtual {v0, v11, v1, v2}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_a
    sub-int v50, v40, v46

    add-int/lit8 v40, v40, 0x1

    goto :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v64

    invoke-interface/range {v64 .. v64}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    const/16 v58, 0x0

    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v64

    if-eqz v64, :cond_12

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/Map$Entry;

    invoke-interface/range {v43 .. v43}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v55, Landroid/graphics/Rect;

    move-object/from16 v0, v61

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v64, v0

    add-int v65, v31, v63

    move-object/from16 v0, v61

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->bottom:I

    move/from16 v66, v0

    move-object/from16 v0, v55

    move/from16 v1, v31

    move/from16 v2, v64

    move/from16 v3, v65

    move/from16 v4, v66

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v64, v0

    move-object/from16 v0, v61

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    move/from16 v65, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$insertedItems:Ljava/util/ArrayList;

    move-object/from16 v66, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$deletedItems:Ljava/util/ArrayList;

    move-object/from16 v67, v0

    invoke-virtual/range {v64 .. v67}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getNewPosition(ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$deletedItemPosHash:Ljava/util/HashSet;

    move-object/from16 v64, v0

    move-object/from16 v0, v61

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    move/from16 v65, v0

    invoke-static/range {v65 .. v65}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v27

    sub-int v14, v36, v19

    if-gez v14, :cond_e

    if-nez v12, :cond_d

    invoke-virtual/range {v32 .. v32}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v64

    move/from16 v0, v64

    int-to-float v0, v0

    move/from16 v18, v0

    :goto_6
    move-object/from16 v0, v61

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v64, v0

    move/from16 v0, v64

    int-to-float v0, v0

    move/from16 v64, v0

    sub-float v56, v18, v64

    neg-int v0, v14

    move/from16 v64, v0

    mul-int v64, v64, v53

    move/from16 v0, v64

    int-to-float v0, v0

    move/from16 v64, v0

    sub-float v56, v56, v64

    :goto_7
    new-instance v15, Landroid/graphics/Rect;

    move-object/from16 v0, v55

    invoke-direct {v15, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move/from16 v0, v56

    float-to-int v0, v0

    move/from16 v64, v0

    const/16 v65, 0x0

    move/from16 v0, v65

    move/from16 v1, v64

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    if-eqz v27, :cond_11

    sget v64, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->START_SCALE_FACTOR:F

    const/high16 v65, 0x3f800000    # 1.0f

    sub-float v64, v65, v64

    const/high16 v65, 0x40000000    # 2.0f

    div-float v64, v64, v65

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v65

    move/from16 v0, v65

    int-to-float v0, v0

    move/from16 v65, v0

    mul-float v64, v64, v65

    move/from16 v0, v64

    float-to-int v0, v0

    move/from16 v25, v0

    sget v64, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->START_SCALE_FACTOR:F

    const/high16 v65, 0x3f800000    # 1.0f

    sub-float v64, v65, v64

    const/high16 v65, 0x40000000    # 2.0f

    div-float v64, v64, v65

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v65

    move/from16 v0, v65

    int-to-float v0, v0

    move/from16 v65, v0

    mul-float v64, v64, v65

    move/from16 v0, v64

    float-to-int v0, v0

    move/from16 v59, v0

    new-instance v16, Landroid/graphics/Rect;

    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v64, v0

    add-int v64, v64, v25

    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v65, v0

    add-int v65, v65, v59

    iget v0, v15, Landroid/graphics/Rect;->right:I

    move/from16 v66, v0

    sub-int v66, v66, v25

    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    move/from16 v67, v0

    sub-int v67, v67, v59

    move-object/from16 v0, v16

    move/from16 v1, v64

    move/from16 v2, v65

    move/from16 v3, v66

    move/from16 v4, v67

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string/jumbo v64, "bounds"

    sget-object v65, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/16 v66, 0x2

    move/from16 v0, v66

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v66, v0

    const/16 v67, 0x0

    aput-object v55, v66, v67

    const/16 v67, 0x1

    aput-object v16, v66, v67

    invoke-static/range {v64 .. v66}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v48

    const-string/jumbo v64, "alpha"

    const/16 v65, 0xff

    const/16 v66, 0x0

    filled-new-array/range {v65 .. v66}, [I

    move-result-object v65

    invoke-static/range {v64 .. v65}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v47

    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v64, v0

    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v65, v0

    const/16 v66, 0x0

    aput-object v48, v65, v66

    const/16 v66, 0x1

    aput-object v47, v65, v66

    invoke-static/range {v64 .. v65}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    move-object/from16 v15, v16

    :goto_8
    if-nez v58, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    invoke-virtual {v7, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/16 v58, 0x1

    :cond_c
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_d
    const/16 v64, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Landroid/view/View;->getTop()I

    move-result v64

    move/from16 v0, v64

    int-to-float v0, v0

    move/from16 v18, v0

    goto/16 :goto_6

    :cond_e
    if-lt v14, v12, :cond_10

    add-int/lit8 v64, v12, -0x1

    move-object/from16 v0, v32

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v64

    if-nez v64, :cond_f

    move-object/from16 v0, v61

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v64, v0

    rsub-int/lit8 v64, v64, 0x0

    move/from16 v0, v64

    int-to-float v0, v0

    move/from16 v56, v0

    :goto_9
    sub-int v64, v14, v12

    add-int/lit8 v64, v64, 0x1

    mul-int v64, v64, v53

    move/from16 v0, v64

    int-to-float v0, v0

    move/from16 v64, v0

    add-float v56, v56, v64

    goto/16 :goto_7

    :cond_f
    add-int/lit8 v64, v12, -0x1

    move-object/from16 v0, v32

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Landroid/view/View;->getTop()I

    move-result v64

    move-object/from16 v0, v61

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v65, v0

    sub-int v64, v64, v65

    move/from16 v0, v64

    int-to-float v0, v0

    move/from16 v56, v0

    goto :goto_9

    :cond_10
    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Landroid/view/View;->getTop()I

    move-result v64

    move/from16 v0, v64

    int-to-float v0, v0

    move/from16 v49, v0

    move-object/from16 v0, v61

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v64, v0

    move/from16 v0, v64

    int-to-float v0, v0

    move/from16 v64, v0

    sub-float v56, v49, v64

    goto/16 :goto_7

    :cond_11
    move-object/from16 v0, v61

    iget-object v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v64, v0

    const-string/jumbo v65, "bounds"

    sget-object v66, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/16 v67, 0x2

    move/from16 v0, v67

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    aput-object v55, v67, v68

    const/16 v68, 0x1

    aput-object v15, v67, v68

    invoke-static/range {v64 .. v67}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    goto/16 :goto_8

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v64

    invoke-interface/range {v64 .. v64}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_a
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v64

    if-eqz v64, :cond_14

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/util/Map$Entry;

    invoke-interface/range {v60 .. v60}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    move-object/from16 v0, v62

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v64, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->val$insertedItems:Ljava/util/ArrayList;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Ljava/util/ArrayList;->size()I

    move-result v65

    mul-int v65, v65, v53

    add-int v39, v64, v65

    new-instance v42, Landroid/graphics/Rect;

    move-object/from16 v0, v62

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v64, v0

    add-int v65, v31, v63

    move-object/from16 v0, v62

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->bottom:I

    move/from16 v66, v0

    move-object/from16 v0, v42

    move/from16 v1, v31

    move/from16 v2, v64

    move/from16 v3, v65

    move/from16 v4, v66

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v37, Landroid/graphics/Rect;

    invoke-virtual/range {v42 .. v42}, Landroid/graphics/Rect;->width()I

    move-result v64

    add-int v64, v64, v31

    invoke-virtual/range {v42 .. v42}, Landroid/graphics/Rect;->height()I

    move-result v65

    add-int v65, v65, v39

    move-object/from16 v0, v37

    move/from16 v1, v31

    move/from16 v2, v39

    move/from16 v3, v64

    move/from16 v4, v65

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v64, v0

    const-string/jumbo v65, "bounds"

    sget-object v66, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/16 v67, 0x2

    move/from16 v0, v67

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    aput-object v42, v67, v68

    const/16 v68, 0x1

    aput-object v37, v67, v68

    invoke-static/range {v64 .. v67}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    if-nez v58, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    invoke-virtual {v8, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_13
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Ljava/util/LinkedHashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Ljava/util/LinkedHashMap;->clear()V

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    sget-object v64, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->INSERT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v64

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v64, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6$1;

    move-object/from16 v0, v64

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator$6$1;-><init>(Lcom/samsung/android/animation/SemAddDeleteListAnimator$6;)V

    move-object/from16 v0, v64

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget v64, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->TRANSLATION_DURATION:I

    move/from16 v0, v64

    int-to-long v0, v0

    move-wide/from16 v64, v0

    move-wide/from16 v0, v64

    invoke-virtual {v9, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
