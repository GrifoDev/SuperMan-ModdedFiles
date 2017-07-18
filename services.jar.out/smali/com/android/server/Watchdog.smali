.class public Lcom/android/server/Watchdog;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/Watchdog$BinderThreadMonitor;,
        Lcom/android/server/Watchdog$HandlerChecker;,
        Lcom/android/server/Watchdog$Monitor;,
        Lcom/android/server/Watchdog$RebootRequestReceiver;
    }
.end annotation


# static fields
.field static final CHECK_INTERVAL:J = 0x7530L

.field static final COMPLETED:I = 0x0

.field static final DB:Z = false

.field static final DEFAULT_TIMEOUT:J = 0xea60L

.field static final FD_RLIMIT:I = 0x400

.field public static final NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

.field static final OVERDUE:I = 0x3

.field static final RECORD_KERNEL_THREADS:Z = true

.field private static final RESET_BLOCK_SIZE:I = 0x384

.field static final TAG:Ljava/lang/String; = "Watchdog"

.field static final WAITED_HALF:I = 0x2

.field static final WAITING:I = 0x1

.field static WSyncCount:I

.field static sWatchdog:Lcom/android/server/Watchdog;


# instance fields
.field mActivity:Lcom/android/server/am/ActivityManagerService;

.field mAllowRestart:Z

.field mController:Landroid/app/IActivityController;

.field mDumped:Z

.field mEmfileChecker:Z

.field final mHandlerCheckers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation
.end field

.field final mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

.field mPhonePid:I

.field mResolver:Landroid/content/ContentResolver;

.field mTraceDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "/system/bin/audioserver"

    aput-object v1, v0, v3

    const-string/jumbo v1, "/system/bin/cameraserver"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "/system/bin/drmserver"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "/system/bin/mediadrmserver"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "/system/bin/mediaserver"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "/system/bin/sdcard"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "/system/bin/surfaceflinger"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "media.codec"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "media.extractor"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.bluetooth"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    sput v3, Lcom/android/server/Watchdog;->WSyncCount:I

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const-wide/32 v4, 0xea60

    const-string/jumbo v0, "watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "dd_MMM_HH_mm_ss.SSS"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "ro.build.type"

    const-string/jumbo v2, "user"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "user"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ro.debug_level"

    const-string/jumbo v2, "0x4f4c"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "0x4f4c"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ro.product_ship"

    const-string/jumbo v2, "true"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/Watchdog;->mEmfileChecker:Z

    iput-boolean v1, p0, Lcom/android/server/Watchdog;->mDumped:Z

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-string/jumbo v3, "foreground thread"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string/jumbo v3, "main thread"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-string/jumbo v3, "ui thread"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-string/jumbo v3, "i/o thread"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-string/jumbo v3, "display thread"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/Watchdog$BinderThreadMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/Watchdog$BinderThreadMonitor;-><init>(Lcom/android/server/Watchdog$BinderThreadMonitor;)V

    invoke-virtual {p0, v0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private describeCheckersLocked(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->describeBlockedStateLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private doSysRq(C)V
    .locals 4

    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    const-string/jumbo v2, "/proc/sysrq-trigger"

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(I)V

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Watchdog"

    const-string/jumbo v3, "Failed to write to /proc/sysrq-trigger"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private dumpKernelStackTraces()Ljava/io/File;
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v1, "dalvik.vm.stack-trace-file"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-object v2

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/Watchdog;->native_dumpKernelStacks(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private evaluateCheckerCompletionLocked()I
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0}, Lcom/android/server/Watchdog$HandlerChecker;->getCompletionStateLocked()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private getBlockedCheckersLocked()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v1}, Lcom/android/server/Watchdog$HandlerChecker;->isOverdueLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getInstance()Lcom/android/server/Watchdog;
    .locals 1

    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/Watchdog;

    invoke-direct {v0}, Lcom/android/server/Watchdog;-><init>()V

    sput-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    :cond_0
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    return-object v0
.end method

.method private native native_dumpKernelStacks(Ljava/lang/String;)V
.end method


# virtual methods
.method public addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Monitors can\'t be added once the Watchdog is running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0, p1}, Lcom/android/server/Watchdog$HandlerChecker;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public addThread(Landroid/os/Handler;)V
    .locals 2

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;J)V

    return-void
