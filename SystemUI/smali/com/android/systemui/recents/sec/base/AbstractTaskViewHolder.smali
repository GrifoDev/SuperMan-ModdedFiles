.class public abstract Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AbstractTaskViewHolder.java"

# interfaces
.implements Lcom/android/systemui/recents/model/Task$TaskCallbacks;


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mIsDisabledInSafeMode:Z

.field private mTask:Lcom/android/systemui/recents/model/Task;

.field protected mTouchExplorationEnabled:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getTask()Lcom/android/systemui/recents/model/Task;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;->mTask:Lcom/android/systemui/recents/model/Task;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string/jumbo v0, "unbinded_task"

    return-object v0
.end method

.method public isTaskBound()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTaskBound(Landroid/content/Context;Lcom/android/systemui/recents/model/Task;ZILandroid/graphics/Rect;)V
    .locals 7

    iput-object p1, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v0, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/model/Task;->addCallback(Lcom/android/systemui/recents/model/Task$TaskCallbacks;)V

    iput-boolean p3, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;->mTouchExplorationEnabled:Z

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v6

    iget-object v0, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->isSystemApp:Z

    if-nez v0, :cond_0

    invoke-virtual {v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isInSafeMode()Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;->mIsDisabledInSafeMode:Z

    iget-object v1, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v3, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;->mTouchExplorationEnabled:Z

    move-object v0, p0

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;->onTaskBoundImpl(Landroid/content/Context;Lcom/android/systemui/recents/model/Task;ZILandroid/graphics/Rect;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onTaskBoundImpl(Landroid/content/Context;Lcom/android/systemui/recents/model/Task;ZILandroid/graphics/Rect;)V
.end method

.method public onTaskDataLoaded(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/ThumbnailData;)V
    .locals 0

    return-void
.end method

.method public onTaskDataUnloaded()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/model/Task;->removeCallback(Lcom/android/systemui/recents/model/Task$TaskCallbacks;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/sec/base/AbstractTaskViewHolder;->mTask:Lcom/android/systemui/recents/model/Task;

    return-void
.end method

.method public onTaskStackIdChanged()V
    .locals 0

    return-void
.end method

.method public abstract updateViewLockState()V
.end method
