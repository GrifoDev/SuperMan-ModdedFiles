.class Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;
.super Ljava/lang/Object;
.source "SamsungActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SamsungActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MetaDataCollector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector$1;,
        Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector$2;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "MetaDataCollector"


# instance fields
.field mLoadRunnable:Ljava/lang/Runnable;

.field mLoaded:Z

.field final mMetaDataKeys:[Ljava/lang/String;

.field final mMetaDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/server/am/SamsungActivityManagerService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/SamsungActivityManagerService;)V
    .locals 4

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->this$0:Lcom/android/server/am/SamsungActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mMetaDataMap:Ljava/util/Map;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.samsung.android.keepalive.density"

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.samsung.android.persistent.downloadable"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mMetaDataKeys:[Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mLoaded:Z

    new-instance v0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector$1;-><init>(Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;)V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mLoadRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector$2;-><init>(Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;)V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    .locals 9

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    if-eqz p3, :cond_0

    const-string/jumbo v6, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v6, "ACTIVITY MANAGER META DATA COLLECTOR"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mMetaDataMap:Ljava/util/Map;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mMetaDataMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, " (nothing) "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v7

    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iget-object v6, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mMetaDataMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "#"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mMetaDataMap:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "    "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :try_start_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method cacheMetaData(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mMetaDataMap:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mMetaDataMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mMetaDataMap:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    monitor-enter v0

    if-eqz p3, :cond_1

    :try_start_1
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1
    :try_start_2
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method hasMetaData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mMetaDataMap:Ljava/util/Map;

    monitor-enter v7

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mLoaded:Z

    iget-object v6, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mMetaDataMap:Ljava/util/Map;

    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    if-nez v2, :cond_2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->this$0:Lcom/android/server/am/SamsungActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/SamsungActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v7

    const/16 v8, 0x80

    invoke-interface {v6, p1, v8, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v6, :cond_1

    :cond_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v9

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_1
    :try_start_2
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v6, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :catch_0
    move-exception v1

    :try_start_3
    const-string/jumbo v6, "MetaDataCollector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getApplicationInfo failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_2
    if-nez v3, :cond_3

    return v9

    :catchall_1
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    :cond_3
    monitor-enter v3

    :try_start_4
    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v6

    monitor-exit v3

    return v6

    :catchall_2
    move-exception v6

    monitor-exit v3

    throw v6
.end method

.method loadInternal()V
    .locals 9

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->this$0:Lcom/android/server/am/SamsungActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/SamsungActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "MetaDataCollector"

    const-string/jumbo v1, "PackageManager is not ready yet."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->this$0:Lcom/android/server/am/SamsungActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/SamsungActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->this$0:Lcom/android/server/am/SamsungActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/SamsungActivityManagerService;->mBgHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string/jumbo v0, "MetaDataCollector"

    const-string/jumbo v1, "begin"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->this$0:Lcom/android/server/am/SamsungActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/SamsungActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    iget-object v0, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->loadMetaDataOnce(Landroid/content/pm/ApplicationInfo;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "MetaDataCollector"

    const-string/jumbo v1, "done"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mMetaDataMap:Ljava/util/Map;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method loadMetaDataOnce(Landroid/content/pm/ApplicationInfo;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mMetaDataKeys:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v5, :cond_1

    const/4 v1, 0x0

    :goto_1
    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v5, v0, v1}, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->cacheMetaData(Ljava/lang/String;Ljava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    :cond_2
    return-void
.end method

.method scheduleLoad()V
    .locals 6

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mMetaDataMap:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->this$0:Lcom/android/server/am/SamsungActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v1, :cond_0

    xor-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->this$0:Lcom/android/server/am/SamsungActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/SamsungActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mLoadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->this$0:Lcom/android/server/am/SamsungActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/SamsungActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mLoadRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method
