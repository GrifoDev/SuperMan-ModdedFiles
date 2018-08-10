.class Landroid/widget/SemExpandableListView$6;
.super Ljava/lang/Object;
.source "SemExpandableListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SemExpandableListView;->startExpandAnimation(ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SemExpandableListView;

.field final synthetic val$animationEndRunnable:Ljava/lang/Runnable;

.field final synthetic val$groupPos:I


# direct methods
.method constructor <init>(Landroid/widget/SemExpandableListView;Ljava/lang/Runnable;I)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    iput-object p2, p0, Landroid/widget/SemExpandableListView$6;->val$animationEndRunnable:Ljava/lang/Runnable;

    iput p3, p0, Landroid/widget/SemExpandableListView$6;->val$groupPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 35

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/SemExpandableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/SemExpandableListView;->getChildCount()I

    move-result v10

    if-nez v10, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/widget/SemExpandableListView;->-wrap10(Landroid/widget/SemExpandableListView;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->val$animationEndRunnable:Ljava/lang/Runnable;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/lang/Runnable;->run()V

    const/16 v31, 0x1

    return v31

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemExpandableListView$6;->val$groupPos:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/widget/SemExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemExpandableListView$6;->val$groupPos:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    invoke-static/range {v31 .. v31}, Landroid/widget/SemExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v12, v13}, Landroid/widget/SemExpandableListView;->getFlatListPosition(J)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/SemExpandableListView;->getFlatListPosition(J)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/SemExpandableListView;->getFirstVisiblePosition()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    sub-int v32, v11, v15

    invoke-virtual/range {v31 .. v32}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    if-nez v14, :cond_1

    invoke-static {}, Landroid/widget/SemExpandableListView;->-get5()Ljava/lang/String;

    move-result-object v31

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "startExpandAnimation() groupPos="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemExpandableListView$6;->val$groupPos:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, ", firstPos="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, ", expGroupFlatPos="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/widget/SemExpandableListView;->-wrap10(Landroid/widget/SemExpandableListView;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->val$animationEndRunnable:Ljava/lang/Runnable;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/lang/Runnable;->run()V

    const/16 v31, 0x1

    return v31

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    sub-int v32, v18, v15

    invoke-virtual/range {v31 .. v32}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    if-nez v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/SemExpandableListView;->getHeight()I

    move-result v31

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/widget/SemExpandableListView;->getChildCount()I

    move-result v33

    add-int/lit8 v33, v33, -0x1

    invoke-virtual/range {v32 .. v33}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getBottom()I

    move-result v32

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(II)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v32

    sub-int v32, v17, v32

    invoke-static/range {v31 .. v32}, Landroid/widget/SemExpandableListView;->-set4(Landroid/widget/SemExpandableListView;I)I

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/widget/SemExpandableListView;->-get23(Landroid/widget/SemExpandableListView;)Landroid/graphics/RectF;

    move-result-object v31

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/widget/SemExpandableListView;->-get23(Landroid/widget/SemExpandableListView;)Landroid/graphics/RectF;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/SemExpandableListView;->getWidth()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/widget/SemExpandableListView;->-get23(Landroid/widget/SemExpandableListView;)Landroid/graphics/RectF;

    move-result-object v31

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/widget/SemExpandableListView;->-get23(Landroid/widget/SemExpandableListView;)Landroid/graphics/RectF;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Landroid/widget/SemExpandableListView;->-get23(Landroid/widget/SemExpandableListView;)Landroid/graphics/RectF;

    move-result-object v32

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/SemExpandableListView;->getExpandCollapseDuration()I

    move-result v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/16 v16, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v0, v10, :cond_7

    add-int v26, v16, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/widget/SemExpandableListView;->-get39(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v31

    move-object/from16 v0, v31

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/widget/SemExpandableListView$ViewInfo;

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/widget/SemExpandableListView;->-get39(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v31

    move-object/from16 v0, v31

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->remove(J)V

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v31

    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/SemExpandableListView$ViewInfo;->top:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_4

    :cond_2
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v32

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v33

    sub-int v32, v32, v33

    invoke-static/range {v31 .. v32}, Landroid/widget/SemExpandableListView;->-set4(Landroid/widget/SemExpandableListView;I)I

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/widget/SemExpandableListView;->-get38(Landroid/widget/SemExpandableListView;)I

    move-result v31

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/view/View;->setTranslationY(F)V

    sget-object v31, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [F

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    aput v33, v32, v34

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v9, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v31

    if-eqz v31, :cond_2

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v31

    if-eqz v31, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-static {v0, v1}, Landroid/widget/SemExpandableListView;->-wrap7(Landroid/widget/SemExpandableListView;I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/widget/SemExpandableListView;->-get16(Landroid/widget/SemExpandableListView;)Landroid/widget/SemExpandableListConnector;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/widget/SemExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/SemExpandableListConnector$PositionMetadata;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v31

    if-eqz v31, :cond_6

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemExpandableListView$6;->val$groupPos:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_6

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/widget/SemExpandableListPosition;->childPos:I

    move/from16 v31, v0

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_6

    new-instance v29, Landroid/widget/SemExpandableListView$ViewInfo;

    move-object/from16 v0, v29

    invoke-direct {v0, v9}, Landroid/widget/SemExpandableListView$ViewInfo;-><init>(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/widget/SemExpandableListView;->-get21(Landroid/widget/SemExpandableListView;)Ljava/util/ArrayList;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_6
    invoke-virtual/range {v23 .. v23}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->recycle()V

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-static {v0, v14, v1, v7}, Landroid/widget/SemExpandableListView;->-wrap11(Landroid/widget/SemExpandableListView;Landroid/view/View;ZI)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/widget/SemExpandableListView;->-get39(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/util/LongSparseArray;->size()I

    move-result v30

    const/16 v16, 0x0

    :goto_3
    move/from16 v0, v16

    move/from16 v1, v30

    if-ge v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/widget/SemExpandableListView;->-get39(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/widget/SemExpandableListView$ViewInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Landroid/widget/SemExpandableListView;->-get38(Landroid/widget/SemExpandableListView;)I

    move-result v32

    move-object/from16 v0, v31

    move/from16 v1, v32

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/widget/SemExpandableListView;->-wrap2(Landroid/widget/SemExpandableListView;ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/widget/SemExpandableListView;->-get22(Landroid/widget/SemExpandableListView;)Ljava/util/ArrayList;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    :cond_8
    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    aput v32, v31, v33

    const/high16 v32, 0x3f800000    # 1.0f

    const/16 v33, 0x1

    aput v32, v31, v33

    invoke-static/range {v31 .. v31}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/widget/SemExpandableListView;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v27, Landroid/animation/AnimatorSet;

    invoke-direct/range {v27 .. v27}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    int-to-long v0, v7

    move-wide/from16 v32, v0

    move-object/from16 v0, v27

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-static {}, Landroid/widget/SemExpandableListView;->-get19()Landroid/view/animation/ElasticCustom;

    move-result-object v31

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v31, Landroid/widget/SemExpandableListView$6$1;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->val$animationEndRunnable:Ljava/lang/Runnable;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/widget/SemExpandableListView$6$1;-><init>(Landroid/widget/SemExpandableListView$6;Ljava/lang/Runnable;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual/range {v27 .. v27}, Landroid/animation/AnimatorSet;->start()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$6;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/widget/SemExpandableListView;->-get39(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/util/LongSparseArray;->clear()V

    const/16 v31, 0x0

    return v31
.end method
