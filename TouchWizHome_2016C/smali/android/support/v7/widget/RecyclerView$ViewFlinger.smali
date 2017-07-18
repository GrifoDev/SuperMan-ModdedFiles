.class Landroid/support/v7/widget/RecyclerView$ViewFlinger;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewFlinger"
.end annotation


# instance fields
.field private mEatRunOnAnimationRequest:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastFlingX:I

.field private mLastFlingY:I

.field private mReSchedulePostAnimationCallback:Z

.field private mScroller:Landroid/support/v4/widget/ScrollerCompat;

.field final synthetic this$0:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$2000()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$2000()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    return-void
.end method

.method private computeScrollDuration(IIII)I
    .locals 14

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v1, v2, :cond_0

    const/4 v9, 0x1

    :goto_0
    mul-int v11, p3, p3

    mul-int v12, p4, p4

    add-int/2addr v11, v12

    int-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-int v10, v12

    mul-int v11, p1, p1

    mul-int v12, p2, p2

    add-int/2addr v11, v12

    int-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-int v4, v12

    if-eqz v9, :cond_1

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v3

    :goto_1
    div-int/lit8 v8, v3, 0x2

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    int-to-float v13, v4

    mul-float/2addr v12, v13

    int-to-float v13, v3

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v6

    int-to-float v11, v8

    int-to-float v12, v8

    invoke-direct {p0, v6}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->distanceInfluenceForSnapDuration(F)F

    move-result v13

    mul-float/2addr v12, v13

    add-float v5, v11, v12

    if-lez v10, :cond_2

    const/high16 v11, 0x447a0000    # 1000.0f

    int-to-float v12, v10

    div-float v12, v5, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    mul-int/lit8 v7, v11, 0x4

    :goto_2
    const/16 v11, 0x7d0

    invoke-static {v7, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    return v11

    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    :cond_1
    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v3

    goto :goto_1

    :cond_2
    if-eqz v9, :cond_3

    :goto_3
    int-to-float v0, v1

    int-to-float v11, v3

    div-float v11, v0, v11

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v11, v12

    const/high16 v12, 0x43960000    # 300.0f

    mul-float/2addr v11, v12

    float-to-int v7, v11

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method private disableRunOnAnimationRequests()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private enableRunOnAnimationRequests()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    :cond_0
    return-void
.end method


# virtual methods
.method public fling(II)V
    .locals 9

    const v6, 0x7fffffff

    const/high16 v5, -0x80000000

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/support/v7/widget/RecyclerView;->access$3000(Landroid/support/v7/widget/RecyclerView;I)V

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    move v2, v1

    move v3, p1

    move v4, p2

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIII)V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    return-void
.end method

