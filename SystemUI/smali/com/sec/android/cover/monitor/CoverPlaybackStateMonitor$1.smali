.class Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "CoverPlaybackStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$1;->this$0:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 4

    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$1;->this$0:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$1;->this$0:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    invoke-static {v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->-get3(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;)Landroid/media/session/MediaSessionManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/media/session/MediaSessionManager;->getActiveSessionsForUser(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->onActiveSessionsChanged(Ljava/util/List;)V

    goto :goto_0
.end method

.method public onUserSwitched(II)V
    .locals 2

    invoke-static {}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->-get1()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$1;->this$0:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->stop()V

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$1;->this$0:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
