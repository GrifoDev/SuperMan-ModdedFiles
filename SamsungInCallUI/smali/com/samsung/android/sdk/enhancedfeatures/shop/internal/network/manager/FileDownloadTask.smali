.class public final Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask$DownloadFailedResult;,
        Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask$DownloadCanceledResult;,
        Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask$DownloadDoneResult;,
        Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask$AbstractResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field public static final FILE_DOWNLOAD_CANCELED:I = 0x3

.field public static final FILE_DOWNLOAD_DONE:I = 0x2

.field public static final FILE_DOWNLOAD_FAILED:I = 0x4

.field public static final FILE_DOWNLOAD_PROGESS_CHANGED:I = 0x1

.field private static final FILE_NAME_GENERATOR:Ljava/util/Random;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFile:Ljava/io/File;

.field private mHandlerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mHandlerTagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/Handler;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mIsNotifyToHandler:Z

.field private mIsStopped:Z

.field private final mLockObject:Ljava/lang/Object;

.field private mPropertyOption:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUrl:Ljava/lang/String;

.field private mUseCache:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->FILE_NAME_GENERATOR:Ljava/util/Random;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;-><init>(Ljava/lang/String;Ljava/io/File;ZLjava/util/Map;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/io/File;ZLjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mLockObject:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mHandlerList:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mHandlerTagMap:Ljava/util/Map;

    iput-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mIsNotifyToHandler:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mIsStopped:Z

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mFile:Ljava/io/File;

    iput-boolean p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mUseCache:Z

    iput-object p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mPropertyOption:Ljava/util/Map;

    return-void
.end method

.method private clearHandler()V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mLockObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mHandlerTagMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private doesTargetFileExist()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0
.end method

.method private download()Z
    .locals 15

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mUseCache:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->doesTargetFileExist()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Discovering cached file."

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->FILE_NAME_GENERATOR:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mUrl:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Execute download: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->TAG:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-nez v0, :cond_5

    :try_start_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "UrlConnection must be not null."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catch_0
    move-exception v1

    move-object v2, v4

    move-object v4, v0

    move-object v0, v1

    move-object v1, v3

    move-object v3, v5

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    :goto_2
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    move-object v3, v1

    move-object v1, v4

    move-object v4, v2

    :goto_3
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a

    :cond_2
    :goto_4
    if-eqz v4, :cond_3

    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b

    :cond_3
    :goto_5
    if-eqz v3, :cond_4

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_c

    :cond_4
    :goto_6
    throw v0

    :cond_5
    const/4 v1, 0x1

    :try_start_8
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "cache-control"

    const-string v2, "no-transform"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->getConnectionTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->getConnectionTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mPropertyOption:Ljava/util/Map;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mPropertyOption:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mPropertyOption:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catchall_1
    move-exception v1

    move-object v14, v1

    move-object v1, v0

    move-object v0, v14

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v8

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t make directory. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_e
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_f
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    const/16 v1, 0x400

    :try_start_b
    new-array v7, v1, [B

    const-wide/16 v4, 0x0

    :goto_8
    invoke-virtual {v3, v7}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mLockObject:Ljava/lang/Object;

    monitor-enter v10
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    iget-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mIsStopped:Z

    if-nez v1, :cond_8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_8
    const-string v1, "FileDownloadTask is stopped."

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->TAG:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-eqz v6, :cond_9

    :try_start_d
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :cond_9
    :goto_9
    const/4 v1, 0x0

    :try_start_e
    monitor-exit v10
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-eqz v0, :cond_a

    :try_start_f
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    :cond_a
    :goto_a
    if-eqz v3, :cond_b

    :try_start_10
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4

    :cond_b
    :goto_b
    if-eqz v2, :cond_c

    :try_start_11
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    :cond_c
    :goto_c
    move v0, v1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    :try_start_12
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    :catchall_2
    move-exception v1

    monitor-exit v10
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    :try_start_13
    throw v1
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    :catch_2
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v6

    goto/16 :goto_1

    :catch_3
    move-exception v0

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->TAG:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_a

    :catch_4
    move-exception v0

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->TAG:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_b

    :catch_5
    move-exception v0

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_c

    :cond_d
    :try_start_14
    monitor-exit v10
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    const/4 v1, -0x1

    if-ne v9, v1, :cond_e

    :try_start_15
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-gtz v1, :cond_10

    new-instance v1, Ljava/io/IOException;

    const-string v4, "File length is 0."

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_3
    move-exception v1

    move-object v4, v3

    move-object v3, v2

    move-object v14, v1

    move-object v1, v0

    move-object v0, v14

    goto/16 :goto_3

    :cond_e
    int-to-long v10, v9

    add-long/2addr v4, v10

    const/4 v1, 0x0

    if-eqz v8, :cond_f

    const/4 v10, -0x1

    if-eq v8, v10, :cond_f

    const-wide/16 v10, 0x64

    mul-long/2addr v10, v4

    int-to-long v12, v8

    div-long/2addr v10, v12

    long-to-int v1, v10

    :cond_f
    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->publishProgress(I)V

    const/4 v1, 0x0

    invoke-virtual {v2, v7, v1, v9}, Ljava/io/FileOutputStream;->write([BII)V

    goto/16 :goto_8

    :cond_10
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mFile:Ljava/io/File;

    invoke-virtual {v6, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_11

    new-instance v1, Ljava/io/IOException;

    const-string v4, "Can\'t rename file."

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file name: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", size: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->TAG:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    :try_start_16
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6

    :cond_12
    :goto_d
    if-eqz v3, :cond_13

    :try_start_17
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_7

    :cond_13
    :goto_e
    if-eqz v2, :cond_14

    :try_start_18
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_8

    :cond_14
    :goto_f
    move v0, v1

    goto/16 :goto_0

    :catch_6
    move-exception v0

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->TAG:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_d

    :catch_7
    move-exception v0

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->TAG:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_e

    :catch_8
    move-exception v0

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_f

    :catch_9
    move-exception v3

    :try_start_19
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    goto/16 :goto_2

    :catch_a
    move-exception v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_b
    move-exception v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_5

    :catch_c
    move-exception v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_6

    :catchall_4
    move-exception v0

    goto/16 :goto_3

    :catchall_5
    move-exception v1

    move-object v3, v2

    move-object v14, v1

    move-object v1, v0

    move-object v0, v14

    goto/16 :goto_3

    :catch_d
    move-exception v0

    move-object v2, v4

    move-object v4, v1

    move-object v1, v3

    move-object v3, v5

    goto/16 :goto_1

    :catch_e
    move-exception v1

    move-object v2, v4

    move-object v4, v0

    move-object v0, v1

    move-object v1, v3

    move-object v3, v6

    goto/16 :goto_1

    :catch_f
    move-exception v1

    move-object v3, v6

    move-object v14, v2

    move-object v2, v4

    move-object v4, v0

    move-object v0, v1

    move-object v1, v14

    goto/16 :goto_1
.end method

.method private notifyToHandler(IIILjava/lang/Object;)V
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mLockObject:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mIsNotifyToHandler:Z

    if-eqz v1, :cond_0

    monitor-exit v3

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_0
    :try_start_1
    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask$DownloadDoneResult;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask$DownloadDoneResult;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;)V

    move-object v0, v2

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask$DownloadDoneResult;

    move-object v1, v0

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mFile:Ljava/io/File;

    invoke-virtual {v1, v4}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask$DownloadDoneResult;->setFile(Ljava/io/File;)V

    move-object v0, v2

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask$DownloadDoneResult;

    move-object v1, v0

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask$DownloadDoneResult;->setDownloadUrl(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mIsNotifyToHandler:Z

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mHandlerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mHandlerTagMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask$AbstractResult;->setTag(Ljava/lang/Object;)V

    invoke-static {v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->clearHandler()V

    goto :goto_1

    :pswitch_1
    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask$DownloadCanceledResult;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask$DownloadCanceledResult;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mIsNotifyToHandler:Z

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mHandlerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mHandlerTagMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask$AbstractResult;->setTag(Ljava/lang/Object;)V

    invoke-static {v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->clearHandler()V

    goto :goto_1

    :pswitch_2
    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask$DownloadFailedResult;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask$DownloadFailedResult;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mIsNotifyToHandler:Z

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mHandlerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mHandlerTagMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask$AbstractResult;->setTag(Ljava/lang/Object;)V

    invoke-static {v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->clearHandler()V

    goto/16 :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mHandlerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mHandlerTagMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, p1, p2, p3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private publishProgress(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->notifyToHandler(IIILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method addHandler(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mLockObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mHandlerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mHandlerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mHandlerTagMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public call()Ljava/io/File;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->download()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mFile:Ljava/io/File;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->notifyToHandler(IIILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->onFileDownloadTaskFinished(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->notifyToHandler(IIILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->onFileDownloadTaskFinished(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_2
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->notifyToHandler(IIILjava/lang/Object;)V

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->onFileDownloadTaskFinished(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->call()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method cancel()V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mLockObject:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mIsStopped:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removeHandler(Landroid/os/Handler;)I
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mLockObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mHandlerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mHandlerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mHandlerTagMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;->mHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
