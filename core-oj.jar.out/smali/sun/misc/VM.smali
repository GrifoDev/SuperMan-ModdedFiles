.class public Lsun/misc/VM;
.super Ljava/lang/Object;
.source "VM.java"


# static fields
.field private static final JVMTI_THREAD_STATE_ALIVE:I = 0x1

.field private static final JVMTI_THREAD_STATE_BLOCKED_ON_MONITOR_ENTER:I = 0x400

.field private static final JVMTI_THREAD_STATE_RUNNABLE:I = 0x4

.field private static final JVMTI_THREAD_STATE_TERMINATED:I = 0x2

.field private static final JVMTI_THREAD_STATE_WAITING_INDEFINITELY:I = 0x10

.field private static final JVMTI_THREAD_STATE_WAITING_WITH_TIMEOUT:I = 0x20

.field public static final STATE_GREEN:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATE_RED:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATE_YELLOW:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static allowArraySyntax:Z

.field private static allowGetCallerClass:Z

.field private static volatile booted:Z

.field private static defaultAllowArraySyntax:Z

.field private static directMemory:J

.field private static volatile finalRefCount:I

.field private static pageAlignDirectMemory:Z

.field private static volatile peakFinalRefCount:I

.field private static final savedProps:Ljava/util/Properties;

.field private static suspended:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    sput-boolean v2, Lsun/misc/VM;->suspended:Z

    .line 145
    sput-boolean v2, Lsun/misc/VM;->booted:Z

    .line 168
    const-wide/32 v0, 0x4000000

    sput-wide v0, Lsun/misc/VM;->directMemory:J

    .line 198
    sput-boolean v2, Lsun/misc/VM;->defaultAllowArraySyntax:Z

    .line 199
    sget-boolean v0, Lsun/misc/VM;->defaultAllowArraySyntax:Z

    sput-boolean v0, Lsun/misc/VM;->allowArraySyntax:Z

    .line 215
    const/4 v0, 0x1

    sput-boolean v0, Lsun/misc/VM;->allowGetCallerClass:Z

    .line 249
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lsun/misc/VM;->savedProps:Ljava/util/Properties;

    .line 318
    sput v2, Lsun/misc/VM;->finalRefCount:I

    .line 321
    sput v2, Lsun/misc/VM;->peakFinalRefCount:I

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFinalRefCount(I)V
    .locals 2
    .param p0, "n"    # I

    .prologue
    .line 350
    sget v0, Lsun/misc/VM;->finalRefCount:I

    add-int/2addr v0, p0

    sput v0, Lsun/misc/VM;->finalRefCount:I

    .line 351
    sget v0, Lsun/misc/VM;->finalRefCount:I

    sget v1, Lsun/misc/VM;->peakFinalRefCount:I

    if-le v0, v1, :cond_0

    .line 352
    sget v0, Lsun/misc/VM;->finalRefCount:I

    sput v0, Lsun/misc/VM;->peakFinalRefCount:I

    .line 347
    :cond_0
    return-void
.end method

.method public static allowArraySyntax()Z
    .locals 1

    .prologue
    .line 212
    sget-boolean v0, Lsun/misc/VM;->allowArraySyntax:Z

    return v0
.end method

.method public static allowGetCallerClass()Z
    .locals 1

    .prologue
    .line 223
    sget-boolean v0, Lsun/misc/VM;->allowGetCallerClass:Z

    return v0
.end method

.method public static allowThreadSuspension(Ljava/lang/ThreadGroup;Z)Z
    .locals 1
    .param p0, "g"    # Ljava/lang/ThreadGroup;
    .param p1, "b"    # Z

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/ThreadGroup;->allowThreadSuspension(Z)Z

    move-result v0

    return v0
.end method

.method public static asChange(II)V
    .locals 0
    .param p0, "as_old"    # I
    .param p1, "as_new"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 97
    return-void
.end method

.method public static asChange_otherthread(II)V
    .locals 0
    .param p0, "as_old"    # I
    .param p1, "as_new"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 101
    return-void
.end method

.method public static booted()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    sput-boolean v0, Lsun/misc/VM;->booted:Z

    .line 152
    return-void
.end method

.method public static getFinalRefCount()I
    .locals 1

    .prologue
    .line 329
    sget v0, Lsun/misc/VM;->finalRefCount:I

    return v0
.end method

.method public static getPeakFinalRefCount()I
    .locals 1

    .prologue
    .line 338
    sget v0, Lsun/misc/VM;->peakFinalRefCount:I

    return v0
.end method

.method public static getSavedProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 243
    sget-object v0, Lsun/misc/VM;->savedProps:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getState()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public static initializeOSEnvironment()V
    .locals 0

    .prologue
    .line 314
    return-void
.end method

.method public static isBooted()Z
    .locals 1

    .prologue
    .line 157
    sget-boolean v0, Lsun/misc/VM;->booted:Z

    return v0
