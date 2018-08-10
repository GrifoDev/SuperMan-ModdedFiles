.class final Lcom/android/internal/widget/GapWorker;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/GapWorker$1;,
        Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;,
        Lcom/android/internal/widget/GapWorker$Task;
    }
.end annotation


# static fields
.field static final sGapWorker:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/android/internal/widget/GapWorker;",
            ">;"
        }
    .end annotation
.end field

.field static sTaskComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/internal/widget/GapWorker$Task;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mFrameIntervalNs:J

.field mPostTimeNs:J

.field mRecyclerViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field private mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/GapWorker$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/android/internal/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/android/internal/widget/GapWorker$1;

    invoke-direct {v0}, Lcom/android/internal/widget/GapWorker$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/GapWorker;->sTaskComparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    return-void
.end method

.method private buildTaskList()V
    .locals 13

    const/4 v11, 0x0

    iget-object v10, p0, Lcom/android/internal/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v5, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v8, :cond_0

    iget-object v10, p0, Lcom/android/internal/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/RecyclerView;

    iget-object v10, v7, Lcom/android/internal/widget/RecyclerView;->mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v10, v7, v11}, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->collectPrefetchPositionsFromView(Lcom/android/internal/widget/RecyclerView;Z)V

    iget-object v10, v7, Lcom/android/internal/widget/RecyclerView;->mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    iget v10, v10, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    add-int/2addr v5, v10

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v10, p0, Lcom/android/internal/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v6, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v8, :cond_4

    iget-object v10, p0, Lcom/android/internal/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/RecyclerView;

    iget-object v3, v7, Lcom/android/internal/widget/RecyclerView;->mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    iget v10, v3, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDx:I

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v12, v3, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDy:I

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    add-int v9, v10, v12

    const/4 v2, 0x0

    :goto_2
    iget v10, v3, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v10, v10, 0x2

    if-ge v2, v10, :cond_3

    iget-object v10, p0, Lcom/android/internal/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v6, v10, :cond_1

    new-instance v4, Lcom/android/internal/widget/GapWorker$Task;

    invoke-direct {v4}, Lcom/android/internal/widget/GapWorker$Task;-><init>()V

    iget-object v10, p0, Lcom/android/internal/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    iget-object v10, v3, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    add-int/lit8 v12, v2, 0x1

    aget v0, v10, v12

    if-gt v0, v9, :cond_2

    const/4 v10, 0x1

    :goto_4
    iput-boolean v10, v4, Lcom/android/internal/widget/GapWorker$Task;->immediate:Z

    iput v9, v4, Lcom/android/internal/widget/GapWorker$Task;->viewVelocity:I

    iput v0, v4, Lcom/android/internal/widget/GapWorker$Task;->distanceToItem:I

    iput-object v7, v4, Lcom/android/internal/widget/GapWorker$Task;->view:Lcom/android/internal/widget/RecyclerView;

    iget-object v10, v3, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aget v10, v10, v2

    iput v10, v4, Lcom/android/internal/widget/GapWorker$Task;->position:I

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    :cond_1
    iget-object v10, p0, Lcom/android/internal/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/GapWorker$Task;

    goto :goto_3

    :cond_2
    move v10, v11

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v10, p0, Lcom/android/internal/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    sget-object v11, Lcom/android/internal/widget/GapWorker;->sTaskComparator:Ljava/util/Comparator;

    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private flushTaskWithDeadline(Lcom/android/internal/widget/GapWorker$Task;J)V
    .locals 6

    iget-boolean v1, p1, Lcom/android/internal/widget/GapWorker$Task;->immediate:Z

    if-eqz v1, :cond_1

    const-wide v2, 0x7fffffffffffffffL

    :goto_0
    iget-object v1, p1, Lcom/android/internal/widget/GapWorker$Task;->view:Lcom/android/internal/widget/RecyclerView;

    iget v4, p1, Lcom/android/internal/widget/GapWorker$Task;->position:I

    invoke-direct {p0, v1, v4, v2, v3}, Lcom/android/internal/widget/GapWorker;->prefetchPositionWithDeadline(Lcom/android/internal/widget/RecyclerView;IJ)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView;

    invoke-direct {p0, v1, p2, p3}, Lcom/android/internal/widget/GapWorker;->prefetchInnerRecyclerViewWithDeadline(Lcom/android/internal/widget/RecyclerView;J)V

    :cond_0
    return-void

    :cond_1
    move-wide v2, p2

    goto :goto_0
