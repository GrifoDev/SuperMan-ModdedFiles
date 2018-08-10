.class Lcom/android/server/wm/NaviBarHidePolicyController$LazyWriterThread;
.super Ljava/lang/Thread;
.source "NaviBarHidePolicyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/NaviBarHidePolicyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LazyWriterThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/NaviBarHidePolicyController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/NaviBarHidePolicyController;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/NaviBarHidePolicyController$LazyWriterThread;->this$0:Lcom/android/server/wm/NaviBarHidePolicyController;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/NaviBarHidePolicyController$LazyWriterThread;->this$0:Lcom/android/server/wm/NaviBarHidePolicyController;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/NaviBarHidePolicyController$LazyWriterThread;->this$0:Lcom/android/server/wm/NaviBarHidePolicyController;

    invoke-static {v1}, Lcom/android/server/wm/NaviBarHidePolicyController;->-wrap0(Lcom/android/server/wm/NaviBarHidePolicyController;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/NaviBarHidePolicyController$LazyWriterThread;->this$0:Lcom/android/server/wm/NaviBarHidePolicyController;

    invoke-virtual {v1}, Lcom/android/server/wm/NaviBarHidePolicyController;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_0
    move-exception v0

    goto :goto_1
.end method
