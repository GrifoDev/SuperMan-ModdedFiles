.class public final Landroid/os/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Debug$DebugProperty;,
        Landroid/os/Debug$InstructionCount;,
        Landroid/os/Debug$MemoryInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_TRACE_BODY:Ljava/lang/String; = "dmtrace"

.field private static final DEFAULT_TRACE_EXTENSION:Ljava/lang/String; = ".trace"

.field public static final MEMINFO_BUFFERS:I = 0x2

.field public static final MEMINFO_CACHED:I = 0x3

.field public static final MEMINFO_COUNT:I = 0xd

.field public static final MEMINFO_FREE:I = 0x1

.field public static final MEMINFO_KERNEL_STACK:I = 0xc

.field public static final MEMINFO_MAPPED:I = 0x9

.field public static final MEMINFO_PAGE_TABLES:I = 0xb

.field public static final MEMINFO_SHMEM:I = 0x4

.field public static final MEMINFO_SLAB:I = 0x5

.field public static final MEMINFO_SWAP_FREE:I = 0x7

.field public static final MEMINFO_SWAP_TOTAL:I = 0x6

.field public static final MEMINFO_TOTAL:I = 0x0

.field public static final MEMINFO_VM_ALLOC_USED:I = 0xa

.field public static final MEMINFO_ZRAM_TOTAL:I = 0x8

.field private static final MIN_DEBUGGER_IDLE:I = 0x514

.field public static final SHOW_CLASSLOADER:I = 0x2

.field public static final SHOW_FULL_DETAIL:I = 0x1

.field public static final SHOW_INITIALIZED:I = 0x4

.field private static final SPIN_DELAY:I = 0xc8

.field private static final SYSFS_QEMU_TRACE_STATE:Ljava/lang/String; = "/sys/qemu_trace/state"

.field private static final TAG:Ljava/lang/String; = "Debug"

.field public static final TRACE_COUNT_ALLOCS:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final debugProperties:Lcom/android/internal/util/TypedProperties;

