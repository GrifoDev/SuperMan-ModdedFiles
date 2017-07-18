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

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    sput-object v0, Ljava/lang/Thread;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    new-instance v0, Ljava/lang/RuntimePermission;

    const-string/jumbo v1, "enableContextClassLoaderOverride"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/lang/Thread;->SUBCLASS_IMPLEMENTATION_PERMISSION:Ljava/lang/RuntimePermission;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    iput-boolean v2, p0, Ljava/lang/Thread;->started:Z

    iput-boolean v2, p0, Ljava/lang/Thread;->daemon:Z

    iput-boolean v2, p0, Ljava/lang/Thread;->stillborn:Z

    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    iput v2, p0, Ljava/lang/Thread;->threadStatus:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

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

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    iput-boolean v2, p0, Ljava/lang/Thread;->started:Z

    iput-boolean v2, p0, Ljava/lang/Thread;->daemon:Z

    iput-boolean v2, p0, Ljava/lang/Thread;->stillborn:Z

    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    iput v2, p0, Ljava/lang/Thread;->threadStatus:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

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

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    iput-boolean v2, p0, Ljava/lang/Thread;->started:Z

    iput-boolean v2, p0, Ljava/lang/Thread;->daemon:Z

    iput-boolean v2, p0, Ljava/lang/Thread;->stillborn:Z

    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    iput v2, p0, Ljava/lang/Thread;->threadStatus:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    iput-boolean v2, p0, Ljava/lang/Thread;->started:Z

    iput-boolean v2, p0, Ljava/lang/Thread;->daemon:Z

    iput-boolean v2, p0, Ljava/lang/Thread;->stillborn:Z

    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    iput v2, p0, Ljava/lang/Thread;->threadStatus:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    iput-boolean v1, p0, Ljava/lang/Thread;->started:Z

    iput-boolean v1, p0, Ljava/lang/Thread;->daemon:Z

    iput-boolean v1, p0, Ljava/lang/Thread;->stillborn:Z

    iput-object v2, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    iput-object v2, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    iput v1, p0, Ljava/lang/Thread;->threadStatus:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

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

    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    iput-boolean v1, p0, Ljava/lang/Thread;->started:Z

    iput-boolean v1, p0, Ljava/lang/Thread;->daemon:Z

    iput-boolean v1, p0, Ljava/lang/Thread;->stillborn:Z

    iput-object v2, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    iput-object v2, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    iput v1, p0, Ljava/lang/Thread;->threadStatus:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    iput-boolean v1, p0, Ljava/lang/Thread;->started:Z

    iput-boolean v1, p0, Ljava/lang/Thread;->daemon:Z

    iput-boolean v1, p0, Ljava/lang/Thread;->stillborn:Z

    iput-object v2, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    iput-object v2, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    iput v1, p0, Ljava/lang/Thread;->threadStatus:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    invoke-direct/range {p0 .. p5}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    iput-boolean v1, p0, Ljava/lang/Thread;->started:Z

    iput-boolean v1, p0, Ljava/lang/Thread;->daemon:Z

    iput-boolean v1, p0, Ljava/lang/Thread;->stillborn:Z

    iput-object v2, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    iput-object v2, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    iput v1, p0, Ljava/lang/Thread;->threadStatus:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;->init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    return-void
.end method

.method constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;IZ)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    iput-boolean v1, p0, Ljava/lang/Thread;->started:Z

    iput-boolean v1, p0, Ljava/lang/Thread;->daemon:Z

    iput-boolean v1, p0, Ljava/lang/Thread;->stillborn:Z

    iput-object v2, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    iput-object v2, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    iput v1, p0, Ljava/lang/Thread;->threadStatus:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    iput-object p1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->addUnstarted()V

    if-nez p2, :cond_0

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

    :cond_0
    iput-object p2, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    iput p3, p0, Ljava/lang/Thread;->priority:I

    iput-boolean p4, p0, Ljava/lang/Thread;->daemon:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;->init2(Ljava/lang/Thread;)V

    invoke-static {}, Ljava/lang/Thread;->nextThreadID()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/lang/Thread;->tid:J

    return-void
.end method

