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
    .param p1, "this$0"    # Lcom/samsung/android/animation/SemAddDeleteGridAnimator;
    .param p2, "val$gridView"    # Landroid/widget/GridView;
    .param p3, "val$singleRowHeightBefore"    # I
    .param p4, "val$firstVisiblePosBefore"    # I
    .param p5, "val$lastVisiblePosBefore"    # I
    .param p6, "val$adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 192
    .local p7, "val$deletedItemPosHash":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .local p8, "val$deletedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
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

    .prologue
    .line 194
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v8, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    .line 197
    .local v10, "childCountAfter":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v16

    .line 199
    .local v16, "firstVisiblePosAfter":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/widget/GridView;->getNumColumns()I

    move-result v30

    .line 200
    .local v30, "numColumns":I
    const/16 v42, -0x1

    .line 201
    .local v42, "singleRowHeight":I
    move/from16 v0, v30

    if-le v10, v0, :cond_0

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/view/View;->getTop()I

    move-result v49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    invoke-virtual/range {v50 .. v51}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Landroid/view/View;->getTop()I

    move-result v50

    sub-int v42, v49, v50

    .line 207
    :goto_0
    const/16 v23, 0x1

    .line 208
    .local v23, "newItemsComingFromTop":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$firstVisiblePosBefore:I

    move/from16 v49, v0

    sub-int v24, v49, v16

    .line 209
    .local v24, "newItemsComingFromTopCount":I
    move/from16 v25, v24

    .line 210
    .local v25, "newItemsFromTopRemaining":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$lastVisiblePosBefore:I

    move/from16 v22, v0

    .line 212
    .local v22, "lastNewlyAppearingViewPosition":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    move/from16 v0, v18

    if-ge v0, v10, :cond_6

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 214
    .local v9, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$adapter:Landroid/widget/ListAdapter;

    move-object/from16 v49, v0

    add-int v50, v18, v16

    invoke-interface/range {v49 .. v50}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v20

    .line 215
    .local v20, "itemId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v49, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .line 217
    .local v48, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v49

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v28, v0

    .line 218
    .local v28, "newX":F
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v49

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v29, v0

    .line 219
    .local v29, "newY":F
    const/16 v44, 0x0

    .line 220
    .local v44, "translationX":F
    const/16 v45, 0x0

    .line 221
    .local v45, "translationY":F
    if-eqz v48, :cond_2

    .line 222
    const/16 v23, 0x0

    .line 223
    invoke-virtual/range {v48 .. v48}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    .line 224
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

    .line 212
    :goto_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 204
    .end local v9    # "child":Landroid/view/View;
    .end local v18    # "i":I
    .end local v20    # "itemId":J
    .end local v22    # "lastNewlyAppearingViewPosition":I
    .end local v23    # "newItemsComingFromTop":Z
    .end local v24    # "newItemsComingFromTopCount":I
    .end local v25    # "newItemsFromTopRemaining":I
    .end local v28    # "newX":F
    .end local v29    # "newY":F
    .end local v44    # "translationX":F
    .end local v45    # "translationY":F
    .end local v48    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$singleRowHeightBefore:I

    move/from16 v42, v0

    goto/16 :goto_0

    .line 226
    .restart local v9    # "child":Landroid/view/View;
    .restart local v18    # "i":I
    .restart local v20    # "itemId":J
    .restart local v22    # "lastNewlyAppearingViewPosition":I
    .restart local v23    # "newItemsComingFromTop":Z
    .restart local v24    # "newItemsComingFromTopCount":I
    .restart local v25    # "newItemsFromTopRemaining":I
    .restart local v28    # "newX":F
    .restart local v29    # "newY":F
    .restart local v44    # "translationX":F
    .restart local v45    # "translationY":F
    .restart local v48    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    :cond_1
    move-object/from16 v0, v48

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    sub-float v44, v49, v28

    .line 227
    move-object/from16 v0, v48

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    sub-float v45, v49, v29

    .line 260
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v9, v1, v2}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 261
    .local v6, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 231
    .end local v6    # "anim":Landroid/animation/ObjectAnimator;
    :cond_2
    add-int v11, v18, v16

    .line 232
    .local v11, "currentPos":I
    const/16 v32, -0x1

    .line 233
    .local v32, "oldPosition":I
    if-lez v25, :cond_4

    if-eqz v23, :cond_4

    .line 234
    sub-int v32, v11, v24

    .line 235
    add-int/lit8 v25, v25, -0x1

    .line 241
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

    .line 242
    .local v31, "oldPosRowId":I
    div-int v26, v11, v30

    .line 243
    .local v26, "newPosRowId":I
    sub-int v41, v31, v26

    .line 245
    .local v41, "rowShift":I
    rem-int v38, v32, v30

    .line 246
    .local v38, "refPosForLeftCoordinate":I
    if-gez v38, :cond_3

    add-int v38, v38, v30

    .line 249
    :cond_3
    move/from16 v0, v38

    if-le v10, v0, :cond_5

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/view/View;->getLeft()I

    move-result v34

    .line 254
    .local v34, "oldX":I
    :goto_5
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v49

    mul-int v50, v41, v42

    add-int v35, v49, v50

    .line 256
    .local v35, "oldY":I
    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v49, v0

    sub-float v44, v49, v28

    .line 257
    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v49, v0

    sub-float v45, v49, v29

    goto :goto_3

    .line 237
    .end local v26    # "newPosRowId":I
    .end local v31    # "oldPosRowId":I
    .end local v34    # "oldX":I
    .end local v35    # "oldY":I
    .end local v38    # "refPosForLeftCoordinate":I
    .end local v41    # "rowShift":I
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

    .line 238
    move/from16 v22, v32

    goto :goto_4

    .line 252
    .restart local v26    # "newPosRowId":I
    .restart local v31    # "oldPosRowId":I
    .restart local v38    # "refPosForLeftCoordinate":I
    .restart local v41    # "rowShift":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    invoke-virtual/range {v49 .. v50}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/view/View;->getLeft()I

    move-result v49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    invoke-virtual/range {v50 .. v51}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Landroid/view/View;->getWidth()I

    move-result v50

    mul-int v50, v50, v38

    add-int v34, v49, v50

    .restart local v34    # "oldX":I
    goto :goto_5

    .line 266
    .end local v9    # "child":Landroid/view/View;
    .end local v11    # "currentPos":I
    .end local v20    # "itemId":J
    .end local v26    # "newPosRowId":I
    .end local v28    # "newX":F
    .end local v29    # "newY":F
    .end local v31    # "oldPosRowId":I
    .end local v32    # "oldPosition":I
    .end local v34    # "oldX":I
    .end local v38    # "refPosForLeftCoordinate":I
    .end local v41    # "rowShift":I
    .end local v44    # "translationX":F
    .end local v45    # "translationY":F
    .end local v48    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v49

    invoke-interface/range {v49 .. v49}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 267
    .local v15, "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    const/16 v46, 0x0

    .line 269
    .local v46, "updateListenerAdded":Z
    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v49

    if-eqz v49, :cond_c

    .line 270
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/util/Map$Entry;

    .line 271
    .local v33, "oldViewCoordinate":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    invoke-interface/range {v33 .. v33}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .line 273
    .restart local v48    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
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

    .line 275
    .local v43, "startValue":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v48

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    move/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$deletedItems:Ljava/util/ArrayList;

    move-object/from16 v51, v0

    invoke-virtual/range {v49 .. v51}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getNewPosition(ILjava/util/ArrayList;)I

    move-result v27

    .line 280
    .local v27, "newPosition":I
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

    .line 283
    .local v19, "isDeletedItem":Z
    sub-int v12, v27, v16

    .line 285
    .local v12, "destinationViewIndex":I
    const/16 v39, 0x0

    .line 286
    .local v39, "referenceX":F
    const/16 v40, 0x0

    .line 289
    .local v40, "referenceY":F
    if-ltz v12, :cond_7

    if-lt v12, v10, :cond_b

    .line 290
    :cond_7
    rem-int v49, v27, v30

    move/from16 v0, v49

    if-le v10, v0, :cond_a

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    move-object/from16 v49, v0

    rem-int v50, v27, v30

    invoke-virtual/range {v49 .. v50}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/view/View;->getLeft()I

    move-result v49

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v39, v0

    .line 295
    :goto_7
    move-object/from16 v0, v48

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    move/from16 v49, v0

    div-int v49, v49, v30

    div-int v50, v27, v30

    sub-int v41, v49, v50

    .line 296
    .restart local v41    # "rowShift":I
    move-object/from16 v0, v48

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v49, v0

    mul-int v50, v41, v42

    sub-int v49, v49, v50

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v40, v0

    .line 301
    .end local v41    # "rowShift":I
    :goto_8
    move-object/from16 v0, v48

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    sub-float v44, v39, v49

    .line 302
    .restart local v44    # "translationX":F
    move-object/from16 v0, v48

    iget v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    sub-float v45, v40, v49

    .line 304
    .restart local v45    # "translationY":F
    new-instance v13, Landroid/graphics/Rect;

    move-object/from16 v0, v43

    invoke-direct {v13, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 305
    .local v13, "endValue":Landroid/graphics/Rect;
    move/from16 v0, v44

    float-to-int v0, v0

    move/from16 v49, v0

    move/from16 v0, v45

    float-to-int v0, v0

    move/from16 v50, v0

    move/from16 v0, v49

    move/from16 v1, v50

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 307
    if-eqz v19, :cond_8

    .line 309
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

    .line 310
    .local v17, "horizOffset":I
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

    .line 311
    .local v47, "vertOffset":I
    new-instance v14, Landroid/graphics/Rect;

    iget v0, v13, Landroid/graphics/Rect;->left:I

    move/from16 v49, v0

    add-int v49, v49, v17

    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v50, v0

    add-int v50, v50, v47

    .line 312
    iget v0, v13, Landroid/graphics/Rect;->right:I

    move/from16 v51, v0

    sub-int v51, v51, v17

    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v52, v0

    sub-int v52, v52, v47

    .line 311
    move/from16 v0, v49

    move/from16 v1, v50

    move/from16 v2, v51

    move/from16 v3, v52

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local v13    # "endValue":Landroid/graphics/Rect;
    .local v14, "endValue":Landroid/graphics/Rect;
    move-object v13, v14

    .line 315
    .end local v14    # "endValue":Landroid/graphics/Rect;
    .end local v17    # "horizOffset":I
    .end local v47    # "vertOffset":I
    .restart local v13    # "endValue":Landroid/graphics/Rect;
    :cond_8
    const-string/jumbo v49, "bounds"

    sget-object v50, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    const/16 v51, 0x2

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v51, v0

    .line 316
    const/16 v52, 0x0

    aput-object v43, v51, v52

    const/16 v52, 0x1

    aput-object v13, v51, v52

    .line 315
    invoke-static/range {v49 .. v51}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v37

    .line 317
    .local v37, "pvhBounds":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v49, "alpha"

    const/16 v50, 0xff

    const/16 v51, 0x0

    filled-new-array/range {v50 .. v51}, [I

    move-result-object v50

    invoke-static/range {v49 .. v50}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v36

    .line 318
    .local v36, "pvhAlpha":Landroid/animation/PropertyValuesHolder;
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

    .line 320
    .restart local v6    # "anim":Landroid/animation/ObjectAnimator;
    if-nez v46, :cond_9

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 322
    const/16 v46, 0x1

    .line 324
    :cond_9
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 293
    .end local v6    # "anim":Landroid/animation/ObjectAnimator;
    .end local v13    # "endValue":Landroid/graphics/Rect;
    .end local v36    # "pvhAlpha":Landroid/animation/PropertyValuesHolder;
    .end local v37    # "pvhBounds":Landroid/animation/PropertyValuesHolder;
    .end local v44    # "translationX":F
    .end local v45    # "translationY":F
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/view/View;->getPaddingLeft()I

    move-result v49

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v39, v0

    goto/16 :goto_7

    .line 298
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/view/View;->getLeft()I

    move-result v49

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v39, v0

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->val$gridView:Landroid/widget/GridView;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/view/View;->getTop()I

    move-result v49

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v40, v0

    goto/16 :goto_8

    .line 327
    .end local v12    # "destinationViewIndex":I
    .end local v19    # "isDeletedItem":Z
    .end local v27    # "newPosition":I
    .end local v33    # "oldViewCoordinate":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    .end local v39    # "referenceX":F
    .end local v40    # "referenceY":F
    .end local v43    # "startValue":Landroid/graphics/Rect;
    .end local v48    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/LinkedHashMap;->clear()V

    .line 329
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 330
    .local v7, "animSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 331
    new-instance v49, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2$1;

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2$1;-><init>(Lcom/samsung/android/animation/SemAddDeleteGridAnimator$2;)V

    move-object/from16 v0, v49

    invoke-virtual {v7, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 350
    sget-object v49, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->DELETE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v49

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 351
    sget v49, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->TRANSLATION_DURATION:I

    move/from16 v0, v49

    int-to-long v0, v0

    move-wide/from16 v50, v0

    move-wide/from16 v0, v50

    invoke-virtual {v7, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 352
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 193
    return-void
.end method
