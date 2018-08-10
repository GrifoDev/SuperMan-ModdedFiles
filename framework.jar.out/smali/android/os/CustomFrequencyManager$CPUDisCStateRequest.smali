.class public Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;
.super Landroid/os/CustomFrequencyManager$FrequencyRequest;
.source "CustomFrequencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CustomFrequencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CPUDisCStateRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/CustomFrequencyManager$CPUDisCStateRequest$CPUDisCStateReleaser;
    }
.end annotation


# instance fields
.field mCPUDisCStateReleaser:Landroid/os/CustomFrequencyManager$CPUDisCStateRequest$CPUDisCStateReleaser;

.field final synthetic this$0:Landroid/os/CustomFrequencyManager;


# direct methods
.method constructor <init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;->this$0:Landroid/os/CustomFrequencyManager;

    invoke-direct/range {p0 .. p6}, Landroid/os/CustomFrequencyManager$FrequencyRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancelFrequencyRequestImpl()V
    .locals 5

    iget-object v2, p0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;->mCPUDisCStateReleaser:Landroid/os/CustomFrequencyManager$CPUDisCStateRequest$CPUDisCStateReleaser;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;->mCPUDisCStateReleaser:Landroid/os/CustomFrequencyManager$CPUDisCStateRequest$CPUDisCStateReleaser;

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest$CPUDisCStateReleaser;->stop:Z

    :cond_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/os/ICustomFrequencyManager;->enableCPUCState(Landroid/os/IBinder;Ljava/lang/String;)V
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

    const-string/jumbo v3, "CPUDisCStateRequest : doFrequencyRequest::  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;->mFrequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Timeout : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;->mTimeoutMs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->-wrap1(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/os/ICustomFrequencyManager;->disableCPUCState(Landroid/os/IBinder;Ljava/lang/String;)V

    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;->mTimeoutMs:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;->mCPUDisCStateReleaser:Landroid/os/CustomFrequencyManager$CPUDisCStateRequest$CPUDisCStateReleaser;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;->mCPUDisCStateReleaser:Landroid/os/CustomFrequencyManager$CPUDisCStateRequest$CPUDisCStateReleaser;

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest$CPUDisCStateReleaser;->stop:Z

    :cond_0
    new-instance v1, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest$CPUDisCStateReleaser;

    invoke-direct {v1, p0}, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest$CPUDisCStateReleaser;-><init>(Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;)V

    iput-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;->mCPUDisCStateReleaser:Landroid/os/CustomFrequencyManager$CPUDisCStateRequest$CPUDisCStateReleaser;

    iget-object v1, p0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;->mCPUDisCStateReleaser:Landroid/os/CustomFrequencyManager$CPUDisCStateRequest$CPUDisCStateReleaser;

    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$CPUDisCStateRequest;->mTimeoutMs:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
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
