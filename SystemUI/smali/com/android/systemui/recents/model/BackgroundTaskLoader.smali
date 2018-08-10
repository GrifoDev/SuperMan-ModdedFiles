.class Lcom/android/systemui/recents/model/BackgroundTaskLoader;
.super Ljava/lang/Object;
.source "RecentsTaskLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/BackgroundTaskLoader$OnIdleChangedListener;
    }
.end annotation


# static fields
.field static DEBUG:Z

.field static TAG:Ljava/lang/String;


# instance fields
.field mCancelled:Z

.field mContext:Landroid/content/Context;

.field mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

.field mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/recents/model/TaskKeyLruCache",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

.field mLoadThread:Landroid/os/HandlerThread;

.field mLoadThreadHandler:Landroid/os/Handler;

.field mMainThreadHandler:Landroid/os/Handler;

.field private final mOnIdleChangedListener:Lcom/android/systemui/recents/model/BackgroundTaskLoader$OnIdleChangedListener;

.field mStarted:Z

.field mWaitingOnLoadQueue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "TaskResourceLoader"

    sput-object v0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/recents/model/TaskResourceLoadQueue;Lcom/android/systemui/recents/model/TaskKeyLruCache;Landroid/graphics/drawable/BitmapDrawable;Lcom/android/systemui/recents/model/BackgroundTaskLoader$OnIdleChangedListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/model/TaskResourceLoadQueue;",
            "Lcom/android/systemui/recents/model/TaskKeyLruCache",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            "Lcom/android/systemui/recents/model/BackgroundTaskLoader$OnIdleChangedListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    iput-object p2, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iput-object p3, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mMainThreadHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mOnIdleChangedListener:Lcom/android/systemui/recents/model/BackgroundTaskLoader$OnIdleChangedListener;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "Recents-TaskResourceLoader"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mLoadThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mLoadThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_recents_model_BackgroundTaskLoader_9595(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/ThumbnailData;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/model/Task;->notifyTaskDataLoaded(Lcom/android/systemui/recents/model/ThumbnailData;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private processLoadQueueItem(Lcom/android/systemui/recents/misc/SystemServicesProxy;)V
    .locals 8

    iget-object v5, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->nextTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v5, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget-object v6, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->get(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePairedTask:Z

    if-eqz v5, :cond_5

    iget-boolean v5, v3, Lcom/android/systemui/recents/model/Task;->isPairedTask:Z

    if-eqz v5, :cond_5

    iget-object v5, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {p1, v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getPairedRecentTasksIcon(Lcom/android/systemui/recents/model/Task$TaskKey;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mDefaultIcon:Landroid/graphics/drawable/BitmapDrawable;

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mIconCache:Lcom/android/systemui/recents/model/TaskKeyLruCache;

    iget-object v6, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v5, v6, v0}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    :cond_2
    sget-boolean v5, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->DEBUG:Z

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Loading thumbnail: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePairedTask:Z

    if-eqz v5, :cond_7

    iget-boolean v5, v3, Lcom/android/systemui/recents/model/Task;->isPairedTask:Z

    if-eqz v5, :cond_7

    iget-object v5, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getPairedRecentTasksThumbnail(Lcom/android/systemui/recents/model/Task$TaskKey;Z)Lcom/android/systemui/recents/model/ThumbnailData;

    move-result-object v4

    :goto_1
    iget-boolean v5, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mCancelled:Z

    if-nez v5, :cond_4

    move-object v1, v0

    iget-object v5, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/systemui/recents/model/-$Lambda$SxdQNV72Pyg-wO_B44UyrYGnAR8$2;

    invoke-direct {v6, v3, v4, v1}, Lcom/android/systemui/recents/model/-$Lambda$SxdQNV72Pyg-wO_B44UyrYGnAR8$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void

    :cond_5
    iget-object v5, v3, Lcom/android/systemui/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iget-object v6, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v7, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {p1, v5, v6, v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedTaskDescriptionIcon(Landroid/app/ActivityManager$TaskDescription;Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v5

    iget-object v6, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-boolean v5, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->DEBUG:Z

    if-eqz v5, :cond_6

    sget-object v5, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Loading icon: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v5, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    iget-object v6, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p1, v2, v5, v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedActivityIcon(Landroid/content/pm/ActivityInfo;ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    iget-object v5, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    const/4 v6, 0x1

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTaskThumbnail(IZ)Lcom/android/systemui/recents/model/ThumbnailData;

    move-result-object v4

    goto :goto_1
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_recents_model_BackgroundTaskLoader_6384()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mOnIdleChangedListener:Lcom/android/systemui/recents/model/BackgroundTaskLoader$OnIdleChangedListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/recents/model/BackgroundTaskLoader$OnIdleChangedListener;->onIdleChanged(Z)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_recents_model_BackgroundTaskLoader_6571()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mOnIdleChangedListener:Lcom/android/systemui/recents/model/BackgroundTaskLoader$OnIdleChangedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/recents/model/BackgroundTaskLoader$OnIdleChangedListener;->onIdleChanged(Z)V

    return-void
.end method

.method public run()V
    .locals 6

    const/4 v5, 0x0

    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mCancelled:Z

    if-eqz v2, :cond_1

    iput-object v5, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mLoadThread:Landroid/os/HandlerThread;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v3

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->processLoadQueueItem(Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mCancelled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    monitor-enter v3

    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mWaitingOnLoadQueue:Z

    iget-object v2, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/recents/model/-$Lambda$SxdQNV72Pyg-wO_B44UyrYGnAR8;

    invoke-direct {v4, p0}, Lcom/android/systemui/recents/model/-$Lambda$SxdQNV72Pyg-wO_B44UyrYGnAR8;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mLoadQueue:Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->wait()V

    iget-object v2, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/recents/model/-$Lambda$SxdQNV72Pyg-wO_B44UyrYGnAR8$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/recents/model/-$Lambda$SxdQNV72Pyg-wO_B44UyrYGnAR8$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mWaitingOnLoadQueue:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    monitor-exit v3

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method start(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mCancelled:Z

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mStarted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mStarted:Z

    iget-object v0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mLoadThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mLoadThread:Landroid/os/HandlerThread;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mLoadThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method stop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mCancelled:Z

    iget-boolean v0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mWaitingOnLoadQueue:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/model/BackgroundTaskLoader;->mContext:Landroid/content/Context;

    :cond_0
    return-void
.end method