.field private static volatile mWaiting:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/Debug;->mWaiting:Z

    const/4 v0, 0x0

    sput-object v0, Landroid/os/Debug;->debugProperties:Lcom/android/internal/util/TypedProperties;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final cacheRegisterMap(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Ldalvik/system/VMDebug;->cacheRegisterMap(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static changeDebugPort(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static countInstancesOfClass(Ljava/lang/Class;)J
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ldalvik/system/VMDebug;->countInstancesOfClass(Ljava/lang/Class;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static dumpHprofData(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Ldalvik/system/VMDebug;->dumpHprofData(Ljava/lang/String;)V

    return-void
.end method

.method public static dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Ldalvik/system/VMDebug;->dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public static dumpHprofDataDdms()V
    .locals 0

    invoke-static {}, Ldalvik/system/VMDebug;->dumpHprofDataDdms()V

    return-void
.end method

.method public static native dumpNativeBacktraceToFileTimeout(ILjava/lang/String;I)V
.end method

.method public static native dumpNativeHeap(Ljava/io/FileDescriptor;)V
.end method

.method public static final dumpReferenceTables()V
    .locals 0

    invoke-static {}, Ldalvik/system/VMDebug;->dumpReferenceTables()V

    return-void
.end method

.method public static native dumpResetReason(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "Debug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t find service to dump: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Debug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t dump service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v5
.end method

.method public static enableEmulatorTraceOutput()V
    .locals 0

    invoke-static {}, Ldalvik/system/VMDebug;->startEmulatorTracing()V

    return-void
.end method

.method private static fieldTypeMatches(Ljava/lang/reflect/Field;Ljava/lang/Class;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return v5

    :cond_0
    :try_start_0
    const-string/jumbo v4, "TYPE"

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v2, v4, :cond_1

    move v4, v5

    :goto_0
    return v4

    :catch_0
    move-exception v1

    return v6

    :cond_1
    move v4, v6

    goto :goto_0

    :catch_1
    move-exception v0

    return v6
.end method

.method private static fixTracePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_1

    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    :goto_0
    if-nez p0, :cond_4

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "dmtrace"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_1
    const-string/jumbo v2, ".trace"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".trace"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0

    :cond_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method public static final native getBinderDeathObjectCount()I
.end method

.method public static final native getBinderLocalObjectCount()I
.end method

.method public static final native getBinderProxyObjectCount()I
.end method

.method public static native getBinderReceivedTransactions()I
.end method

.method public static native getBinderSentTransactions()I
.end method

.method public static getCaller()Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Debug;->getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;
    .locals 3

    add-int/lit8 v1, p1, 0x4

    array-length v2, p0

    if-lt v1, v2, :cond_0

    const-string/jumbo v1, "<bottom of call stack>"

    return-object v1

    :cond_0
    add-int/lit8 v1, p1, 0x4

    aget-object v0, p0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCallers(I)Ljava/lang/String;
    .locals 5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    invoke-static {v0, v1}, Landroid/os/Debug;->getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getCallers(II)Ljava/lang/String;
    .locals 5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    add-int/2addr p1, p0

    move v1, p0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-static {v0, v1}, Landroid/os/Debug;->getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getCallers(ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v0, v1}, Landroid/os/Debug;->getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getGlobalAllocCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalAllocSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalClassInitCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x20

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalClassInitTime()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x40

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalExternalAllocCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static getGlobalExternalAllocSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static getGlobalExternalFreedCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static getGlobalExternalFreedSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static getGlobalFreedCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x4

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalFreedSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x8

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalGcInvocationCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x10

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getLoadedClassCount()I
    .locals 1

    invoke-static {}, Ldalvik/system/VMDebug;->getLoadedClassCount()I

    move-result v0

    return v0
.end method

.method public static native getMemInfo([J)V
.end method

.method public static native getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)V
.end method

.method public static native getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V
.end method

.method public static getMethodTracingMode()I
    .locals 1

    invoke-static {}, Ldalvik/system/VMDebug;->getMethodTracingMode()I

    move-result v0

    return v0
.end method

.method public static native getNativeHeapAllocatedSize()J
.end method

.method public static native getNativeHeapFreeSize()J
.end method

.method public static native getNativeHeapSize()J
.end method

.method public static native getPss()J
.end method

.method public static native getPss(I[J[J)J
.end method

.method public static native getPssSwapPss(I[J[J)V
.end method

.method public static getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ldalvik/system/VMDebug;->getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRuntimeStats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ldalvik/system/VMDebug;->getRuntimeStats()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getThreadAllocCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/high16 v0, 0x10000

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getThreadAllocSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/high16 v0, 0x20000

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getThreadExternalAllocCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static getThreadExternalAllocSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static getThreadGcInvocationCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/high16 v0, 0x100000

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static native getUnreachableMemory(IZ)Ljava/lang/String;
.end method

.method public static getVmFeatureList()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Ldalvik/system/VMDebug;->getVmFeatureList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isDebuggerConnected()Z
    .locals 1

    invoke-static {}, Ldalvik/system/VMDebug;->isDebuggerConnected()Z

    move-result v0

    return v0
.end method

.method public static isProductShip()I
    .locals 1

    invoke-static {}, Landroid/os/Debug;->isProductShipNative()I

    move-result v0

    return v0
.end method

.method private static native isProductShipNative()I
.end method

.method private static modifyFieldIfSet(Ljava/lang/reflect/Field;Lcom/android/internal/util/TypedProperties;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    if-ne v3, v4, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/internal/util/TypedProperties;->getStringInfo(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected getStringInfo("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") return value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot set field for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :pswitch_1
    return-void

    :pswitch_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Type of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " does not match field type ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    :pswitch_3
    invoke-virtual {p1, p2}, Lcom/android/internal/util/TypedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/os/Debug;->fieldTypeMatches(Ljava/lang/reflect/Field;Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Type of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " does not match field type ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, v3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    return-void

    :catch_1
    move-exception v0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot set field for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static printLoadedClasses(I)V
    .locals 0

    invoke-static {p0}, Ldalvik/system/VMDebug;->printLoadedClasses(I)V

    return-void
.end method

.method public static resetAllCounts()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    return-void
.end method

.method public static resetGlobalAllocCount()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    return-void
.end method

.method public static resetGlobalAllocSize()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    return-void
.end method

.method public static resetGlobalClassInitCount()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x20

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    return-void
.end method

.method public static resetGlobalClassInitTime()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x40

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    return-void
.end method

.method public static resetGlobalExternalAllocCount()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static resetGlobalExternalAllocSize()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static resetGlobalExternalFreedCount()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static resetGlobalExternalFreedSize()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static resetGlobalFreedCount()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x4

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    return-void
.end method

.method public static resetGlobalFreedSize()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x8

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    return-void
.end method

.method public static resetGlobalGcInvocationCount()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x10

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    return-void
.end method

.method public static resetThreadAllocCount()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/high16 v0, 0x10000

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    return-void
.end method

.method public static resetThreadAllocSize()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/high16 v0, 0x20000

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    return-void
.end method

.method public static resetThreadExternalAllocCount()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static resetThreadExternalAllocSize()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static resetThreadGcInvocationCount()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/high16 v0, 0x100000

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    return-void
.end method

.method public static declared-synchronized saveDump(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    .locals 10

    const/4 v6, 0x1

    const-class v7, Landroid/os/Debug;

    monitor-enter v7

    :try_start_0
    const-string/jumbo v5, "bugreportsys"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "sys.reset_reason"

    const-string/jumbo v8, "P|EX"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "ctl.start"

    const-string/jumbo v8, "resetreason"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const-string/jumbo v5, "sys.mobilecare.preload"

    const-string/jumbo v8, "UNKNOWN"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "ro.debug_level"

    const-string/jumbo v8, "0x4f4c"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v5

    if-nez v5, :cond_5

    const-string/jumbo v5, "Debug"

    const-string/jumbo v8, "!@DumpState : SHIP"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "0x4f4c"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "Debug"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "!@DumpState : debug level:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v5, "true"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string/jumbo v5, "bugreportsys"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "bugreportswd"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "unsupportedSDcard"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "bugreportmount"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_1
    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5

    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v8, "com.sec"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v8, "com.samsung"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v6, "com.android.phone"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    :cond_1
    :goto_2
    if-nez v6, :cond_5

    const-string/jumbo v5, "Debug"

    const-string/jumbo v6, "!@Dumpstate : Finally, system will skip dumpstate"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v7

    return-void

    :cond_2
    :try_start_2
    const-string/jumbo v5, "bugreportswd"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "sys.reset_reason"

    const-string/jumbo v8, "P|WD"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "ctl.start"

    const-string/jumbo v8, "resetreason"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v7

    throw v5

    :cond_3
    move v5, v6

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    :catch_0
    move-exception v2

    monitor-exit v7

    return-void

    :cond_5
    :try_start_3
    const-string/jumbo v5, "init.svc.bugreportsa"

    const-string/jumbo v6, "UNKNOWN"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "running"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v5, "Debug"

    const-string/jumbo v6, "!@DEBUG:saveDump is skipped becasue service is running\n"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v7

    return-void

    :cond_6
    :try_start_4
    const-string/jumbo v5, "Debug"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "!@DEBUG:bugreport "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "dumpstate.options"

    invoke-static {v5, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "ctl.start"

    const-string/jumbo v6, "bugreportsa"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-wide/16 v8, 0x1388

    :try_start_5
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_3
    monitor-exit v7

    return-void

    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method public static saveDumpstate(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Landroid/os/Debug;->saveDumpstateNative(Ljava/lang/String;)V

    return-void
.end method

.method private static native saveDumpstateNative(Ljava/lang/String;)V
.end method

.method public static saveDumpsys(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Landroid/os/Debug;->saveDumpsysNative(Ljava/lang/String;)V

    return-void
.end method

.method private static native saveDumpsysNative(Ljava/lang/String;)V
.end method

.method public static semIsOemUnlockEnabled(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v1, "persistent_data_block"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->getOemUnlockEnabled()Z

    move-result v1

    return v1
.end method

.method public static semIsProductDev()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Debug;->isProductShipNative()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static setAllocationLimit(I)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    return v0
.end method

.method public static setFieldsOn(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/Debug;->setFieldsOn(Ljava/lang/Class;Z)V

    return-void
.end method

.method public static setFieldsOn(Ljava/lang/Class;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    const-string/jumbo v1, "Debug"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFieldsOn("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p0, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ") called in non-DEBUG build"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static setGlobalAllocationLimit(I)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    return v0
.end method

.method public static startAllocCounting()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Ldalvik/system/VMDebug;->startAllocCounting()V

    return-void
.end method

.method public static startMethodTracing()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Debug;->fixTracePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v1, v1, v1}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;IIZI)V

    return-void
.end method

.method public static startMethodTracing(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;II)V

    return-void
.end method

.method public static startMethodTracing(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;II)V

    return-void
.end method

.method public static startMethodTracing(Ljava/lang/String;II)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/os/Debug;->fixTracePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, v1, v1}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;IIZI)V

    return-void
.end method

.method public static startMethodTracing(Ljava/lang/String;Ljava/io/FileDescriptor;IIZ)V
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move v6, p4

    invoke-static/range {v0 .. v6}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;Ljava/io/FileDescriptor;IIZIZ)V

    return-void
.end method

.method public static startMethodTracingDdms(IIZI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ldalvik/system/VMDebug;->startMethodTracingDdms(IIZI)V

    return-void
.end method

.method public static startMethodTracingSampling(Ljava/lang/String;II)V
    .locals 3

    invoke-static {p0}, Landroid/os/Debug;->fixTracePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2, p2}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;IIZI)V

    return-void
.end method

.method public static startNativeTracing()V
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const-string/jumbo v4, "/sys/qemu_trace/state"

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v3, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    :cond_0
    move-object v2, v3

    :cond_1
    :goto_0
    invoke-static {}, Ldalvik/system/VMDebug;->startEmulatorTracing()V

    return-void

    :catch_0
    move-exception v0

    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    goto :goto_0

    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    :cond_2
    throw v4

    :catchall_1
    move-exception v4

    move-object v2, v3

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v3

    goto :goto_1
.end method

.method public static stopAllocCounting()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Ldalvik/system/VMDebug;->stopAllocCounting()V

    return-void
.end method

.method public static stopMethodTracing()V
    .locals 0

    invoke-static {}, Ldalvik/system/VMDebug;->stopMethodTracing()V

    return-void
.end method

.method public static stopNativeTracing()V
    .locals 5

    invoke-static {}, Ldalvik/system/VMDebug;->stopEmulatorTracing()V

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const-string/jumbo v4, "/sys/qemu_trace/state"

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v3, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    :cond_0
    move-object v2, v3

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    goto :goto_0

    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    :cond_2
    throw v4

    :catchall_1
    move-exception v4

    move-object v2, v3

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v3

    goto :goto_1
.end method

.method public static threadCpuTimeNanos()J
    .locals 2

    invoke-static {}, Ldalvik/system/VMDebug;->threadCpuTimeNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method public static waitForDebugger()V
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {}, Ldalvik/system/VMDebug;->isDebuggingEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    return-void

    :cond_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "Sending WAIT chunk"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-array v0, v7, [B

    aput-byte v8, v0, v8

    new-instance v4, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    const-string/jumbo v5, "WAIT"

    invoke-static {v5}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->type(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5, v0, v8, v7}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    invoke-static {v4}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->sendChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)V

    sput-boolean v7, Landroid/os/Debug;->mWaiting:Z

    :goto_0
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v5

    if-nez v5, :cond_2

    const-wide/16 v6, 0xc8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    sput-boolean v8, Landroid/os/Debug;->mWaiting:Z

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "Debugger has connected"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Ldalvik/system/VMDebug;->lastDebuggerActivity()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-gez v5, :cond_3

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "debugger detached?"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_3
    const-wide/16 v6, 0x514

    cmp-long v5, v2, v6

    if-gez v5, :cond_4

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "waiting for debugger to settle..."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-wide/16 v6, 0xc8

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_4
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "debugger has settled ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static waitingForDebugger()Z
    .locals 1

    sget-boolean v0, Landroid/os/Debug;->mWaiting:Z

    return v0
.end method
