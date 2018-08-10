.class Lcom/sec/android/cover/monitor/CoverUpdateMonitor$4;
.super Landroid/content/BroadcastReceiver;
.source "CoverUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$4;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "CoverUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "received broadcast "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "com.samsung.cover.DELAYED_TIMEOUT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "seq"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$4;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v3}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-get1(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x149

    invoke-virtual {v3, v4, v2, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$4;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v3}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-get1(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "dualclock.homecity_timezone"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$4;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-static {v3}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->-get1(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x12f

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
