.class public Landroid/media/MediaInserter;
.super Ljava/lang/Object;
.source "MediaInserter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaInserter$BulkInsertHandler;
    }
.end annotation


# instance fields
.field private final MSG_EXIT:I

.field private final MSG_INSERT:I

.field private final mBufferSizePerUri:I

.field private mBulkInsertHandler:Landroid/media/MediaInserter$BulkInsertHandler;

.field private mHt:Landroid/os/HandlerThread;

.field private final mIsInternal:Z

.field private final mPriorityRowMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mProvider:Landroid/content/ContentProviderClient;

.field private final mRowMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWaiter:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Landroid/media/MediaInserter;)Landroid/content/ContentProviderClient;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaInserter;->mProvider:Landroid/content/ContentProviderClient;

    return-object v0
.end method

.method static synthetic -get1(Landroid/media/MediaInserter;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaInserter;->mWaiter:Ljava/lang/Object;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/ContentProviderClient;IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaInserter;->mPriorityRowMap:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaInserter;->mWaiter:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaInserter;->MSG_INSERT:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/media/MediaInserter;->MSG_EXIT:I

    iput-object p1, p0, Landroid/media/MediaInserter;->mProvider:Landroid/content/ContentProviderClient;

    iput p2, p0, Landroid/media/MediaInserter;->mBufferSizePerUri:I

    iput-boolean p3, p0, Landroid/media/MediaInserter;->mIsInternal:Z

    return-void
.end method

.method private flush(Landroid/net/Uri;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [Landroid/content/ContentValues;

    invoke-interface {p2, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/ContentValues;

    iget-boolean v3, p0, Landroid/media/MediaInserter;->mIsInternal:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/media/MediaInserter;->mHt:Landroid/os/HandlerThread;

    if-nez v3, :cond_0

    new-instance v3, Landroid/os/HandlerThread;

    const-string/jumbo v4, "Bulk Insert Thread"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Landroid/media/MediaInserter;->mHt:Landroid/os/HandlerThread;

    iget-object v3, p0, Landroid/media/MediaInserter;->mHt:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    new-instance v3, Landroid/media/MediaInserter$BulkInsertHandler;

    iget-object v4, p0, Landroid/media/MediaInserter;->mHt:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/media/MediaInserter$BulkInsertHandler;-><init>(Landroid/media/MediaInserter;Landroid/os/Looper;)V

    iput-object v3, p0, Landroid/media/MediaInserter;->mBulkInsertHandler:Landroid/media/MediaInserter$BulkInsertHandler;

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "tableUri"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v3, p0, Landroid/media/MediaInserter;->mBulkInsertHandler:Landroid/media/MediaInserter$BulkInsertHandler;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Landroid/media/MediaInserter;->mBulkInsertHandler:Landroid/media/MediaInserter$BulkInsertHandler;

    invoke-virtual {v3, v1}, Landroid/media/MediaInserter$BulkInsertHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->clear()V

    :cond_1
    return-void

    :cond_2
    iget-object v3, p0, Landroid/media/MediaInserter;->mProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v3, p1, v2}, Landroid/content/ContentProviderClient;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    goto :goto_0
.end method

.method private flushAllPriority()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v3, p0, Landroid/media/MediaInserter;->mPriorityRowMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iget-object v3, p0, Landroid/media/MediaInserter;->mPriorityRowMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v1, v0}, Landroid/media/MediaInserter;->flush(Landroid/net/Uri;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/media/MediaInserter;->mPriorityRowMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private insert(Landroid/net/Uri;Landroid/content/ContentValues;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p3, :cond_2

    iget-object v1, p0, Landroid/media/MediaInserter;->mPriorityRowMap:Ljava/util/HashMap;

    :goto_0
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Landroid/media/MediaInserter;->mBufferSizePerUri:I

    if-lt v2, v3, :cond_1

    invoke-direct {p0}, Landroid/media/MediaInserter;->flushAllPriority()V

    invoke-direct {p0, p1, v0}, Landroid/media/MediaInserter;->flush(Landroid/net/Uri;Ljava/util/List;)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    goto :goto_0
.end method


# virtual methods
.method public flushAll()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/MediaInserter;->flushAllPriority()V

    iget-object v3, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iget-object v3, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v1, v0}, Landroid/media/MediaInserter;->flush(Landroid/net/Uri;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Z)V

    return-void
.end method

.method public insertwithPriority(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Z)V

    return-void
.end method

.method protected requestToExitAndWait()V
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Landroid/media/MediaInserter;->mBulkInsertHandler:Landroid/media/MediaInserter$BulkInsertHandler;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/media/MediaInserter;->mWaiter:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Landroid/media/MediaInserter;->mBulkInsertHandler:Landroid/media/MediaInserter$BulkInsertHandler;

    iget-object v3, p0, Landroid/media/MediaInserter;->mBulkInsertHandler:Landroid/media/MediaInserter$BulkInsertHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaInserter$BulkInsertHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/media/MediaInserter$BulkInsertHandler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Landroid/media/MediaInserter;->mWaiter:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    iget-object v1, p0, Landroid/media/MediaInserter;->mHt:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iput-object v5, p0, Landroid/media/MediaInserter;->mHt:Landroid/os/HandlerThread;

    :goto_0
    iput-object v5, p0, Landroid/media/MediaInserter;->mBulkInsertHandler:Landroid/media/MediaInserter$BulkInsertHandler;

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2

    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iput-object v5, p0, Landroid/media/MediaInserter;->mHt:Landroid/os/HandlerThread;

    goto :goto_0

    :catchall_1
    move-exception v1

    iput-object v5, p0, Landroid/media/MediaInserter;->mHt:Landroid/os/HandlerThread;

    iput-object v5, p0, Landroid/media/MediaInserter;->mBulkInsertHandler:Landroid/media/MediaInserter$BulkInsertHandler;

    throw v1
.end method
