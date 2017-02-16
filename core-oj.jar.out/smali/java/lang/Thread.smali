.class public Ljava/lang/Thread;
.super Ljava/lang/Object;
.source "Thread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Thread$Caches;,
        Ljava/lang/Thread$ParkState;,
        Ljava/lang/Thread$State;,
        Ljava/lang/Thread$UncaughtExceptionHandler;,
        Ljava/lang/Thread$WeakClassKey;
    }
.end annotation


# static fields
.field private static final EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

.field public static final MAX_PRIORITY:I = 0xa

.field public static final MIN_PRIORITY:I = 0x1

.field private static final NANOS_PER_MILLI:I = 0xf4240

.field public static final NORM_PRIORITY:I = 0x5

.field private static final SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/lang/RuntimePermission;

.field private static volatile defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static threadInitNumber:I

.field private static threadSeqNumber:J


# instance fields
.field private volatile blocker:Lsun/nio/ch/Interruptible;

.field private final blockerLock:Ljava/lang/Object;

.field private contextClassLoader:Ljava/lang/ClassLoader;

.field private daemon:Z

.field private eetop:J

.field private group:Ljava/lang/ThreadGroup;

.field inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

.field private inheritedAccessControlContext:Ljava/security/AccessControlContext;

.field private final lock:Ljava/lang/Object;

.field private name:Ljava/lang/String;

.field private nativeParkEventPointer:J

.field private volatile nativePeer:J

.field volatile parkBlocker:Ljava/lang/Object;

.field private parkState:I

.field private priority:I

.field private single_step:Z

.field private stackSize:J

.field started:Z

.field private stillborn:Z

.field private target:Ljava/lang/Runnable;

.field threadLocalRandomProbe:I

.field threadLocalRandomSecondarySeed:I

.field threadLocalRandomSeed:J

.field threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

.field private threadQ:Ljava/lang/Thread;

.field private volatile threadStatus:I

.field private tid:J

