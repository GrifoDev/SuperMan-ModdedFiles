.class public abstract Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerHandler;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;
    }
.end annotation


# static fields
.field private static final APPLY_BATCH:Ljava/lang/String; = "ApplyBatch"

.field private static final BULK_INSERT:Ljava/lang/String; = "BulkInsert"

.field private static final DELETE:Ljava/lang/String; = "Delete"

.field protected static final EVENT_ARG_APPLY_BATCH:I = 0x5

.field protected static final EVENT_ARG_BULK_INSERT:I = 0x6

.field protected static final EVENT_ARG_DELETE:I = 0x4

.field protected static final EVENT_ARG_INSERT:I = 0x2

.field protected static final EVENT_ARG_QUERY:I = 0x1

.field protected static final EVENT_ARG_UPDATE:I = 0x3

.field private static final INSERT:Ljava/lang/String; = "Insert"

.field private static final QUERY:Ljava/lang/String; = "Query"

.field private static final TAG:Ljava/lang/String;

.field private static final UPDATE:Ljava/lang/String; = "Update"

.field private static final localLOGV:Z

.field private static sLooper:Landroid/os/Looper;


# instance fields
.field final mResolver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkerThreadHandler:Landroid/os/Handler;

.field private rShareDbHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->sLooper:Landroid/os/Looper;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->mResolver:Ljava/lang/ref/WeakReference;

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->sLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "AsyncQueryWorker"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->sLooper:Landroid/os/Looper;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->sLooper:Landroid/os/Looper;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->createHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->getRShareDbHandler()Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->rShareDbHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/os/Looper;)V
    .locals 3

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->mResolver:Ljava/lang/ref/WeakReference;

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->sLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "AsyncQueryWorker"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->sLooper:Landroid/os/Looper;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->sLooper:Landroid/os/Looper;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->createHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShareApplication;->getRShareDbHandler()Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->rShareDbHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->rShareDbHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RShareDbHandler;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final cancelOperation(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerHandler;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method protected event2str(I)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "Query"

    goto :goto_0

    :pswitch_1
    const-string v0, "Insert"

    goto :goto_0

    :pswitch_2
    const-string v0, "Update"

    goto :goto_0

    :pswitch_3
    const-string v0, "Delete"

    goto :goto_0

    :pswitch_4
    const-string v0, "ApplyBatch"

    goto :goto_0

    :pswitch_5
    const-string v0, "BulkInsert"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;

    iget v1, p1, Landroid/os/Message;->what:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    goto :goto_0

    :pswitch_1
    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_2
    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->onUpdateComplete(ILjava/lang/Object;I)V

    goto :goto_0

    :pswitch_3
    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->onDeleteComplete(ILjava/lang/Object;I)V

    goto :goto_0

    :pswitch_4
    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v0, [Landroid/content/ContentProviderResult;

    check-cast v0, [Landroid/content/ContentProviderResult;

    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->onApplyBatchComplete(ILjava/lang/Object;[Landroid/content/ContentProviderResult;)V

    goto :goto_0

    :pswitch_5
    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->onBulkInsertComplete(ILjava/lang/Object;Ljava/lang/Integer;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onApplyBatchComplete(ILjava/lang/Object;[Landroid/content/ContentProviderResult;)V
    .locals 0

    return-void
.end method

.method protected onBulkInsertComplete(ILjava/lang/Object;Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method protected onErrorResponse(ILjava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception thrown during handling request token ::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->TAG:Ljava/lang/String;

    invoke-static {v0, p2, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0

    return-void
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method public final startApplyBatch(ILjava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->arg1:I

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;-><init>()V

    iput-object p0, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    iput-object p4, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->ops:Ljava/util/ArrayList;

    iput-object p3, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->authority:Ljava/lang/String;

    iput-object p2, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final startBulkInsert(ILjava/lang/Object;Landroid/net/Uri;[Landroid/content/ContentValues;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->arg1:I

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;-><init>()V

    iput-object p0, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    iput-object p3, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iput-object p2, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iput-object p4, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->valuesList:[Landroid/content/ContentValues;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->arg1:I

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;-><init>()V

    iput-object p0, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    iput-object p3, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iput-object p2, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iput-object p4, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iput-object p5, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg1:I

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;-><init>()V

    iput-object p0, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    iput-object p3, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iput-object p2, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iput-object p4, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;-><init>()V

    iput-object p0, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    iput-object p3, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iput-object p4, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->projection:[Ljava/lang/String;

    iput-object p5, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iput-object p6, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    iput-object p7, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    iput-object p2, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->arg1:I

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;-><init>()V

    iput-object p0, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    iput-object p3, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iput-object p2, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iput-object p4, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    iput-object p5, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iput-object p6, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
