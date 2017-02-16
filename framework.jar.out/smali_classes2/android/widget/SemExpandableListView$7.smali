.class Landroid/widget/SemExpandableListView$7;
.super Ljava/lang/Object;
.source "SemExpandableListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SemExpandableListView;->startExpandAllAnimation([ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SemExpandableListView;

.field final synthetic val$animationEndRunnable:Ljava/lang/Runnable;

.field final synthetic val$expanded:[Z


# direct methods
.method constructor <init>(Landroid/widget/SemExpandableListView;Ljava/lang/Runnable;[Z)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/SemExpandableListView;
    .param p2, "val$animationEndRunnable"    # Ljava/lang/Runnable;
    .param p3, "val$expanded"    # [Z

    .prologue
    .line 1243
    iput-object p1, p0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    iput-object p2, p0, Landroid/widget/SemExpandableListView$7;->val$animationEndRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Landroid/widget/SemExpandableListView$7;->val$expanded:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 44

    .prologue
    .line 1247
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1249
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    .line 1250
    .local v10, "childCount":I
    if-nez v10, :cond_0

    .line 1251
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Landroid/widget/SemExpandableListView;->-wrap10(Landroid/widget/SemExpandableListView;)V

    .line 1252
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->val$animationEndRunnable:Ljava/lang/Runnable;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Ljava/lang/Runnable;->run()V

    .line 1253
    const/16 v40, 0x1

    return v40

    .line 1256
    :cond_0
    const/16 v7, 0x2bc

    .line 1260
    .local v7, "animationDuration":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1263
    .local v8, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v12

    .line 1265
    .local v12, "firstVisiblePos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Landroid/widget/SemExpandableListView;->-wrap8(Landroid/widget/SemExpandableListView;)I

    move-result v22

    .line 1266
    .local v22, "lastValidPos":I
    move/from16 v0, v22

    if-ge v0, v12, :cond_1

    .line 1267
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->val$animationEndRunnable:Ljava/lang/Runnable;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Ljava/lang/Runnable;->run()V

    .line 1268
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Landroid/widget/SemExpandableListView;->-wrap10(Landroid/widget/SemExpandableListView;)V

    .line 1269
    const/16 v40, 0x1

    return v40

    .line 1272
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v20

    .line 1273
    .local v20, "lastPosPackedPos":J
    invoke-static/range {v20 .. v21}, Landroid/widget/SemExpandableListView;->getPackedPositionGroup(J)I

    move-result v17

    .line 1274
    .local v17, "lastGroupId":I
    add-int/lit8 v40, v17, 0x1

    move/from16 v0, v40

    new-array v13, v0, [I

    .line 1275
    .local v13, "groupOffsets":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    add-int/lit8 v41, v17, 0x1

    move/from16 v0, v41

    new-array v0, v0, [Landroid/graphics/RectF;

    move-object/from16 v41, v0

    invoke-static/range {v40 .. v41}, Landroid/widget/SemExpandableListView;->-set3(Landroid/widget/SemExpandableListView;[Landroid/graphics/RectF;)[Landroid/graphics/RectF;

    .line 1276
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    add-int/lit8 v41, v17, 0x1

    move/from16 v0, v41

    new-array v0, v0, [Landroid/widget/SemExpandableListView$ExpandingRect;

    move-object/from16 v41, v0

    invoke-static/range {v40 .. v41}, Landroid/widget/SemExpandableListView;->-set2(Landroid/widget/SemExpandableListView;[Landroid/widget/SemExpandableListView$ExpandingRect;)[Landroid/widget/SemExpandableListView$ExpandingRect;

    .line 1279
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getHeight()I

    move-result v40

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v42

    add-int/lit8 v42, v42, -0x1

    invoke-virtual/range {v41 .. v42}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getBottom()I

    move-result v41

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->min(II)I

    move-result v25

    .line 1280
    .local v25, "listBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Landroid/widget/SemExpandableListView;->-get34(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v40

    move-object/from16 v0, v40

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/widget/SemExpandableListView$ViewInfo;

    .line 1281
    .local v24, "lastVisPrevViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    if-nez v24, :cond_5

    .line 1283
    invoke-static/range {v17 .. v17}, Landroid/widget/SemExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v18

    .line 1284
    .local v18, "lastGroupPosPackedPos":J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Landroid/widget/SemExpandableListView;->-get34(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v40

    move-object/from16 v0, v40

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/widget/SemExpandableListView$ViewInfo;

    .line 1285
    .local v23, "lastVisGroupPrevViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    if-nez v23, :cond_4

    .line 1286
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v25

    invoke-static {v0, v1}, Landroid/widget/SemExpandableListView;->-set4(Landroid/widget/SemExpandableListView;I)I

    .line 1294
    .end local v18    # "lastGroupPosPackedPos":J
    .end local v23    # "lastVisGroupPrevViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    :goto_0
    const/4 v4, 0x1

    .line 1296
    .local v4, "allExpanded":Z
    const/16 v33, 0x0

    .end local v4    # "allExpanded":Z
    .local v33, "position":I
    :goto_1
    move/from16 v0, v33

    if-ge v0, v10, :cond_c

    .line 1297
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1299
    .local v9, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v34

    .line 1300
    .local v34, "packedPos":J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Landroid/widget/SemExpandableListView;->-get34(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v40

    move-object/from16 v0, v40

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/widget/SemExpandableListView$ViewInfo;

    .line 1302
    .local v32, "oldViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    invoke-static/range {v34 .. v35}, Landroid/widget/SemExpandableListView;->getPackedPositionType(J)I

    move-result v40

    if-nez v40, :cond_7

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v33

    invoke-static {v0, v1}, Landroid/widget/SemExpandableListView;->-wrap5(Landroid/widget/SemExpandableListView;I)Z

    move-result v40

    if-eqz v40, :cond_6

    const/16 v16, 0x0

    .line 1304
    .local v16, "isGroup":Z
    :goto_2
    invoke-static/range {v34 .. v35}, Landroid/widget/SemExpandableListView;->getPackedPositionGroup(J)I

    move-result v14

    .line 1306
    .local v14, "groupPos":I
    if-eqz v32, :cond_a

    .line 1307
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Landroid/widget/SemExpandableListView;->-get34(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v40

    move-object/from16 v0, v40

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 1308
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v40

    move-object/from16 v0, v32

    iget v0, v0, Landroid/widget/SemExpandableListView$ViewInfo;->top:I

    move/from16 v41, v0

    sub-int v31, v40, v41

    .line 1309
    .local v31, "offset":I
    if-eqz v16, :cond_2

    .line 1310
    aput v31, v13, v14

    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Landroid/widget/SemExpandableListView;->-get22(Landroid/widget/SemExpandableListView;)[Landroid/graphics/RectF;

    move-result-object v40

    new-instance v41, Landroid/graphics/RectF;

    invoke-direct/range {v41 .. v41}, Landroid/graphics/RectF;-><init>()V

    aput-object v41, v40, v14

    .line 1313
    add-int/lit8 v40, v14, 0x1

    invoke-static/range {v40 .. v40}, Landroid/widget/SemExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v28

    .line 1314
    .local v28, "nextExpGroupPackedPosition":J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/SemExpandableListView;->getFlatListPosition(J)I

    move-result v27

    .line 1316
    .local v27, "nextExpGroupFlatPos":I
    move/from16 v0, v27

    if-lt v0, v10, :cond_8

    .line 1317
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getHeight()I

    move-result v30

    .line 1322
    .local v30, "nextGroupTop":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->val$expanded:[Z

    move-object/from16 v40, v0

    aget-boolean v40, v40, v14

    and-int v4, v4, v40

    .line 1323
    .local v4, "allExpanded":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->val$expanded:[Z

    move-object/from16 v40, v0

    aget-boolean v40, v40, v14

    if-nez v40, :cond_2

    .line 1324
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v41

    invoke-static {v0, v9, v1, v7}, Landroid/widget/SemExpandableListView;->-wrap11(Landroid/widget/SemExpandableListView;Landroid/view/View;ZI)V

    .line 1325
    new-instance v11, Landroid/graphics/RectF;

    move-object/from16 v0, v32

    iget v0, v0, Landroid/widget/SemExpandableListView$ViewInfo;->left:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/widget/SemExpandableListView$ViewInfo;->right:I

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v43, v0

    move/from16 v0, v40

    move/from16 v1, v41

    move/from16 v2, v42

    move/from16 v3, v43

    invoke-direct {v11, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1326
    .local v11, "endRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Landroid/widget/SemExpandableListView;->-get18(Landroid/widget/SemExpandableListView;)[Landroid/widget/SemExpandableListView$ExpandingRect;

    move-result-object v40

    new-instance v41, Landroid/widget/SemExpandableListView$ExpandingRect;

    move-object/from16 v0, v32

    iget v0, v0, Landroid/widget/SemExpandableListView$ViewInfo;->bottom:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Landroid/widget/SemExpandableListView;->-get22(Landroid/widget/SemExpandableListView;)[Landroid/graphics/RectF;

    move-result-object v43

    aget-object v43, v43, v14

    move-object/from16 v0, v41

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v11, v2}, Landroid/widget/SemExpandableListView$ExpandingRect;-><init>(ILandroid/graphics/RectF;Landroid/graphics/RectF;)V

    aput-object v41, v40, v14

    .line 1329
    .end local v4    # "allExpanded":Z
    .end local v11    # "endRect":Landroid/graphics/RectF;
    .end local v27    # "nextExpGroupFlatPos":I
    .end local v28    # "nextExpGroupPackedPosition":J
    .end local v30    # "nextGroupTop":I
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v40

    move-object/from16 v0, v32

    iget v0, v0, Landroid/widget/SemExpandableListView$ViewInfo;->top:I

    move/from16 v41, v0

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_9

    .line 1296
    .end local v31    # "offset":I
    :cond_3
    :goto_4
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_1

    .line 1288
    .end local v9    # "child":Landroid/view/View;
    .end local v14    # "groupPos":I
    .end local v16    # "isGroup":Z
    .end local v32    # "oldViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    .end local v33    # "position":I
    .end local v34    # "packedPos":J
    .restart local v18    # "lastGroupPosPackedPos":J
    .restart local v23    # "lastVisGroupPrevViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/SemExpandableListView$ViewInfo;->bottom:I

    move/from16 v41, v0

    sub-int v41, v25, v41

    invoke-static/range {v40 .. v41}, Landroid/widget/SemExpandableListView;->-set4(Landroid/widget/SemExpandableListView;I)I

    goto/16 :goto_0

    .line 1291
    .end local v18    # "lastGroupPosPackedPos":J
    .end local v23    # "lastVisGroupPrevViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/SemExpandableListView$ViewInfo;->bottom:I

    move/from16 v41, v0

    sub-int v41, v25, v41

    invoke-static/range {v40 .. v41}, Landroid/widget/SemExpandableListView;->-set4(Landroid/widget/SemExpandableListView;I)I

    goto/16 :goto_0

    .line 1303
    .restart local v9    # "child":Landroid/view/View;
    .restart local v32    # "oldViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    .restart local v33    # "position":I
    .restart local v34    # "packedPos":J
    :cond_6
    const/16 v16, 0x1

    .restart local v16    # "isGroup":Z
    goto/16 :goto_2

    .line 1302
    .end local v16    # "isGroup":Z
    :cond_7
    const/16 v16, 0x0

    .restart local v16    # "isGroup":Z
    goto/16 :goto_2

    .line 1319
    .restart local v14    # "groupPos":I
    .restart local v27    # "nextExpGroupFlatPos":I
    .restart local v28    # "nextExpGroupPackedPosition":J
    .restart local v31    # "offset":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getTop()I

    move-result v30

    .restart local v30    # "nextGroupTop":I
    goto/16 :goto_3

    .line 1331
    .end local v27    # "nextExpGroupFlatPos":I
    .end local v28    # "nextExpGroupPackedPosition":J
    .end local v30    # "nextGroupTop":I
    :cond_9
    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move/from16 v0, v40

    invoke-virtual {v9, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1332
    sget-object v40, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v41, 0x1

    move/from16 v0, v41

    new-array v0, v0, [F

    move-object/from16 v41, v0

    const/16 v42, 0x0

    const/16 v43, 0x0

    aput v42, v41, v43

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-static {v9, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v37

    .line 1333
    .local v37, "translateAnim":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1336
    .end local v31    # "offset":I
    .end local v37    # "translateAnim":Landroid/animation/ObjectAnimator;
    :cond_a
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v40

    if-eqz v40, :cond_3

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v40

    if-eqz v40, :cond_3

    .line 1339
    if-eqz v16, :cond_b

    new-instance v40, Ljava/lang/RuntimeException;

    const-string/jumbo v41, "How on Earth this is possible?"

    invoke-direct/range {v40 .. v41}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1345
    :cond_b
    new-instance v38, Landroid/widget/SemExpandableListView$ViewInfo;

    move-object/from16 v0, v38

    invoke-direct {v0, v9}, Landroid/widget/SemExpandableListView$ViewInfo;-><init>(Landroid/view/View;)V

    .line 1346
    .local v38, "viewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Landroid/widget/SemExpandableListView;->-get19(Landroid/widget/SemExpandableListView;)Ljava/util/ArrayList;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1347
    const/16 v40, 0x0

    move/from16 v0, v40

    invoke-virtual {v9, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1348
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    aget v41, v13, v14

    move/from16 v0, v41

    neg-int v0, v0

    move/from16 v41, v0

    move-object/from16 v0, v40

    move/from16 v1, v41

    move-object/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/widget/SemExpandableListView;->-wrap1(Landroid/widget/SemExpandableListView;ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1350
    .local v6, "animBounds":Landroid/animation/ObjectAnimator;
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1355
    .end local v6    # "animBounds":Landroid/animation/ObjectAnimator;
    .end local v9    # "child":Landroid/view/View;
    .end local v14    # "groupPos":I
    .end local v16    # "isGroup":Z
    .end local v32    # "oldViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    .end local v34    # "packedPos":J
    .end local v38    # "viewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Landroid/widget/SemExpandableListView;->-get34(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/util/LongSparseArray;->size()I

    move-result v39

    .line 1357
    .local v39, "viewSnapshotsCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_5
    move/from16 v0, v39

    if-ge v15, v0, :cond_d

    .line 1358
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Landroid/widget/SemExpandableListView;->-get34(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v15}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/widget/SemExpandableListView$ViewInfo;

    .line 1360
    .restart local v38    # "viewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Landroid/widget/SemExpandableListView;->-get33(Landroid/widget/SemExpandableListView;)I

    move-result v41

    move-object/from16 v0, v40

    move/from16 v1, v41

    move-object/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/widget/SemExpandableListView;->-wrap2(Landroid/widget/SemExpandableListView;ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1362
    .restart local v6    # "animBounds":Landroid/animation/ObjectAnimator;
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1363
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Landroid/widget/SemExpandableListView;->-get20(Landroid/widget/SemExpandableListView;)Ljava/util/ArrayList;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1357
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 1366
    .end local v6    # "animBounds":Landroid/animation/ObjectAnimator;
    .end local v38    # "viewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    :cond_d
    new-instance v26, Landroid/widget/SemExpandableListView$7$1;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->val$animationEndRunnable:Ljava/lang/Runnable;

    move-object/from16 v40, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Landroid/widget/SemExpandableListView$7$1;-><init>(Landroid/widget/SemExpandableListView$7;Ljava/lang/Runnable;)V

    .line 1380
    .local v26, "listener":Landroid/animation/Animator$AnimatorListener;
    if-eqz v4, :cond_e

    .line 1383
    const/16 v40, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1384
    const/16 v40, 0x0

    return v40

    .line 1386
    :cond_e
    const/16 v40, 0x2

    move/from16 v0, v40

    new-array v0, v0, [F

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0x0

    aput v41, v40, v42

    const/high16 v41, 0x3f800000    # 1.0f

    const/16 v42, 0x1

    aput v41, v40, v42

    invoke-static/range {v40 .. v40}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 1387
    .local v5, "anim":Landroid/animation/ValueAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/widget/SemExpandableListView;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1388
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1390
    new-instance v36, Landroid/animation/AnimatorSet;

    invoke-direct/range {v36 .. v36}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1391
    .local v36, "set":Landroid/animation/AnimatorSet;
    move-object/from16 v0, v36

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1392
    const-wide/16 v40, 0x2bc

    move-object/from16 v0, v36

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1393
    invoke-static {}, Landroid/widget/SemExpandableListView;->-get1()Landroid/view/animation/Interpolator;

    move-result-object v40

    move-object/from16 v0, v36

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1394
    move-object/from16 v0, v36

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1395
    invoke-virtual/range {v36 .. v36}, Landroid/animation/AnimatorSet;->start()V

    .line 1396
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Landroid/widget/SemExpandableListView;->-get34(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/util/LongSparseArray;->clear()V

    .line 1397
    const/16 v40, 0x0

    return v40
.end method
