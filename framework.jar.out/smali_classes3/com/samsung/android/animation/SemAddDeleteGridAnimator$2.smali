.class Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;
.super Ljava/lang/Object;
.source "SemAddDeleteGridAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->prepareDelete(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

.field final synthetic val$adapter:Landroid/widget/ListAdapter;

.field final synthetic val$deletedItemPosHash:Ljava/util/HashSet;

.field final synthetic val$deletedItems:Ljava/util/ArrayList;

.field final synthetic val$firstVisiblePosBefore:I

.field final synthetic val$gridView:Landroid/widget/GridView;

.field final synthetic val$lastVisiblePosBefore:I

.field final synthetic val$singleRowHeightBefore:I


# direct methods
.method constructor <init>(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;Landroid/widget/GridView;IIILandroid/widget/ListAdapter;Ljava/util/HashSet;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    iput-object p2, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    iput p3, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$singleRowHeightBefore:I

    iput p4, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$firstVisiblePosBefore:I

    iput p5, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$lastVisiblePosBefore:I

    iput-object p6, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$adapter:Landroid/widget/ListAdapter;

    iput-object p7, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$deletedItemPosHash:Ljava/util/HashSet;

    iput-object p8, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$deletedItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 54

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/widget/GridView;->getChildCount()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/widget/GridView;->getNumColumns()I

    move-result v30

    const/16 v42, -0x1

    move/from16 v0, v30

    if-le v10, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/view/View;->getTop()I

    move-result v49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    invoke-virtual/range {v50 .. v51}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Landroid/view/View;->getTop()I

    move-result v50

    sub-int v42, v49, v50

    :goto_0
    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$firstVisiblePosBefore:I

    move/from16 v49, v0

    sub-int v24, v49, v16

    move/from16 v25, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$lastVisiblePosBefore:I

    move/from16 v22, v0

    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    if-ge v0, v10, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$adapter:Landroid/widget/ListAdapter;

    move-object/from16 v49, v0

    add-int v50, v18, v16

    invoke-interface/range {v49 .. v50}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v49, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v49

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v28, v0

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v49

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v29, v0

    const/16 v44, 0x0

    const/16 v45, 0x0

    if-eqz v48, :cond_2

    const/16 v23, 0x0

    invoke-virtual/range {v48 .. v48}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    move-object/from16 v0, v48

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    cmpl-float v49, v49, v28

    if-nez v49, :cond_1

    move-object/from16 v0, v48

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    cmpl-float v49, v49, v29

    if-nez v49, :cond_1

    :goto_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$singleRowHeightBefore:I

    move/from16 v42, v0

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, v48

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    sub-float v44, v49, v28

    move-object/from16 v0, v48

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    sub-float v45, v49, v29

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v9, v1, v2}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    add-int v11, v18, v16

    const/16 v32, -0x1

    if-lez v25, :cond_4

    if-eqz v23, :cond_4

    sub-int v32, v11, v24

    add-int/lit8 v25, v25, -0x1

    :goto_4
    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v50, v0

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v52, v0

    div-double v50, v50, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->floor(D)D

    move-result-wide v50

    move-wide/from16 v0, v50

    double-to-int v0, v0

    move/from16 v31, v0

    div-int v26, v11, v30

    sub-int v41, v31, v26

    rem-int v38, v32, v30

    if-gez v38, :cond_3

    add-int v38, v38, v30

    :cond_3
    move/from16 v0, v38

    if-le v10, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/view/View;->getLeft()I

    move-result v34

    :goto_5
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v49

    mul-int v50, v41, v42

    add-int v35, v49, v50

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v49, v0

    sub-float v44, v49, v28

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v49, v0

    sub-float v45, v49, v29

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$deletedItemPosHash:Ljava/util/HashSet;

    move-object/from16 v50, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->-wrap0(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;Ljava/util/HashSet;I)I

    move-result v32

    move/from16 v22, v32

    goto :goto_4

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    invoke-virtual/range {v49 .. v50}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/view/View;->getLeft()I

    move-result v49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    invoke-virtual/range {v50 .. v51}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Landroid/view/View;->getWidth()I

    move-result v50

    mul-int v50, v50, v38

    add-int v34, v49, v50

    goto :goto_5

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v49

    invoke-interface/range {v49 .. v49}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/16 v46, 0x0

    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v49

    if-eqz v49, :cond_c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/util/Map$Entry;

    invoke-interface/range {v33 .. v33}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v43, Landroid/graphics/Rect;

    move-object/from16 v0, v48

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v49, v0

    move-object/from16 v0, v48

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v50, v0

    move-object/from16 v0, v48

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->right:I

    move/from16 v51, v0

    move-object/from16 v0, v48

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->bottom:I

    move/from16 v52, v0

    move-object/from16 v0, v43

    move/from16 v1, v49

    move/from16 v2, v50

    move/from16 v3, v51

    move/from16 v4, v52

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v48

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    move/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$deletedItems:Ljava/util/ArrayList;

    move-object/from16 v51, v0

    invoke-virtual/range {v49 .. v51}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->getNewPosition(ILjava/util/ArrayList;)I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$deletedItemPosHash:Ljava/util/HashSet;

    move-object/from16 v49, v0

    move-object/from16 v0, v48

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    move/from16 v50, v0

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v19

    sub-int v12, v27, v16

    const/16 v39, 0x0

    const/16 v40, 0x0

    if-ltz v12, :cond_7

    if-lt v12, v10, :cond_b

    :cond_7
    rem-int v49, v27, v30

    move/from16 v0, v49

    if-le v10, v0, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    move-object/from16 v49, v0

    rem-int v50, v27, v30

    invoke-virtual/range {v49 .. v50}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/view/View;->getLeft()I

    move-result v49

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v39, v0

    :goto_7
    move-object/from16 v0, v48

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    move/from16 v49, v0

    div-int v49, v49, v30

    div-int v50, v27, v30

    sub-int v41, v49, v50

    move-object/from16 v0, v48

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v49, v0

    mul-int v50, v41, v42

    sub-int v49, v49, v50

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v40, v0

    :goto_8
    move-object/from16 v0, v48

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    sub-float v44, v39, v49

    move-object/from16 v0, v48

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    sub-float v45, v40, v49

    new-instance v13, Landroid/graphics/Rect;

    move-object/from16 v0, v43

    invoke-direct {v13, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move/from16 v0, v44

    float-to-int v0, v0

    move/from16 v49, v0

    move/from16 v0, v45

    float-to-int v0, v0

    move/from16 v50, v0

    move/from16 v0, v49

    move/from16 v1, v50

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    if-eqz v19, :cond_8

    sget v49, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->START_SCALE_FACTOR:F

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

    move/from16 v17, v0

    sget v49, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->START_SCALE_FACTOR:F

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

    add-int v49, v49, v17

    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v50, v0

    add-int v50, v50, v47

    iget v0, v13, Landroid/graphics/Rect;->right:I

    move/from16 v51, v0

    sub-int v51, v51, v17

    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v52, v0

    sub-int v52, v52, v47

    move/from16 v0, v49

    move/from16 v1, v50

    move/from16 v2, v51

    move/from16 v3, v52

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v13, v14

    :cond_8
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

    move-result-object v37

    const-string/jumbo v49, "alpha"

    const/16 v50, 0xff

    const/16 v51, 0x0

    filled-new-array/range {v50 .. v51}, [I

    move-result-object v50

    invoke-static/range {v49 .. v50}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v36

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v49, v0

    const/16 v50, 0x2

    move/from16 v0, v50

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    aput-object v37, v50, v51

    const/16 v51, 0x1

    aput-object v36, v50, v51

    invoke-static/range {v49 .. v50}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    if-nez v46, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/16 v46, 0x1

    :cond_9
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/widget/GridView;->getPaddingLeft()I

    move-result v49

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v39, v0

    goto/16 :goto_7

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    invoke-virtual {v0, v12}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/view/View;->getLeft()I

    move-result v49

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    invoke-virtual {v0, v12}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/view/View;->getTop()I

    move-result v49

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v40, v0

    goto/16 :goto_8

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/LinkedHashMap;->clear()V

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance v49, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2$1;

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2$1;-><init>(Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;)V

    move-object/from16 v0, v49

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-object v49, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->DELETE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v49

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget v49, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->TRANSLATION_DURATION:I

    move/from16 v0, v49

    int-to-long v0, v0

    move-wide/from16 v50, v0

    move-wide/from16 v0, v50

    invoke-virtual {v7, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
