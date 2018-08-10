.class Landroid/net/IpSecTransform$1;
.super Landroid/net/ConnectivityManager$PacketKeepaliveCallback;
.source "IpSecTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IpSecTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/IpSecTransform;


# direct methods
.method constructor <init>(Landroid/net/IpSecTransform;)V
    .locals 0

    iput-object p1, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$PacketKeepaliveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2

    iget-object v0, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    invoke-static {v0}, Landroid/net/IpSecTransform;->-get0(Landroid/net/IpSecTransform;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    invoke-static {v0, p1}, Landroid/net/IpSecTransform;->-set0(Landroid/net/IpSecTransform;I)I

    iget-object v0, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    invoke-static {v0}, Landroid/net/IpSecTransform;->-get0(Landroid/net/IpSecTransform;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onStarted()V
    .locals 3

    iget-object v0, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    invoke-static {v0}, Landroid/net/IpSecTransform;->-get0(Landroid/net/IpSecTransform;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/net/IpSecTransform;->-set0(Landroid/net/IpSecTransform;I)I

    iget-object v0, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    invoke-static {v0}, Landroid/net/IpSecTransform;->-get0(Landroid/net/IpSecTransform;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onStopped()V
    .locals 3

    iget-object v0, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    invoke-static {v0}, Landroid/net/IpSecTransform;->-get0(Landroid/net/IpSecTransform;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Landroid/net/IpSecTransform;->-set0(Landroid/net/IpSecTransform;I)I

    iget-object v0, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    invoke-static {v0}, Landroid/net/IpSecTransform;->-get0(Landroid/net/IpSecTransform;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
