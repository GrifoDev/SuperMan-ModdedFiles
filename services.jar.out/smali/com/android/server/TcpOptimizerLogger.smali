.class public Lcom/android/server/TcpOptimizerLogger;
.super Ljava/lang/Object;
.source "TcpOptimizerLogger.java"


# static fields
.field private static sInstance:Lcom/android/server/TcpOptimizerLogger;


# instance fields
.field mIsShowingGlobalLog:Z

.field mIsUsed:Z

.field private mTcpOptimizerLog:Landroid/util/LocalLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/TcpOptimizerLogger;->sInstance:Lcom/android/server/TcpOptimizerLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0xbb8

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/TcpOptimizerLogger;->mTcpOptimizerLog:Landroid/util/LocalLog;

    const-string/jumbo v0, "1"

    const-string/jumbo v1, "persist.log.seclevel"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/TcpOptimizerLogger;->mIsShowingGlobalLog:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/TcpOptimizerLogger;->mIsUsed:Z

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/TcpOptimizerLogger;
    .locals 2

    const-class v1, Lcom/android/server/TcpOptimizerLogger;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/TcpOptimizerLogger;->sInstance:Lcom/android/server/TcpOptimizerLogger;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/TcpOptimizerLogger;

    invoke-direct {v0}, Lcom/android/server/TcpOptimizerLogger;-><init>()V

    sput-object v0, Lcom/android/server/TcpOptimizerLogger;->sInstance:Lcom/android/server/TcpOptimizerLogger;

    :cond_0
    sget-object v0, Lcom/android/server/TcpOptimizerLogger;->sInstance:Lcom/android/server/TcpOptimizerLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public add(Lcom/android/server/TcpStats;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/TcpOptimizerLogger;->mIsUsed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/TcpOptimizerLogger;->mIsUsed:Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/TcpOptimizerLogger;->mTcpOptimizerLog:Landroid/util/LocalLog;

    invoke-virtual {p1}, Lcom/android/server/TcpStats;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public dumpTcpStats(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/TcpOptimizerLogger;->mIsShowingGlobalLog:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/TcpOptimizerLogger;->mIsUsed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v0, "TcpOptimizer Log:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "addr is existed : TCP or UDP"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "addr is xxx.xxx.xxx.xxx_53 or xxxx:xxxx:xxxx:xxxx::xxxx_53 : UDP(DNS)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "addr is _0 : UNIX DOMAIN SOCKET"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "time - procName\tuid\tpid\ttid\taddr\tsid\tstate\terrno\tmark\tscreen"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/TcpOptimizerLogger;->mTcpOptimizerLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_0
    return-void
.end method
