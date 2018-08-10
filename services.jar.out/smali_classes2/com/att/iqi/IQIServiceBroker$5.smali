.class Lcom/att/iqi/IQIServiceBroker$5;
.super Ljava/lang/Object;
.source "IQIServiceBroker.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/IQIServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/att/iqi/IQIServiceBroker;


# direct methods
.method constructor <init>(Lcom/att/iqi/IQIServiceBroker;)V
    .locals 0

    iput-object p1, p0, Lcom/att/iqi/IQIServiceBroker$5;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    iget-object v2, p0, Lcom/att/iqi/IQIServiceBroker$5;->this$0:Lcom/att/iqi/IQIServiceBroker;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$5;->this$0:Lcom/att/iqi/IQIServiceBroker;

    iget-object v3, p0, Lcom/att/iqi/IQIServiceBroker$5;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-static {v3, p2}, Lcom/att/iqi/IQIServiceBroker;->-wrap4(Lcom/att/iqi/IQIServiceBroker;Landroid/os/IBinder;)Lcom/att/iqi/IIQIService;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/att/iqi/IQIServiceBroker;->-set0(Lcom/att/iqi/IQIServiceBroker;Lcom/att/iqi/IIQIService;)Lcom/att/iqi/IIQIService;

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$5;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-virtual {v1}, Lcom/att/iqi/IQIServiceBroker;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Lcom/att/iqi/IQIServiceBroker$5$1;

    invoke-direct {v1, p0}, Lcom/att/iqi/IQIServiceBroker$5$1;-><init>(Lcom/att/iqi/IQIServiceBroker$5;)V

    const/4 v3, 0x0

    invoke-interface {p2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$5;->this$0:Lcom/att/iqi/IQIServiceBroker;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/att/iqi/IQIServiceBroker;->-set1(Lcom/att/iqi/IQIServiceBroker;I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v1, "IQIServiceBroker"

    const-string/jumbo v3, "Exception while linking IBinder to death"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$5;->this$0:Lcom/att/iqi/IQIServiceBroker;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$5;->this$0:Lcom/att/iqi/IQIServiceBroker;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/att/iqi/IQIServiceBroker;->-set0(Lcom/att/iqi/IQIServiceBroker;Lcom/att/iqi/IIQIService;)Lcom/att/iqi/IIQIService;

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$5;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-virtual {v0}, Lcom/att/iqi/IQIServiceBroker;->notifyAll()V

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$5;->this$0:Lcom/att/iqi/IQIServiceBroker;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/att/iqi/IQIServiceBroker;->-set1(Lcom/att/iqi/IQIServiceBroker;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
