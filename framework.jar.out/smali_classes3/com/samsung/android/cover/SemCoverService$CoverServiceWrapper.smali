.class Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;
.super Lcom/samsung/android/cover/ICoverService$Stub;
.source "SemCoverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cover/SemCoverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoverServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cover/SemCoverService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/cover/SemCoverService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-direct {p0}, Lcom/samsung/android/cover/ICoverService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/cover/SemCoverService;Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;-><init>(Lcom/samsung/android/cover/SemCoverService;)V

    return-void
.end method


# virtual methods
.method public onCoverAppCovered(Z)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-static {v0}, Lcom/samsung/android/cover/SemCoverService;->-get2(Lcom/samsung/android/cover/SemCoverService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cover/SemCoverService;->onCoverAppCovered(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onSystemReady()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-static {v0}, Lcom/samsung/android/cover/SemCoverService;->-get2(Lcom/samsung/android/cover/SemCoverService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-static {v0}, Lcom/samsung/android/cover/SemCoverService;->-get1(Lcom/samsung/android/cover/SemCoverService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-static {v0}, Lcom/samsung/android/cover/SemCoverService;->-get2(Lcom/samsung/android/cover/SemCoverService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/cover/SemCoverService$CoverServiceWrapper;->this$0:Lcom/samsung/android/cover/SemCoverService;

    invoke-static {v0}, Lcom/samsung/android/cover/SemCoverService;->-get1(Lcom/samsung/android/cover/SemCoverService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
