.class Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;
.super Ljava/lang/Object;
.source "SemAddDeleteHorizontalListAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->prepareDelete(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

.field final synthetic val$adapter:Landroid/widget/ListAdapter;

.field final synthetic val$childCountBefore:I

.field final synthetic val$defaultHeight:I

.field final synthetic val$defaultTop:I

.field final synthetic val$deletedItemPosHash:Ljava/util/HashSet;

.field final synthetic val$deletedItems:Ljava/util/ArrayList;

.field final synthetic val$firstVisiblePosBefore:I


# direct methods
.method constructor <init>(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;Landroid/widget/ListAdapter;IIIILjava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iput-object p2, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$adapter:Landroid/widget/ListAdapter;

    iput p3, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$defaultTop:I

    iput p4, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$defaultHeight:I

    iput p5, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$firstVisiblePosBefore:I

    iput p6, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$childCountBefore:I

    iput-object p7, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$deletedItems:Ljava/util/ArrayList;

    iput-object p8, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$deletedItemPosHash:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-get1(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v11

    invoke-virtual/range {v28 .. v28}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v17

    invoke-virtual/range {v28 .. v28}, Landroid/widget/SemHorizontalListView;->getLastVisiblePosition()I

    move-result v25

    invoke-virtual/range {v28 .. v28}, Landroid/widget/SemHorizontalListView;->getHeaderViewsCount()I

    move-result v20

    invoke-virtual/range {v28 .. v28}, Landroid/widget/SemHorizontalListView;->getFooterViewsCount()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$adapter:Landroid/widget/ListAdapter;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    const/16 v45, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/16 v42, 0x0

    const/16 v44, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    if-le v11, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-wrap0(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)I

    move-result v49

    invoke-virtual/range {v28 .. v28}, Landroid/widget/SemHorizontalListView;->getDividerHeight()I

    move-result v50

    add-int v42, v49, v50

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/view/View;->getTop()I

    move-result v44

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/view/View;->getHeight()I

    move-result v21

    :goto_0
    const/16 v29, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$firstVisiblePosBefore:I

    move/from16 v49, v0

    sub-int v30, v49, v17

    move/from16 v31, v30

    add-int/lit8 v49, v25, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$childCountBefore:I

    move/from16 v50, v0

    sub-int v50, v50, v11

    add-int v34, v49, v50

    const/16 v23, 0x0

    :goto_1
    move/from16 v0, v23

    if-ge v0, v11, :cond_8

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    add-int v37, v23, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$adapter:Landroid/widget/ListAdapter;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v26

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v49

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v33, v0

    const/16 v48, 0x0

    const-wide/16 v50, -0x1

    cmp-long v49, v26, v50

    if-nez v49, :cond_3

    move/from16 v0, v37

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    add-int/lit8 v49, v37, 0x1

    move/from16 v0, v49

    int-to-long v0, v0

    move-wide/from16 v26, v0

    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v49, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    :goto_3
    if-eqz v48, :cond_5

    invoke-virtual/range {v48 .. v48}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    const/16 v29, 0x0

    move-object/from16 v0, v48

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    cmpl-float v49, v49, v33

    if-nez v49, :cond_4

    :goto_4
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$defaultTop:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$defaultHeight:I

    move/from16 v21, v0

    goto/16 :goto_0

    :cond_2
    sub-int v49, v6, v19

    move/from16 v0, v37

    move/from16 v1, v49

    if-lt v0, v1, :cond_0

    add-int v49, v37, v19

    sub-int v49, v49, v6

    add-int/lit8 v18, v49, 0x1

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-long v0, v0

    move-wide/from16 v26, v0

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v49, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    goto :goto_3

    :cond_4
    move-object/from16 v0, v48

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    sub-float v45, v49, v33

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v45

    move/from16 v2, v50

    invoke-virtual {v0, v10, v1, v2}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    if-lez v31, :cond_6

    if-eqz v29, :cond_6

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v41, v0

    add-int/lit8 v31, v31, -0x1

    :goto_6
    const/16 v36, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-get1(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/widget/SemHorizontalListView;->isLayoutRtl()Z

    move-result v49

    if-eqz v49, :cond_7

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v49

    mul-int v50, v41, v42

    sub-int v36, v49, v50

    :goto_7
    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v49, v0

    sub-float v45, v49, v33

    goto :goto_5

    :cond_6
    sub-int v41, v34, v37

    add-int/lit8 v34, v34, 0x1

    goto :goto_6

    :cond_7
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v49

    mul-int v50, v41, v42

    add-int v36, v49, v50

    goto :goto_7

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v49

    invoke-interface/range {v49 .. v49}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/16 v46, 0x0

    :goto_8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v49

    if-eqz v49, :cond_10

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/util/Map$Entry;

    invoke-interface/range {v35 .. v35}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v43, Landroid/graphics/Rect;

    move-object/from16 v0, v48

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v49, v0

    move-object/from16 v0, v48

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->right:I

    move/from16 v50, v0

    add-int v51, v44, v21

    move-object/from16 v0, v43

    move/from16 v1, v49

    move/from16 v2, v44

    move/from16 v3, v50

    move/from16 v4, v51

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v48

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    move/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$deletedItems:Ljava/util/ArrayList;

    move-object/from16 v51, v0

    invoke-virtual/range {v49 .. v51}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->getNewPosition(ILjava/util/ArrayList;)I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$deletedItemPosHash:Ljava/util/HashSet;

    move-object/from16 v49, v0

    move-object/from16 v0, v48

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    move/from16 v50, v0

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v24

    sub-int v12, v32, v17

    if-ltz v12, :cond_9

    if-lt v12, v11, :cond_f

    :cond_9
    if-nez v11, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-get1(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/widget/SemHorizontalListView;->isLayoutRtl()Z

    move-result v49

    if-eqz v49, :cond_c

    invoke-virtual/range {v28 .. v28}, Landroid/widget/SemHorizontalListView;->getWidth()I

    move-result v49

    move-object/from16 v0, v48

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->right:I

    move/from16 v50, v0

    move-object/from16 v0, v48

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v51, v0

    sub-int v50, v50, v51

    sub-int v49, v49, v50

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v16, v0

    :goto_9
    move-object/from16 v0, v48

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    sub-float v45, v16, v49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-get1(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/widget/SemHorizontalListView;->isLayoutRtl()Z

    move-result v49

    if-eqz v49, :cond_e

    neg-int v0, v12

    move/from16 v49, v0

    mul-int v49, v49, v42

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    add-float v45, v45, v49

    :goto_a
    new-instance v13, Landroid/graphics/Rect;

    move-object/from16 v0, v43

    invoke-direct {v13, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move/from16 v0, v45

    float-to-int v0, v0

    move/from16 v49, v0

    const/16 v50, 0x0

    move/from16 v0, v49

    move/from16 v1, v50

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    if-eqz v24, :cond_a

    sget v49, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->START_SCALE_FACTOR:F

    const/high16 v50, 0x3f800000    # 1.0f

    sub-float v49, v50, v49

    const/high16 v50, 0x40000000    # 2.0f

    div-float v49, v49, v50

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v50

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v50, v0

    mul-float v49, v49, v50

    move/from16 v0, v49

    float-to-int v0, v0

    move/from16 v22, v0

    sget v49, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->START_SCALE_FACTOR:F

    const/high16 v50, 0x3f800000    # 1.0f

    sub-float v49, v50, v49

    const/high16 v50, 0x40000000    # 2.0f

    div-float v49, v49, v50

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v50

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v50, v0

    mul-float v49, v49, v50

    move/from16 v0, v49

    float-to-int v0, v0

    move/from16 v47, v0

    new-instance v14, Landroid/graphics/Rect;

    iget v0, v13, Landroid/graphics/Rect;->left:I

    move/from16 v49, v0

    add-int v49, v49, v22

    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v50, v0

    add-int v50, v50, v47

    iget v0, v13, Landroid/graphics/Rect;->right:I

    move/from16 v51, v0

    sub-int v51, v51, v22

    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v52, v0

    sub-int v52, v52, v47

    move/from16 v0, v49

    move/from16 v1, v50

    move/from16 v2, v51

    move/from16 v3, v52

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v13, v14

    :cond_a
    const-string/jumbo v49, "bounds"

    sget-object v50, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/16 v51, 0x2

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    aput-object v43, v51, v52

    const/16 v52, 0x1

    aput-object v13, v51, v52

    invoke-static/range {v49 .. v51}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v39

    const-string/jumbo v49, "alpha"

    const/16 v50, 0xff

    const/16 v51, 0x0

    filled-new-array/range {v50 .. v51}, [I

    move-result-object v50

    invoke-static/range {v49 .. v50}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v38

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v49, v0

    const/16 v50, 0x2

    move/from16 v0, v50

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    aput-object v39, v50, v51

    const/16 v51, 0x1

    aput-object v38, v50, v51

    invoke-static/range {v49 .. v50}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    if-nez v46, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    invoke-virtual {v7, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/16 v46, 0x1

    :cond_b
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_c
    invoke-virtual/range {v28 .. v28}, Landroid/widget/SemHorizontalListView;->getPaddingLeft()I

    move-result v49

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v16, v0

    goto/16 :goto_9

    :cond_d
    const/16 v49, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/view/View;->getLeft()I

    move-result v49

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v16, v0

    goto/16 :goto_9

    :cond_e
    neg-int v0, v12

    move/from16 v49, v0

    mul-int v49, v49, v42

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    sub-float v45, v45, v49

    goto/16 :goto_a

    :cond_f
    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/view/View;->getLeft()I

    move-result v49

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v48

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    sub-float v45, v40, v49

    goto/16 :goto_a

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/LinkedHashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/LinkedHashMap;->clear()V

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance v49, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2$1;

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2$1;-><init>(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;)V

    move-object/from16 v0, v49

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-object v49, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->DELETE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v49

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget v49, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->TRANSLATION_DURATION:I

    move/from16 v0, v49

    int-to-long v0, v0

    move-wide/from16 v50, v0

    move-wide/from16 v0, v50

    invoke-virtual {v8, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
