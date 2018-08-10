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

    iput-object p1, p0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    iput-object p2, p0, Landroid/widget/SemExpandableListView$7;->val$animationEndRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Landroid/widget/SemExpandableListView$7;->val$expanded:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 44

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/widget/SemExpandableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/widget/SemExpandableListView;->getChildCount()I

    move-result v10

    if-nez v10, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Landroid/widget/SemExpandableListView;->-wrap10(Landroid/widget/SemExpandableListView;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->val$animationEndRunnable:Ljava/lang/Runnable;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Ljava/lang/Runnable;->run()V

    const/16 v40, 0x1

    return v40

    :cond_0
    const/16 v7, 0x2bc

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/widget/SemExpandableListView;->getFirstVisiblePosition()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Landroid/widget/SemExpandableListView;->-wrap8(Landroid/widget/SemExpandableListView;)I

    move-result v22

    move/from16 v0, v22

    if-ge v0, v12, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->val$animationEndRunnable:Ljava/lang/Runnable;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Ljava/lang/Runnable;->run()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Landroid/widget/SemExpandableListView;->-wrap10(Landroid/widget/SemExpandableListView;)V

    const/16 v40, 0x1

    return v40

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Landroid/widget/SemExpandableListView;->getPackedPositionGroup(J)I

    move-result v17

    add-int/lit8 v40, v17, 0x1

    move/from16 v0, v40

    new-array v13, v0, [I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    add-int/lit8 v41, v17, 0x1

    move/from16 v0, v41

    new-array v0, v0, [Landroid/graphics/RectF;

    move-object/from16 v41, v0

    invoke-static/range {v40 .. v41}, Landroid/widget/SemExpandableListView;->-set3(Landroid/widget/SemExpandableListView;[Landroid/graphics/RectF;)[Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    add-int/lit8 v41, v17, 0x1

    move/from16 v0, v41

    new-array v0, v0, [Landroid/widget/SemExpandableListView$ExpandingRect;

    move-object/from16 v41, v0

    invoke-static/range {v40 .. v41}, Landroid/widget/SemExpandableListView;->-set2(Landroid/widget/SemExpandableListView;[Landroid/widget/SemExpandableListView$ExpandingRect;)[Landroid/widget/SemExpandableListView$ExpandingRect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/widget/SemExpandableListView;->getHeight()I

    move-result v40

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/SemExpandableListView;->getChildCount()I

    move-result v42

    add-int/lit8 v42, v42, -0x1

    invoke-virtual/range {v41 .. v42}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getBottom()I

    move-result v41

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->min(II)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Landroid/widget/SemExpandableListView;->-get39(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v40

    move-object/from16 v0, v40

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/widget/SemExpandableListView$ViewInfo;

    if-nez v24, :cond_5

    invoke-static/range {v17 .. v17}, Landroid/widget/SemExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Landroid/widget/SemExpandableListView;->-get39(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v40

    move-object/from16 v0, v40

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/widget/SemExpandableListView$ViewInfo;

    if-nez v23, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v25

    invoke-static {v0, v1}, Landroid/widget/SemExpandableListView;->-set4(Landroid/widget/SemExpandableListView;I)I

    :goto_0
    const/4 v4, 0x1

    const/16 v33, 0x0

    :goto_1
    move/from16 v0, v33

    if-ge v0, v10, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Landroid/widget/SemExpandableListView;->-get39(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v40

    move-object/from16 v0, v40

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/widget/SemExpandableListView$ViewInfo;

    invoke-static/range {v34 .. v35}, Landroid/widget/SemExpandableListView;->getPackedPositionType(J)I

    move-result v40

    if-nez v40, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v33

    invoke-static {v0, v1}, Landroid/widget/SemExpandableListView;->-wrap5(Landroid/widget/SemExpandableListView;I)Z

    move-result v40

    xor-int/lit8 v16, v40, 0x1

    :goto_2
    invoke-static/range {v34 .. v35}, Landroid/widget/SemExpandableListView;->getPackedPositionGroup(J)I

    move-result v14

    if-eqz v32, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Landroid/widget/SemExpandableListView;->-get39(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v40

    move-object/from16 v0, v40

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->remove(J)V

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v40

    move-object/from16 v0, v32

    iget v0, v0, Landroid/widget/SemExpandableListView$ViewInfo;->top:I

    move/from16 v41, v0

    sub-int v31, v40, v41

    if-eqz v16, :cond_2

    aput v31, v13, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Landroid/widget/SemExpandableListView;->-get24(Landroid/widget/SemExpandableListView;)[Landroid/graphics/RectF;

    move-result-object v40

    new-instance v41, Landroid/graphics/RectF;

    invoke-direct/range {v41 .. v41}, Landroid/graphics/RectF;-><init>()V

    aput-object v41, v40, v14

    add-int/lit8 v40, v14, 0x1

    invoke-static/range {v40 .. v40}, Landroid/widget/SemExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/SemExpandableListView;->getFlatListPosition(J)I

    move-result v27

    move/from16 v0, v27

    if-lt v0, v10, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/widget/SemExpandableListView;->getHeight()I

    move-result v30

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->val$expanded:[Z

    move-object/from16 v40, v0

    aget-boolean v40, v40, v14

    and-int v4, v4, v40

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->val$expanded:[Z

    move-object/from16 v40, v0

    aget-boolean v40, v40, v14

    if-nez v40, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    move-object/from16 v0, v40

    move/from16 v1, v41

    invoke-static {v0, v9, v1, v7}, Landroid/widget/SemExpandableListView;->-wrap11(Landroid/widget/SemExpandableListView;Landroid/view/View;ZI)V

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

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Landroid/widget/SemExpandableListView;->-get20(Landroid/widget/SemExpandableListView;)[Landroid/widget/SemExpandableListView$ExpandingRect;

    move-result-object v40

    new-instance v41, Landroid/widget/SemExpandableListView$ExpandingRect;

    move-object/from16 v0, v32

    iget v0, v0, Landroid/widget/SemExpandableListView$ViewInfo;->bottom:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v43, v0

    invoke-static/range {v43 .. v43}, Landroid/widget/SemExpandableListView;->-get24(Landroid/widget/SemExpandableListView;)[Landroid/graphics/RectF;

    move-result-object v43

    aget-object v43, v43, v14

    move-object/from16 v0, v41

    move/from16 v1, v42

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v11, v2}, Landroid/widget/SemExpandableListView$ExpandingRect;-><init>(ILandroid/graphics/RectF;Landroid/graphics/RectF;)V

    aput-object v41, v40, v14

    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v40

    move-object/from16 v0, v32

    iget v0, v0, Landroid/widget/SemExpandableListView$ViewInfo;->top:I

    move/from16 v41, v0

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_8

    :cond_3
    :goto_4
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_1

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

    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getTop()I

    move-result v30

    goto/16 :goto_3

    :cond_8
    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move/from16 v0, v40

    invoke-virtual {v9, v0}, Landroid/view/View;->setTranslationY(F)V

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

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v40

    if-eqz v40, :cond_3

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v40

    if-eqz v40, :cond_3

    if-eqz v16, :cond_a

    new-instance v40, Ljava/lang/RuntimeException;

    const-string/jumbo v41, "How on Earth this is possible?"

    invoke-direct/range {v40 .. v41}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v40

    :cond_a
    new-instance v38, Landroid/widget/SemExpandableListView$ViewInfo;

    move-object/from16 v0, v38

    invoke-direct {v0, v9}, Landroid/widget/SemExpandableListView$ViewInfo;-><init>(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Landroid/widget/SemExpandableListView;->-get21(Landroid/widget/SemExpandableListView;)Ljava/util/ArrayList;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v40, 0x0

    move/from16 v0, v40

    invoke-virtual {v9, v0}, Landroid/view/View;->setAlpha(F)V

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

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Landroid/widget/SemExpandableListView;->-get39(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/util/LongSparseArray;->size()I

    move-result v39

    const/4 v15, 0x0

    :goto_5
    move/from16 v0, v39

    if-ge v15, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Landroid/widget/SemExpandableListView;->-get39(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v15}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/widget/SemExpandableListView$ViewInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Landroid/widget/SemExpandableListView;->-get38(Landroid/widget/SemExpandableListView;)I

    move-result v41

    move-object/from16 v0, v40

    move/from16 v1, v41

    move-object/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/widget/SemExpandableListView;->-wrap2(Landroid/widget/SemExpandableListView;ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Landroid/widget/SemExpandableListView;->-get22(Landroid/widget/SemExpandableListView;)Ljava/util/ArrayList;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_c
    new-instance v26, Landroid/widget/SemExpandableListView$7$1;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->val$animationEndRunnable:Ljava/lang/Runnable;

    move-object/from16 v40, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Landroid/widget/SemExpandableListView$7$1;-><init>(Landroid/widget/SemExpandableListView$7;Ljava/lang/Runnable;)V

    if-eqz v4, :cond_d

    const/16 v40, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    const/16 v40, 0x0

    return v40

    :cond_d
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

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/widget/SemExpandableListView;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v36, Landroid/animation/AnimatorSet;

    invoke-direct/range {v36 .. v36}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v40, 0x2bc

    move-object/from16 v0, v36

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-static {}, Landroid/widget/SemExpandableListView;->-get19()Landroid/view/animation/ElasticCustom;

    move-result-object v40

    move-object/from16 v0, v36

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual/range {v36 .. v36}, Landroid/animation/AnimatorSet;->start()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Landroid/widget/SemExpandableListView;->-get39(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/util/LongSparseArray;->clear()V

    const/16 v40, 0x0

    return v40
.end method
