.class Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;
.super Ljava/lang/Object;
.source "SemAddDeleteListAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemAddDeleteListAnimator;->prepareDelete(Ljava/util/ArrayList;)V
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

.field final synthetic val$firstVisiblePosBefore:I


# direct methods
.method constructor <init>(Lcom/samsung/android/animation/SemAddDeleteListAnimator;Landroid/widget/ListAdapter;IILjava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/animation/SemAddDeleteListAnimator;
    .param p2, "val$adapter"    # Landroid/widget/ListAdapter;
    .param p3, "val$firstVisiblePosBefore"    # I
    .param p4, "val$childCountBefore"    # I

    .prologue
    .line 184
    .local p5, "val$deletedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p6, "val$deletedItemPosHash":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iput-object p2, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;->val$adapter:Landroid/widget/ListAdapter;

    iput p3, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;->val$firstVisiblePosBefore:I

    iput p4, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;->val$childCountBefore:I

    iput-object p5, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;->val$deletedItems:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;->val$deletedItemPosHash:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 53

    .prologue
    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-get1(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object v28

    .line 188
    .local v28, "listview":Landroid/widget/ListView;
    invoke-virtual/range {v28 .. v28}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    .line 189
    .local v11, "childCountAfter":I
    invoke-virtual/range {v28 .. v28}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v17

    .line 190
    .local v17, "firstVisiblePosAfter":I
    invoke-virtual/range {v28 .. v28}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v26

    .line 191
    .local v26, "lastVisiblePosAfter":I
    invoke-virtual/range {v28 .. v28}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v20

    .line 192
    .local v20, "headerViewsCount":I
    invoke-virtual/range {v28 .. v28}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v19

    .line 193
    .local v19, "footerViewsCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;->val$adapter:Landroid/widget/ListAdapter;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    .line 194
    .local v6, "adapterCount":I
    const/16 v44, 0x0

    .line 195
    .local v44, "translationY":F
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v9, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/16 v42, 0x0

    .line 199
    .local v42, "singleItemHeight":I
    const/16 v27, 0x0

    .line 200
    .local v27, "left":I
    const/16 v48, 0x0

    .line 201
    .local v48, "width":I
    move/from16 v0, v20

    if-le v11, v0, :cond_1

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-wrap0(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)I

    move-result v49

    invoke-virtual/range {v28 .. v28}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v50

    add-int v42, v49, v50

    .line 203
    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/view/View;->getLeft()I

    move-result v27

    .line 204
    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/view/View;->getWidth()I

    move-result v48

    .line 209
    :goto_0
    const/16 v29, 0x1

    .line 210
    .local v29, "newItemsComingFromTop":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;->val$firstVisiblePosBefore:I

    move/from16 v49, v0

    sub-int v30, v49, v17

    .line 211
    .local v30, "newItemsComingFromTopCount":I
    move/from16 v31, v30

    .line 212
    .local v31, "newItemsFromTopRemaining":I
    add-int/lit8 v49, v26, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;->val$childCountBefore:I

    move/from16 v50, v0

    sub-int v50, v50, v11

    add-int v34, v49, v50

    .line 214
    .local v34, "newlyAppearingViewOldPositionFromBottom":I
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_1
    move/from16 v0, v22

    if-ge v0, v11, :cond_7

    .line 215
    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 216
    .local v10, "child":Landroid/view/View;
    add-int v37, v22, v17

    .line 217
    .local v37, "position":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;->val$adapter:Landroid/widget/ListAdapter;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v24

    .line 218
    .local v24, "itemId":J
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v49

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v33, v0

    .line 219
    .local v33, "newY":F
    const/16 v47, 0x0

    .line 220
    .local v47, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    const-wide/16 v50, -0x1

    cmp-long v49, v24, v50

    if-nez v49, :cond_3

    .line 221
    move/from16 v0, v37

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    .line 222
    add-int/lit8 v49, v37, 0x1

    move/from16 v0, v49

    int-to-long v0, v0

    move-wide/from16 v24, v0

    .line 227
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v49, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    .end local v47    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    check-cast v47, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .line 232
    .local v47, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    :goto_3
    if-eqz v47, :cond_5

    .line 233
    invoke-virtual/range {v47 .. v47}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    .line 234
    const/16 v29, 0x0

    .line 237
    move-object/from16 v0, v47

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    cmpl-float v49, v49, v33

    if-nez v49, :cond_4

    .line 214
    :goto_4
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 206
    .end local v10    # "child":Landroid/view/View;
    .end local v22    # "i":I
    .end local v24    # "itemId":J
    .end local v29    # "newItemsComingFromTop":Z
    .end local v30    # "newItemsComingFromTopCount":I
    .end local v31    # "newItemsFromTopRemaining":I
    .end local v33    # "newY":F
    .end local v34    # "newlyAppearingViewOldPositionFromBottom":I
    .end local v37    # "position":I
    .end local v47    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    :cond_1
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getWidth()I

    move-result v48

    goto/16 :goto_0

    .line 223
    .restart local v10    # "child":Landroid/view/View;
    .restart local v22    # "i":I
    .restart local v24    # "itemId":J
    .restart local v29    # "newItemsComingFromTop":Z
    .restart local v30    # "newItemsComingFromTopCount":I
    .restart local v31    # "newItemsFromTopRemaining":I
    .restart local v33    # "newY":F
    .restart local v34    # "newlyAppearingViewOldPositionFromBottom":I
    .restart local v37    # "position":I
    .local v47, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    :cond_2
    sub-int v49, v6, v19

    move/from16 v0, v37

    move/from16 v1, v49

    if-lt v0, v1, :cond_0

    .line 224
    add-int v49, v37, v19

    sub-int v49, v49, v6

    add-int/lit8 v18, v49, 0x1

    .line 225
    .local v18, "footerId":I
    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-long v0, v0

    move-wide/from16 v24, v0

    goto :goto_2

    .line 229
    .end local v18    # "footerId":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v49, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    .end local v47    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    check-cast v47, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .local v47, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    goto :goto_3

    .line 239
    :cond_4
    move-object/from16 v0, v47

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    sub-float v44, v49, v33

    .line 255
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v50

    move/from16 v2, v44

    invoke-virtual {v0, v10, v1, v2}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 256
    .local v7, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 244
    .end local v7    # "anim":Landroid/animation/ObjectAnimator;
    :cond_5
    if-lez v31, :cond_6

    if-eqz v29, :cond_6

    .line 245
    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v41, v0

    .line 246
    .local v41, "rowShift":I
    add-int/lit8 v31, v31, -0x1

    .line 252
    :goto_6
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v49

    mul-int v50, v41, v42

    add-int v36, v49, v50

    .line 253
    .local v36, "oldY":I
    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v49, v0

    sub-float v44, v49, v33

    goto :goto_5

    .line 248
    .end local v36    # "oldY":I
    .end local v41    # "rowShift":I
    :cond_6
    sub-int v41, v34, v37

    .line 249
    .restart local v41    # "rowShift":I
    add-int/lit8 v34, v34, 0x1

    goto :goto_6

    .line 261
    .end local v10    # "child":Landroid/view/View;
    .end local v24    # "itemId":J
    .end local v33    # "newY":F
    .end local v37    # "position":I
    .end local v41    # "rowShift":I
    .end local v47    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v49

    invoke-interface/range {v49 .. v49}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 262
    .local v15, "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    const/16 v45, 0x0

    .line 264
    .local v45, "updateListenerAdded":Z
    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v49

    if-eqz v49, :cond_d

    .line 265
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/util/Map$Entry;

    .line 266
    .local v35, "oldViewCoordinate":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    invoke-interface/range {v35 .. v35}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .line 268
    .restart local v47    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    new-instance v43, Landroid/graphics/Rect;

    move-object/from16 v0, v47

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v49, v0

    add-int v50, v27, v48

    move-object/from16 v0, v47

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->bottom:I

    move/from16 v51, v0

    move-object/from16 v0, v43

    move/from16 v1, v27

    move/from16 v2, v49

    move/from16 v3, v50

    move/from16 v4, v51

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 270
    .local v43, "startValue":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v47

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    move/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;->val$deletedItems:Ljava/util/ArrayList;

    move-object/from16 v51, v0

    invoke-virtual/range {v49 .. v51}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getNewPosition(ILjava/util/ArrayList;)I

    move-result v32

    .line 275
    .local v32, "newPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;->val$deletedItemPosHash:Ljava/util/HashSet;

    move-object/from16 v49, v0

    move-object/from16 v0, v47

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    move/from16 v50, v0

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v23

    .line 278
    .local v23, "isDeletedItem":Z
    sub-int v12, v32, v17

    .line 282
    .local v12, "destinationViewIndex":I
    if-ltz v12, :cond_8

    if-lt v12, v11, :cond_c

    .line 284
    :cond_8
    if-nez v11, :cond_b

    .line 285
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getPaddingTop()I

    move-result v49

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v16, v0

    .line 289
    .local v16, "firstChildTop":F
    :goto_8
    move-object/from16 v0, v47

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    sub-float v44, v16, v49

    .line 290
    neg-int v0, v12

    move/from16 v49, v0

    mul-int v49, v49, v42

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    sub-float v44, v44, v49

    .line 296
    .end local v16    # "firstChildTop":F
    :goto_9
    new-instance v13, Landroid/graphics/Rect;

    move-object/from16 v0, v43

    invoke-direct {v13, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 297
    .local v13, "endValue":Landroid/graphics/Rect;
    move/from16 v0, v44

    float-to-int v0, v0

    move/from16 v49, v0

    const/16 v50, 0x0

    move/from16 v0, v50

    move/from16 v1, v49

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 299
    if-eqz v23, :cond_9

    .line 301
    sget v49, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->START_SCALE_FACTOR:F

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

    move/from16 v21, v0

    .line 302
    .local v21, "horizOffset":I
    sget v49, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->START_SCALE_FACTOR:F

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

    move/from16 v46, v0

    .line 303
    .local v46, "vertOffset":I
    new-instance v14, Landroid/graphics/Rect;

    iget v0, v13, Landroid/graphics/Rect;->left:I

    move/from16 v49, v0

    add-int v49, v49, v21

    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v50, v0

    add-int v50, v50, v46

    .line 304
    iget v0, v13, Landroid/graphics/Rect;->right:I

    move/from16 v51, v0

    sub-int v51, v51, v21

    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v52, v0

    sub-int v52, v52, v46

    .line 303
    move/from16 v0, v49

    move/from16 v1, v50

    move/from16 v2, v51

    move/from16 v3, v52

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local v13    # "endValue":Landroid/graphics/Rect;
    .local v14, "endValue":Landroid/graphics/Rect;
    move-object v13, v14

    .line 307
    .end local v14    # "endValue":Landroid/graphics/Rect;
    .end local v21    # "horizOffset":I
    .end local v46    # "vertOffset":I
    .restart local v13    # "endValue":Landroid/graphics/Rect;
    :cond_9
    const-string/jumbo v49, "bounds"

    sget-object v50, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/16 v51, 0x2

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    .line 308
    const/16 v52, 0x0

    aput-object v43, v51, v52

    const/16 v52, 0x1

    aput-object v13, v51, v52

    .line 307
    invoke-static/range {v49 .. v51}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v39

    .line 309
    .local v39, "pvhBounds":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v49, "alpha"

    const/16 v50, 0xff

    const/16 v51, 0x0

    filled-new-array/range {v50 .. v51}, [I

    move-result-object v50

    invoke-static/range {v49 .. v50}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v38

    .line 310
    .local v38, "pvhAlpha":Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, v47

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

    .line 312
    .restart local v7    # "anim":Landroid/animation/ObjectAnimator;
    if-nez v45, :cond_a

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 314
    const/16 v45, 0x1

    .line 316
    :cond_a
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 287
    .end local v7    # "anim":Landroid/animation/ObjectAnimator;
    .end local v13    # "endValue":Landroid/graphics/Rect;
    .end local v38    # "pvhAlpha":Landroid/animation/PropertyValuesHolder;
    .end local v39    # "pvhBounds":Landroid/animation/PropertyValuesHolder;
    :cond_b
    const/16 v49, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/view/View;->getTop()I

    move-result v49

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v16, v0

    .restart local v16    # "firstChildTop":F
    goto/16 :goto_8

    .line 292
    .end local v16    # "firstChildTop":F
    :cond_c
    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/view/View;->getTop()I

    move-result v49

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v40, v0

    .line 293
    .local v40, "referenceY":F
    move-object/from16 v0, v47

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    sub-float v44, v40, v49

    goto/16 :goto_9

    .line 319
    .end local v12    # "destinationViewIndex":I
    .end local v23    # "isDeletedItem":Z
    .end local v32    # "newPosition":I
    .end local v35    # "oldViewCoordinate":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    .end local v40    # "referenceY":F
    .end local v43    # "startValue":Landroid/graphics/Rect;
    .end local v47    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/LinkedHashMap;->clear()V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/LinkedHashMap;->clear()V

    .line 322
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 323
    .local v8, "animSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 324
    new-instance v49, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2$1;

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator$2$1;-><init>(Lcom/samsung/android/animation/SemAddDeleteListAnimator$2;)V

    move-object/from16 v0, v49

    invoke-virtual {v8, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 351
    sget-object v49, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->DELETE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v49

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 352
    sget v49, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->TRANSLATION_DURATION:I

    move/from16 v0, v49

    int-to-long v0, v0

    move-wide/from16 v50, v0

    move-wide/from16 v0, v50

    invoke-virtual {v8, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 353
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    .line 185
    return-void
.end method
