.class public abstract Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AbstractTaskGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<TVH;>;"
    }
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field private mIgnoreTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field public mView:Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;->setHasStableIds(Z)V

    iput-object p1, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;->mView:Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;

    iget-object v0, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;->mView:Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;->mIgnoreTasks:Ljava/util/ArrayList;

    return-void
.end method

.method private getTaskList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;->mIgnoreTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;->mView:Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;->mIgnoreTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;->mView:Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method private unbindTask(Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    const-string/jumbo v1, "TabletRecents_AbstractTaskGridViewAdapter"

    const-string/jumbo v2, "unbindTask() t=%s, pos=%d "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;->getTitle()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p1}, Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;->getLayoutPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->unloadTaskData(Lcom/android/systemui/recents/model/Task;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getHighResThumbnailLoader()Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->onTaskInvisible(Lcom/android/systemui/recents/model/Task;)V

    return-void
.end method


# virtual methods
.method public addIgnoreTask(Lcom/android/systemui/recents/model/Task;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;->mIgnoreTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected bindTask(Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;Lcom/android/systemui/recents/model/Task;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;",
            "Lcom/android/systemui/recents/model/Task;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;->isTaskBound()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/model/Task;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "TabletRecents_AbstractTaskGridViewAdapter"

    const-string/jumbo v1, "bindTask() t=%s, pos=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p2, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->get(Landroid/content/Context;)Lcom/android/systemui/recents/sec/base/LayoutConfiguration;

    move-result-object v6

    iget-object v1, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;->mContext:Landroid/content/Context;

    iget-boolean v3, v6, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mTouchExplorationEnabled:Z

    iget v4, v6, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mDisplayOrientation:I

    iget-object v5, v6, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mDisplayRect:Landroid/graphics/Rect;

    move-object v0, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;->onTaskBound(Landroid/content/Context;Lcom/android/systemui/recents/model/Task;ZILandroid/graphics/Rect;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTaskData(Lcom/android/systemui/recents/model/Task;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getHighResThumbnailLoader()Lcom/android/systemui/recents/model/HighResThumbnailLoader;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/model/HighResThumbnailLoader;->onTaskVisible(Lcom/android/systemui/recents/model/Task;)V

    return-void
.end method

.method public getIndexOfTask(Lcom/android/systemui/recents/model/Task;)I
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;->mView:Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public final getItemCount()I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;->getTaskList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;->getTask(I)Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/Task$TaskKey;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getTask(I)Lcom/android/systemui/recents/model/Task;
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;->getTaskList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;->onBindViewHolder(Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;I)V

    return-void
.end method

.method public final onBindViewHolder(Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    const-string/jumbo v0, "TabletRecents_AbstractTaskGridViewAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBindViewHolder() pos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;->getTask(I)Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;->bindTask(Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;Lcom/android/systemui/recents/model/Task;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public bridge synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;->onViewRecycled(Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    const-string/jumbo v0, "TabletRecents_AbstractTaskGridViewAdapter"

    const-string/jumbo v1, "onViewRecycled() t=%s, pos=%d "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;->getTitle()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;->getLayoutPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;->isTaskBound()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;->unbindTask(Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;)V

    :cond_0
    return-void
.end method

.method public removeIgnoreTask(Lcom/android/systemui/recents/model/Task;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;->mIgnoreTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetIgnoreTasks()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskGridViewAdapter;->mIgnoreTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
