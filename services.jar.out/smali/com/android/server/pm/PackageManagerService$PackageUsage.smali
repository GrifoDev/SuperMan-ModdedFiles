.class Lcom/android/server/pm/PackageManagerService$PackageUsage;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageUsage"
.end annotation


# static fields
.field private static final USAGE_FILE_MAGIC:Ljava/lang/String; = "PACKAGE_USAGE__VERSION_"

.field private static final USAGE_FILE_MAGIC_VERSION_1:Ljava/lang/String; = "PACKAGE_USAGE__VERSION_1"

.field private static final WRITE_INTERVAL:I = 0x1b7740


# instance fields
.field private final mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mFileLock:Ljava/lang/Object;

.field private mIsHistoricalPackageUsageAvailable:Z

.field private final mLastWritten:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/PackageManagerService$PackageUsage;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/pm/PackageManagerService$PackageUsage;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->writeInternal()V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 4

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mFileLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mLastWritten:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mIsHistoricalPackageUsageAvailable:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$PackageUsage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageUsage;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    return-void
.end method

.method private getFile()Landroid/util/AtomicFile;
    .locals 4

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "system"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "package-usage.list"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v3
.end method

.method private parseAsLong(Ljava/lang/String;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to parse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " as a long."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readLine(Ljava/io/InputStream;Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->readToken(Ljava/io/InputStream;Ljava/lang/StringBuffer;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readToken(Ljava/io/InputStream;Ljava/lang/StringBuffer;C)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Unexpected EOF"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-ne v0, p3, :cond_2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    int-to-char v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private readVersion0LP(Ljava/io/InputStream;Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p3

    :goto_0
    if-eqz v0, :cond_3

    const-string/jumbo v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to parse "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " as package-timestamp pair."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    const/4 v7, 0x0

    aget-object v1, v6, v7

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    if-nez v2, :cond_2

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->readLine(Ljava/io/InputStream;Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->parseAsLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v3, 0x0

    :goto_1
    const/16 v7, 0x8

    if-ge v3, v7, :cond_1

    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:[J

    aput-wide v4, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private readVersion1LP(Ljava/io/InputStream;Ljava/lang/StringBuffer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->readLine(Ljava/io/InputStream;Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/16 v6, 0x9

    if-eq v5, v6, :cond_1

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to parse "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " as a timestamp array."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    const/4 v5, 0x0

    aget-object v1, v4, v5

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    :goto_0
    const/16 v5, 0x8

    if-ge v3, v5, :cond_0

    iget-object v5, v2, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:[J

    add-int/lit8 v6, v3, 0x1

    aget-object v6, v4, v6

    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->parseAsLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private writeInternal()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v9, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v12

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mFileLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->getFile()Landroid/util/AtomicFile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v4}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    const/16 v14, 0x1a0

    const/16 v15, 0x3e8

    const/16 v16, 0x408

    move/from16 v0, v16

    invoke-static {v9, v14, v15, v0}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "PACKAGE_USAGE__VERSION_1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v14, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v9, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/BufferedOutputStream;->write([B)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v6}, Landroid/content/pm/PackageParser$Package;->getLatestPackageUseTimeInMills()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v9, v14, v16

    if-eqz v9, :cond_0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v9, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v6, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:[J

    const/4 v9, 0x0

    array-length v15, v14

    :goto_1
    if-ge v9, v15, :cond_1

    aget-wide v10, v14, v9

    const/16 v16, 0x20

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v14, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v9, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v4, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_2
    const-string/jumbo v9, "PackageManager"

    const-string/jumbo v14, "Failed to write package usage times"

    invoke-static {v9, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v12

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mLastWritten:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void

    :cond_3
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v4, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v9

    :try_start_6
    monitor-exit v13

    throw v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v9

    monitor-exit v12

    throw v9
.end method


# virtual methods
.method isHistoricalPackageUsageAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mIsHistoricalPackageUsageAvailable:Z

    return v0
.end method

.method readLP()V
    .locals 10

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mFileLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->getFile()Landroid/util/AtomicFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    const/4 v4, 0x0

    :try_start_1
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0, v5, v6}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->readLine(Ljava/io/InputStream;Ljava/lang/StringBuffer;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    :try_start_3
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v4, v5

    :goto_1
    monitor-exit v8

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mLastWritten:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void

    :cond_0
    :try_start_4
    const-string/jumbo v7, "PACKAGE_USAGE__VERSION_1"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v5, v6}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->readVersion1LP(Ljava/io/InputStream;Ljava/lang/StringBuffer;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v4, v5

    :goto_2
    const/4 v7, 0x0

    :try_start_5
    iput-boolean v7, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mIsHistoricalPackageUsageAvailable:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_1
    :try_start_7
    invoke-direct {p0, v5, v6, v3}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->readVersion0LP(Ljava/io/InputStream;Ljava/lang/StringBuffer;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v4, v5

    :goto_3
    :try_start_8
    const-string/jumbo v7, "PackageManager"

    const-string/jumbo v9, "Failed to read package usage times"

    invoke-static {v7, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    :catchall_1
    move-exception v7

    :goto_4
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_2
    move-exception v7

    move-object v4, v5

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_3
.end method

.method write(Z)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->writeInternal()V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mLastWritten:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/server/pm/PackageManagerService$PackageUsage$1;

    const-string/jumbo v1, "PackageUsage_DiskWriter"

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$PackageUsage$1;-><init>(Lcom/android/server/pm/PackageManagerService$PackageUsage;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$PackageUsage$1;->start()V

    :cond_2
    return-void
.end method
