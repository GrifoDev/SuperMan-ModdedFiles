.class public Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter;
.super Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;
.source "TabletGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter",
        "<",
        "Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mDraggedTaskHolder:Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/sec/grid/TabletGridView;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/systemui/recents/sec/grid/TabletGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;)V

    new-instance v0, Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter$1;-><init>(Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter;Lcom/android/systemui/recents/sec/grid/TabletGridView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic bindTask(Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;Lcom/android/systemui/recents/model/Task;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter;->bindTask(Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;Lcom/android/systemui/recents/model/Task;)V

    return-void
.end method

.method protected bindTask(Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;Lcom/android/systemui/recents/model/Task;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter;->mDraggedTaskHolder:Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter;->mDraggedTaskHolder:Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/systemui/recents/model/Task;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "TabletRecents_TabletGridViewAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Change draggedHolder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter;->mDraggedTaskHolder:Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;

    invoke-virtual {v2}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter;->mDraggedTaskHolder:Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->setOnDragging(Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;)V

    iput-object v3, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter;->mDraggedTaskHolder:Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;->bindTask(Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;Lcom/android/systemui/recents/model/Task;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d016f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;

    invoke-direct {v1, v0}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter;->onViewAttachedToWindow(Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;)V
    .locals 5

    const-string/jumbo v0, "TabletRecents_TabletGridViewAdapter"

    const-string/jumbo v1, "onViewAttachedToWindow() t=%s, pos=%d "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->getTitle()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->getLayoutPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    iget-object v0, p1, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/systemui/recents/sec/grid/TabletGridAnimationHelper$TaskViewAnimUtil;->animateAttach(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->updateOpacity()Z

    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter;->onViewDetachedFromWindow(Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;)V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v0, "TabletRecents_TabletGridViewAdapter"

    const-string/jumbo v1, "onViewDetachedFromWindow() t=%s, lp=%d, ap=%d, op=%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p1}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->getLayoutPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->getOldPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p1}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->onDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter;->mDraggedTaskHolder:Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter;->mDraggedTaskHolder:Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v5}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->setIsRecyclable(Z)V

    const-string/jumbo v0, "TabletRecents_TabletGridViewAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not recycled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->revertDragging()V

    goto :goto_0
.end method

.method public bridge synthetic onViewRecycled(Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter;->onViewRecycled(Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;->onViewRecycled(Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;)V

    invoke-virtual {p1}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->onTaskDataUnloaded()V

    :cond_0
    return-void
.end method

.method public preserveDraggedTaskHolder(Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;)Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;
    .locals 6

    if-nez p1, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    const-string/jumbo v2, "TabletRecents_TabletGridViewAdapter"

    const-string/jumbo v3, "preserve drag holder %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter;->mDraggedTaskHolder:Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;

    iput-object p1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridViewAdapter;->mDraggedTaskHolder:Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
