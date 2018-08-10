.class public Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;
.super Ljava/lang/Object;
.source "TabletGridViewTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OverScrollHelper"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field mRestoreAnim:Landroid/animation/ObjectAnimator;

.field mScrollListener:Lcom/android/systemui/recents/sec/grid/TabletGridViewScrollListener;

.field mView:Lcom/android/systemui/recents/sec/grid/TabletGridView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/sec/grid/TabletGridView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;->mView:Lcom/android/systemui/recents/sec/grid/TabletGridView;

    iget-object v0, p1, Lcom/android/systemui/recents/sec/grid/TabletGridView;->mScrollListener:Lcom/android/systemui/recents/sec/grid/TabletGridViewScrollListener;

    iput-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;->mScrollListener:Lcom/android/systemui/recents/sec/grid/TabletGridViewScrollListener;

    return-void
.end method


# virtual methods
.method applyOverScrollEffect(I)V
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;->mRestoreAnim:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;->mRestoreAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;->mRestoreAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v3, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;->mRestoreAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    iput-object v4, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;->mRestoreAnim:Landroid/animation/ObjectAnimator;

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->get(Landroid/content/Context;)Lcom/android/systemui/recents/sec/base/LayoutConfiguration;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;->mView:Lcom/android/systemui/recents/sec/grid/TabletGridView;

    iget-object v4, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;->mView:Lcom/android/systemui/recents/sec/grid/TabletGridView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->setPivotX(F)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;->isBottomScroll()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;->mView:Lcom/android/systemui/recents/sec/grid/TabletGridView;

    iget v4, v0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mButtonContainerHeight:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->setPivotY(F)V

    invoke-static {p1, v6}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    iget v3, v0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mMeasuredHeight:I

    div-int/lit8 v2, v3, 0x2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v3, v6, v2}, Lcom/android/systemui/recents/misc/Utilities;->clamp(III)I

    move-result p1

    int-to-float v3, p1

    int-to-float v4, v2

    div-float/2addr v3, v4

    const v4, 0x3d4ccccd    # 0.05f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v1, v4, v3

    iget-object v3, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;->mView:Lcom/android/systemui/recents/sec/grid/TabletGridView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;->mView:Lcom/android/systemui/recents/sec/grid/TabletGridView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->setScaleX(F)V

    iget-object v3, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;->mView:Lcom/android/systemui/recents/sec/grid/TabletGridView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->setScaleY(F)V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;->mView:Lcom/android/systemui/recents/sec/grid/TabletGridView;

    iget-object v4, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;->mView:Lcom/android/systemui/recents/sec/grid/TabletGridView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->setPivotY(F)V

    invoke-static {p1, v6}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0
.end method

.method public checkOverScrollCondition(I)Z
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;->isBottomScroll()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    if-lez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;->isTopScroll()Z

    move-result v0

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isBottomScroll()Z
    .locals 5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;->mView:Lcom/android/systemui/recents/sec/grid/TabletGridView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->computeVerticalScrollRange()I

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;->mView:Lcom/android/systemui/recents/sec/grid/TabletGridView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->computeVerticalScrollExtent()I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;->mView:Lcom/android/systemui/recents/sec/grid/TabletGridView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->computeVerticalScrollOffset()I

    move-result v1

    if-eq v0, v2, :cond_0

    add-int v4, v1, v0

    if-lt v4, v2, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method isNeedRestoreAnim()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;->mView:Lcom/android/systemui/recents/sec/grid/TabletGridView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getScaleX()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTopScroll()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;->mView:Lcom/android/systemui/recents/sec/grid/TabletGridView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->computeVerticalScrollOffset()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method startRestoreAnimation()V
    .locals 10

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;->mView:Lcom/android/systemui/recents/sec/grid/TabletGridView;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v8, [F

    iget-object v5, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;->mView:Lcom/android/systemui/recents/sec/grid/TabletGridView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getAlpha()F

    move-result v5

    aput v5, v4, v6

    aput v9, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v6

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v8, [F

    iget-object v5, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;->mView:Lcom/android/systemui/recents/sec/grid/TabletGridView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getScaleX()F

    move-result v5

    aput v5, v4, v6

    aput v9, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v7

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v8, [F

    iget-object v5, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;->mView:Lcom/android/systemui/recents/sec/grid/TabletGridView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getScaleY()F

    move-result v5

    aput v5, v4, v6

    aput v9, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;->mRestoreAnim:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewTouchHandler$OverScrollHelper;->mRestoreAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
