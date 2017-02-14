.class Ljava/util/Timer$1;
.super Ljava/lang/Object;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/Timer;


# direct methods
.method constructor <init>(Ljava/util/Timer;)V
    .locals 0

    iput-object p1, p0, Ljava/util/Timer$1;->this$0:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Ljava/util/Timer$1;->this$0:Ljava/util/Timer;

    invoke-static {v0}, Ljava/util/Timer;->-get0(Ljava/util/Timer;)Ljava/util/TaskQueue;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ljava/util/Timer$1;->this$0:Ljava/util/Timer;

    invoke-static {v0}, Ljava/util/Timer;->-get1(Ljava/util/Timer;)Ljava/util/TimerThread;

    move-result-object v0

    const/4 v2, 0x0

    iput-boolean v2, v0, Ljava/util/TimerThread;->newTasksMayBeScheduled:Z

    iget-object v0, p0, Ljava/util/Timer$1;->this$0:Ljava/util/Timer;

    invoke-static {v0}, Ljava/util/Timer;->-get0(Ljava/util/Timer;)Ljava/util/TaskQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TaskQueue;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
