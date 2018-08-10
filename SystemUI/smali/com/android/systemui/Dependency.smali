.class public Lcom/android/systemui/Dependency;
.super Lcom/android/systemui/SystemUI;
.source "Dependency.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/Dependency$DependencyKey;,
        Lcom/android/systemui/Dependency$DependencyProvider;
    }
.end annotation


# static fields
.field public static final BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/Dependency$DependencyKey",
            "<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEBUG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/Dependency$DependencyKey",
            "<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field

.field public static final LEAK_REPORT_EMAIL:Lcom/android/systemui/Dependency$DependencyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/Dependency$DependencyKey",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/Dependency$DependencyKey",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/Dependency$DependencyKey",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private static sDependency:Lcom/android/systemui/Dependency;


# instance fields
.field private final mDependencies:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/systemui/Dependency$DependencyProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -com_android_systemui_Dependency-mthref-0()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/android/systemui/util/leak/LeakDetector;->create()Lcom/android/systemui/util/leak/LeakDetector;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -com_android_systemui_Dependency-mthref-1()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/systemui/UiOffloadThread;

    invoke-direct {v0}, Lcom/android/systemui/UiOffloadThread;-><init>()V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string/jumbo v1, "background_looper"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string/jumbo v1, "time_tick_handler"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string/jumbo v1, "main_handler"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string/jumbo v1, "leak_report_email"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Dependency;->LEAK_REPORT_EMAIL:Lcom/android/systemui/Dependency$DependencyKey;

    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string/jumbo v1, "debug_looper"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Dependency;->DEBUG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    return-void
.end method

.method public static clearDependencies()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    return-void
.end method

