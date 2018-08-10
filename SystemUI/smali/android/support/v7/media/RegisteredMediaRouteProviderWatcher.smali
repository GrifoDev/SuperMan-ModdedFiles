.class final Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;
.super Ljava/lang/Object;
.source "RegisteredMediaRouteProviderWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$1;,
        Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$2;,
        Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$Callback;
    }
.end annotation


# instance fields
.field private final mCallback:Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/media/RegisteredMediaRouteProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mRunning:Z

.field private final mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

.field private final mScanPackagesRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$Callback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mProviders:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$1;

    invoke-direct {v0, p0}, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$1;-><init>(Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;)V

    iput-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$2;

    invoke-direct {v0, p0}, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$2;-><init>(Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;)V

    iput-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mScanPackagesRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mCallback:Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$Callback;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private findProvider(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    iget-object v3, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/RegisteredMediaRouteProvider;

    invoke-virtual {v2, p1, p2}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->hasComponentName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    return v3
.end method


# virtual methods
.method scanPackages()V
    .locals 13

    const/4 v10, 0x0

    iget-boolean v9, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mRunning:Z

    if-nez v9, :cond_0

    return-void

    :cond_0
    const/4 v7, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v9, "android.media.MediaRouteProviderService"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v1, v10}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v5, :cond_1

    iget-object v9, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v10, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v9, v10}, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->findProvider(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_2

    new-instance v2, Landroid/support/v7/media/RegisteredMediaRouteProvider;

    iget-object v9, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v12, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v9, v10}, Landroid/support/v7/media/RegisteredMediaRouteProvider;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    invoke-virtual {v2}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->start()V

    iget-object v9, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mProviders:Ljava/util/ArrayList;

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v9, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v9, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mCallback:Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$Callback;

    invoke-interface {v9, v2}, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$Callback;->addProvider(Landroid/support/v7/media/MediaRouteProvider;)V

    move v7, v8

    goto :goto_0

    :cond_2
    if-lt v6, v7, :cond_1

    iget-object v9, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/RegisteredMediaRouteProvider;

    invoke-virtual {v2}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->start()V

    invoke-virtual {v2}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->rebindIfDisconnected()V

    iget-object v9, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mProviders:Ljava/util/ArrayList;

    add-int/lit8 v8, v7, 0x1

    invoke-static {v9, v6, v7}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move v7, v8

    goto :goto_0

    :cond_3
    iget-object v9, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_4

    iget-object v9, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    :goto_1
    if-lt v0, v7, :cond_4

    iget-object v9, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/RegisteredMediaRouteProvider;

    iget-object v9, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mCallback:Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$Callback;

    invoke-interface {v9, v2}, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$Callback;->removeProvider(Landroid/support/v7/media/MediaRouteProvider;)V

    iget-object v9, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->stop()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public start()V
    .locals 5

    iget-boolean v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mRunning:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mRunning:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->mScanPackagesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
