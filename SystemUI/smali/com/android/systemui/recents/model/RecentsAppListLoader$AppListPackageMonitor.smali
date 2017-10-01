.class public Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "RecentsAppListLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/model/RecentsAppListLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppListPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;->addPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;Ljava/lang/String;Z)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;->removePackage(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Lcom/android/systemui/recents/model/RecentsAppListLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private addPackage(Ljava/lang/String;)Z
    .locals 10

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getLauncherPacakges(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    const/4 v1, 0x0

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    return v1

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_0

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v6

    iget v8, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v8}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v6, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isForceResizable(Landroid/content/pm/ActivityInfo;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    new-instance v2, Lcom/android/systemui/recents/model/AppInfo;

    invoke-direct {v2, v5}, Lcom/android/systemui/recents/model/AppInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    const/4 v8, 0x0

    iput v8, v2, Lcom/android/systemui/recents/model/AppInfo;->executeCount:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v6, v0, v8}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedActivityLabel(Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    :goto_1
    iput-object v7, v2, Lcom/android/systemui/recents/model/AppInfo;->title:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->shouldLaunchAsMultiInstance(Landroid/content/pm/ActivityInfo;)Z

    move-result v8

    iput-boolean v8, v2, Lcom/android/systemui/recents/model/AppInfo;->supportMultiInstance:Z

    sget-object v9, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    monitor-enter v9

    :try_start_0
    sget-object v8, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    const/4 v1, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const-string/jumbo v7, ""

    goto :goto_1

    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method private removePackage(Ljava/lang/String;Z)Z
    .locals 6

    const/4 v3, 0x0

    sget-object v5, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_0
    if-ltz v2, :cond_2

    sget-object v4, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/AppInfo;

    iget-object v4, v0, Lcom/android/systemui/recents/model/AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v4, v0, Lcom/android/systemui/recents/model/AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-static {v4, v1}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->-wrap2(Lcom/android/systemui/recents/model/RecentsAppListLoader;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    iget-object v4, v4, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mApplicationContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/android/systemui/recents/misc/AppListUsageStats;->removePackage(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    monitor-exit v5

    return v3

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;->getChangingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-static {v1}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->-get0(Lcom/android/systemui/recents/model/RecentsAppListLoader;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor$1;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor$1;-><init>(Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;->onPackageModified(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;->getChangingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-static {v1}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->-get0(Lcom/android/systemui/recents/model/RecentsAppListLoader;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor$3;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor$3;-><init>(Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;->getChangingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-static {v1}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->-get0(Lcom/android/systemui/recents/model/RecentsAppListLoader;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor$2;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor$2;-><init>(Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesAvailable([Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;->getChangingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-static {v1}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->-get0(Lcom/android/systemui/recents/model/RecentsAppListLoader;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor$4;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor$4;-><init>(Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;->getChangingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-static {v1}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->-get0(Lcom/android/systemui/recents/model/RecentsAppListLoader;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor$5;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor$5;-><init>(Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getKioskId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->-set1(Lcom/android/systemui/recents/model/RecentsAppListLoader;I)I

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-static {v1}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->-get3(Lcom/android/systemui/recents/model/RecentsAppListLoader;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-static {v3}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->-get3(Lcom/android/systemui/recents/model/RecentsAppListLoader;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public unregister()V
    .locals 1

    :try_start_0
    invoke-super {p0}, Lcom/android/internal/content/PackageMonitor;->unregister()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method
