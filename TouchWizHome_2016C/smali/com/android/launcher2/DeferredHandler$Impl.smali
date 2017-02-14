.class Lcom/android/launcher2/DeferredHandler$Impl;
.super Landroid/os/Handler;
.source "DeferredHandler.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/DeferredHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Impl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DeferredHandler;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/DeferredHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/DeferredHandler$Impl;->this$0:Lcom/android/launcher2/DeferredHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/DeferredHandler;Lcom/android/launcher2/DeferredHandler$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/DeferredHandler$Impl;-><init>(Lcom/android/launcher2/DeferredHandler;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/DeferredHandler$Impl;->this$0:Lcom/android/launcher2/DeferredHandler;

    # getter for: Lcom/android/launcher2/DeferredHandler;->mQueue:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/android/launcher2/DeferredHandler;->access$100(Lcom/android/launcher2/DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/DeferredHandler$Impl;->this$0:Lcom/android/launcher2/DeferredHandler;

    # getter for: Lcom/android/launcher2/DeferredHandler;->mQueue:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/android/launcher2/DeferredHandler;->access$100(Lcom/android/launcher2/DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/DeferredHandler$Impl;->this$0:Lcom/android/launcher2/DeferredHandler;

    # getter for: Lcom/android/launcher2/DeferredHandler;->mQueue:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/android/launcher2/DeferredHandler;->access$100(Lcom/android/launcher2/DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v1, p0, Lcom/android/launcher2/DeferredHandler$Impl;->this$0:Lcom/android/launcher2/DeferredHandler;

    # getter for: Lcom/android/launcher2/DeferredHandler;->mQueue:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/android/launcher2/DeferredHandler;->access$100(Lcom/android/launcher2/DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v2

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lcom/android/launcher2/DeferredHandler$Impl;->this$0:Lcom/android/launcher2/DeferredHandler;

    invoke-virtual {v1}, Lcom/android/launcher2/DeferredHandler;->scheduleNextLocked()V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public queueIdle()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/DeferredHandler$Impl;->handleMessage(Landroid/os/Message;)V

    const/4 v0, 0x0

    return v0
.end method
