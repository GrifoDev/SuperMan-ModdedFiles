.class final Landroid/database/sqlite/SQLiteConnection$OperationLog;
.super Ljava/lang/Object;
.source "SQLiteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OperationLog"
.end annotation


# static fields
.field private static final COOKIE_GENERATION_SHIFT:I = 0x8

.field private static final COOKIE_INDEX_MASK:I = 0xff

.field private static final MAX_RECENT_OPERATIONS:I = 0x14


# instance fields
.field private final mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

.field private mGeneration:I

.field private mIndex:I

.field private final mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

.field private final mPool:Landroid/database/sqlite/SQLiteConnectionPool;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [Landroid/database/sqlite/SQLiteConnection$Operation;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    iput-object p2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    return-void
.end method

.method private endOperationDeferLogLocked(I)Z
    .locals 8

    const-wide/32 v6, 0x100000

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v6, v7}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Landroid/database/sqlite/SQLiteConnection$Operation;->-wrap1(Landroid/database/sqlite/SQLiteConnection$Operation;)Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    invoke-static {v6, v7, v3, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    iget-wide v4, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    iget-wide v6, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartTime:J

    sub-long/2addr v4, v6

    iput-wide v4, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mExecutionTime:J

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    :try_start_0
    iget-wide v4, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mExecutionTime:J

    const-wide/16 v6, 0xbb8

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isSamsungPreloadDb()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isGoogleDb()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sendSlowQueryLog(Landroid/database/sqlite/SQLiteConnectionPool;Ljava/lang/String;Landroid/database/sqlite/SQLiteConnection$Operation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    sget-boolean v3, Landroid/database/sqlite/SQLiteDebug;->DEBUG_LOG_SLOW_QUERIES:Z

    if-eqz v3, :cond_3

    iget-wide v2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mExecutionTime:J

    invoke-static {v2, v3}, Landroid/database/sqlite/SQLiteDebug;->shouldLogSlowQuery(J)Z

    move-result v2

    :cond_3
    return v2

    :catch_0
    move-exception v0

    sget-boolean v3, Landroid/database/sqlite/SQLiteDebug;->DEBUG_ENABLE:Z

    if-eqz v3, :cond_2

    throw v0

    :cond_4
    return v2
.end method

.method private getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;
    .locals 3

    and-int/lit16 v0, p1, 0xff

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v1, v2, v0

    iget v2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    if-ne v2, p1, :cond_0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private logOperationLocked(ILjava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    if-eqz p2, :cond_0

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string/jumbo v2, "SQLiteConnection"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private newOperationCookieLocked(I)I
    .locals 2

    iget v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mGeneration:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mGeneration:I

    shl-int/lit8 v1, v0, 0x8

    or-int/2addr v1, p1

    return v1
.end method


# virtual methods
.method public beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 10

    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v5

    :try_start_0
    iget v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v2, v4, 0x14

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v3, v4, v2

    if-nez v3, :cond_1

    new-instance v3, Landroid/database/sqlite/SQLiteConnection$Operation;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteConnection$Operation;-><init>()V

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aput-object v3, v4, v2

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartWallTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mStartTime:J

    const-wide/16 v6, 0x0

    iput-wide v6, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mExecutionTime:J

    iput-object p1, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mKind:Ljava/lang/String;

    iput-object p2, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    iput v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mPid:I

    if-eqz p3, :cond_4

    iget-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    if-nez v4, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    :goto_1
    const/4 v1, 0x0

    :goto_2
    array-length v4, p3

    if-ge v1, v4, :cond_4

    aget-object v0, p3, v1

    if-eqz v0, :cond_3

    instance-of v4, v0, [B

    if-eqz v4, :cond_3

    iget-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-static {}, Landroid/database/sqlite/SQLiteConnection;->-get0()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;

    iget-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_2
    :try_start_1
    iget-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_3
    iget-object v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mBindArgs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->newOperationCookieLocked(I)I

    move-result v4

    iput v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    const-wide/32 v6, 0x100000

    invoke-static {v6, v7}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v3}, Landroid/database/sqlite/SQLiteConnection$Operation;->-wrap1(Landroid/database/sqlite/SQLiteConnection$Operation;)Ljava/lang/String;

    move-result-object v4

    iget v6, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I

    const-wide/32 v8, 0x100000

    invoke-static {v8, v9, v4, v6}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    :cond_5
    iput v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    iget v4, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mCookie:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    return v4
.end method

.method public describeCurrentOperation()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    iget v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    aget-object v1, v2, v4

    if-eqz v1, :cond_0

    iget-boolean v2, v1, Landroid/database/sqlite/SQLiteConnection$Operation;->mFinished:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit v3

    return-object v2

    :cond_0
    monitor-exit v3

    return-object v5

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public dump(Landroid/util/Printer;Z)V
    .locals 7

    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v5

    :try_start_0
    const-string/jumbo v4, "  Most recently executed operations:"

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mIndex:I

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v3, v4, v0

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "    "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ": ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/database/sqlite/SQLiteConnection$Operation;->-wrap0(Landroid/database/sqlite/SQLiteConnection$Operation;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "] "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[Pid:("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v3, Landroid/database/sqlite/SQLiteConnection$Operation;->mPid:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ")]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, p2}, Landroid/database/sqlite/SQLiteConnection$Operation;->describe(Ljava/lang/StringBuilder;Z)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    aget-object v3, v4, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    const/16 v4, 0x14

    if-lt v2, v4, :cond_0

    :cond_1
    :goto_1
    monitor-exit v5

    return-void

    :cond_2
    const/16 v0, 0x13

    goto :goto_0

    :cond_3
    :try_start_1
    const-string/jumbo v4, "    <none>"

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public endOperation(I)V
    .locals 2

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogLocked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperationLocked(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public endOperationDeferLog(I)Z
    .locals 2

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLogLocked(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public failOperation(ILjava/lang/Exception;)V
    .locals 3

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->getOperationLocked(I)Landroid/database/sqlite/SQLiteConnection$Operation;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object p2, v0, Landroid/database/sqlite/SQLiteConnection$Operation;->mException:Ljava/lang/Exception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public logOperation(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection$OperationLog;->mOperations:[Landroid/database/sqlite/SQLiteConnection$Operation;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperationLocked(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
