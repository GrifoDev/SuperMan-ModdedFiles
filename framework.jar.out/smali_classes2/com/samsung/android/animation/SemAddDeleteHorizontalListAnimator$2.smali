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
    .param p1, "this$0"    # Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;
    .param p2, "val$adapter"    # Landroid/widget/ListAdapter;
    .param p3, "val$defaultTop"    # I
    .param p4, "val$defaultHeight"    # I
    .param p5, "val$firstVisiblePosBefore"    # I
    .param p6, "val$childCountBefore"    # I

    .prologue
    .line 190
    .local p7, "val$deletedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p8, "val$deletedItemPosHash":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
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

    .prologue
    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-get1(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v28

    .line 194
    .local v28, "listview":Landroid/widget/SemHorizontalListView;
    invoke-virtual/range {v28 .. v28}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    .line 195
    .local v11, "childCountAfter":I
    invoke-virtual/range {v28 .. v28}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v17

    .line 196
    .local v17, "firstVisiblePosAfter":I
    invoke-virtual/range {v28 .. v28}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v25

    .line 197
    .local v25, "lastVisiblePosAfter":I
    invoke-virtual/range {v28 .. v28}, Landroid/widget/SemHorizontalListView;->getHeaderViewsCount()I

    move-result v20

    .line 198
    .local v20, "headerViewsCount":I
    invoke-virtual/range {v28 .. v28}, Landroid/widget/SemHorizontalListView;->getFooterViewsCount()I

    move-result v19

    .line 199
    .local v19, "footerViewsCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$adapter:Landroid/widget/ListAdapter;

    move-object/from16 v49, v0

    invoke-interface/range {v49 .. v49}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    .line 200
    .local v6, "adapterCount":I
    const/16 v45, 0x0

    .line 201
    .local v45, "translationX":F
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v9, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/16 v42, 0x0

    .line 205
    .local v42, "singleItemWidth":I
    const/16 v44, 0x0

    .line 206
    .local v44, "top":I
    const/16 v21, 0x0

    .line 207
    .local v21, "height":I
    move/from16 v0, v20

    if-le v11, v0, :cond_1

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-wrap0(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)I

    move-result v49

    invoke-virtual/range {v28 .. v28}, Landroid/widget/SemHorizontalListView;->getDividerHeight()I

    move-result v50

    add-int v42, v49, v50

    .line 209
    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/view/View;->getTop()I

    move-result v44

    .line 210
    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/view/View;->getHeight()I

    move-result v21

    .line 216
    :goto_0
    const/16 v29, 0x1

    .line 217
    .local v29, "newItemsComingFromLeft":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$firstVisiblePosBefore:I

    move/from16 v49, v0

    sub-int v30, v49, v17

    .line 218
    .local v30, "newItemsComingFromLeftCount":I
    move/from16 v31, v30

    .line 219
    .local v31, "newItemsFromLeftRemaining":I
    add-int/lit8 v49, v25, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$childCountBefore:I

    move/from16 v50, v0

    sub-int v50, v50, v11

    add-int v34, v49, v50

    .line 221
    .local v34, "newlyAppearingViewOldPositionFromRight":I
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_1
    move/from16 v0, v23

    if-ge v0, v11, :cond_8

    .line 222
    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 223
    .local v10, "child":Landroid/view/View;
    add-int v37, v23, v17

    .line 224
    .local v37, "position":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$adapter:Landroid/widget/ListAdapter;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v26

    .line 225
    .local v26, "itemId":J
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v49

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v33, v0

    .line 226
    .local v33, "newX":F
    const/16 v48, 0x0

    .line 227
    .local v48, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    const-wide/16 v50, -0x1

    cmp-long v49, v26, v50

    if-nez v49, :cond_3

    .line 228
    move/from16 v0, v37

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    .line 229
    add-int/lit8 v49, v37, 0x1

    move/from16 v0, v49

    int-to-long v0, v0

    move-wide/from16 v26, v0

    .line 234
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

    invoke-virtual/range {v49 .. v50}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    .end local v48    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    check-cast v48, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .line 239
    .local v48, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    :goto_3
    if-eqz v48, :cond_5

    .line 240
    invoke-virtual/range {v48 .. v48}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    .line 241
    const/16 v29, 0x0

    .line 244
    move-object/from16 v0, v48

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    cmpl-float v49, v49, v33

    if-nez v49, :cond_4

    .line 221
    :goto_4
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 212
    .end local v10    # "child":Landroid/view/View;
    .end local v23    # "i":I
    .end local v26    # "itemId":J
    .end local v29    # "newItemsComingFromLeft":Z
    .end local v30    # "newItemsComingFromLeftCount":I
    .end local v31    # "newItemsFromLeftRemaining":I
    .end local v33    # "newX":F
    .end local v34    # "newlyAppearingViewOldPositionFromRight":I
    .end local v37    # "position":I
    .end local v48    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$defaultTop:I

    move/from16 v44, v0

    .line 213
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$defaultHeight:I

    move/from16 v21, v0

    goto/16 :goto_0

    .line 230
    .restart local v10    # "child":Landroid/view/View;
    .restart local v23    # "i":I
    .restart local v26    # "itemId":J
    .restart local v29    # "newItemsComingFromLeft":Z
    .restart local v30    # "newItemsComingFromLeftCount":I
    .restart local v31    # "newItemsFromLeftRemaining":I
    .restart local v33    # "newX":F
    .restart local v34    # "newlyAppearingViewOldPositionFromRight":I
    .restart local v37    # "position":I
    .local v48, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    :cond_2
    sub-int v49, v6, v19

    move/from16 v0, v37

    move/from16 v1, v49

    if-lt v0, v1, :cond_0

    .line 231
    add-int v49, v37, v19

    sub-int v49, v49, v6

    add-int/lit8 v18, v49, 0x1

    .line 232
    .local v18, "footerId":I
    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-long v0, v0

    move-wide/from16 v26, v0

    goto :goto_2

    .line 236
    .end local v18    # "footerId":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v49, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    .end local v48    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    check-cast v48, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .local v48, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    goto :goto_3

    .line 246
    :cond_4
    move-object/from16 v0, v48

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    sub-float v45, v49, v33

    .line 267
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v45

    move/from16 v2, v50

    invoke-virtual {v0, v10, v1, v2}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 268
    .local v7, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 251
    .end local v7    # "anim":Landroid/animation/ObjectAnimator;
    :cond_5
    if-lez v31, :cond_6

    if-eqz v29, :cond_6

    .line 252
    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v41, v0

    .line 253
    .local v41, "rowShift":I
    add-int/lit8 v31, v31, -0x1

    .line 259
    :goto_6
    const/16 v36, -0x1

    .line 260
    .local v36, "oldX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-get1(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/view/View;->isLayoutRtl()Z

    move-result v49

    if-eqz v49, :cond_7

    .line 261
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v49

    mul-int v50, v41, v42

    sub-int v36, v49, v50

    .line 265
    :goto_7
    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v49, v0

    sub-float v45, v49, v33

    goto :goto_5

    .line 255
    .end local v36    # "oldX":I
    .end local v41    # "rowShift":I
    :cond_6
    sub-int v41, v34, v37

    .line 256
    .restart local v41    # "rowShift":I
    add-int/lit8 v34, v34, 0x1

    goto :goto_6

    .line 263
    .restart local v36    # "oldX":I
    :cond_7
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v49

    mul-int v50, v41, v42

    add-int v36, v49, v50

    goto :goto_7

    .line 273
    .end local v10    # "child":Landroid/view/View;
    .end local v26    # "itemId":J
    .end local v33    # "newX":F
    .end local v36    # "oldX":I
    .end local v37    # "position":I
    .end local v41    # "rowShift":I
    .end local v48    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v49

    invoke-interface/range {v49 .. v49}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 274
    .local v15, "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    const/16 v46, 0x0

    .line 276
    .local v46, "updateListenerAdded":Z
    :goto_8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v49

    if-eqz v49, :cond_10

    .line 277
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/util/Map$Entry;

    .line 278
    .local v35, "oldViewCoordinate":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    invoke-interface/range {v35 .. v35}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .line 280
    .restart local v48    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
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

    .line 282
    .local v43, "startValue":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v48

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    move/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->val$deletedItems:Ljava/util/ArrayList;

    move-object/from16 v51, v0

    invoke-virtual/range {v49 .. v51}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getNewPosition(ILjava/util/ArrayList;)I

    move-result v32

    .line 287
    .local v32, "newPosition":I
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

    .line 290
    .local v24, "isDeletedItem":Z
    sub-int v12, v32, v17

    .line 294
    .local v12, "destinationViewIndex":I
    if-ltz v12, :cond_9

    if-lt v12, v11, :cond_f

    .line 296
    :cond_9
    if-nez v11, :cond_d

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-get1(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/view/View;->isLayoutRtl()Z

    move-result v49

    if-eqz v49, :cond_c

    .line 298
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getWidth()I

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

    .line 305
    .local v16, "firstChildLeft":F
    :goto_9
    move-object/from16 v0, v48

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    sub-float v45, v16, v49

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-get1(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/view/View;->isLayoutRtl()Z

    move-result v49

    if-eqz v49, :cond_e

    .line 307
    neg-int v0, v12

    move/from16 v49, v0

    mul-int v49, v49, v42

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    add-float v45, v45, v49

    .line 316
    .end local v16    # "firstChildLeft":F
    :goto_a
    new-instance v13, Landroid/graphics/Rect;

    move-object/from16 v0, v43

    invoke-direct {v13, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 317
    .local v13, "endValue":Landroid/graphics/Rect;
    move/from16 v0, v45

    float-to-int v0, v0

    move/from16 v49, v0

    const/16 v50, 0x0

    move/from16 v0, v49

    move/from16 v1, v50

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 319
    if-eqz v24, :cond_a

    .line 321
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

    .line 322
    .local v22, "horizOffset":I
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

    .line 323
    .local v47, "vertOffset":I
    new-instance v14, Landroid/graphics/Rect;

    iget v0, v13, Landroid/graphics/Rect;->left:I

    move/from16 v49, v0

    add-int v49, v49, v22

    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v50, v0

    add-int v50, v50, v47

    .line 324
    iget v0, v13, Landroid/graphics/Rect;->right:I

    move/from16 v51, v0

    sub-int v51, v51, v22

    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v52, v0

    sub-int v52, v52, v47

    .line 323
    move/from16 v0, v49

    move/from16 v1, v50

    move/from16 v2, v51

    move/from16 v3, v52

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local v13    # "endValue":Landroid/graphics/Rect;
    .local v14, "endValue":Landroid/graphics/Rect;
    move-object v13, v14

    .line 327
    .end local v14    # "endValue":Landroid/graphics/Rect;
    .end local v22    # "horizOffset":I
    .end local v47    # "vertOffset":I
    .restart local v13    # "endValue":Landroid/graphics/Rect;
    :cond_a
    const-string/jumbo v49, "bounds"

    sget-object v50, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/16 v51, 0x2

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    .line 328
    const/16 v52, 0x0

    aput-object v43, v51, v52

    const/16 v52, 0x1

    aput-object v13, v51, v52

    .line 327
    invoke-static/range {v49 .. v51}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v39

    .line 329
    .local v39, "pvhBounds":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v49, "alpha"

    const/16 v50, 0xff

    const/16 v51, 0x0

    filled-new-array/range {v50 .. v51}, [I

    move-result-object v50

    invoke-static/range {v49 .. v50}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v38

    .line 330
    .local v38, "pvhAlpha":Landroid/animation/PropertyValuesHolder;
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

    .line 332
    .restart local v7    # "anim":Landroid/animation/ObjectAnimator;
    if-nez v46, :cond_b

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 334
    const/16 v46, 0x1

    .line 336
    :cond_b
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 300
    .end local v7    # "anim":Landroid/animation/ObjectAnimator;
    .end local v13    # "endValue":Landroid/graphics/Rect;
    .end local v38    # "pvhAlpha":Landroid/animation/PropertyValuesHolder;
    .end local v39    # "pvhBounds":Landroid/animation/PropertyValuesHolder;
    :cond_c
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getPaddingLeft()I

    move-result v49

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v16, v0

    .restart local v16    # "firstChildLeft":F
    goto/16 :goto_9

    .line 303
    .end local v16    # "firstChildLeft":F
    :cond_d
    const/16 v49, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/view/View;->getLeft()I

    move-result v49

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v16, v0

    .restart local v16    # "firstChildLeft":F
    goto/16 :goto_9

    .line 309
    :cond_e
    neg-int v0, v12

    move/from16 v49, v0

    mul-int v49, v49, v42

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    sub-float v45, v45, v49

    goto/16 :goto_a

    .line 312
    .end local v16    # "firstChildLeft":F
    :cond_f
    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/view/View;->getLeft()I

    move-result v49

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v40, v0

    .line 313
    .local v40, "referenceX":F
    move-object/from16 v0, v48

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    sub-float v45, v40, v49

    goto/16 :goto_a

    .line 339
    .end local v12    # "destinationViewIndex":I
    .end local v24    # "isDeletedItem":Z
    .end local v32    # "newPosition":I
    .end local v35    # "oldViewCoordinate":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    .end local v40    # "referenceX":F
    .end local v43    # "startValue":Landroid/graphics/Rect;
    .end local v48    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/LinkedHashMap;->clear()V

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/LinkedHashMap;->clear()V

    .line 342
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 343
    .local v8, "animSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 344
    new-instance v49, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2$1;

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2$1;-><init>(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$2;)V

    move-object/from16 v0, v49

    invoke-virtual {v8, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 363
    sget-object v49, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->DELETE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v49

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 364
    sget v49, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->TRANSLATION_DURATION:I

    move/from16 v0, v49

    int-to-long v0, v0

    move-wide/from16 v50, v0

    move-wide/from16 v0, v50

    invoke-virtual {v8, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 365
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    .line 191
    return-void
.end method
