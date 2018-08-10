.class Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector$1;
.super Ljava/lang/Object;
.source "SamsungActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;


# direct methods
.method constructor <init>(Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector$1;->this$1:Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector$1;->this$1:Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;

    iget-object v2, v1, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mMetaDataMap:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector$1;->this$1:Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;

    iget-boolean v0, v1, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->mLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector$1;->this$1:Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;

    iget-object v1, v1, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->this$0:Lcom/android/server/am/SamsungActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/SamsungActivityManagerService;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v1, :cond_0

    xor-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector$1;->this$1:Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;

    invoke-virtual {v1}, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->loadInternal()V

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector$1;->this$1:Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;

    invoke-virtual {v1}, Lcom/android/server/am/SamsungActivityManagerService$MetaDataCollector;->scheduleLoad()V

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