.method public static activeCount()I
    .locals 1

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

    new-instance v1, Ljava/lang/Thread$1;

    invoke-direct {v1, p0}, Ljava/lang/Thread$1;-><init>(Ljava/lang/Class;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public static native currentThread()Ljava/lang/Thread;
.end method

.method private dispatchUncaughtException(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static dumpStack()V
    .locals 2

    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Stack trace"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public static enumerate([Ljava/lang/Thread;)I
    .locals 1

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

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadGroup;->threadTerminated(Ljava/lang/Thread;)V

    iput-object v1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    :cond_0
    iput-object v1, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    iput-object v1, p0, Ljava/lang/Thread;->threadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    iput-object v1, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    iput-object v1, p0, Ljava/lang/Thread;->inheritedAccessControlContext:Ljava/security/AccessControlContext;

    iput-object v1, p0, Ljava/lang/Thread;->blocker:Lsun/nio/ch/Interruptible;

    iput-object v1, p0, Ljava/lang/Thread;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

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

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v4, Ljava/lang/ThreadGroup;->systemThreadGroup:Ljava/lang/ThreadGroup;

    invoke-virtual {v4}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v0

    div-int/lit8 v4, v0, 0x2

    add-int/2addr v4, v0

    new-array v3, v4, [Ljava/lang/Thread;

    sget-object v4, Ljava/lang/ThreadGroup;->systemThreadGroup:Ljava/lang/ThreadGroup;

    invoke-virtual {v4, v3}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v4, v3, v1

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    sget-object v0, Ljava/lang/Thread;->defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public static holdsLock(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-direct {v0, p0}, Ljava/lang/Thread;->nativeHoldsLock(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private init(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->addUnstarted()V

    iput-object p1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    iput-object p2, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    iput v1, p0, Ljava/lang/Thread;->priority:I

    invoke-virtual {v0}, Ljava/lang/Thread;->isDaemon()Z

    move-result v1

    iput-boolean v1, p0, Ljava/lang/Thread;->daemon:Z

    invoke-virtual {p0, p3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/lang/Thread;->init2(Ljava/lang/Thread;)V

    iput-wide p4, p0, Ljava/lang/Thread;->stackSize:J

    invoke-static {}, Ljava/lang/Thread;->nextThreadID()J

    move-result-wide v2

    iput-wide v2, p0, Ljava/lang/Thread;->tid:J

    return-void
.end method

.method private init2(Ljava/lang/Thread;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Thread;->inheritedAccessControlContext:Ljava/security/AccessControlContext;

    iget-object v0, p1, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    if-eqz v0, :cond_0

    iget-object v0, p1, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    invoke-static {v0}, Ljava/lang/ThreadLocal;->createInheritedMap(Ljava/lang/ThreadLocal$ThreadLocalMap;)Ljava/lang/ThreadLocal$ThreadLocalMap;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Thread;->inheritableThreadLocals:Ljava/lang/ThreadLocal$ThreadLocalMap;

    :cond_0
    return-void
.end method

.method public static native interrupted()Z
.end method

.method private static isCCLOverridden(Ljava/lang/Class;)Z
    .locals 4

    const-class v2, Ljava/lang/Thread;

    if-ne p0, v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    sget-object v2, Ljava/lang/Thread$Caches;->subclassAuditsQueue:Ljava/lang/ref/ReferenceQueue;

    sget-object v3, Ljava/lang/Thread$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v2, v3}, Ljava/lang/Thread;->processQueue(Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V

    new-instance v0, Ljava/lang/Thread$WeakClassKey;

    sget-object v2, Ljava/lang/Thread$Caches;->subclassAuditsQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p0, v2}, Ljava/lang/Thread$WeakClassKey;-><init>(Ljava/lang/Class;Ljava/lang/ref/ReferenceQueue;)V

    sget-object v2, Ljava/lang/Thread$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-nez v1, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->auditSubclass(Ljava/lang/Class;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$Caches;->subclassAudits:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    const-class v1, Ljava/lang/Thread;

    monitor-enter v1

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

    const-class v1, Ljava/lang/Thread;

    monitor-enter v1

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

    :goto_0
    invoke-virtual {p0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    sput-object p0, Ljava/lang/Thread;->defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method public static sleep(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/lang/Thread;->sleep(JI)V

    return-void
.end method

.method public static sleep(JI)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-wide/16 v14, 0x0

    cmp-long v9, p0, v14

    if-gez v9, :cond_0

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

    :cond_0
    if-gez p2, :cond_1

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

    :cond_1
    const v9, 0xf423f

    move/from16 v0, p2

    if-le v0, v9, :cond_2

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

    :cond_2
    const-wide/16 v14, 0x0

    cmp-long v9, p0, v14

    if-nez v9, :cond_4

    if-nez p2, :cond_4

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v9, Ljava/lang/InterruptedException;

    invoke-direct {v9}, Ljava/lang/InterruptedException;-><init>()V

    throw v9

    :cond_3
    return-void

    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    const-wide/32 v14, 0xf4240

    mul-long v14, v14, p0

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v4, v14, v16

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    iget-object v8, v9, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    monitor-enter v8

    :goto_0
    :try_start_0
    move-wide/from16 v0, p0

    move/from16 v2, p2

    invoke-static {v8, v0, v1, v2}, Ljava/lang/Thread;->sleep(Ljava/lang/Object;JI)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    sub-long v6, v10, v12

    cmp-long v9, v6, v4

    if-ltz v9, :cond_5

    monitor-exit v8

    return-void

    :cond_5
    sub-long/2addr v4, v6

    move-wide v12, v10

    const-wide/32 v14, 0xf4240

    :try_start_1
    div-long p0, v4, v14

    const-wide/32 v14, 0xf4240

    rem-long v14, v4, v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    long-to-int v0, v14

    move/from16 p2, v0

    goto :goto_0

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

    iget-object v0, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Ljava/lang/Thread;->blocker:Lsun/nio/ch/Interruptible;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final checkAccess()V
    .locals 0

    return-void
.end method

.method protected clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public countStackFrames()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public destroy()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    iget-object v0, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Ljava/lang/Thread;->tid:J

    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPriority()I
    .locals 1

    iget v0, p0, Ljava/lang/Thread;->priority:I

    return v0
.end method

.method public getStackTrace()[Ljava/lang/StackTraceElement;
    .locals 1

    invoke-static {p0}, Ldalvik/system/VMStack;->getThreadStackTrace(Ljava/lang/Thread;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    goto :goto_0
.end method

.method public getState()Ljava/lang/Thread$State;
    .locals 2

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

    invoke-virtual {p0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    return-object v0
.end method

.method public getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    iget-object v0, p0, Ljava/lang/Thread;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/lang/Thread;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    goto :goto_0
.end method

.method public interrupt()V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq p0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    :cond_0
    iget-object v2, p0, Ljava/lang/Thread;->blockerLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Ljava/lang/Thread;->blocker:Lsun/nio/ch/Interruptible;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Ljava/lang/Thread;->nativeInterrupt()V

    invoke-interface {v0, p0}, Lsun/nio/ch/Interruptible;->interrupt(Ljava/lang/Thread;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :cond_1
    monitor-exit v2

    invoke-direct {p0}, Ljava/lang/Thread;->nativeInterrupt()V

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final isAlive()Z
    .locals 4

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

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Thread;->join(J)V

    return-void
.end method

.method public final join(J)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-wide/16 v10, 0x0

    iget-object v7, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v6, p1, v10

    if-gez v6, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "timeout value is negative"

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_0
    cmp-long v6, p1, v10

    if-nez v6, :cond_2

    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    :cond_1
    iget-object v6, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    invoke-virtual {v6, v2, v3}, Ljava/lang/Object;->wait(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_3

    sub-long v2, p1, v4

    cmp-long v6, v2, v10

    if-gtz v6, :cond_1

    :cond_3
    monitor-exit v7

    return-void
.end method

.method public final join(JI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    iget-object v1, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    monitor-enter v1

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "timeout value is negative"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    if-ltz p3, :cond_1

    const v0, 0xf423f

    if-le p3, v0, :cond_2

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "nanosecond timeout value out of range"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const v0, 0x7a120

    if-ge p3, v0, :cond_3

    if-eqz p3, :cond_4

    cmp-long v0, p1, v2

    if-nez v0, :cond_4

    :cond_3
    const-wide/16 v2, 0x1

    add-long/2addr p1, v2

    :cond_4
    invoke-virtual {p0, p1, p2}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void
.end method

.method public final parkFor$(J)V
    .locals 9

    const/4 v8, 0x3

    iget-object v4, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget v1, p0, Ljava/lang/Thread;->parkState:I

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/AssertionError;

    const-string/jumbo v5, "Attempt to repark"

    invoke-direct {v1, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1

    :pswitch_0
    const/4 v1, 0x1

    :try_start_1
    iput v1, p0, Ljava/lang/Thread;->parkState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v4

    return-void

    :pswitch_1
    const-wide/32 v6, 0xf4240

    :try_start_2
    div-long v2, p1, v6

    const-wide/32 v6, 0xf4240

    rem-long/2addr p1, v6

    const/4 v1, 0x3

    iput v1, p0, Ljava/lang/Thread;->parkState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    long-to-int v5, p1

    invoke-virtual {v1, v2, v3, v5}, Ljava/lang/Object;->wait(JI)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget v1, p0, Ljava/lang/Thread;->parkState:I

    if-ne v1, v8, :cond_0

    const/4 v1, 0x1

    iput v1, p0, Ljava/lang/Thread;->parkState:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget v1, p0, Ljava/lang/Thread;->parkState:I

    if-ne v1, v8, :cond_0

    const/4 v1, 0x1

    iput v1, p0, Ljava/lang/Thread;->parkState:I

    goto :goto_0

    :catchall_1
    move-exception v1

    iget v5, p0, Ljava/lang/Thread;->parkState:I

    if-ne v5, v8, :cond_1

    const/4 v5, 0x1

    iput v5, p0, Ljava/lang/Thread;->parkState:I

    :cond_1
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final parkUntil$(J)V
    .locals 7

    iget-object v3, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, p1, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    iput v2, p0, Ljava/lang/Thread;->parkState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v3

    return-void

    :cond_0
    const-wide/32 v4, 0xf4240

    mul-long/2addr v4, v0

    :try_start_1
    invoke-virtual {p0, v4, v5}, Ljava/lang/Thread;->parkFor$(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public final resume()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/lang/Thread;->target:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public setContextClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0

    iput-object p1, p0, Ljava/lang/Thread;->contextClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public final setDaemon(Z)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalThreadStateException;

    invoke-direct {v0}, Ljava/lang/IllegalThreadStateException;-><init>()V

    throw v0

    :cond_0
    iput-boolean p1, p0, Ljava/lang/Thread;->daemon:Z

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ljava/lang/Thread;->name:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Ljava/lang/Thread;->nativeSetName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setPriority(I)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    const/16 v1, 0xa

    if-gt p1, v1, :cond_0

    const/4 v1, 0x1

    if-ge p1, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result v1

    if-le p1, v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result p1

    :cond_2
    monitor-enter p0

    :try_start_0
    iput p1, p0, Ljava/lang/Thread;->priority:I

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Ljava/lang/Thread;->nativeSetPriority(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    :cond_4
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Thread;->checkAccess()V

    iput-object p1, p0, Ljava/lang/Thread;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method public declared-synchronized start()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v1, p0, Ljava/lang/Thread;->threadStatus:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Ljava/lang/Thread;->started:Z

    if-eqz v1, :cond_1

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

    :cond_1
    :try_start_1
    iget-object v1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v1, p0}, Ljava/lang/ThreadGroup;->add(Ljava/lang/Thread;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/lang/Thread;->started:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-wide v2, p0, Ljava/lang/Thread;->stackSize:J

    iget-boolean v1, p0, Ljava/lang/Thread;->daemon:Z

    invoke-static {p0, v2, v3, v1}, Ljava/lang/Thread;->nativeCreate(Ljava/lang/Thread;JZ)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/lang/Thread;->started:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-boolean v1, p0, Ljava/lang/Thread;->started:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v1, p0}, Ljava/lang/ThreadGroup;->threadStartFailed(Ljava/lang/Thread;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v1

    :try_start_4
    iget-boolean v2, p0, Ljava/lang/Thread;->started:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Ljava/lang/Thread;->group:Ljava/lang/ThreadGroup;

    invoke-virtual {v2, p0}, Ljava/lang/ThreadGroup;->threadStartFailed(Ljava/lang/Thread;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    :goto_1
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final stop()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/ThreadDeath;

    invoke-direct {v0}, Ljava/lang/ThreadDeath;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->stop(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final stop(Ljava/lang/Throwable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final suspend()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    if-eqz v0, :cond_0

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

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

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

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final unpark$()V
    .locals 2

    iget-object v1, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Ljava/lang/Thread;->parkState:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    iput v0, p0, Ljava/lang/Thread;->parkState:I

    iget-object v0, p0, Ljava/lang/Thread;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :pswitch_0
    monitor-exit v1

    return-void

    :pswitch_1
    const/4 v0, 0x2

    :try_start_1
    iput v0, p0, Ljava/lang/Thread;->parkState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