.end method

.method public static isDirectMemoryPageAligned()Z
    .locals 1

    .prologue
    .line 186
    sget-boolean v0, Lsun/misc/VM;->pageAlignDirectMemory:Z

    return v0
.end method

.method public static maxDirectMemory()J
    .locals 2

    .prologue
    .line 175
    sget-wide v0, Lsun/misc/VM;->directMemory:J

    return-wide v0
.end method

.method public static saveAndRemoveProperties(Ljava/util/Properties;)V
    .locals 8
    .param p0, "props"    # Ljava/util/Properties;

    .prologue
    const/4 v4, 0x1

    .line 256
    sget-boolean v3, Lsun/misc/VM;->booted:Z

    if-eqz v3, :cond_0

    .line 257
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "System initialization has completed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 259
    :cond_0
    sget-object v3, Lsun/misc/VM;->savedProps:Ljava/util/Properties;

    invoke-virtual {v3, p0}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 266
    const-string/jumbo v3, "sun.nio.MaxDirectMemorySize"

    invoke-virtual {p0, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 267
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 268
    const-string/jumbo v3, "-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 270
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v6

    sput-wide v6, Lsun/misc/VM;->directMemory:J

    .line 279
    :cond_1
    :goto_0
    const-string/jumbo v3, "sun.nio.PageAlignDirectMemory"

    invoke-virtual {p0, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "s":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 280
    .restart local v2    # "s":Ljava/lang/String;
    const-string/jumbo v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 281
    sput-boolean v4, Lsun/misc/VM;->pageAlignDirectMemory:Z

    .line 286
    :cond_2
    const-string/jumbo v3, "sun.lang.ClassLoader.allowArraySyntax"

    invoke-virtual {p0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 287
    if-nez v2, :cond_4

    .line 288
    sget-boolean v3, Lsun/misc/VM;->defaultAllowArraySyntax:Z

    .line 287
    :goto_1
    sput-boolean v3, Lsun/misc/VM;->allowArraySyntax:Z

    .line 294
    const-string/jumbo v3, "jdk.reflect.allowGetCallerClass"

    invoke-virtual {p0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 295
    if-eqz v2, :cond_5

    .line 296
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 295
    if-nez v3, :cond_5

    .line 298
    const-string/jumbo v3, "jdk.logging.allowStackWalkSearch"

    invoke-virtual {p0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 295
    :goto_2
    sput-boolean v3, Lsun/misc/VM;->allowGetCallerClass:Z

    .line 302
    const-string/jumbo v3, "java.lang.Integer.IntegerCache.high"

    invoke-virtual {p0, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string/jumbo v3, "sun.zip.disableMemoryMapping"

    invoke-virtual {p0, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string/jumbo v3, "sun.java.launcher.diag"

    invoke-virtual {p0, v3}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    return-void

    .line 272
    :cond_3
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 273
    .local v0, "l":J
    const-wide/16 v6, -0x1

    cmp-long v3, v0, v6

    if-lez v3, :cond_1

    .line 274
    sput-wide v0, Lsun/misc/VM;->directMemory:J

    goto :goto_0

    .line 289
    .end local v0    # "l":J
    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    goto :goto_1

    :cond_5
    move v3, v4

    .line 295
    goto :goto_2
.end method

.method public static suspendThreads()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 58
    sput-boolean v0, Lsun/misc/VM;->suspended:Z

    .line 59
    return v0
.end method

.method public static threadsSuspended()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 48
    sget-boolean v0, Lsun/misc/VM;->suspended:Z

    return v0
.end method

.method public static toThreadState(I)Ljava/lang/Thread$State;
    .locals 1
    .param p0, "threadStatus"    # I

    .prologue
    .line 360
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_0

    .line 361
    sget-object v0, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    return-object v0

    .line 362
    :cond_0
    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_1

    .line 363
    sget-object v0, Ljava/lang/Thread$State;->BLOCKED:Ljava/lang/Thread$State;

    return-object v0

    .line 364
    :cond_1
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_2

    .line 365
    sget-object v0, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    return-object v0

    .line 366
    :cond_2
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_3

    .line 367
    sget-object v0, Ljava/lang/Thread$State;->TIMED_WAITING:Ljava/lang/Thread$State;

    return-object v0

    .line 368
    :cond_3
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_4

    .line 369
    sget-object v0, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    return-object v0

    .line 370
    :cond_4
    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_5

    .line 371
    sget-object v0, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    return-object v0

    .line 373
    :cond_5
    sget-object v0, Ljava/lang/Thread$State;->RUNNABLE:Ljava/lang/Thread$State;

    return-object v0
.end method

.method public static unsuspendSomeThreads()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 72
    return-void
.end method

.method public static unsuspendThreads()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 66
    const/4 v0, 0x0

    sput-boolean v0, Lsun/misc/VM;->suspended:Z

    .line 65
    return-void
.end method
