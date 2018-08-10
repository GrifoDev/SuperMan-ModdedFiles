.class Landroid/support/v7/util/MessageThreadUtil$2;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"

# interfaces
.implements Landroid/support/v7/util/ThreadUtil$BackgroundCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/MessageThreadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/util/MessageThreadUtil$2$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v7/util/ThreadUtil$BackgroundCallback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mBackgroundRunnable:Ljava/lang/Runnable;

.field mBackgroundRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field final mQueue:Landroid/support/v7/util/MessageThreadUtil$MessageQueue;


# direct methods
.method private maybeExecuteBackgroundRunnable()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$2;->mBackgroundRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$2;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/support/v7/util/MessageThreadUtil$2;->mBackgroundRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private sendMessage(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$2;->mQueue:Landroid/support/v7/util/MessageThreadUtil$MessageQueue;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->sendMessage(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V

    invoke-direct {p0}, Landroid/support/v7/util/MessageThreadUtil$2;->maybeExecuteBackgroundRunnable()V

    return-void
.end method

.method private sendMessageAtFrontOfQueue(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/util/MessageThreadUtil$2;->mQueue:Landroid/support/v7/util/MessageThreadUtil$MessageQueue;

    invoke-virtual {v0, p1}, Landroid/support/v7/util/MessageThreadUtil$MessageQueue;->sendMessageAtFrontOfQueue(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V

    invoke-direct {p0}, Landroid/support/v7/util/MessageThreadUtil$2;->maybeExecuteBackgroundRunnable()V

    return-void
.end method


# virtual methods
.method public loadTile(II)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0, p1, p2}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->obtainMessage(III)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/util/MessageThreadUtil$2;->sendMessage(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V

    return-void
.end method

.method public recycleTile(Landroid/support/v7/util/TileList$Tile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/util/TileList$Tile",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->obtainMessage(IILjava/lang/Object;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/util/MessageThreadUtil$2;->sendMessage(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V

    return-void
.end method

.method public refresh(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->obtainMessage(IILjava/lang/Object;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/util/MessageThreadUtil$2;->sendMessageAtFrontOfQueue(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V

    return-void
.end method

.method public updateRange(IIIII)V
    .locals 7

    const/4 v0, 0x2

    const/4 v6, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->obtainMessage(IIIIIILjava/lang/Object;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/util/MessageThreadUtil$2;->sendMessageAtFrontOfQueue(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)V

    return-void
.end method