.field private volatile uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1528
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    .line 1527
    sput-object v0, Ljava/lang/Thread;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    .line 1625
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string/jumbo v1, "enableContextClassLoaderOverride"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    .line 1624
    sput-object v0, Ljava/lang/Thread;->SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/lang/RuntimePermission;

    .line 143
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 153
    iput-boolean v2, p0, Ljava/lang/Thread;->started:Z

    .line 165
    iput-boolean v2, p0, Ljava/lang/Thread;->daemon:Z

    .line 168
    iput-boolean v2, p0, Ljava/lang/Thread;->stillborn:Z

    .line 190
    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 196
    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 222
    iput v2, p0, Ljava/lang/Thread;->threadStatus:I

    .line 242
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    .line 2055
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Thread-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->nextThreadNum()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, v1

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 437
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "target"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 153
    iput-boolean v2, p0, Ljava/lang/Thread;->started:Z

    .line 165
    iput-boolean v2, p0, Ljava/lang/Thread;->daemon:Z

    .line 168
    iput-boolean v2, p0, Ljava/lang/Thread;->stillborn:Z

    .line 190
    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 196
    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 222
    iput v2, p0, Ljava/lang/Thread;->threadStatus:I

    .line 242
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    .line 2055
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Thread-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->nextThreadNum()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 453
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 6
    .param p1, "target"    # Ljava/lang/Runnable;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 153
    iput-boolean v2, p0, Ljava/lang/Thread;->started:Z

    .line 165
    iput-boolean v2, p0, Ljava/lang/Thread;->daemon:Z

    .line 168
    iput-boolean v2, p0, Ljava/lang/Thread;->stillborn:Z

    .line 190
    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 196
    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 222
    iput v2, p0, Ljava/lang/Thread;->threadStatus:I

    .line 242
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    .line 2055
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 564
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 563
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 153
    iput-boolean v2, p0, Ljava/lang/Thread;->started:Z

    .line 165
    iput-boolean v2, p0, Ljava/lang/Thread;->daemon:Z

    .line 168
    iput-boolean v2, p0, Ljava/lang/Thread;->stillborn:Z

    .line 190
    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 196
    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 222
    iput v2, p0, Ljava/lang/Thread;->threadStatus:I

    .line 242
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    .line 2055
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 493
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 492
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "target"    # Ljava/lang/Runnable;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 153
    iput-boolean v1, p0, Ljava/lang/Thread;->started:Z

    .line 165
    iput-boolean v1, p0, Ljava/lang/Thread;->daemon:Z

    .line 168
    iput-boolean v1, p0, Ljava/lang/Thread;->stillborn:Z

    .line 190
    iput-object v2, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 196
    iput-object v2, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 222
    iput v1, p0, Ljava/lang/Thread;->threadStatus:I

    .line 242
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    .line 2055
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Thread-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->nextThreadNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 480
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 6
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "target"    # Ljava/lang/Runnable;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 153
    iput-boolean v1, p0, Ljava/lang/Thread;->started:Z

    .line 165
    iput-boolean v1, p0, Ljava/lang/Thread;->daemon:Z

    .line 168
    iput-boolean v1, p0, Ljava/lang/Thread;->stillborn:Z

    .line 190
    iput-object v2, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 196
    iput-object v2, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 222
    iput v1, p0, Ljava/lang/Thread;->threadStatus:I

    .line 242
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    .line 2055
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 612
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 611
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V
    .locals 4
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "target"    # Ljava/lang/Runnable;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "stackSize"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 153
    iput-boolean v1, p0, Ljava/lang/Thread;->started:Z

    .line 165
    iput-boolean v1, p0, Ljava/lang/Thread;->daemon:Z

    .line 168
    iput-boolean v1, p0, Ljava/lang/Thread;->stillborn:Z

    .line 190
    iput-object v2, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 196
    iput-object v2, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 222
    iput v1, p0, Ljava/lang/Thread;->threadStatus:I

    .line 242
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    .line 2055
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 691
    invoke-direct/range {p0 .. p5}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 690
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    .locals 6
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 153
    iput-boolean v1, p0, Ljava/lang/Thread;->started:Z

    .line 165
    iput-boolean v1, p0, Ljava/lang/Thread;->daemon:Z

    .line 168
    iput-boolean v1, p0, Ljava/lang/Thread;->stillborn:Z

    .line 190
    iput-object v2, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 196
    iput-object v2, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 222
    iput v1, p0, Ljava/lang/Thread;->threadStatus:I

    .line 242
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    .line 2055
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 517
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 516
    return-void
.end method

.method constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "group"    # Ljava/lang/ThreadGroup;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "priority"    # I
    .param p4, "daemon"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 153
    iput-boolean v1, p0, Ljava/lang/Thread;->started:Z

    .line 165
    iput-boolean v1, p0, Ljava/lang/Thread;->daemon:Z

    .line 168
    iput-boolean v1, p0, Ljava/lang/Thread;->stillborn:Z

    .line 190
    iput-object v2, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 196
    iput-object v2, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 222
    iput v1, p0, Ljava/lang/Thread;->threadStatus:I

    .line 242
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    .line 2055
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 524
    iput-object p1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    .line 525
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->addUnstarted()V

    .line 527
    if-nez p2, :cond_0

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Thread-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->nextThreadNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 534
    :cond_0
    iput-object p2, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    .line 536
    iput p3, p0, Ljava/lang/Thread;->priority:I

    .line 537
    iput-boolean p4, p0, Ljava/lang/Thread;->daemon:Z

    .line 538
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;->init2(Ljava/lang/Thread;)V

    .line 539
    invoke-static {}, Ljava/lang/Thread;->nextThreadID()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/lang/Thread;->tid:J

    .line 523
    return-void
.end method

.method public static activeCount()I
    .locals 1

    .prologue
    .line 1210
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v0

    return v0
.end method

