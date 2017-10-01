.class Lcom/android/systemui/recents/model/RecentsAppListLoader$4;
.super Ljava/lang/Object;
.source "RecentsAppListLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/model/RecentsAppListLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/model/RecentsAppListLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$4;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string/jumbo v4, "RecentsAppListLoader"

    const-string/jumbo v5, "preloadData()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    sget-object v4, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    sget-object v4, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/AppInfo;

    iget-object v4, v1, Lcom/android/systemui/recents/model/AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedActivityLabel(Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    :goto_1
    iput-object v3, v1, Lcom/android/systemui/recents/model/AppInfo;->title:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$4;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    iget-object v4, v4, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mApplicationContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/systemui/recents/model/AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/systemui/recents/misc/AppListUsageStats;->getCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/android/systemui/recents/model/AppInfo;->executeCount:I

    iget-object v4, v1, Lcom/android/systemui/recents/model/AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->shouldLaunchAsMultiInstance(Landroid/content/pm/ActivityInfo;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/android/systemui/recents/model/AppInfo;->supportMultiInstance:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v3, ""

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$4;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-static {v4}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->-get6(Lcom/android/systemui/recents/model/RecentsAppListLoader;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$4;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-static {v4}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->-get0(Lcom/android/systemui/recents/model/RecentsAppListLoader;)Landroid/os/Handler;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$4;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-static {v6}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->-get1(Lcom/android/systemui/recents/model/RecentsAppListLoader;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$4;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-static {v4}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->-get0(Lcom/android/systemui/recents/model/RecentsAppListLoader;)Landroid/os/Handler;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$4;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-static {v6}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->-get5(Lcom/android/systemui/recents/model/RecentsAppListLoader;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    :goto_2
    monitor-exit v5

    return-void

    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$4;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->-set0(Lcom/android/systemui/recents/model/RecentsAppListLoader;Z)Z

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v4

    new-instance v6, Lcom/android/systemui/recents/events/activity/NotifyDataLoadEvent;

    invoke-direct {v6}, Lcom/android/systemui/recents/events/activity/NotifyDataLoadEvent;-><init>()V

    invoke-virtual {v4, v6}, Lcom/android/systemui/recents/events/EventBus;->sendOntoMainThread(Lcom/android/systemui/recents/events/EventBus$Event;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method
