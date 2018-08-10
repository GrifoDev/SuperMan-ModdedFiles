.class public Landroid/util/BootTimingsTraceLog;
.super Ljava/lang/Object;
.source "BootTimingsTraceLog.java"


# static fields
.field private static final DEBUG_BOOT_TIME:Z


# instance fields
.field private final mStartTimes:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;

.field private mTraceTag:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Landroid/util/BootTimingsTraceLog;->DEBUG_BOOT_TIME:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Landroid/util/BootTimingsTraceLog;->DEBUG_BOOT_TIME:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    :goto_0
    iput-object v0, p0, Landroid/util/BootTimingsTraceLog;->mStartTimes:Ljava/util/Deque;

    iput-object p1, p0, Landroid/util/BootTimingsTraceLog;->mTag:Ljava/lang/String;

    iput-wide p2, p0, Landroid/util/BootTimingsTraceLog;->mTraceTag:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public traceBegin(Ljava/lang/String;)V
    .locals 4

    iget-wide v0, p0, Landroid/util/BootTimingsTraceLog;->mTraceTag:J

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    sget-boolean v0, Landroid/util/BootTimingsTraceLog;->DEBUG_BOOT_TIME:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/util/BootTimingsTraceLog;->mStartTimes:Ljava/util/Deque;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public traceEnd()V
    .locals 8

    iget-wide v2, p0, Landroid/util/BootTimingsTraceLog;->mTraceTag:J

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    sget-boolean v1, Landroid/util/BootTimingsTraceLog;->DEBUG_BOOT_TIME:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/util/BootTimingsTraceLog;->mStartTimes:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/util/BootTimingsTraceLog;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "traceEnd called more times than traceBegin"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Landroid/util/BootTimingsTraceLog;->mStartTimes:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v2, p0, Landroid/util/BootTimingsTraceLog;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " took to complete: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "ms"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
