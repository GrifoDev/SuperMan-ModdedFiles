.class Lcom/sec/android/cover/monitor/CoverNotificationMonitor$1;
.super Landroid/os/Handler;
.source "CoverNotificationMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/monitor/CoverNotificationMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$1;->this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-get4()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$1;->this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-get3(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)Lcom/sec/android/cover/monitor/CoverNotificationMonitor$CoverNotificationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$1;->this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-get3(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)Lcom/sec/android/cover/monitor/CoverNotificationMonitor$CoverNotificationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$CoverNotificationListener;->onNotificationsUpdated()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
    .end packed-switch
.end method
