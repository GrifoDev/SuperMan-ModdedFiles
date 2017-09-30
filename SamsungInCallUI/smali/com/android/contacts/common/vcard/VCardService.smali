.class public Lcom/android/contacts/common/vcard/VCardService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/vcard/VCardService$MyBinder;,
        Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private b:I

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/contacts/common/vcard/ProcessorBase;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/android/contacts/common/vcard/VCardService$MyBinder;

.field private f:Ljava/lang/String;

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->c:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->d:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->g:Ljava/util/Set;

    return-void
.end method

.method private declared-synchronized a()V
    .locals 8

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    new-array v4, v3, [I

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/vcard/ProcessorBase;

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/ProcessorBase;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VCardService"

    const-string v3, "Found unfinished job (id: %d)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_3

    iget-object v1, p0, Lcom/android/contacts/common/vcard/VCardService;->c:Landroid/util/SparseArray;

    aget v3, v4, v0

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    aput v5, v4, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "VCardService"

    const-string v1, "MediaScanner update is in progress."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_2
    monitor-exit p0

    return-void

    :cond_4
    :try_start_1
    const-string v0, "VCardService"

    const-string v1, "No unfinished job. Stop this service."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/VCardService;->stopSelf()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/contacts/common/vcard/VCardService;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/android/contacts/common/vcard/VCardService;Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/common/vcard/VCardService;->a(Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/android/contacts/common/vcard/ProcessorBase;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->c:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/contacts/common/vcard/VCardService;->b:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "VCardService"

    const-string v2, "Failed to excetute a job."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/vcard/ProcessorBase;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/vcard/ProcessorBase;->cancel(Z)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/contacts/common/vcard/VCardService;->fileList()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    const-string v4, "import_tmp_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "VCardService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remove a temporary file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/vcard/VCardService;->deleteFile(Ljava/lang/String;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method declared-synchronized a(IZ)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    invoke-direct {p0}, Lcom/android/contacts/common/vcard/VCardService;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/android/contacts/common/vcard/CancelRequest;Lcom/android/contacts/common/vcard/VCardImportExportListener;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v1, p1, Lcom/android/contacts/common/vcard/CancelRequest;->a:I

    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/vcard/ProcessorBase;

    iget-object v2, p0, Lcom/android/contacts/common/vcard/VCardService;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/vcard/ProcessorBase;->cancel(Z)Z

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/ProcessorBase;->a()I

    move-result v1

    if-eqz p2, :cond_0

    invoke-interface {p2, p1, v1}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->a(Lcom/android/contacts/common/vcard/CancelRequest;I)V

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    check-cast v0, Lcom/android/contacts/common/vcard/ExportProcessor;

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/ExportProcessor;->b()Lcom/android/contacts/common/vcard/ExportRequest;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/common/vcard/ExportRequest;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VCardService"

    const-string v2, "Cancel reservation for the path %s if appropriate"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/contacts/common/vcard/VCardService;->g:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "VCardService"

    const-string v1, "Not reserved."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/VCardService;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    const-string v0, "VCardService"

    const-string v2, "Tried to remove unknown job (id: %d)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/android/contacts/common/vcard/ExportRequest;Lcom/android/contacts/common/vcard/VCardImportExportListener;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/contacts/common/vcard/ExportProcessor;

    iget v1, p0, Lcom/android/contacts/common/vcard/VCardService;->b:I

    iget-object v2, p0, Lcom/android/contacts/common/vcard/VCardService;->f:Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/contacts/common/vcard/ExportProcessor;-><init>(Lcom/android/contacts/common/vcard/VCardService;Lcom/android/contacts/common/vcard/ExportRequest;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/contacts/common/vcard/VCardService;->a(Lcom/android/contacts/common/vcard/ProcessorBase;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/contacts/common/vcard/ExportRequest;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/vcard/VCardService;->g:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "VCardService"

    const-string v2, "The path %s is already reserved. Reject export request"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->a(Lcom/android/contacts/common/vcard/ExportRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    if-eqz p2, :cond_2

    :try_start_1
    iget v0, p0, Lcom/android/contacts/common/vcard/VCardService;->b:I

    invoke-interface {p2, p1, v0}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->a(Lcom/android/contacts/common/vcard/ExportRequest;I)V

    :cond_2
    iget v0, p0, Lcom/android/contacts/common/vcard/VCardService;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/contacts/common/vcard/VCardService;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    if-eqz p2, :cond_0

    :try_start_2
    invoke-interface {p2, p1}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->a(Lcom/android/contacts/common/vcard/ExportRequest;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VCardService"

    const-string v1, "MediaScanner update is requested after executor\'s being shut down. Ignoring the update request"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;-><init>(Lcom/android/contacts/common/vcard/VCardService;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/contacts/common/vcard/VCardService;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/VCardService$CustomMediaScannerConnectionClient;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/util/List;Lcom/android/contacts/common/vcard/VCardImportExportListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/vcard/ImportRequest;",
            ">;",
            "Lcom/android/contacts/common/vcard/VCardImportExportListener;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/vcard/ImportRequest;

    new-instance v3, Lcom/android/contacts/common/vcard/ImportProcessor;

    iget v4, p0, Lcom/android/contacts/common/vcard/VCardService;->b:I

    invoke-direct {v3, p0, p2, v0, v4}, Lcom/android/contacts/common/vcard/ImportProcessor;-><init>(Lcom/android/contacts/common/vcard/VCardService;Lcom/android/contacts/common/vcard/VCardImportExportListener;Lcom/android/contacts/common/vcard/ImportRequest;I)V

    invoke-direct {p0, v3}, Lcom/android/contacts/common/vcard/VCardService;->a(Lcom/android/contacts/common/vcard/ProcessorBase;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p2, :cond_0

    iget v3, p0, Lcom/android/contacts/common/vcard/VCardService;->b:I

    invoke-interface {p2, v0, v3, v1}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->a(Lcom/android/contacts/common/vcard/ImportRequest;II)V

    :cond_0
    iget v0, p0, Lcom/android/contacts/common/vcard/VCardService;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/contacts/common/vcard/VCardService;->b:I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2, v0}, Lcom/android/contacts/common/vcard/VCardImportExportListener;->a(Lcom/android/contacts/common/vcard/ImportRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(IZ)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/vcard/ProcessorBase;

    iget-object v1, p0, Lcom/android/contacts/common/vcard/VCardService;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    if-nez v0, :cond_0

    const-string v0, "VCardService"

    const-string v1, "Tried to remove unknown job (id: %d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/common/vcard/VCardService;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    instance-of v1, v0, Lcom/android/contacts/common/vcard/ExportProcessor;

    if-nez v1, :cond_1

    const-string v0, "VCardService"

    const-string v1, "Removed job (id: %s) isn\'t ExportProcessor"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    check-cast v0, Lcom/android/contacts/common/vcard/ExportProcessor;

    invoke-virtual {v0}, Lcom/android/contacts/common/vcard/ExportProcessor;->b()Lcom/android/contacts/common/vcard/ExportRequest;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/common/vcard/ExportRequest;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/vcard/VCardService;->g:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->e:Lcom/android/contacts/common/vcard/VCardService$MyBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/android/contacts/common/vcard/VCardService$MyBinder;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/vcard/VCardService$MyBinder;-><init>(Lcom/android/contacts/common/vcard/VCardService;)V

    iput-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->e:Lcom/android/contacts/common/vcard/VCardService$MyBinder;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/common/vcard/VCardService;->b()V

    invoke-direct {p0}, Lcom/android/contacts/common/vcard/VCardService;->c()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CALLING_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->f:Ljava/lang/String;

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/vcard/VCardService;->f:Ljava/lang/String;

    goto :goto_0
.end method
