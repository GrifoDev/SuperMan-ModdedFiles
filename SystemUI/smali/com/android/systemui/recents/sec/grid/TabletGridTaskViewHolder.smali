.class public Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;
.super Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;
.source "TabletGridTaskViewHolder.java"


# instance fields
.field mCardView:Landroid/support/v7/widget/CardView;

.field mOnDragging:Z

.field mTaskView:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;-><init>(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a00ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mCardView:Landroid/support/v7/widget/CardView;

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0518

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    iput-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mOnDragging:Z

    return-void
.end method


# virtual methods
.method public getTaskView()Lcom/android/systemui/recents/views/TaskView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    return-object v0
.end method

.method public isFrontMostTaskView()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->getAdapterPosition()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isTaskBound()Z
    .locals 2

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;->isTaskBound()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onConfigurationChanged(ILandroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->updateLayoutParams(Landroid/content/Context;)V

    return-void
.end method

.method public onDragging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mOnDragging:Z

    return v0
.end method

.method public onTaskBoundImpl(Landroid/content/Context;Lcom/android/systemui/recents/model/Task;ZILandroid/graphics/Rect;)V
    .locals 6

    const/4 v5, 0x1

    const-string/jumbo v0, "TabletRecents_TabletGridTaskViewHolder"

    const-string/jumbo v1, "onTaskBoundImpl() t=%s, pos=%d, isFrontMost=%b"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->getTitle()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->isFrontMostTaskView()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->resetViewAttrs(Landroid/view/View;)V

    iget-boolean v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mOnDragging:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->isFrontMostTaskView()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/recents/views/TaskView;->mFrontMostTaskView:Z

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/systemui/recents/views/TaskView;->onTaskBound(Lcom/android/systemui/recents/model/Task;ZILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->setNoUserInteractionState()V

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0, v5}, Lcom/android/systemui/recents/views/TaskView;->setTouchEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;

    move-result-object v0

    invoke-static {p1}, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->get(Landroid/content/Context;)Lcom/android/systemui/recents/sec/base/LayoutConfiguration;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mScreenPinningEnabled:Z

    iget-object v2, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    iget-boolean v2, v2, Lcom/android/systemui/recents/views/TaskView;->mFrontMostTaskView:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->buildSecondaryButtonsIfNeeded(ZZ)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->updateLayoutParams(Landroid/content/Context;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mCardView:Landroid/support/v7/widget/CardView;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setAlpha(F)V

    goto :goto_0
.end method

.method public prepareDragging(Landroid/view/ViewGroup;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v0, "TabletRecents_TabletGridTaskViewHolder"

    const-string/jumbo v1, "prepareDragging() t=%s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mOnDragging:Z

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mCardView:Landroid/support/v7/widget/CardView;

    iget-object v1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mCardView:Landroid/support/v7/widget/CardView;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setTranslationZ(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/recents/views/TaskView;->setTouchEnabled(Z)V

    return-void
.end method

.method public revertDragging()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string/jumbo v0, "TabletRecents_TabletGridTaskViewHolder"

    const-string/jumbo v1, "revertDragging() t=%s"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mCardView:Landroid/support/v7/widget/CardView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mCardView:Landroid/support/v7/widget/CardView;

    iget-object v1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-static {v0}, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper;->resetViewAttrs(Landroid/view/View;)V

    iput-boolean v5, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mOnDragging:Z

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/recents/views/TaskView;->setTouchEnabled(Z)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->setIsRecyclable(Z)V

    return-void
.end method

.method public setOnDragging(Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {p1}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->getTaskView()Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mOnDragging:Z

    iput-object v0, p1, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {p1}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->revertDragging()V

    return-void
.end method

.method public updateLayoutParams(Landroid/content/Context;)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mCardView:Landroid/support/v7/widget/CardView;

    invoke-virtual {v2}, Landroid/support/v7/widget/CardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p1}, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->get(Landroid/content/Context;)Lcom/android/systemui/recents/sec/base/LayoutConfiguration;

    move-result-object v0

    iget v2, v0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mTaskViewWidth:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v2, v0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mTaskViewHeight:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v2, v0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mTaskViewGap:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mCardView:Landroid/support/v7/widget/CardView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/CardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateOpacity()Z
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->forceOpacity:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->onDragging()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const v0, 0x3e99999a    # 0.3f

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mCardView:Landroid/support/v7/widget/CardView;

    invoke-virtual {v1}, Landroid/support/v7/widget/CardView;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mCardView:Landroid/support/v7/widget/CardView;

    invoke-virtual {v1}, Landroid/support/v7/widget/CardView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v1, 0x1

    return v1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public updateViewLockState()V
    .locals 5

    const-string/jumbo v0, "TabletRecents_TabletGridTaskViewHolder"

    const-string/jumbo v1, "updateViewLockStateImpl() - t=%s, frontMost=%b"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->getTitle()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    iget-boolean v3, v3, Lcom/android/systemui/recents/views/TaskView;->mFrontMostTaskView:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->setNoUserInteractionLockState()V

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    iget-boolean v0, v0, Lcom/android/systemui/recents/views/TaskView;->mFrontMostTaskView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->get(Landroid/content/Context;)Lcom/android/systemui/recents/sec/base/LayoutConfiguration;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mScreenPinningEnabled:Z

    iget-object v2, p0, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->mTaskView:Lcom/android/systemui/recents/views/TaskView;

    iget-boolean v2, v2, Lcom/android/systemui/recents/views/TaskView;->mFrontMostTaskView:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->buildSecondaryButtonsIfNeeded(ZZ)V

    :cond_0
    return-void
.end method