.end method

.method public addThread(Landroid/os/Handler;J)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Threads can\'t be added once the Watchdog is running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    new-instance v0, Lcom/android/server/Watchdog$RebootRequestReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$RebootRequestReceiver;-><init>(Lcom/android/server/Watchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.REBOOT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.permission.REBOOT"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public processStarted(Ljava/lang/String;I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "com.android.phone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p2, p0, Lcom/android/server/Watchdog;->mPhonePid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method rebootSystem(Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v2, "Watchdog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Rebooting system because: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Landroid/os/IPowerManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1, v2, p1, v3}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 44

    const/16 v36, 0x0

    :goto_0
    const/4 v10, 0x0

    monitor-enter p0

    const-wide/16 v34, 0x7530

    const/16 v21, 0x0

    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v21

    move/from16 v1, v37

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/Watchdog$HandlerChecker;->scheduleCheckLocked()V

    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    :cond_0
    const-string/jumbo v37, "Watchdog"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "!@Sync "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    sget v39, Lcom/android/server/Watchdog;->WSyncCount:I

    add-int/lit8 v40, v39, 0x1

    sput v40, Lcom/android/server/Watchdog;->WSyncCount:I

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, " ["

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v39, v0

    new-instance v40, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v42

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v39 .. v40}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, "]"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/Watchdog;->mEmfileChecker:Z

    move/from16 v37, v0

    if-nez v37, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/Watchdog;->mDumped:Z

    move/from16 v37, v0

    if-eqz v37, :cond_4

    :cond_1
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    :goto_3
    const-wide/16 v38, 0x0

    cmp-long v37, v34, v38

    if-lez v37, :cond_5

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v37

    if-eqz v37, :cond_2

    const/4 v10, 0x2

    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/server/Watchdog;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    :try_start_2
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v37

    if-eqz v37, :cond_3

    const/4 v10, 0x2

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v38

    sub-long v38, v38, v30

    const-wide/16 v40, 0x7530

    sub-long v34, v40, v38

    goto :goto_3

    :cond_4
    new-instance v37, Ljava/io/File;

    const-string/jumbo v38, "/proc/self/fdinfo"

    invoke-direct/range {v37 .. v38}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v37 .. v37}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v17

    if-eqz v17, :cond_1

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v37, v0

    const/16 v38, 0x3ce

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_1

    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/Watchdog;->mDumped:Z

    const-string/jumbo v37, "Watchdog"

    const-string/jumbo v38, "!@ The number of fd in system_server is over (RLIMIT-50), so we ran dumpstate for debugging."

    invoke-static/range {v37 .. v38}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v37, "bugreportsem"

    const/16 v38, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Landroid/os/Debug;->saveDump(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v37

    monitor-exit p0

    throw v37

    :catch_0
    move-exception v14

    :try_start_3
    const-string/jumbo v37, "Watchdog"

    move-object/from16 v0, v37

    invoke-static {v0, v14}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->evaluateCheckerCompletionLocked()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v33

    if-nez v33, :cond_7

    const/16 v36, 0x0

    :cond_6
    :goto_5
    monitor-exit p0

    goto/16 :goto_0

    :cond_7
    const/16 v37, 0x1

    move/from16 v0, v33

    move/from16 v1, v37

    if-eq v0, v1, :cond_6

    const/16 v37, 0x2

    move/from16 v0, v33

    move/from16 v1, v37

    if-ne v0, v1, :cond_8

    if-nez v36, :cond_6

    :try_start_4
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v37, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    const/16 v38, 0x1

    const/16 v39, 0x0

    const/16 v40, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    move-object/from16 v2, v39

    move-object/from16 v3, v40

    move-object/from16 v4, v37

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    const/16 v36, 0x1

    const-string/jumbo v37, "Watchdog"

    const-string/jumbo v38, "!@*** WAITED_HALF"

    invoke-static/range {v37 .. v38}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->getBlockedCheckersLocked()Ljava/util/ArrayList;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/Watchdog;->mAllowRestart:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    const/16 v37, 0xaf2

    move/from16 v0, v37

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mPhonePid:I

    move/from16 v37, v0

    if-lez v37, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mPhonePid:I

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    move-object/from16 v0, v23

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    if-eqz v36, :cond_b

    const/16 v37, 0x0

    :goto_6
    sget-object v38, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move/from16 v0, v37

    move-object/from16 v1, v23

    move-object/from16 v2, v39

    move-object/from16 v3, v40

    move-object/from16 v4, v38

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v27

    const-wide/16 v38, 0x7d0

    invoke-static/range {v38 .. v39}, Landroid/os/SystemClock;->sleep(J)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->dumpKernelStackTraces()Ljava/io/File;

    const/16 v37, 0x77

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/server/Watchdog;->doSysRq(C)V

    const/16 v37, 0x6c

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/server/Watchdog;->doSysRq(C)V

    const-string/jumbo v37, "PF"

    const-string/jumbo v38, "WD"

    invoke-static/range {v37 .. v38}, Landroid/os/Debug;->dumpResetReason(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Lcom/android/server/Watchdog$1;

    const-string/jumbo v37, "watchdogWriteToDropbox"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v29

    move-object/from16 v3, v27

    invoke-direct {v11, v0, v1, v2, v3}, Lcom/android/server/Watchdog$1;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    const-wide/16 v38, 0x7d0

    :try_start_5
    move-wide/from16 v0, v38

    invoke-virtual {v11, v0, v1}, Ljava/lang/Thread;->join(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_7
    const-string/jumbo v37, "persist.sys.crashOnWatchdog"

    const/16 v38, 0x0

    invoke-static/range {v37 .. v38}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_a

    const-string/jumbo v37, "Watchdog"

    const-string/jumbo v38, "Triggering SysRq for system_server watchdog"

    invoke-static/range {v37 .. v38}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v37, 0x77

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/server/Watchdog;->doSysRq(C)V

    const/16 v37, 0x6c

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/server/Watchdog;->doSysRq(C)V

    const-wide/16 v38, 0xbb8

    invoke-static/range {v38 .. v39}, Landroid/os/SystemClock;->sleep(J)V

    :try_start_6
    new-instance v32, Ljava/io/FileWriter;

    const-string/jumbo v37, "/proc/sysrq-trigger"

    move-object/from16 v0, v32

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v37, "c"

    move-object/from16 v0, v32

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual/range {v32 .. v32}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_a
    :goto_8
    monitor-enter p0

    :try_start_7
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    monitor-exit p0

    if-eqz v8, :cond_c

    const-string/jumbo v37, "Watchdog"

    const-string/jumbo v38, "Reporting stuck state to activity controller"

    invoke-static/range {v37 .. v38}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_8
    const-string/jumbo v37, "Service dumps disabled due to hung system process."

    invoke-static/range {v37 .. v37}, Landroid/os/Binder;->setDumpDisabled(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-interface {v8, v0}, Landroid/app/IActivityController;->systemNotResponding(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_c

    const-string/jumbo v37, "Watchdog"

    const-string/jumbo v38, "Activity controller requested to coninue to wait"

    invoke-static/range {v37 .. v38}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3

    const/16 v36, 0x0

    goto/16 :goto_0

    :cond_b
    const/16 v37, 0x1

    goto/16 :goto_6

    :catch_1
    move-exception v22

    goto :goto_7

    :catch_2
    move-exception v13

    const-string/jumbo v37, "Watchdog"

    const-string/jumbo v38, "Failed to write \'c\' to /proc/sysrq-trigger"

    invoke-static/range {v37 .. v38}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v37, "Watchdog"

    invoke-virtual {v13}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :catchall_1
    move-exception v37

    monitor-exit p0

    throw v37

    :catch_3
    move-exception v12

    :cond_c
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v37

    if-eqz v37, :cond_d

    const/4 v10, 0x2

    :cond_d
    const/16 v37, 0x2

    move/from16 v0, v37

    if-lt v10, v0, :cond_e

    const-string/jumbo v37, "Watchdog"

    const-string/jumbo v38, "Debugger connected: Watchdog is *not* killing the system process"

    invoke-static/range {v37 .. v38}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    const/16 v36, 0x0

    goto/16 :goto_0

    :cond_e
    if-lez v10, :cond_f

    const-string/jumbo v37, "Watchdog"

    const-string/jumbo v38, "Debugger was connected: Watchdog is *not* killing the system process"

    invoke-static/range {v37 .. v38}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_f
    if-nez v6, :cond_10

    const-string/jumbo v37, "Watchdog"

    const-string/jumbo v38, "Restart not allowed: Watchdog is *not* killing the system process"

    invoke-static/range {v37 .. v38}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_10
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "Watchdog"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "!@*** WATCHDOG KILLING SYSTEM PROCESS: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v37, "\"CAUSE\":\"!@*** WATCHDOG KILLING SYSTEM PROCESS: "

    move-object/from16 v0, v25

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, "\", "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v37, "\n"

    move-object/from16 v0, v25

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v37

    add-int/lit8 v26, v37, 0x0

    const-string/jumbo v37, "\"STACK\":\""

    move-object/from16 v0, v25

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v21, 0x0

    :goto_a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v21

    move/from16 v1, v37

    if-ge v0, v1, :cond_13

    const-string/jumbo v38, "Watchdog"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual/range {v37 .. v37}, Lcom/android/server/Watchdog$HandlerChecker;->getName()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v39, " stack trace:"

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual/range {v37 .. v37}, Lcom/android/server/Watchdog$HandlerChecker;->getName()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v25

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, " stack trace: \n"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual/range {v37 .. v37}, Lcom/android/server/Watchdog$HandlerChecker;->getName()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v37

    add-int v26, v26, v37

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual/range {v37 .. v37}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v28

    const/16 v37, 0x0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v38, v0

    :goto_b
    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_12

    aget-object v15, v28, v37

    const-string/jumbo v39, "Watchdog"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "    at "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v15}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->length()I

    move-result v39

    add-int v39, v39, v26

    const/16 v40, 0x384

    move/from16 v0, v39

    move/from16 v1, v40

    if-gt v0, v1, :cond_11

    const-string/jumbo v39, "    at "

    move-object/from16 v0, v25

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string/jumbo v40, "\n"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->length()I

    move-result v39

    add-int v26, v26, v39

    :cond_11
    add-int/lit8 v37, v37, 0x1

    goto :goto_b

    :cond_12
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_a

    :cond_13
    const-string/jumbo v37, "\""

    move-object/from16 v0, v25

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v37, "Watchdog"

    const-string/jumbo v38, "*** GOODBYE!"

    invoke-static/range {v37 .. v38}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    :try_start_9
    new-instance v19, Ljava/io/FileWriter;

    const-string/jumbo v37, "/data/log/pf_reset_reason.txt"

    const/16 v38, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v19, :cond_14

    :try_start_a
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v19

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :cond_14
    if-eqz v19, :cond_15

    :try_start_b
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileWriter;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    :cond_15
    :goto_c
    move-object/from16 v18, v19

    :cond_16
    :goto_d
    const-string/jumbo v37, "bugreportswd"

    const/16 v38, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Landroid/os/Debug;->saveDump(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    const-string/jumbo v37, "sys.sf.restart"

    const-string/jumbo v38, "1"

    invoke-static/range {v37 .. v38}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :catch_4
    move-exception v16

    const-string/jumbo v37, "Watchdog"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "Failed to close /data/log/pf_reset_reason.txt"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :catch_5
    move-exception v16

    :goto_e
    :try_start_c
    const-string/jumbo v37, "Watchdog"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "Failed to write to /data/log/pf_reset_reason.txt"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-eqz v18, :cond_16

    :try_start_d
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileWriter;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_d

    :catch_6
    move-exception v16

    const-string/jumbo v37, "Watchdog"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "Failed to close /data/log/pf_reset_reason.txt"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :catchall_2
    move-exception v37

    :goto_f
    if-eqz v18, :cond_17

    :try_start_e
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileWriter;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    :cond_17
    :goto_10
    throw v37

    :catch_7
    move-exception v16

    const-string/jumbo v38, "Watchdog"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "Failed to close /data/log/pf_reset_reason.txt"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :catchall_3
    move-exception v37

    move-object/from16 v18, v19

    goto :goto_f

    :catch_8
    move-exception v16

    move-object/from16 v18, v19

    goto :goto_e
.end method

.method public setActivityController(Landroid/app/IActivityController;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAllowRestart(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
