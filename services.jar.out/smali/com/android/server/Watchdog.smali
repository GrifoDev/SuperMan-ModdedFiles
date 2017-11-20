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

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

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
    .locals 60

    const/16 v53, 0x0

    :goto_0
    const/16 v20, 0x0

    monitor-enter p0

    const-wide/16 v50, 0x7530

    const/16 v37, 0x0

    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v54

    move/from16 v0, v37

    move/from16 v1, v54

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/Watchdog$HandlerChecker;->scheduleCheckLocked()V

    add-int/lit8 v37, v37, 0x1

    goto :goto_1

    :cond_0
    const-string/jumbo v54, "Watchdog"

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v56, "!@Sync "

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    sget v56, Lcom/android/server/Watchdog;->WSyncCount:I

    add-int/lit8 v57, v56, 0x1

    sput v57, Lcom/android/server/Watchdog;->WSyncCount:I

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string/jumbo v56, " ["

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v56, v0

    new-instance v57, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v58

    invoke-direct/range {v57 .. v59}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v56 .. v57}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string/jumbo v56, "]"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v54 .. v55}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v54, Ljava/io/File;

    const-string/jumbo v55, "/proc/self/fd"

    invoke-direct/range {v54 .. v55}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v54 .. v54}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v30

    if-eqz v30, :cond_6

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v54, v0

    const/16 v55, 0x39c

    move/from16 v0, v54

    move/from16 v1, v55

    if-le v0, v1, :cond_6

    const/4 v14, 0x0

    const/4 v12, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v54, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v54

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/16 v34, 0x0

    const-string/jumbo v54, "===== fd_list: "

    move-object/from16 v0, v16

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v55, v0

    new-instance v56, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v58

    move-object/from16 v0, v56

    move-wide/from16 v1, v58

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v55 .. v56}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string/jumbo v55, "\n"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v54, "Length: "

    move-object/from16 v0, v16

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string/jumbo v55, "\n"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v54, 0x0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v55, v0

    :goto_2
    move/from16 v0, v54

    move/from16 v1, v55

    if-ge v0, v1, :cond_1

    aget-object v28, v30, v54
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v29, Ljava/io/File;

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v56 .. v56}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v29

    move-object/from16 v1, v56

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v16

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string/jumbo v57, " -> "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string/jumbo v57, "\n"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    add-int/lit8 v54, v54, 0x1

    goto :goto_2

    :catch_0
    move-exception v24

    :try_start_2
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v16

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string/jumbo v57, " -> readlink error"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v54

    monitor-exit p0

    throw v54

    :cond_1
    :try_start_3
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v54, Ljava/io/FileReader;

    const-string/jumbo v55, "/proc/self/maps"

    invoke-direct/range {v54 .. v55}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v54

    invoke-direct {v13, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v39

    const-string/jumbo v54, "\n=====system_server MAPS info=====\n"

    move-object/from16 v0, v16

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    if-eqz v39, :cond_2

    move-object/from16 v0, v16

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v54, "\n"

    move-object/from16 v0, v16

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_16
    .catchall {:try_start_4 .. :try_end_4} :catchall_a

    move-result-object v39

    goto :goto_4

    :cond_2
    if-eqz v13, :cond_3

    :try_start_5
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_3
    :goto_5
    move-object v12, v13

    :cond_4
    :goto_6
    :try_start_6
    new-instance v31, Ljava/io/File;

    const-string/jumbo v54, "/data/log/fd_list.txt"

    move-object/from16 v0, v31

    move-object/from16 v1, v54

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->exists()Z

    move-result v54

    if-nez v54, :cond_5

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->createNewFile()Z

    :cond_5
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    new-instance v8, Landroid/util/Base64OutputStream;

    const/16 v54, 0x0

    move/from16 v0, v54

    invoke-direct {v8, v10, v0}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_11
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :try_start_8
    new-instance v35, Ljava/util/zip/GZIPOutputStream;

    move-object/from16 v0, v35

    invoke-direct {v0, v8}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_12
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    const-string/jumbo v55, "UTF-8"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v54

    move-object/from16 v0, v35

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual/range {v35 .. v35}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v8}, Landroid/util/Base64OutputStream;->close()V

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "FD_LIST_INFO **********\n"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string/jumbo v55, "\nFD_LIST_INFO **********\n"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v15, Ljava/io/BufferedWriter;

    new-instance v54, Ljava/io/FileWriter;

    const/16 v55, 0x0

    move-object/from16 v0, v54

    move-object/from16 v1, v31

    move/from16 v2, v55

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    move-object/from16 v0, v54

    invoke-direct {v15, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_13
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    :try_start_a
    const-string/jumbo v54, "Watchdog"

    const-string/jumbo v55, "!@ The number of fd in system_server is over (RLIMIT-100), so we make fd_list file for debugging."

    invoke-static/range {v54 .. v55}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v54

    const/16 v55, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v55

    move/from16 v2, v54

    invoke-virtual {v15, v0, v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    invoke-virtual {v15}, Ljava/io/BufferedWriter;->flush()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_14
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    if-eqz v15, :cond_6

    :try_start_b
    invoke-virtual {v15}, Ljava/io/BufferedWriter;->close()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v54

    const-string/jumbo v55, "chown system:log /data/log/fd_list.txt"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v54

    const-string/jumbo v55, "chmod 640 /data/log/fd_list.txt"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_15
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_6
    :goto_7
    :try_start_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/Watchdog;->mDumped:Z

    move/from16 v54, v0

    if-nez v54, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/Watchdog;->mEmfileChecker:Z

    move/from16 v54, v0

    if-eqz v54, :cond_c

    :cond_7
    :goto_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v46

    :goto_9
    const-wide/16 v54, 0x0

    cmp-long v54, v50, v54

    if-lez v54, :cond_d

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result v54

    if-eqz v54, :cond_8

    const/16 v20, 0x2

    :cond_8
    :try_start_d
    move-object/from16 v0, p0

    move-wide/from16 v1, v50

    invoke-virtual {v0, v1, v2}, Lcom/android/server/Watchdog;->wait(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :goto_a
    :try_start_e
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v54

    if-eqz v54, :cond_9

    const/16 v20, 0x2

    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result-wide v54

    sub-long v54, v54, v46

    const-wide/16 v56, 0x7530

    sub-long v50, v56, v54

    goto :goto_9

    :catch_1
    move-exception v24

    goto/16 :goto_5

    :catch_2
    move-exception v24

    :goto_b
    :try_start_f
    const-string/jumbo v54, "Watchdog"

    const-string/jumbo v55, "Failed to write system_server MAPS info"

    invoke-static/range {v54 .. v55}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-eqz v12, :cond_4

    :try_start_10
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_6

    :catch_3
    move-exception v24

    goto/16 :goto_6

    :catchall_1
    move-exception v54

    :goto_c
    if-eqz v12, :cond_a

    :try_start_11
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :cond_a
    :goto_d
    :try_start_12
    throw v54
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :catch_4
    move-exception v24

    goto :goto_d

    :catch_5
    move-exception v24

    :goto_e
    :try_start_13
    const-string/jumbo v54, "Watchdog"

    const-string/jumbo v55, "Failed to write contens in fd_list.txt"

    invoke-static/range {v54 .. v55}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    if-eqz v14, :cond_6

    :try_start_14
    invoke-virtual {v14}, Ljava/io/BufferedWriter;->close()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v54

    const-string/jumbo v55, "chown system:log /data/log/fd_list.txt"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v54

    const-string/jumbo v55, "chmod 640 /data/log/fd_list.txt"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto :goto_7

    :catch_6
    move-exception v24

    goto/16 :goto_7

    :catchall_2
    move-exception v54

    :goto_f
    if-eqz v14, :cond_b

    :try_start_15
    invoke-virtual {v14}, Ljava/io/BufferedWriter;->close()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v55

    const-string/jumbo v56, "chown system:log /data/log/fd_list.txt"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v55

    const-string/jumbo v56, "chmod 640 /data/log/fd_list.txt"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_10
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    :cond_b
    :goto_10
    :try_start_16
    throw v54

    :cond_c
    if-eqz v30, :cond_7

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v54, v0

    const/16 v55, 0x39c

    move/from16 v0, v54

    move/from16 v1, v55

    if-le v0, v1, :cond_7

    const/16 v54, 0x1

    move/from16 v0, v54

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/Watchdog;->mDumped:Z

    const-string/jumbo v54, "Watchdog"

    const-string/jumbo v55, "!@ The number of fd in system_server is over (RLIMIT-100), so we ran dumpstate for debugging."

    invoke-static/range {v54 .. v55}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v54, "bugreportsem"

    const/16 v55, 0x0

    move-object/from16 v0, v55

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Landroid/os/Debug;->saveDump(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    goto/16 :goto_8

    :catch_7
    move-exception v25

    const-string/jumbo v54, "Watchdog"

    move-object/from16 v0, v54

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a

    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->evaluateCheckerCompletionLocked()I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    move-result v52

    if-nez v52, :cond_f

    const/16 v53, 0x0

    :cond_e
    :goto_11
    monitor-exit p0

    goto/16 :goto_0

    :cond_f
    const/16 v54, 0x1

    move/from16 v0, v52

    move/from16 v1, v54

    if-eq v0, v1, :cond_e

    const/16 v54, 0x2

    move/from16 v0, v52

    move/from16 v1, v54

    if-ne v0, v1, :cond_10

    if-nez v53, :cond_e

    :try_start_17
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v54

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    move-object/from16 v0, v40

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v54, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    const/16 v55, 0x1

    const/16 v56, 0x0

    const/16 v57, 0x0

    move/from16 v0, v55

    move-object/from16 v1, v40

    move-object/from16 v2, v56

    move-object/from16 v3, v57

    move-object/from16 v4, v54

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    const/16 v53, 0x1

    const-string/jumbo v54, "Watchdog"

    const-string/jumbo v55, "!@*** WAITED_HALF"

    invoke-static/range {v54 .. v55}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->getBlockedCheckersLocked()Ljava/util/ArrayList;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/Watchdog;->mAllowRestart:Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    monitor-exit p0

    const/16 v54, 0xaf2

    move/from16 v0, v54

    move-object/from16 v1, v48

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v54

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    move-object/from16 v0, v40

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mPhonePid:I

    move/from16 v54, v0

    if-lez v54, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mPhonePid:I

    move/from16 v54, v0

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    move-object/from16 v0, v40

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    if-eqz v53, :cond_13

    const/16 v54, 0x0

    :goto_12
    sget-object v55, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    const/16 v56, 0x0

    const/16 v57, 0x0

    move/from16 v0, v54

    move-object/from16 v1, v40

    move-object/from16 v2, v56

    move-object/from16 v3, v57

    move-object/from16 v4, v55

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v44

    const-wide/16 v54, 0x7d0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemClock;->sleep(J)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->dumpKernelStackTraces()Ljava/io/File;

    const/16 v54, 0x77

    move-object/from16 v0, p0

    move/from16 v1, v54

    invoke-direct {v0, v1}, Lcom/android/server/Watchdog;->doSysRq(C)V

    const/16 v54, 0x6c

    move-object/from16 v0, p0

    move/from16 v1, v54

    invoke-direct {v0, v1}, Lcom/android/server/Watchdog;->doSysRq(C)V

    const-string/jumbo v54, "PF"

    const-string/jumbo v55, "WD"

    invoke-static/range {v54 .. v55}, Landroid/os/Debug;->dumpResetReason(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v21, Lcom/android/server/Watchdog$1;

    const-string/jumbo v54, "watchdogWriteToDropbox"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v54

    move-object/from16 v3, v48

    move-object/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/Watchdog$1;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->start()V

    const-wide/16 v54, 0x7d0

    :try_start_18
    move-object/from16 v0, v21

    move-wide/from16 v1, v54

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_18} :catch_8

    :goto_13
    const-string/jumbo v54, "persist.sys.crashOnWatchdog"

    const/16 v55, 0x0

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_12

    const-string/jumbo v54, "Watchdog"

    const-string/jumbo v55, "Triggering SysRq for system_server watchdog"

    invoke-static/range {v54 .. v55}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v54, 0x77

    move-object/from16 v0, p0

    move/from16 v1, v54

    invoke-direct {v0, v1}, Lcom/android/server/Watchdog;->doSysRq(C)V

    const/16 v54, 0x6c

    move-object/from16 v0, p0

    move/from16 v1, v54

    invoke-direct {v0, v1}, Lcom/android/server/Watchdog;->doSysRq(C)V

    const-wide/16 v54, 0xbb8

    invoke-static/range {v54 .. v55}, Landroid/os/SystemClock;->sleep(J)V

    :try_start_19
    new-instance v49, Ljava/io/FileWriter;

    const-string/jumbo v54, "/proc/sysrq-trigger"

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v54, "c"

    move-object/from16 v0, v49

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual/range {v49 .. v49}, Ljava/io/FileWriter;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_9

    :cond_12
    :goto_14
    monitor-enter p0

    :try_start_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    move-object/from16 v18, v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    monitor-exit p0

    if-eqz v18, :cond_14

    const-string/jumbo v54, "Watchdog"

    const-string/jumbo v55, "Reporting stuck state to activity controller"

    invoke-static/range {v54 .. v55}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1b
    const-string/jumbo v54, "Service dumps disabled due to hung system process."

    invoke-static/range {v54 .. v54}, Landroid/os/Binder;->setDumpDisabled(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Landroid/app/IActivityController;->systemNotResponding(Ljava/lang/String;)I

    move-result v41

    if-ltz v41, :cond_14

    const-string/jumbo v54, "Watchdog"

    const-string/jumbo v55, "Activity controller requested to coninue to wait"

    invoke-static/range {v54 .. v55}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_a

    const/16 v53, 0x0

    goto/16 :goto_0

    :cond_13
    const/16 v54, 0x1

    goto/16 :goto_12

    :catch_8
    move-exception v38

    goto :goto_13

    :catch_9
    move-exception v23

    const-string/jumbo v54, "Watchdog"

    const-string/jumbo v55, "Failed to write \'c\' to /proc/sysrq-trigger"

    invoke-static/range {v54 .. v55}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v54, "Watchdog"

    invoke-virtual/range {v23 .. v23}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v54 .. v55}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :catchall_3
    move-exception v54

    monitor-exit p0

    throw v54

    :catch_a
    move-exception v22

    :cond_14
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v54

    if-eqz v54, :cond_15

    const/16 v20, 0x2

    :cond_15
    const/16 v54, 0x2

    move/from16 v0, v20

    move/from16 v1, v54

    if-lt v0, v1, :cond_16

    const-string/jumbo v54, "Watchdog"

    const-string/jumbo v55, "Debugger connected: Watchdog is *not* killing the system process"

    invoke-static/range {v54 .. v55}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    const/16 v53, 0x0

    goto/16 :goto_0

    :cond_16
    if-lez v20, :cond_17

    const-string/jumbo v54, "Watchdog"

    const-string/jumbo v55, "Debugger was connected: Watchdog is *not* killing the system process"

    invoke-static/range {v54 .. v55}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :cond_17
    if-nez v6, :cond_18

    const-string/jumbo v54, "Watchdog"

    const-string/jumbo v55, "Restart not allowed: Watchdog is *not* killing the system process"

    invoke-static/range {v54 .. v55}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :cond_18
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v54, "Watchdog"

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v56, "!@*** WATCHDOG KILLING SYSTEM PROCESS: "

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v54 .. v55}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v54, "\"CAUSE\":\"!@*** WATCHDOG KILLING SYSTEM PROCESS: "

    move-object/from16 v0, v42

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string/jumbo v55, "\", "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v54, "\n"

    move-object/from16 v0, v42

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->length()I

    move-result v54

    add-int/lit8 v43, v54, 0x0

    const-string/jumbo v54, "\"STACK\":\""

    move-object/from16 v0, v42

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v37, 0x0

    :goto_16
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v54

    move/from16 v0, v37

    move/from16 v1, v54

    if-ge v0, v1, :cond_1b

    const-string/jumbo v55, "Watchdog"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v37

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual/range {v54 .. v54}, Lcom/android/server/Watchdog$HandlerChecker;->getName()Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v56

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string/jumbo v56, " stack trace:"

    move-object/from16 v0, v54

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v55

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v37

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual/range {v54 .. v54}, Lcom/android/server/Watchdog$HandlerChecker;->getName()Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v42

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string/jumbo v55, " stack trace: \n"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v37

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual/range {v54 .. v54}, Lcom/android/server/Watchdog$HandlerChecker;->getName()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->length()I

    move-result v54

    add-int v43, v43, v54

    move/from16 v0, v37

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual/range {v54 .. v54}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v45

    const/16 v54, 0x0

    move-object/from16 v0, v45

    array-length v0, v0

    move/from16 v55, v0

    :goto_17
    move/from16 v0, v54

    move/from16 v1, v55

    if-ge v0, v1, :cond_1a

    aget-object v26, v45, v54

    const-string/jumbo v56, "Watchdog"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v58, "    at "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/String;->length()I

    move-result v56

    add-int v56, v56, v43

    const/16 v57, 0x384

    move/from16 v0, v56

    move/from16 v1, v57

    if-gt v0, v1, :cond_19

    const-string/jumbo v56, "    at "

    move-object/from16 v0, v42

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string/jumbo v57, "\n"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/String;->length()I

    move-result v56

    add-int v43, v43, v56

    :cond_19
    add-int/lit8 v54, v54, 0x1

    goto :goto_17

    :cond_1a
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_16

    :cond_1b
    const-string/jumbo v54, "\""

    move-object/from16 v0, v42

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v54, "Watchdog"

    const-string/jumbo v55, "*** GOODBYE!"

    invoke-static/range {v54 .. v55}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v32, 0x0

    :try_start_1c
    new-instance v33, Ljava/io/FileWriter;

    const-string/jumbo v54, "/data/log/pf_reset_reason.txt"

    const/16 v55, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v54

    move/from16 v2, v55

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    if-eqz v33, :cond_1c

    :try_start_1d
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v33

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_f
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    :cond_1c
    if-eqz v33, :cond_1d

    :try_start_1e
    invoke-virtual/range {v33 .. v33}, Ljava/io/FileWriter;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_b

    :cond_1d
    :goto_18
    move-object/from16 v32, v33

    :cond_1e
    :goto_19
    const-string/jumbo v54, "bugreportswd"

    const/16 v55, 0x0

    move-object/from16 v0, v55

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Landroid/os/Debug;->saveDump(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    const-string/jumbo v54, "sys.sf.restart"

    const-string/jumbo v55, "1"

    invoke-static/range {v54 .. v55}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    :catch_b
    move-exception v27

    const-string/jumbo v54, "Watchdog"

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v56, "Failed to close /data/log/pf_reset_reason.txt"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v54 .. v55}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    :catch_c
    move-exception v27

    :goto_1a
    :try_start_1f
    const-string/jumbo v54, "Watchdog"

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v56, "Failed to write to /data/log/pf_reset_reason.txt"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v54 .. v55}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_4

    if-eqz v32, :cond_1e

    :try_start_20
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileWriter;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_d

    goto :goto_19

    :catch_d
    move-exception v27

    const-string/jumbo v54, "Watchdog"

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v56, "Failed to close /data/log/pf_reset_reason.txt"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-static/range {v54 .. v55}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    :catchall_4
    move-exception v54

    :goto_1b
    if-eqz v32, :cond_1f

    :try_start_21
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileWriter;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_e

    :cond_1f
    :goto_1c
    throw v54

    :catch_e
    move-exception v27

    const-string/jumbo v55, "Watchdog"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "Failed to close /data/log/pf_reset_reason.txt"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    :catchall_5
    move-exception v54

    move-object/from16 v32, v33

    goto :goto_1b

    :catch_f
    move-exception v27

    move-object/from16 v32, v33

    goto :goto_1a

    :catch_10
    move-exception v24

    goto/16 :goto_10

    :catchall_6
    move-exception v54

    move-object v9, v10

    goto/16 :goto_f

    :catchall_7
    move-exception v54

    move-object v7, v8

    move-object v9, v10

    goto/16 :goto_f

    :catchall_8
    move-exception v54

    move-object/from16 v34, v35

    move-object v7, v8

    move-object v9, v10

    goto/16 :goto_f

    :catchall_9
    move-exception v54

    move-object/from16 v34, v35

    move-object v7, v8

    move-object v9, v10

    move-object v14, v15

    goto/16 :goto_f

    :catch_11
    move-exception v24

    move-object v9, v10

    goto/16 :goto_e

    :catch_12
    move-exception v24

    move-object v7, v8

    move-object v9, v10

    goto/16 :goto_e

    :catch_13
    move-exception v24

    move-object/from16 v34, v35

    move-object v7, v8

    move-object v9, v10

    goto/16 :goto_e

    :catch_14
    move-exception v24

    move-object/from16 v34, v35

    move-object v7, v8

    move-object v9, v10

    move-object v14, v15

    goto/16 :goto_e

    :catch_15
    move-exception v24

    goto/16 :goto_7

    :catchall_a
    move-exception v54

    move-object v12, v13

    goto/16 :goto_c

    :catch_16
    move-exception v24

    move-object v12, v13

    goto/16 :goto_b
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
