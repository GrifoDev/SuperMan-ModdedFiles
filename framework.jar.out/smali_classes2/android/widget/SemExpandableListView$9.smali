.class Landroid/widget/SemExpandableListView$9;
.super Ljava/lang/Object;
.source "SemExpandableListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SemExpandableListView;->startCollapseAllAnimation([ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SemExpandableListView;

.field final synthetic val$animationEndRunnable:Ljava/lang/Runnable;

.field final synthetic val$animations:Ljava/util/ArrayList;

.field final synthetic val$expanded:[Z

.field final synthetic val$lastGroupIdBefore:I

.field final synthetic val$lastPositionBottomBefore:I


# direct methods
.method constructor <init>(Landroid/widget/SemExpandableListView;Ljava/lang/Runnable;II[ZLjava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    iput-object p2, p0, Landroid/widget/SemExpandableListView$9;->val$animationEndRunnable:Ljava/lang/Runnable;

    iput p3, p0, Landroid/widget/SemExpandableListView$9;->val$lastGroupIdBefore:I

    iput p4, p0, Landroid/widget/SemExpandableListView$9;->val$lastPositionBottomBefore:I

    iput-object p5, p0, Landroid/widget/SemExpandableListView$9;->val$expanded:[Z

    iput-object p6, p0, Landroid/widget/SemExpandableListView$9;->val$animations:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/SemExpandableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/SemExpandableListView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$9;->val$animationEndRunnable:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/lang/Runnable;->run()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/widget/SemExpandableListView;->-wrap9(Landroid/widget/SemExpandableListView;)V

    const/16 v21, 0x1

    return v21

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemExpandableListView$9;->val$lastGroupIdBefore:I

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Landroid/widget/SemExpandableListView;->-wrap6(Landroid/widget/SemExpandableListView;I)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemExpandableListView$9;->val$lastPositionBottomBefore:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getBottom()I

    move-result v23

    sub-int v22, v22, v23

    invoke-static/range {v21 .. v22}, Landroid/widget/SemExpandableListView;->-set4(Landroid/widget/SemExpandableListView;I)I

    const/16 v6, 0x2bc

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/SemExpandableListView;->getFirstVisiblePosition()I

    move-result v9

    const/4 v4, 0x1

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v8, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v21, v0

    add-int v22, v11, v9

    invoke-static/range {v21 .. v22}, Landroid/widget/SemExpandableListView;->-wrap5(Landroid/widget/SemExpandableListView;I)Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/widget/SemExpandableListView;->-get39(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/SemExpandableListView$ViewInfo;

    if-eqz v15, :cond_3

    iget v0, v15, Landroid/widget/SemExpandableListView$ViewInfo;->top:I

    move/from16 v21, v0

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v22

    sub-int v14, v21, v22

    :goto_1
    invoke-static/range {v16 .. v17}, Landroid/widget/SemExpandableListView;->getPackedPositionGroup(J)I

    move-result v10

    if-nez v12, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemExpandableListView$9;->val$lastGroupIdBefore:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-gt v10, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/widget/SemExpandableListView;->-get15(Landroid/widget/SemExpandableListView;)[Landroid/widget/SemExpandableListView$CollapsingRect;

    move-result-object v21

    aget-object v21, v21, v10

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/SemExpandableListView$CollapsingRect;->setFinishY(I)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/widget/SemExpandableListView;->-get39(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->remove(J)V

    if-nez v12, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$9;->val$expanded:[Z

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v10, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$9;->val$expanded:[Z

    move-object/from16 v21, v0

    aget-boolean v21, v21, v10

    xor-int/lit8 v21, v21, 0x1

    and-int v4, v4, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$9;->val$expanded:[Z

    move-object/from16 v21, v0

    aget-boolean v21, v21, v10

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v0, v7, v1, v6}, Landroid/widget/SemExpandableListView;->-wrap11(Landroid/widget/SemExpandableListView;Landroid/view/View;ZI)V

    :cond_2
    if-nez v14, :cond_4

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/widget/SemExpandableListView;->-get38(Landroid/widget/SemExpandableListView;)I

    move-result v14

    goto :goto_1

    :cond_4
    int-to-float v0, v14

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/view/View;->setTranslationY(F)V

    sget-object v21, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    aput v23, v22, v24

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v7, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$9;->val$animations:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance v13, Landroid/widget/SemExpandableListView$9$1;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$9;->val$animationEndRunnable:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v13, v0, v1}, Landroid/widget/SemExpandableListView$9$1;-><init>(Landroid/widget/SemExpandableListView$9;Ljava/lang/Runnable;)V

    if-eqz v4, :cond_6

    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-interface {v13, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    const/16 v21, 0x0

    return v21

    :cond_6
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    aput v22, v21, v23

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x1

    aput v22, v21, v23

    invoke-static/range {v21 .. v21}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/widget/SemExpandableListView;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$9;->val$animations:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v19, Landroid/animation/AnimatorSet;

    invoke-direct/range {v19 .. v19}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$9;->val$animations:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v22, 0x2bc

    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-static {}, Landroid/widget/SemExpandableListView;->-get2()Landroid/view/animation/Interpolator;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual/range {v19 .. v19}, Landroid/animation/AnimatorSet;->start()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$9;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/widget/SemExpandableListView;->-get39(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/util/LongSparseArray;->clear()V

    const/16 v21, 0x0

    return v21
.end method
