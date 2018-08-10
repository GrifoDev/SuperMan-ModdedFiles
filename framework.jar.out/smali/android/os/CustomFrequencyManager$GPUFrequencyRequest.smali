.class Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;
.super Landroid/os/CustomFrequencyManager$FrequencyRequest;
.source "CustomFrequencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CustomFrequencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GPUFrequencyRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/CustomFrequencyManager$GPUFrequencyRequest$GPUReleaser;
    }
.end annotation


# instance fields
.field mGPUReleaser:Landroid/os/CustomFrequencyManager$GPUFrequencyRequest$GPUReleaser;

.field final synthetic this$0:Landroid/os/CustomFrequencyManager;


# direct methods
.method constructor <init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->this$0:Landroid/os/CustomFrequencyManager;

    invoke-direct/range {p0 .. p6}, Landroid/os/CustomFrequencyManager$FrequencyRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancelFrequencyRequestImpl()V
    .locals 6

    iget-object v2, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->mGPUReleaser:Landroid/os/CustomFrequencyManager$GPUFrequencyRequest$GPUReleaser;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->mGPUReleaser:Landroid/os/CustomFrequencyManager$GPUFrequencyRequest$GPUReleaser;

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest$GPUReleaser;->stop:Z

    :cond_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget v3, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->mType:I

    iget-object v4, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, v3, v4, v5}, Landroid/os/ICustomFrequencyManager;->releaseGPU(ILandroid/os/IBinder;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->this$0:Landroid/os/CustomFrequencyManager;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/os/CustomFrequencyManager;->-set2(Landroid/os/CustomFrequencyManager;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->-wrap2(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public doFrequencyRequestImpl()V
    .locals 8

    const-string/jumbo v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GPU : doFrequencyRequest::  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->mFrequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Timeout : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->mTimeoutMs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->-wrap1(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    :try_start_0
    const-string/jumbo v1, "CustomFrequencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "GPU : doFrequencyRequest::  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->mFrequency:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Timeout : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->mTimeoutMs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/os/CustomFrequencyManager;->-wrap1(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget v3, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->mType:I

    iget v4, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->mFrequency:I

    iget-object v5, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->mToken:Landroid/os/IBinder;

    iget-object v6, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, v3, v4, v5, v6}, Landroid/os/ICustomFrequencyManager;->requestGPU(IILandroid/os/IBinder;Ljava/lang/String;)V

    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->mTimeoutMs:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->this$0:Landroid/os/CustomFrequencyManager;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Landroid/os/CustomFrequencyManager;->-set2(Landroid/os/CustomFrequencyManager;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v2

    return-void

    :cond_0
    :try_start_2
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->mGPUReleaser:Landroid/os/CustomFrequencyManager$GPUFrequencyRequest$GPUReleaser;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->mGPUReleaser:Landroid/os/CustomFrequencyManager$GPUFrequencyRequest$GPUReleaser;

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest$GPUReleaser;->stop:Z

    :cond_1
    new-instance v1, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest$GPUReleaser;

    invoke-direct {v1, p0}, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest$GPUReleaser;-><init>(Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;)V

    iput-object v1, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->mGPUReleaser:Landroid/os/CustomFrequencyManager$GPUFrequencyRequest$GPUReleaser;

    iget-object v1, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->mGPUReleaser:Landroid/os/CustomFrequencyManager$GPUFrequencyRequest$GPUReleaser;

    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->mTimeoutMs:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Landroid/os/CustomFrequencyManager$GPUFrequencyRequest;->this$0:Landroid/os/CustomFrequencyManager;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/os/CustomFrequencyManager;->-set2(Landroid/os/CustomFrequencyManager;Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->-wrap2(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