.method postOnAnimation()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public run()V
    .locals 31

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->disableRunOnAnimationRequests()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/support/v7/widget/RecyclerView;->access$2100(Landroid/support/v7/widget/RecyclerView;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/support/v7/widget/RecyclerView;->access$1100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v28

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v28

    if-eqz v28, :cond_16

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v26

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    move/from16 v28, v0

    sub-int v6, v26, v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    move/from16 v28, v0

    sub-int v7, v27, v28

    const/4 v12, 0x0

    const/16 v25, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/support/v7/widget/RecyclerView;->access$2200(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v28

    if-eqz v28, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-static/range {v28 .. v29}, Landroid/support/v7/widget/RecyclerView;->access$2302(Landroid/support/v7/widget/RecyclerView;Z)Z

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/support/v7/widget/RecyclerView;->access$1100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v6, v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v12

    sub-int v15, v6, v12

    :cond_0
    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/support/v7/widget/RecyclerView;->access$1100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v7, v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v25

    sub-int v16, v7, v25

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/support/v7/widget/RecyclerView;->access$2400(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v28

    if-eqz v28, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v5

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v5, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v11

    if-eqz v11, :cond_3

    iget-object v0, v11, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v28, v0

    if-eqz v28, :cond_3

    iget-object v0, v11, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLeft()I

    move-result v14

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    move-result v20

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v28

    move/from16 v0, v28

    if-ne v14, v0, :cond_2

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v28

    move/from16 v0, v20

    move/from16 v1, v28

    if-eq v0, v1, :cond_3

    :cond_2
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getWidth()I

    move-result v28

    add-int v28, v28, v14

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v29

    add-int v29, v29, v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_4
    if-eqz v19, :cond_5

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v28

    if-nez v28, :cond_5

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v28

    if-eqz v28, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v4

    if-nez v4, :cond_18

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/support/v7/widget/RecyclerView;->access$2302(Landroid/support/v7/widget/RecyclerView;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/support/v7/widget/RecyclerView;->access$2600(Landroid/support/v7/widget/RecyclerView;)Ljava/util/ArrayList;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-static {v0, v6, v7}, Landroid/support/v7/widget/RecyclerView;->access$2700(Landroid/support/v7/widget/RecyclerView;II)V

    :cond_8
    if-nez v15, :cond_9

    if-eqz v16, :cond_f

    :cond_9
    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/widget/ScrollerCompat;->getCurrVelocity()F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v26

    if-eq v15, v0, :cond_a

    if-gez v15, :cond_1a

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v22, v0

    :cond_a
    :goto_2
    const/16 v23, 0x0

    move/from16 v0, v16

    move/from16 v1, v27

    if-eq v0, v1, :cond_b

    if-gez v16, :cond_1c

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v23, v0

    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->absorbGlows(II)V

    :cond_c
    if-nez v22, :cond_d

    move/from16 v0, v26

    if-eq v15, v0, :cond_d

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/widget/ScrollerCompat;->getFinalX()I

    move-result v28

    if-nez v28, :cond_f

    :cond_d
    if-nez v23, :cond_e

    move/from16 v0, v16

    move/from16 v1, v27

    if-eq v0, v1, :cond_e

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/widget/ScrollerCompat;->getFinalY()I

    move-result v28

    if-nez v28, :cond_f

    :cond_e
    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    :cond_f
    if-nez v12, :cond_10

    if-eqz v25, :cond_11

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-static {v0, v12, v1}, Landroid/support/v7/widget/RecyclerView;->access$2800(Landroid/support/v7/widget/RecyclerView;II)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v28

    if-nez v28, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    :cond_12
    if-eqz v7, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/support/v7/widget/RecyclerView;->access$1100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v28

    if-eqz v28, :cond_1e

    move/from16 v0, v25

    if-ne v0, v7, :cond_1e

    const/4 v10, 0x1

    :goto_4
    if-eqz v6, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/support/v7/widget/RecyclerView;->access$1100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v28

    if-eqz v28, :cond_1f

    if-ne v12, v6, :cond_1f

    const/4 v9, 0x1

    :goto_5
    if-nez v6, :cond_13

    if-eqz v7, :cond_14

    :cond_13
    if-nez v9, :cond_14

    if-eqz v10, :cond_20

    :cond_14
    const/4 v8, 0x1

    :goto_6
    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/widget/ScrollerCompat;->isFinished()Z

    move-result v28

    if-nez v28, :cond_15

    if-nez v8, :cond_21

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/support/v7/widget/RecyclerView;->access$3000(Landroid/support/v7/widget/RecyclerView;I)V

    :cond_16
    :goto_7
    if-eqz v19, :cond_17

    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v28

    if-eqz v28, :cond_17

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->access$2500(Landroid/support/v7/widget/RecyclerView$SmoothScroller;II)V

    :cond_17
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->enableRunOnAnimationRequests()V

    return-void

    :cond_18
    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v28

    move/from16 v0, v28

    if-lt v0, v4, :cond_19

    add-int/lit8 v28, v4, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    sub-int v28, v6, v15

    sub-int v29, v7, v16

    move-object/from16 v0, v19

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->access$2500(Landroid/support/v7/widget/RecyclerView$SmoothScroller;II)V

    goto/16 :goto_1

    :cond_19
    sub-int v28, v6, v15

    sub-int v29, v7, v16

    move-object/from16 v0, v19

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->access$2500(Landroid/support/v7/widget/RecyclerView$SmoothScroller;II)V

    goto/16 :goto_1

    :cond_1a
    if-lez v15, :cond_1b

    move/from16 v22, v21

    goto/16 :goto_2

    :cond_1b
    const/16 v22, 0x0

    goto/16 :goto_2

    :cond_1c
    if-lez v16, :cond_1d

    move/from16 v23, v21

    goto/16 :goto_3

    :cond_1d
    const/16 v23, 0x0

    goto/16 :goto_3

    :cond_1e
    const/4 v10, 0x0

    goto/16 :goto_4

    :cond_1f
    const/4 v9, 0x0

    goto :goto_5

    :cond_20
    const/4 v8, 0x0

    goto :goto_6

    :cond_21
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    goto :goto_7
.end method

.method public smoothScrollBy(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIII)V

    return-void
.end method

.method public smoothScrollBy(III)V
    .locals 1

    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$2000()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public smoothScrollBy(IIII)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(III)V

    return-void
.end method

.method public smoothScrollBy(IIILandroid/view/animation/Interpolator;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_0

    iput-object p4, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/support/v7/widget/RecyclerView;->access$3000(Landroid/support/v7/widget/RecyclerView;I)V

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    move v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/ScrollerCompat;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    return-void
.end method
