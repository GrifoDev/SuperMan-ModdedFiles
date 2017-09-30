.class public Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager$FileDownloadTaskStruct;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TEMP_DOWNLOAD_DIRECTORY_NAME:Ljava/lang/String; = "download"

.field private static final THREAD_POOL_SIZE:I = 0x5

.field private static mInstance:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;


# instance fields
.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mFileDownloadMapper:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager$FileDownloadTaskStruct;",
            ">;"
        }
    .end annotation
.end field

.field private final mFileDownloadThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field private mHttpConnectionTimeout:I

.field private final mLocker:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->mLocker:Ljava/lang/Object;

    const/16 v0, 0x2710

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->mHttpConnectionTimeout:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->mFileDownloadMapper:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->mFileDownloadThreadFactory:Ljava/util/concurrent/ThreadFactory;

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->mFileDownloadThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static doesTargetFileExist(Ljava/io/File;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;
    .locals 2

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->mInstance:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->mInstance:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->mInstance:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getTempDownloadDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/IoUtils$LocationOption;->INTERNAL_ONLY:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/IoUtils$LocationOption;

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->getTempDownloadDirectory(Landroid/content/Context;Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/IoUtils$LocationOption;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getTempDownloadDirectory(Landroid/content/Context;Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/IoUtils$LocationOption;)Ljava/io/File;
    .locals 4

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/IoUtils;->getCacheDirectory(Landroid/content/Context;Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/IoUtils$LocationOption;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "download"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t create temp download directory. option : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public cancel(Landroid/os/Handler;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->mFileDownloadMapper:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager$FileDownloadTaskStruct;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown url. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    monitor-exit v2

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager$FileDownloadTaskStruct;->mFileDownloadTask:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;

    invoke-virtual {v3, p1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->removeHandler(Landroid/os/Handler;)I

    :cond_1
    iget v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager$FileDownloadTaskStruct;->mReferenceCount:I

    if-ne v3, v1, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'s reference count is 0. Stop download."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager$FileDownloadTaskStruct;->mFileDownloadTask:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->cancel()V

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager$FileDownloadTaskStruct;->mFuture:Ljava/util/concurrent/Future;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->mFileDownloadMapper:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    monitor-exit v2

    move v0, v1

    goto :goto_0

    :cond_2
    iget v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager$FileDownloadTaskStruct;->mReferenceCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager$FileDownloadTaskStruct;->mReferenceCount:I

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public download(Landroid/os/Handler;Ljava/lang/String;Ljava/io/File;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->download(Landroid/os/Handler;Ljava/lang/String;Ljava/io/File;Ljava/lang/Object;Ljava/util/Map;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public download(Landroid/os/Handler;Ljava/lang/String;Ljava/io/File;Ljava/lang/Object;Ljava/util/Map;)Ljava/util/concurrent/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File download task count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->mFileDownloadMapper:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->mFileDownloadMapper:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager$FileDownloadTaskStruct;

    if-nez v0, :cond_1

    const-string v0, "Create new FileDownloadTask."

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager$FileDownloadTaskStruct;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager$FileDownloadTaskStruct;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;

    const/4 v3, 0x1

    invoke-direct {v0, p2, p3, v3, p5}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;-><init>(Ljava/lang/String;Ljava/io/File;ZLjava/util/Map;)V

    iput-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager$FileDownloadTaskStruct;->mFileDownloadTask:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;

    if-eqz p1, :cond_0

    iget-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager$FileDownloadTaskStruct;->mFileDownloadTask:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;

    invoke-virtual {v0, p1, p4}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->addHandler(Landroid/os/Handler;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object v3, v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager$FileDownloadTaskStruct;->mFileDownloadTask:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager$FileDownloadTaskStruct;->mFuture:Ljava/util/concurrent/Future;

    const/4 v0, 0x1

    iput v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager$FileDownloadTaskStruct;->mReferenceCount:I

    iget-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager$FileDownloadTaskStruct;->mFuture:Ljava/util/concurrent/Future;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->mFileDownloadMapper:Ljava/util/Map;

    invoke-interface {v3, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    monitor-exit v2

    return-object v0

    :cond_1
    const-string v1, "Using created FileDownloadTask."

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager$FileDownloadTaskStruct;->mFuture:Ljava/util/concurrent/Future;

    iget v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager$FileDownloadTaskStruct;->mReferenceCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager$FileDownloadTaskStruct;->mReferenceCount:I

    if-eqz p1, :cond_2

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager$FileDownloadTaskStruct;->mFileDownloadTask:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;

    invoke-virtual {v0, p1, p4}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->addHandler(Landroid/os/Handler;Ljava/lang/Object;)V

    :cond_2
    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public downloadSync(Landroid/os/Handler;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->download(Landroid/os/Handler;Ljava/lang/String;Ljava/io/File;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'s caller thread is interrupted."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v2, p2}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->cancel(Landroid/os/Handler;Ljava/lang/String;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public downloadSync(Landroid/os/Handler;Ljava/lang/String;Ljava/io/File;Ljava/lang/Object;)Ljava/io/File;
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->download(Landroid/os/Handler;Ljava/lang/String;Ljava/io/File;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'s caller thread is interrupted."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v2, p2}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->cancel(Landroid/os/Handler;Ljava/lang/String;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public downloadSync(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->download(Landroid/os/Handler;Ljava/lang/String;Ljava/io/File;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'s caller thread is interrupted."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->cancel(Landroid/os/Handler;Ljava/lang/String;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public downloadSync(Ljava/lang/String;Ljava/io/File;Ljava/util/Map;)Ljava/io/File;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->download(Landroid/os/Handler;Ljava/lang/String;Ljava/io/File;Ljava/lang/Object;Ljava/util/Map;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'s caller thread is interrupted."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->cancel(Landroid/os/Handler;Ljava/lang/String;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getConnectionTimeout()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->mHttpConnectionTimeout:I

    return v0
.end method

.method onFileDownloadTaskFinished(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->mFileDownloadMapper:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setConnectionTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->mHttpConnectionTimeout:I

    return-void
.end method
