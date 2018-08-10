.class Lcom/android/systemui/recents/model/RecentsAppListLoader$3;
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

    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$3;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v9, 0x0

    const-string/jumbo v5, "RecentsAppListLoader"

    const-string/jumbo v6, "buildAppInfos()\n"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mRawResolveInfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getLauncherPacakges(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isResizable(Landroid/content/pm/ResolveInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mRawResolveInfoList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v6, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_0
    sget-object v5, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_1
    sget-object v5, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mRawResolveInfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    sget-object v5, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mRawResolveInfoList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    new-instance v0, Lcom/android/systemui/recents/model/AppInfo;

    invoke-direct {v0, v2}, Lcom/android/systemui/recents/model/AppInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    sget-object v5, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    monitor-exit v6

    const-string/jumbo v5, "RecentsAppListLoader"

    const-string/jumbo v6, "mAppInfoList - size=%d\n"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    sget-object v8, Lcom/android/systemui/recents/model/RecentsAppListLoader;->mAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method
