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
    .locals 12

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string/jumbo v7, "RecentsAppListLoader"

    const-string/jumbo v10, "preloadData()"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    sget-object v10, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    monitor-enter v10

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v7, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    sget-object v7, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/AppInfo;

    iget-object v7, v2, Lcom/android/systemui/recents/model/AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v11, v2, Lcom/android/systemui/recents/model/AppInfo;->userId:I

    invoke-virtual {v5, v7, v11}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedActivityLabel(Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    :goto_1
    iput-object v6, v2, Lcom/android/systemui/recents/model/AppInfo;->title:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$4;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    iget-object v7, v7, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mApplicationContext:Landroid/content/Context;

    iget-object v11, v2, Lcom/android/systemui/recents/model/AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v11}, Lcom/android/systemui/recents/misc/AppListUsageStats;->getCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    iput v7, v2, Lcom/android/systemui/recents/model/AppInfo;->executeCount:I

    iget-object v7, v2, Lcom/android/systemui/recents/model/AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5, v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isLaunchableForMultiInstance(Landroid/content/pm/ActivityInfo;)Z

    move-result v7

    iput-boolean v7, v2, Lcom/android/systemui/recents/model/AppInfo;->supportMultiInstance:Z

    iget-object v7, v2, Lcom/android/systemui/recents/model/AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v7, v11}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v7, v2, Lcom/android/systemui/recents/model/AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    add-int/lit8 v11, v0, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v6, ""

    goto :goto_1

    :cond_1
    sget-object v7, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/AppInfo;

    iget-object v7, v2, Lcom/android/systemui/recents/model/AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v7, v11}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v8, :cond_2

    move v7, v8

    :goto_3
    iput-boolean v7, v2, Lcom/android/systemui/recents/model/AppInfo;->hasMultipleLauncherActivities:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v7

    monitor-exit v10

    throw v7

    :cond_2
    move v7, v9

    goto :goto_3

    :cond_3
    monitor-exit v10

    iget-object v7, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$4;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-static {v7}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->-get5(Lcom/android/systemui/recents/model/RecentsAppListLoader;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    :try_start_1
    iget-object v7, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$4;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-static {v7}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->-get0(Lcom/android/systemui/recents/model/RecentsAppListLoader;)Landroid/os/Handler;

    move-result-object v7

    iget-object v9, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$4;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-static {v9}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->-get1(Lcom/android/systemui/recents/model/RecentsAppListLoader;)Ljava/lang/Runnable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$4;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-static {v7}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->-get0(Lcom/android/systemui/recents/model/RecentsAppListLoader;)Landroid/os/Handler;

    move-result-object v7

    iget-object v9, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$4;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-static {v9}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->-get4(Lcom/android/systemui/recents/model/RecentsAppListLoader;)Ljava/lang/Runnable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$4;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    const/4 v9, 0x0

    invoke-static {v7, v9}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->-set0(Lcom/android/systemui/recents/model/RecentsAppListLoader;Z)Z

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v7

    new-instance v9, Lcom/android/systemui/recents/events/activity/NotifyDataLoadEvent;

    invoke-direct {v9}, Lcom/android/systemui/recents/events/activity/NotifyDataLoadEvent;-><init>()V

    invoke-virtual {v7, v9}, Lcom/android/systemui/recents/events/EventBus;->sendOntoMainThread(Lcom/android/systemui/recents/events/EventBus$Event;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    monitor-exit v8

    return-void

    :catchall_1
    move-exception v7

    monitor-exit v8

    throw v7
.end method
