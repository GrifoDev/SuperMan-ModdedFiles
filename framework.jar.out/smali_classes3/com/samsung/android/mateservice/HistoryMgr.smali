.class Lcom/samsung/android/mateservice/HistoryMgr;
.super Ljava/lang/Object;
.source "HistoryMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mateservice/HistoryMgr$HistoryNode;
    }
.end annotation


# static fields
.field private static final TIME_DIFF:J = 0x4e94914f0000L


# instance fields
.field private mLastTimeStamp:J

.field private final mNodes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/samsung/android/mateservice/HistoryMgr$HistoryNode;",
            ">;"
        }
    .end annotation
.end field

.field private mSize:I


# direct methods
.method constructor <init>(I)V
    .locals 2
    .param p1, "historySize"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/mateservice/HistoryMgr;->mLastTimeStamp:J

    .line 14
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mateservice/HistoryMgr;->mNodes:Ljava/util/LinkedList;

    .line 15
    iput p1, p0, Lcom/samsung/android/mateservice/HistoryMgr;->mSize:I

    .line 13
    return-void
.end method

.method private appendHistoryNode(Lcom/samsung/android/mateservice/HistoryMgr$HistoryNode;)V
    .locals 5
    .param p1, "node"    # Lcom/samsung/android/mateservice/HistoryMgr$HistoryNode;

    .prologue
    .line 28
    iget-object v3, p0, Lcom/samsung/android/mateservice/HistoryMgr;->mNodes:Ljava/util/LinkedList;

    monitor-enter v3

    .line 29
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 31
    .local v0, "current":J
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/mateservice/HistoryMgr;->isExpired(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32
    iget-object v2, p0, Lcom/samsung/android/mateservice/HistoryMgr;->mNodes:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 39
    :cond_0
    :goto_0
    iput-wide v0, p0, Lcom/samsung/android/mateservice/HistoryMgr;->mLastTimeStamp:J

    .line 40
    iget-object v2, p0, Lcom/samsung/android/mateservice/HistoryMgr;->mNodes:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 27
    return-void

    .line 34
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/mateservice/HistoryMgr;->mNodes:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    iget v4, p0, Lcom/samsung/android/mateservice/HistoryMgr;->mSize:I

    if-lt v2, v4, :cond_0

    .line 35
    iget-object v2, p0, Lcom/samsung/android/mateservice/HistoryMgr;->mNodes:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 28
    .end local v0    # "current":J
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private isExpired(J)Z
    .locals 5
    .param p1, "current"    # J

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/samsung/android/mateservice/HistoryMgr;->mLastTimeStamp:J

    sub-long v0, p1, v0

    const-wide v2, 0x4e94914f0000L

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method varargs append(JLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "timeStamp"    # J
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 45
    if-eqz p4, :cond_0

    array-length v0, p4

    if-lez v0, :cond_0

    .line 46
    invoke-static {p3, p4}, Lcom/samsung/android/mateservice/MateLog;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 49
    :cond_0
    new-instance v0, Lcom/samsung/android/mateservice/HistoryMgr$HistoryNode;

    invoke-direct {v0, p3, p1, p2}, Lcom/samsung/android/mateservice/HistoryMgr$HistoryNode;-><init>(Ljava/lang/String;J)V

    invoke-direct {p0, v0}, Lcom/samsung/android/mateservice/HistoryMgr;->appendHistoryNode(Lcom/samsung/android/mateservice/HistoryMgr$HistoryNode;)V

    .line 44
    return-void
.end method

.method varargs append(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 20
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 21
    invoke-static {p1, p2}, Lcom/samsung/android/mateservice/MateLog;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 24
    :cond_0
    new-instance v0, Lcom/samsung/android/mateservice/HistoryMgr$HistoryNode;

    invoke-direct {v0, p1}, Lcom/samsung/android/mateservice/HistoryMgr$HistoryNode;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/mateservice/HistoryMgr;->appendHistoryNode(Lcom/samsung/android/mateservice/HistoryMgr$HistoryNode;)V

    .line 18
    return-void
.end method

.method getDump(Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 57
    const-string/jumbo v2, "\n---- history info.\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v3, p0, Lcom/samsung/android/mateservice/HistoryMgr;->mNodes:Ljava/util/LinkedList;

    monitor-enter v3

    .line 60
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/mateservice/HistoryMgr;->mNodes:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_1

    .line 61
    iget-object v2, p0, Lcom/samsung/android/mateservice/HistoryMgr;->mNodes:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mateservice/HistoryMgr$HistoryNode;

    .line 62
    .local v0, "cur":Lcom/samsung/android/mateservice/HistoryMgr$HistoryNode;
    if-eqz v0, :cond_0

    .line 63
    iget-wide v4, v0, Lcom/samsung/android/mateservice/HistoryMgr$HistoryNode;->timeStamp:J

    invoke-static {v4, v5}, Lcom/samsung/android/mateservice/MateLog;->getDateString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string/jumbo v2, "  "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v2, v0, Lcom/samsung/android/mateservice/HistoryMgr$HistoryNode;->msg:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string/jumbo v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 70
    .end local v0    # "cur":Lcom/samsung/android/mateservice/HistoryMgr$HistoryNode;
    :cond_1
    invoke-static {}, Lcom/samsung/android/mateservice/FwDependency;->isProductDev()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    monitor-exit v3

    .line 56
    return-void

    .line 71
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/mateservice/HistoryMgr;->mNodes:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 59
    .end local v1    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
