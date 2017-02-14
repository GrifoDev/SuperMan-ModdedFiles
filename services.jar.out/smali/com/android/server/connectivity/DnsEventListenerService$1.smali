.class Lcom/android/server/connectivity/DnsEventListenerService$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "DnsEventListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/DnsEventListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/DnsEventListenerService;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/DnsEventListenerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/DnsEventListenerService$1;->this$0:Lcom/android/server/connectivity/DnsEventListenerService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLost(Landroid/net/Network;)V
    .locals 4

    iget-object v2, p0, Lcom/android/server/connectivity/DnsEventListenerService$1;->this$0:Lcom/android/server/connectivity/DnsEventListenerService;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/DnsEventListenerService$1;->this$0:Lcom/android/server/connectivity/DnsEventListenerService;

    invoke-static {v1}, Lcom/android/server/connectivity/DnsEventListenerService;->-get0(Lcom/android/server/connectivity/DnsEventListenerService;)Ljava/util/SortedMap;

    move-result-object v1

    iget v3, p1, Landroid/net/Network;->netId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/connectivity/DnsEventListenerService$DnsEventBatch;->logAndClear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