.end method

.method private flushTasksWithDeadline(J)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/GapWorker$Task;

    iget-object v2, v1, Lcom/android/internal/widget/GapWorker$Task;->view:Lcom/android/internal/widget/RecyclerView;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/widget/GapWorker;->flushTaskWithDeadline(Lcom/android/internal/widget/GapWorker$Task;J)V

    invoke-virtual {v1}, Lcom/android/internal/widget/GapWorker$Task;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static isPrefetchPositionAttached(Lcom/android/internal/widget/RecyclerView;I)Z
    .locals 5

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v4}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    iget v4, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v4, p1, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    return v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method private prefetchInnerRecyclerViewWithDeadline(Lcom/android/internal/widget/RecyclerView;J)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v3, p1, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->removeAndRecycleViews()V

    :cond_1
    iget-object v2, p1, Lcom/android/internal/widget/RecyclerView;->mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->collectPrefetchPositionsFromView(Lcom/android/internal/widget/RecyclerView;Z)V

    iget v3, v2, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    if-eqz v3, :cond_3

    :try_start_0
    const-string/jumbo v3, "RV Nested Prefetch"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v4, p1, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/RecyclerView$State;->prepareForNestedPrefetch(Lcom/android/internal/widget/RecyclerView$Adapter;)V

    const/4 v0, 0x0

    :goto_0
    iget v3, v2, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v3, v3, 0x2

    if-ge v0, v3, :cond_2

    iget-object v3, v2, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aget v1, v3, v0

    invoke-direct {p0, p1, v1, p2, p3}, Lcom/android/internal/widget/GapWorker;->prefetchPositionWithDeadline(Lcom/android/internal/widget/RecyclerView;IJ)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_3
    return-void

    :catchall_0
    move-exception v3

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v3
.end method

.method private prefetchPositionWithDeadline(Lcom/android/internal/widget/RecyclerView;IJ)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-static {p1, p2}, Lcom/android/internal/widget/GapWorker;->isPrefetchPositionAttached(Lcom/android/internal/widget/RecyclerView;I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v4

    :cond_0
    iget-object v1, p1, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v1, p2, v3, p3, p4}, Lcom/android/internal/widget/RecyclerView$Recycler;->tryGetViewHolderForPositionByDeadline(IZJ)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {v1, v0, v3}, Lcom/android/internal/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/android/internal/widget/RecyclerView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method postFromTraversal(Lcom/android/internal/widget/RecyclerView;II)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/widget/GapWorker;->mPostTimeNs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/GapWorker;->mPostTimeNs:J

    invoke-virtual {p1, p0}, Lcom/android/internal/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView;->mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->setPrefetchVector(II)V

    return-void
.end method

.method prefetch(J)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/GapWorker;->buildTaskList()V

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/GapWorker;->flushTasksWithDeadline(J)V

    return-void
.end method

.method public remove(Lcom/android/internal/widget/RecyclerView;)V
    .locals 2

    iget-object v1, p0, Lcom/android/internal/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return-void
.end method

.method public run()V
    .locals 10

    const-wide/16 v8, 0x0

    :try_start_0
    const-string/jumbo v4, "RV Prefetch"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    iput-wide v8, p0, Lcom/android/internal/widget/GapWorker;->mPostTimeNs:J

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_0
    :try_start_1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/android/internal/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView;->getDrawingTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    cmp-long v4, v0, v8

    if-nez v4, :cond_1

    iput-wide v8, p0, Lcom/android/internal/widget/GapWorker;->mPostTimeNs:J

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_1
    :try_start_2
    iget-wide v4, p0, Lcom/android/internal/widget/GapWorker;->mFrameIntervalNs:J

    add-long v2, v0, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/GapWorker;->prefetch(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-wide v8, p0, Lcom/android/internal/widget/GapWorker;->mPostTimeNs:J

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception v4

    iput-wide v8, p0, Lcom/android/internal/widget/GapWorker;->mPostTimeNs:J

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v4
.end method
