.class Lcom/android/server/wm/AspectRatioController$LazyAspectRatioWriterThread;
.super Ljava/lang/Thread;
.source "AspectRatioController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AspectRatioController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LazyAspectRatioWriterThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AspectRatioController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/AspectRatioController;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/AspectRatioController$LazyAspectRatioWriterThread;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/AspectRatioController$LazyAspectRatioWriterThread;->this$0:Lcom/android/server/wm/AspectRatioController;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/AspectRatioController$LazyAspectRatioWriterThread;->this$0:Lcom/android/server/wm/AspectRatioController;

    iget-object v3, v3, Lcom/android/server/wm/AspectRatioController;->mSavePackageQueue:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/server/wm/AspectRatioController$LazyAspectRatioWriterThread;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v3, v5}, Lcom/android/server/wm/AspectRatioController;->-wrap2(Lcom/android/server/wm/AspectRatioController;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/AspectRatioController$LazyAspectRatioWriterThread;->this$0:Lcom/android/server/wm/AspectRatioController;

    iget-object v3, v3, Lcom/android/server/wm/AspectRatioController;->mSavePackageQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lcom/android/server/wm/AspectRatioController$LazyAspectRatioWriterThread;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-virtual {v3}, Lcom/android/server/wm/AspectRatioController;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    monitor-exit v4

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2
.end method