.method private static auditSubclass(Ljava/lang/Class;)Z
    .locals 2
    .param p0, "subcl"    # Ljava/lang/Class;

    .prologue
    .line 1668
    new-instance v1, Ljava/lang/Thread$1;

    invoke-direct {v1, p0}, Ljava/lang/Thread$1;-><init>(Ljava/lang/Class;)V

    .line 1667
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1690
    .local v0, "result":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public static native currentThread()Ljava/lang/Thread;
.end method

.method private dispatchUncaughtException(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1947
    invoke-virtual {p0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 1946
    return-void
.end method

.method public static dumpStack()V
    .locals 2

    .prologue
    .line 1377
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Stack trace"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1376
    return-void
.end method

.method public static enumerate([Ljava/lang/Thread;)I
    .locals 1
    .param p0, "tarray"    # [Ljava/lang/Thread;

    .prologue
    .line 1240
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    move-result v0

    return v0
.end method

.method private exit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 771
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadGroup;->threadTerminated(Ljava/lang/Thread;)V

    .line 773
    iput-object v1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    .line 776
    :cond_0
    iput-object v1, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    .line 778
    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 779
    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 780
    iput-object v1, p0, Ljava/lang/Thread;->inheritedAccessControlContext:Ljava/security/AccessControlContext;

    .line 781
    iput-object v1, p0, Ljava/lang/Thread;->blocker:Lsun/nio/ch/Interruptible;

    .line 782
    iput-object v1, p0, Ljava/lang/Thread;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 770
    return-void
.end method

.method public static getAllStackTraces()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1607
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1611
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    sget-object v4, Ljava/lang/ThreadGroup;->systemThreadGroup:Ljava/lang/ThreadGroup;

    invoke-virtual {v4}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v0

    .line 1612
    .local v0, "count":I
    div-int/lit8 v4, v0, 0x2

    add-int/2addr v4, v0

    new-array v3, v4, [Ljava/lang/Thread;

    .line 1615
    .local v3, "threads":[Ljava/lang/Thread;
    sget-object v4, Ljava/lang/ThreadGroup;->systemThreadGroup:Ljava/lang/ThreadGroup;

    invoke-virtual {v4, v3}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    move-result v0

    .line 1616
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1617
    aget-object v4, v3, v1

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1616
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1620
    :cond_0
    return-object v2
.end method

.method public static getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 1906
    sget-object v0, Ljava/lang/Thread;->defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public static holdsLock(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1522
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-direct {v0, p0}, Ljava/lang/Thread;->nativeHoldsLock(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V
    .locals 4
    .param p1, "g"    # Ljava/lang/ThreadGroup;
    .param p2, "target"    # Ljava/lang/Runnable;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "stackSize"    # J

    .prologue
    .line 398
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 399
    .local v0, "parent":Ljava/lang/Thread;
    if-nez p1, :cond_0

    .line 400
    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object p1

    .line 403
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->addUnstarted()V

    .line 404
    iput-object p1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    .line 406
    iput-object p2, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    .line 407
    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    iput v1, p0, Ljava/lang/Thread;->priority:I

    .line 408
    invoke-virtual {v0}, Ljava/lang/Thread;->isDaemon()Z

    move-result v1

    iput-boolean v1, p0, Ljava/lang/Thread;->daemon:Z

    .line 409
    invoke-virtual {p0, p3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 411
    invoke-direct {p0, v0}, Ljava/lang/Thread;->init2(Ljava/lang/Thread;)V

    .line 414
    iput-wide p4, p0, Ljava/lang/Thread;->stackSize:J

    .line 415
    invoke-static {}, Ljava/lang/Thread;->nextThreadID()J

    move-result-wide v2

    iput-wide v2, p0, Ljava/lang/Thread;->tid:J

    .line 397
    return-void
.end method

.method private init2(Ljava/lang/Thread;)V
    .locals 1
    .param p1, "parent"    # Ljava/lang/Thread;

    .prologue
    .line 543
    invoke-virtual {p1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    .line 544
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Thread;->inheritedAccessControlContext:Ljava/security/AccessControlContext;

    .line 545
    iget-object v0, p1, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p1, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 546
    invoke-static {v0}, Ljava/lang/ThreadLocal;->createInheritedMap(Ljava/lang/ThreadLocal$ThreadLocalMap;)Ljava/lang/ThreadLocal$ThreadLocalMap;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    .line 542
    :cond_0
    return-void
.end method

.method public static native interrupted()Z
.end method

.method private static isCCLOverridden(Ljava/lang/Class;)Z
    .locals 4
    .param p0, "cl"    # Ljava/lang/Class;

    .prologue
    .line 1647
    const-class v2, Ljava/lang/Thread;

    if-ne p0, v2, :cond_0

    .line 1648
    const/4 v2, 0x0

    return v2

    .line 1650
    :cond_0
    sget-object v2, Ljava/lang/Thread$Caches;->subclassAuditsQueue:Ljava/lang/ref/ReferenceQueue;

    sget-object v3, Ljava/lang/Thread$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v2, v3}, Ljava/lang/Thread;->processQueue(Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V

    .line 1651
    new-instance v0, Ljava/lang/Thread$WeakClassKey;

    sget-object v2, Ljava/lang/Thread$Caches;->subclassAuditsQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p0, v2}, Ljava/lang/Thread$WeakClassKey;-><init>(Ljava/lang/Class;Ljava/lang/ref/ReferenceQueue;)V

    .line 1652
    .local v0, "key":Ljava/lang/Thread$WeakClassKey;
    sget-object v2, Ljava/lang/Thread$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 1653
    .local v1, "result":Ljava/lang/Boolean;
    if-nez v1, :cond_1

    .line 1654
    invoke-static {p0}, Ljava/lang/Thread;->auditSubclass(Ljava/lang/Class;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1655
    sget-object v2, Ljava/lang/Thread$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1658
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method private static native nativeCreate(Ljava/lang/Thread;JZ)V
.end method

.method private native nativeGetStatus(Z)I
.end method

.method private native nativeHoldsLock(Ljava/lang/Object;)Z
.end method

.method private native nativeInterrupt()V
.end method

.method private native nativeSetName(Ljava/lang/String;)V
.end method

.method private native nativeSetPriority(I)V
.end method

.method private static declared-synchronized nextThreadID()J
    .locals 6

    .prologue
    const-class v1, Ljava/lang/Thread;

    monitor-enter v1

    .line 226
    :try_start_0
    sget-wide v2, Ljava/lang/Thread;->threadSeqNumber:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Ljava/lang/Thread;->threadSeqNumber:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized nextThreadNum()I
    .locals 3

    .prologue
    const-class v1, Ljava/lang/Thread;

    monitor-enter v1

    .line 185
    :try_start_0
    sget v0, Ljava/lang/Thread;->threadInitNumber:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Ljava/lang/Thread;->threadInitNumber:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static processQueue(Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Class",
            "<*>;>;",
            "Ljava/util/concurrent/ConcurrentMap",
            "<+",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Class",
            "<*>;>;*>;)V"
        }
    .end annotation

    .prologue
    .line 1959
    .local p0, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Ljava/lang/Class<*>;>;"
    .local p1, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<+Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;*>;"
    :goto_0
    invoke-virtual {p0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    .local v0, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+Ljava/lang/Class<*>;>;"
    if-eqz v0, :cond_0

    .line 1960
    invoke-interface {p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1956
    :cond_0
    return-void
.end method

.method public static setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0
    .param p0, "eh"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .prologue
    .line 1895
    sput-object p0, Ljava/lang/Thread;->defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 1894
    return-void
.end method

.method public static sleep(J)V
    .locals 2
    .param p0, "millis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 313
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/lang/Thread;->sleep(JI)V

    .line 312
    return-void
.end method

.method public static sleep(JI)V
    .locals 18
    .param p0, "millis"    # J
    .param p2, "nanos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 343
    const-wide/16 v14, 0x0

    cmp-long v9, p0, v14

    if-gez v9, :cond_0

    .line 344
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "millis < 0: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p0

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v9, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 346
    :cond_0
    if-gez p2, :cond_1

    .line 347
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "nanos < 0: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v9, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 349
    :cond_1
    const v9, 0xf423f

    move/from16 v0, p2

    if-le v0, v9, :cond_2

    .line 350
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "nanos > 999999: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v9, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 355
    :cond_2
    const-wide/16 v14, 0x0

    cmp-long v9, p0, v14

    if-nez v9, :cond_4

    if-nez p2, :cond_4

    .line 357
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 358
    new-instance v9, Ljava/lang/InterruptedException;

    invoke-direct {v9}, Ljava/lang/InterruptedException;-><init>()V

    throw v9

    .line 360
    :cond_3
    return-void

    .line 363
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 364
    .local v12, "start":J
    const-wide/32 v14, 0xf4240

    mul-long v14, v14, p0

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v4, v14, v16

    .line 366
    .local v4, "duration":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    iget-object v8, v9, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    .line 369
    .local v8, "lock":Ljava/lang/Object;
    monitor-enter v8

    .line 371
    :goto_0
    :try_start_0
    move-wide/from16 v0, p0

    move/from16 v2, p2

    invoke-static {v8, v0, v1, v2}, Ljava/lang/Thread;->sleep(Ljava/lang/Object;JI)V

    .line 373
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    .line 374
    .local v10, "now":J
    sub-long v6, v10, v12

    .line 376
    .local v6, "elapsed":J
    cmp-long v9, v6, v4

    if-ltz v9, :cond_5

    monitor-exit v8

    .line 342
    return-void

    .line 380
    :cond_5
    sub-long/2addr v4, v6

    .line 381
    move-wide v12, v10

    .line 382
    const-wide/32 v14, 0xf4240

    :try_start_1
    div-long p0, v4, v14

    .line 383
    const-wide/32 v14, 0xf4240

    rem-long v14, v4, v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    long-to-int v0, v14

    move/from16 p2, v0

    goto :goto_0

    .line 369
    .end local v6    # "elapsed":J
    .end local v10    # "now":J
    :catchall_0
    move-exception v9

    monitor-exit v8

    throw v9
.end method

.method private static native sleep(Ljava/lang/Object;JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public static native yield()V
.end method


# virtual methods
.method public blockedOn(Lsun/nio/ch/Interruptible;)V
    .locals 2
    .param p1, "b"    # Lsun/nio/ch/Interruptible;

    .prologue
    .line 250
    iget-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_0
    iput-object p1, p0, Ljava/lang/Thread;->blocker:Lsun/nio/ch/Interruptible;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 249
    return-void

    .line 250
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final checkAccess()V
    .locals 0

    .prologue
    .line 1428
    return-void
.end method

.method protected clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 427
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public countStackFrames()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1256
    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public destroy()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1019
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .prologue
    .line 1476
    iget-object v0, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 1703
    iget-wide v0, p0, Ljava/lang/Thread;->tid:J

    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1175
    iget-object v0, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPriority()I
    .locals 1

    .prologue
    .line 1137
    iget v0, p0, Ljava/lang/Thread;->priority:I

    return v0
.end method

.method public getStackTrace()[Ljava/lang/StackTraceElement;
    .locals 1

    .prologue
    .line 1567
    invoke-static {p0}, Ldalvik/system/VMStack;->getThreadStackTrace(Ljava/lang/Thread;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 1568
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    if-eqz v0, :cond_0

    .end local v0    # "ste":[Ljava/lang/StackTraceElement;
    :goto_0
    return-object v0

    .restart local v0    # "ste":[Ljava/lang/StackTraceElement;
    :cond_0
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    goto :goto_0
.end method

.method public getState()Ljava/lang/Thread$State;
    .locals 2

    .prologue
    .line 1815
    invoke-static {}, Ljava/lang/Thread$State;->values()[Ljava/lang/Thread$State;

    move-result-object v0

    iget-boolean v1, p0, Ljava/lang/Thread;->started:Z

    invoke-direct {p0, v1}, Ljava/lang/Thread;->nativeGetStatus(Z)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getThreadGroup()Ljava/lang/ThreadGroup;
    .locals 2

    .prologue
    .line 1187
    invoke-virtual {p0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_0

    .line 1188
    const/4 v0, 0x0

    return-object v0

    .line 1190
    :cond_0
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    return-object v0
.end method

.method public getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 1918
    iget-object v0, p0, Ljava/lang/Thread;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 1919
    iget-object v0, p0, Ljava/lang/Thread;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 1918
    :goto_0
    return-object v0

    .line 1919
    :cond_0
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    goto :goto_0
.end method

.method public interrupt()V
    .locals 3

    .prologue
    .line 950
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq p0, v1, :cond_0

    .line 951
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    .line 953
    :cond_0
    iget-object v2, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 954
    :try_start_0
    iget-object v0, p0, Ljava/lang/Thread;->blocker:Lsun/nio/ch/Interruptible;

    .line 955
    .local v0, "b":Lsun/nio/ch/Interruptible;
    if-eqz v0, :cond_1

    .line 956
    invoke-direct {p0}, Ljava/lang/Thread;->nativeInterrupt()V

    .line 957
    invoke-interface {v0, p0}, Lsun/nio/ch/Interruptible;->interrupt(Ljava/lang/Thread;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 958
    return-void

    :cond_1
    monitor-exit v2

    .line 961
    invoke-direct {p0}, Ljava/lang/Thread;->nativeInterrupt()V

    .line 949
    return-void

    .line 953
    .end local v0    # "b":Lsun/nio/ch/Interruptible;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final isAlive()Z
    .locals 4

    .prologue
    .line 1030
    iget-wide v0, p0, Ljava/lang/Thread;->nativePeer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isDaemon()Z
    .locals 1

    .prologue
    .line 1413
    iget-boolean v0, p0, Ljava/lang/Thread;->daemon:Z

    return v0
.end method

.method public native isInterrupted()Z
.end method

.method public final join()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1367
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Thread;->join(J)V

    .line 1366
    return-void
.end method

.method public final join(J)V
    .locals 13
    .param p1, "millis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    .line 1281
    iget-object v7, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    monitor-enter v7

    .line 1282
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1283
    .local v0, "base":J
    const-wide/16 v4, 0x0

    .line 1285
    .local v4, "now":J
    cmp-long v6, p1, v10

    if-gez v6, :cond_0

    .line 1286
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "timeout value is negative"

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1281
    .end local v0    # "base":J
    .end local v4    # "now":J
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 1289
    .restart local v0    # "base":J
    .restart local v4    # "now":J
    :cond_0
    cmp-long v6, p1, v10

    if-nez v6, :cond_2

    .line 1290
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1291
    iget-object v6, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .line 1299
    .local v2, "delay":J
    :cond_1
    iget-object v6, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    invoke-virtual {v6, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 1300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v0

    .line 1294
    .end local v2    # "delay":J
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_3

    .line 1295
    sub-long v2, p1, v4

    .line 1296
    .restart local v2    # "delay":J
    cmp-long v6, v2, v10

    if-gtz v6, :cond_1

    .end local v2    # "delay":J
    :cond_3
    monitor-exit v7

    .line 1280
    return-void
.end method

.method public final join(JI)V
    .locals 5
    .param p1, "millis"    # J
    .param p3, "nanos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 1333
    iget-object v1, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1334
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 1335
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "timeout value is negative"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1333
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1338
    :cond_0
    if-ltz p3, :cond_1

    const v0, 0xf423f

    if-le p3, v0, :cond_2

    .line 1339
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1340
    const-string/jumbo v2, "nanosecond timeout value out of range"

    .line 1339
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1343
    :cond_2
    const v0, 0x7a120

    if-ge p3, v0, :cond_3

    if-eqz p3, :cond_4

    cmp-long v0, p1, v2

    if-nez v0, :cond_4

    .line 1344
    :cond_3
    const-wide/16 v2, 0x1

    add-long/2addr p1, v2

    .line 1347
    :cond_4
    invoke-virtual {p0, p1, p2}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 1332
    return-void
.end method

.method public final parkFor$(J)V
    .locals 9
    .param p1, "nanos"    # J

    .prologue
    const/4 v8, 0x3

    .line 2116
    iget-object v4, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 2117
    :try_start_0
    iget v1, p0, Ljava/lang/Thread;->parkState:I

    packed-switch v1, :pswitch_data_0

    .line 2144
    new-instance v1, Ljava/lang/AssertionError;

    const-string/jumbo v5, "Attempt to repark"

    invoke-direct {v1, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2116
    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1

    .line 2119
    :pswitch_0
    const/4 v1, 0x1

    :try_start_1
    iput v1, p0, Ljava/lang/Thread;->parkState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v4

    .line 2115
    return-void

    .line 2123
    :pswitch_1
    const-wide/32 v6, 0xf4240

    :try_start_2
    div-long v2, p1, v6

    .line 2124
    .local v2, "millis":J
    const-wide/32 v6, 0xf4240

    rem-long/2addr p1, v6

    .line 2126
    const/4 v1, 0x3

    iput v1, p0, Ljava/lang/Thread;->parkState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2128
    :try_start_3
    iget-object v1, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    long-to-int v5, p1

    invoke-virtual {v1, v2, v3, v5}, Ljava/lang/Object;->wait(JI)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2137
    :try_start_4
    iget v1, p0, Ljava/lang/Thread;->parkState:I

    if-ne v1, v8, :cond_0

    .line 2138
    const/4 v1, 0x1

    iput v1, p0, Ljava/lang/Thread;->parkState:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 2129
    :catch_0
    move-exception v0

    .line 2130
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2137
    :try_start_6
    iget v1, p0, Ljava/lang/Thread;->parkState:I

    if-ne v1, v8, :cond_0

    .line 2138
    const/4 v1, 0x1

    iput v1, p0, Ljava/lang/Thread;->parkState:I

    goto :goto_0

    .line 2131
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v1

    .line 2137
    iget v5, p0, Ljava/lang/Thread;->parkState:I

    if-ne v5, v8, :cond_1

    .line 2138
    const/4 v5, 0x1

    iput v5, p0, Ljava/lang/Thread;->parkState:I

    .line 2131
    :cond_1
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final parkUntil$(J)V
    .locals 7
    .param p1, "time"    # J

    .prologue
    .line 2172
    iget-object v3, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 2187
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, p1, v4

    .line 2189
    .local v0, "delayMillis":J
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-gtz v2, :cond_0

    .line 2190
    const/4 v2, 0x1

    iput v2, p0, Ljava/lang/Thread;->parkState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v3

    .line 2171
    return-void

    .line 2192
    :cond_0
    const-wide/32 v4, 0xf4240

    mul-long/2addr v4, v0

    :try_start_1
    invoke-virtual {p0, v4, v5}, Ljava/lang/Thread;->parkFor$(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2172
    .end local v0    # "delayMillis":J
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public final resume()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1084
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 760
    :cond_0
    return-void
.end method

.method public setContextClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "cl"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1502
    iput-object p1, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    .line 1501
    return-void
.end method

.method public final setDaemon(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 1398
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    .line 1399
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1400
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v0}, Ljava/lang/IllegalThreadStateException;-><init>()V

    throw v0

    .line 1402
    :cond_0
    iput-boolean p1, p0, Ljava/lang/Thread;->daemon:Z

    .line 1397
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1155
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    .line 1156
    if-nez p1, :cond_0

    .line 1157
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1160
    :cond_0
    monitor-enter p0

    .line 1161
    :try_start_0
    iput-object p1, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    .line 1162
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1163
    invoke-direct {p0, p1}, Ljava/lang/Thread;->nativeSetName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 1154
    return-void

    .line 1160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setPriority(I)V
    .locals 2
    .param p1, "newPriority"    # I

    .prologue
    .line 1113
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    .line 1114
    const/16 v1, 0xa

    if-gt p1, v1, :cond_0

    const/4 v1, 0x1

    if-ge p1, v1, :cond_1

    .line 1115
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 1117
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    .local v0, "g":Ljava/lang/ThreadGroup;
    if-eqz v0, :cond_4

    .line 1118
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result v1

    if-le p1, v1, :cond_2

    .line 1119
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result p1

    .line 1121
    :cond_2
    monitor-enter p0

    .line 1122
    :try_start_0
    iput p1, p0, Ljava/lang/Thread;->priority:I

    .line 1123
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1124
    invoke-direct {p0, p1}, Ljava/lang/Thread;->nativeSetPriority(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    .line 1111
    :cond_4
    return-void

    .line 1121
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0
    .param p1, "eh"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .prologue
    .line 1938
    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    .line 1939
    iput-object p1, p0, Ljava/lang/Thread;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 1937
    return-void
.end method

.method public declared-synchronized start()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 721
    :try_start_0
    iget v1, p0, Ljava/lang/Thread;->threadStatus:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Ljava/lang/Thread;->started:Z

    if-eqz v1, :cond_1

    .line 722
    :cond_0
    new-instance v1, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v1}, Ljava/lang/IllegalThreadStateException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 727
    :cond_1
    :try_start_1
    iget-object v1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v1, p0}, Ljava/lang/ThreadGroup;->add(Ljava/lang/Thread;)V

    .line 729
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/lang/Thread;->started:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 731
    :try_start_2
    iget-wide v2, p0, Ljava/lang/Thread;->stackSize:J

    iget-boolean v1, p0, Ljava/lang/Thread;->daemon:Z

    invoke-static {p0, v2, v3, v1}, Ljava/lang/Thread;->nativeCreate(Ljava/lang/Thread;JZ)V

    .line 732
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/lang/Thread;->started:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 735
    :try_start_3
    iget-boolean v1, p0, Ljava/lang/Thread;->started:Z

    if-nez v1, :cond_2

    .line 736
    iget-object v1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v1, p0}, Ljava/lang/ThreadGroup;->threadStartFailed(Ljava/lang/Thread;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    .line 712
    return-void

    .line 733
    :catchall_1
    move-exception v1

    .line 735
    :try_start_4
    iget-boolean v2, p0, Ljava/lang/Thread;->started:Z

    if-nez v2, :cond_3

    .line 736
    iget-object v2, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v2, p0}, Ljava/lang/ThreadGroup;->threadStartFailed(Ljava/lang/Thread;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 733
    :cond_3
    :goto_1
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 738
    :catch_0
    move-exception v0

    .local v0, "ignore":Ljava/lang/Throwable;
    goto :goto_1

    .end local v0    # "ignore":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .restart local v0    # "ignore":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method public final stop()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 853
    new-instance v0, Ljava/lang/ThreadDeath;

    invoke-direct {v0}, Ljava/lang/ThreadDeath;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->stop(Ljava/lang/Throwable;)V

    .line 852
    return-void
.end method

.method public final stop(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 907
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final suspend()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1059
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1438
    invoke-virtual {p0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    .line 1439
    .local v0, "group":Ljava/lang/ThreadGroup;
    if-eqz v0, :cond_0

    .line 1440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Thread["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Thread;->getPriority()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1441
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1440
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1441
    const-string/jumbo v2, "]"

    .line 1440
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1443
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Thread["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Thread;->getPriority()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1444
    const-string/jumbo v2, ""

    .line 1443
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1444
    const-string/jumbo v2, "]"

    .line 1443
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final unpark$()V
    .locals 2

    .prologue
    .line 2070
    iget-object v1, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 2071
    :try_start_0
    iget v0, p0, Ljava/lang/Thread;->parkState:I

    packed-switch v0, :pswitch_data_0

    .line 2086
    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    .line 2087
    iget-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :pswitch_0
    monitor-exit v1

    .line 2069
    return-void

    .line 2082
    :pswitch_1
    const/4 v0, 0x2

    :try_start_1
    iput v0, p0, Ljava/lang/Thread;->parkState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2070
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 2071
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