.method public static destroy(Ljava/lang/Class;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/function/Consumer",
            "<TT;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/Dependency;->destroyDependency(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private destroyDependency(Ljava/lang/Class;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/function/Consumer",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/systemui/Dependency$DependencyKey",
            "<TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p0}, Lcom/android/systemui/Dependency;->getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p0}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/Dependency;->createDependency(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static initDependencies(Landroid/content/Context;)V
    .locals 2

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/systemui/Dependency;

    invoke-direct {v0}, Lcom/android/systemui/Dependency;-><init>()V

    iput-object p0, v0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/Dependency;->mComponents:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/systemui/Dependency;->start()V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_Dependency_11160()Ljava/lang/Object;
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getDataSaverController()Lcom/android/systemui/statusbar/policy/DataSaverController;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$-com_android_systemui_Dependency_12136()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$-com_android_systemui_Dependency_13603()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$-com_android_systemui_Dependency_13713()Ljava/lang/Object;
    .locals 2

    new-instance v1, Lcom/android/systemui/plugins/PluginDependencyProvider;

    const-class v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-direct {v1, v0}, Lcom/android/systemui/plugins/PluginDependencyProvider;-><init>(Lcom/android/systemui/plugins/PluginManager;)V

    return-object v1
.end method

.method static synthetic lambda$-com_android_systemui_Dependency_13889()Ljava/lang/Object;
    .locals 2

    new-instance v1, Lcom/android/systemui/splugins/SPluginDependencyProvider;

    const-class v0, Lcom/android/systemui/splugins/SPluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/splugins/SPluginManager;

    invoke-direct {v1, v0}, Lcom/android/systemui/splugins/SPluginDependencyProvider;-><init>(Lcom/android/systemui/splugins/SPluginManager;)V

    return-object v1
.end method

.method static synthetic lambda$-com_android_systemui_Dependency_14301()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$-com_android_systemui_Dependency_16176()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/DebugLogMonitor;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/DebugLogMonitor;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$-com_android_systemui_Dependency_16578(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p0, Lcom/android/systemui/Dumpable;

    return v0
.end method

.method static synthetic lambda$-com_android_systemui_Dependency_16635(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/android/systemui/Dumpable;

    invoke-interface {p3, p0, p1, p2}, Lcom/android/systemui/Dumpable;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_Dependency_16875(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p0, Lcom/android/systemui/ConfigurationChangedReceiver;

    return v0
.end method

.method static synthetic lambda$-com_android_systemui_Dependency_16952(Landroid/content/res/Configuration;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/ConfigurationChangedReceiver;

    invoke-interface {p1, p0}, Lcom/android/systemui/ConfigurationChangedReceiver;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_Dependency_8045()Ljava/lang/Object;
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "TimeTick"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v1
.end method

.method static synthetic lambda$-com_android_systemui_Dependency_8245()Ljava/lang/Object;
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "SysUiBg"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$-com_android_systemui_Dependency_8490()Ljava/lang/Object;
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "SysUiDbg"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$-com_android_systemui_Dependency_8732()Ljava/lang/Object;
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method static synthetic lambda$-com_android_systemui_Dependency_8822()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate;

    invoke-direct {v0}, Lcom/android/systemui/ActivityStarterDelegate;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected createDependency(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    instance-of v1, p1, Lcom/android/systemui/Dependency$DependencyKey;

    if-nez v1, :cond_0

    instance-of v1, p1, Ljava/lang/Class;

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/Dependency$DependencyProvider;

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported dependency "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/android/systemui/Dependency$DependencyProvider;->createDependency()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/SystemUI;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string/jumbo v0, "Dumping existing controllers:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$14;

    invoke-direct {v1}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$14;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$60;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$60;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/systemui/Dependency$DependencyKey",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final getDependency(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_10017()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_10126()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_10236()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_10348()Ljava/lang/Object;
    .locals 5

    new-instance v3, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v4, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-virtual {p0, v1}, Lcom/android/systemui/Dependency;->getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    const-class v2, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-virtual {p0, v2}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Landroid/os/Handler;Lcom/android/systemui/plugins/ActivityStarter;)V

    return-object v3
.end method

.method synthetic lambda$-com_android_systemui_Dependency_10588()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_10698()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_10812()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/internal/app/NightDisplayController;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/app/NightDisplayController;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_10929()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_11047()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_11293()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/policy/AccessibilityController;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/AccessibilityController;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_11414()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_11529()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/plugins/PluginManagerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/plugins/PluginManagerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_11671()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/splugins/SPluginManagerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/splugins/SPluginManagerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_11813()Ljava/lang/Object;
    .locals 3

    new-instance v1, Lcom/android/systemui/assist/AssistManager;

    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/assist/AssistManager;-><init>(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Landroid/content/Context;)V

    return-object v1
.end method

.method synthetic lambda$-com_android_systemui_Dependency_11965()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_12193()Ljava/lang/Object;
    .locals 4

    new-instance v2, Lcom/android/systemui/util/leak/LeakReporter;

    iget-object v3, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/systemui/util/leak/LeakDetector;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/leak/LeakDetector;

    sget-object v1, Lcom/android/systemui/Dependency;->LEAK_REPORT_EMAIL:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-virtual {p0, v1}, Lcom/android/systemui/Dependency;->getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v3, v0, v1}, Lcom/android/systemui/util/leak/LeakReporter;-><init>(Landroid/content/Context;Lcom/android/systemui/util/leak/LeakDetector;Ljava/lang/String;)V

    return-object v2
.end method

.method synthetic lambda$-com_android_systemui_Dependency_12392()Ljava/lang/Object;
    .locals 4

    new-instance v3, Lcom/android/systemui/util/leak/GarbageMonitor;

    sget-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    const-class v1, Lcom/android/systemui/util/leak/LeakDetector;

    invoke-virtual {p0, v1}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/leak/LeakDetector;

    const-class v2, Lcom/android/systemui/util/leak/LeakReporter;

    invoke-virtual {p0, v2}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/leak/LeakReporter;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/systemui/util/leak/GarbageMonitor;-><init>(Landroid/os/Looper;Lcom/android/systemui/util/leak/LeakDetector;Lcom/android/systemui/util/leak/LeakReporter;)V

    return-object v3
.end method

.method synthetic lambda$-com_android_systemui_Dependency_12608()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/tuner/TunerServiceImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/tuner/TunerServiceImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_12717()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_12828()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_12944()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_13331()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_13401()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_13498()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/fragments/FragmentService;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/fragments/FragmentService;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_14063()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_14191()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_14404()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_14529()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/ForegroundServiceControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/ForegroundServiceControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_14699()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_14998()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/KnoxStateMonitor;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/KnoxStateMonitor;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_15131()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/util/ShortcutManager;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/util/ShortcutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_15271()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/lockstar/PluginLockStarManager;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_15430()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/slimindicator/SlimIndicatorManager;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/slimindicator/SlimIndicatorManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_15740()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/coloring/QSColoringServiceManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_15987()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/profile/QSProfileServiceManager;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/profile/QSProfileServiceManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_8914()Ljava/lang/Object;
    .locals 1

    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_9025()Ljava/lang/Object;
    .locals 3

    new-instance v1, Lcom/android/systemui/util/AsyncSensorManager;

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    invoke-direct {v1, v0}, Lcom/android/systemui/util/AsyncSensorManager;-><init>(Landroid/hardware/SensorManager;)V

    return-object v1
.end method

.method synthetic lambda$-com_android_systemui_Dependency_9171()Ljava/lang/Object;
    .locals 3

    new-instance v1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-object v1
.end method

.method synthetic lambda$-com_android_systemui_Dependency_9309()Ljava/lang/Object;
    .locals 3

    new-instance v1, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-object v1
.end method

.method synthetic lambda$-com_android_systemui_Dependency_9450()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_9564()Ljava/lang/Object;
    .locals 4

    new-instance v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v3, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    const-class v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-virtual {p0, v1}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-direct {v2, v3, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V

    return-object v2
.end method

.method synthetic lambda$-com_android_systemui_Dependency_9773()Ljava/lang/Object;
    .locals 3

    new-instance v1, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-object v1
.end method

.method synthetic lambda$-com_android_systemui_Dependency_9911()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected declared-synchronized onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$15;

    invoke-direct {v1}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$15;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$59;

    invoke-direct {v1, p1}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$59;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public start()V
    .locals 4

    sput-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    sget-object v2, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA;

    invoke-direct {v3}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    sget-object v2, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$1;

    invoke-direct {v3}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$1;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    sget-object v2, Lcom/android/systemui/Dependency;->DEBUG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$2;

    invoke-direct {v3}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$2;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    sget-object v2, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$5;

    invoke-direct {v3}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$5;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$7;

    invoke-direct {v3}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$7;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/ActivityStarterDelegate;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$48;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$48;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/util/AsyncSensorManager;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$55;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$55;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/statusbar/policy/BluetoothController;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$56;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$56;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/statusbar/policy/LocationController;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$57;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$57;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/statusbar/policy/RotationLockController;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$58;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$58;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/statusbar/policy/NetworkController;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$16;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$16;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/statusbar/policy/ZenModeController;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$17;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$17;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/statusbar/policy/HotspotController;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$18;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$18;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/statusbar/policy/CastController;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$19;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$19;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/statusbar/policy/FlashlightController;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$20;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$20;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$21;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$21;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$22;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$22;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/statusbar/policy/UserInfoController;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$23;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$23;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/statusbar/policy/BatteryController;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$24;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$24;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/internal/app/NightDisplayController;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$25;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$25;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$26;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$26;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$27;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$27;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/statusbar/policy/DataSaverController;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$3;

    invoke-direct {v3}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$3;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/statusbar/policy/AccessibilityController;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$28;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$28;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$29;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$29;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/plugins/PluginManager;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$30;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$30;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/splugins/SPluginManager;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$31;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$31;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/assist/AssistManager;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$32;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$32;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/statusbar/policy/SecurityController;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$33;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$33;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/util/leak/LeakDetector;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$4;

    invoke-direct {v3}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$4;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    sget-object v2, Lcom/android/systemui/Dependency;->LEAK_REPORT_EMAIL:Lcom/android/systemui/Dependency$DependencyKey;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$6;

    invoke-direct {v3}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$6;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/util/leak/LeakReporter;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$34;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$34;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/util/leak/GarbageMonitor;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$35;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$35;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/tuner/TunerService;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$36;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$36;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$37;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$37;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$38;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$38;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$39;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$39;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v3, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$40;

    invoke-direct {v1, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$40;-><init>(Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/fragments/FragmentService;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$42;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$42;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/statusbar/policy/ExtensionController;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$8;

    invoke-direct {v3}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$8;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/plugins/PluginDependencyProvider;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$9;

    invoke-direct {v3}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$9;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/splugins/SPluginDependencyProvider;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$10;

    invoke-direct {v3}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$10;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$43;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$43;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/plugins/VolumeDialogController;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$44;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$44;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/internal/logging/MetricsLogger;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$11;

    invoke-direct {v3}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$11;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$45;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$45;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/ForegroundServiceController;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$46;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$46;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/UiOffloadThread;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$12;

    invoke-direct {v3}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$12;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/util/SettingsHelper;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$47;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$47;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0, v1}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/KnoxStateMonitor;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$49;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$49;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {p0, v1}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/util/ShortcutManager;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$50;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$50;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/lockstar/PluginLockStarManager;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$51;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$51;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_SLIMINDICATOR:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/slimindicator/SlimIndicatorManager;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$52;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$52;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/coloring/QSColoringServiceManager;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$53;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$53;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/profile/QSProfileServiceManager;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$54;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$54;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v2, Lcom/android/systemui/statusbar/DebugLogMonitor;

    new-instance v3, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$13;

    invoke-direct {v3}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$13;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/SystemUIFactory;->injectDependencies(Landroid/util/ArrayMap;Landroid/content/Context;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_2
    new-instance v1, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$41;

    invoke-direct {v1, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$41;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_1
.end method
