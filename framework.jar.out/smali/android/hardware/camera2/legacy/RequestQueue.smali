.class public Landroid/hardware/camera2/legacy/RequestQueue;
.super Ljava/lang/Object;
.source "RequestQueue.java"


# static fields
.field private static final INVALID_FRAME:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "RequestQueue"


# instance fields
.field private mCurrentFrameNumber:J

.field private mCurrentRepeatingFrameNumber:J

.field private mCurrentRequestId:I

.field private final mJpegSurfaceIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

.field private final mRequestQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/hardware/camera2/legacy/BurstHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "jpegSurfaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

    .line 37
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRequestQueue:Ljava/util/ArrayDeque;

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentFrameNumber:J

    .line 40
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRepeatingFrameNumber:J

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRequestId:I

    .line 45
    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mJpegSurfaceIds:Ljava/util/List;

    .line 44
    return-void
.end method

.method private calculateLastFrame(I)J
    .locals 6
    .param p1, "requestId"    # I

    .prologue
    .line 140
    iget-wide v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentFrameNumber:J

    .line 141
    .local v2, "total":J
    iget-object v4, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRequestQueue:Ljava/util/ArrayDeque;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "b$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/legacy/BurstHolder;

    .line 142
    .local v0, "b":Landroid/hardware/camera2/legacy/BurstHolder;
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/BurstHolder;->getNumberOfRequests()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 143
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/BurstHolder;->getRequestId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 144
    const-wide/16 v4, 0x1

    sub-long v4, v2, v4

    return-wide v4

    .line 147
    .end local v0    # "b":Landroid/hardware/camera2/legacy/BurstHolder;
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 148
    const-string/jumbo v5, "At least one request must be in the queue to calculate frame number"

    .line 147
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public declared-synchronized getNext()Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Landroid/hardware/camera2/legacy/BurstHolder;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRequestQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/legacy/BurstHolder;

    .line 57
    .local v0, "next":Landroid/hardware/camera2/legacy/BurstHolder;
    if-nez v0, :cond_0

    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

    if-eqz v2, :cond_0

    .line 58
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

    .line 59
    iget-wide v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentFrameNumber:J

    .line 60
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/BurstHolder;->getNumberOfRequests()I

    move-result v4

    int-to-long v4, v4

    .line 59
    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRepeatingFrameNumber:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_0
    if-nez v0, :cond_1

    monitor-exit p0

    .line 64
    return-object v6

    .line 67
    :cond_1
    :try_start_1
    new-instance v1, Landroid/util/Pair;

    iget-wide v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentFrameNumber:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    .local v1, "ret":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/legacy/BurstHolder;Ljava/lang/Long;>;"
    iget-wide v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentFrameNumber:J

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/BurstHolder;->getNumberOfRequests()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentFrameNumber:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 69
    return-object v1

    .end local v0    # "next":Landroid/hardware/camera2/legacy/BurstHolder;
    .end local v1    # "ret":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/legacy/BurstHolder;Ljava/lang/Long;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized stopRepeating()J
    .locals 2

    .prologue
    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

    if-nez v0, :cond_0

    .line 101
    const-string/jumbo v0, "RequestQueue"

    const-string/jumbo v1, "cancel failed: no repeating request exists."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    const-wide/16 v0, -0x1

    monitor-exit p0

    return-wide v0

    .line 104
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/BurstHolder;->getRequestId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/legacy/RequestQueue;->stopRepeating(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopRepeating(I)J
    .locals 6
    .param p1, "requestId"    # I

    .prologue
    const-wide/16 v4, -0x1

    monitor-enter p0

    .line 80
    const-wide/16 v0, -0x1

    .line 81
    .local v0, "ret":J
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/BurstHolder;->getRequestId()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 82
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

    .line 83
    iget-wide v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRepeatingFrameNumber:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-wide/16 v0, -0x1

    .line 85
    :goto_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRepeatingFrameNumber:J

    .line 86
    const-string/jumbo v2, "RequestQueue"

    const-string/jumbo v3, "Repeating capture request cancelled."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    .line 90
    return-wide v0

    .line 84
    :cond_0
    :try_start_1
    iget-wide v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRepeatingFrameNumber:J

    const-wide/16 v4, 0x1

    sub-long v0, v2, v4

    goto :goto_0

    .line 88
    :cond_1
    const-string/jumbo v2, "RequestQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cancel failed: no repeating request exists for request id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized submit([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;
    .locals 10
    .param p1, "requests"    # [Landroid/hardware/camera2/CaptureRequest;
    .param p2, "repeating"    # Z

    .prologue
    const-wide/16 v8, -0x1

    monitor-enter p0

    .line 120
    :try_start_0
    iget v4, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRequestId:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRequestId:I

    .line 121
    .local v4, "requestId":I
    new-instance v0, Landroid/hardware/camera2/legacy/BurstHolder;

    iget-object v5, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mJpegSurfaceIds:Ljava/util/List;

    invoke-direct {v0, v4, p2, p1, v5}, Landroid/hardware/camera2/legacy/BurstHolder;-><init>(IZ[Landroid/hardware/camera2/CaptureRequest;Ljava/util/Collection;)V

    .line 122
    .local v0, "burst":Landroid/hardware/camera2/legacy/BurstHolder;
    const-wide/16 v2, -0x1

    .line 123
    .local v2, "lastFrame":J
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/BurstHolder;->isRepeating()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 124
    const-string/jumbo v5, "RequestQueue"

    const-string/jumbo v6, "Repeating capture request set."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v5, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

    if-eqz v5, :cond_0

    .line 126
    iget-wide v6, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRepeatingFrameNumber:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    const-wide/16 v2, -0x1

    .line 129
    :cond_0
    :goto_0
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRepeatingFrameNumber:J

    .line 130
    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

    .line 135
    :goto_1
    new-instance v1, Landroid/hardware/camera2/utils/SubmitInfo;

    invoke-direct {v1, v4, v2, v3}, Landroid/hardware/camera2/utils/SubmitInfo;-><init>(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v1, "info":Landroid/hardware/camera2/utils/SubmitInfo;
    monitor-exit p0

    .line 136
    return-object v1

    .line 127
    .end local v1    # "info":Landroid/hardware/camera2/utils/SubmitInfo;
    :cond_1
    :try_start_1
    iget-wide v6, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRepeatingFrameNumber:J

    const-wide/16 v8, 0x1

    sub-long v2, v6, v8

    goto :goto_0

    .line 132
    :cond_2
    iget-object v5, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRequestQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v5, v0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/BurstHolder;->getRequestId()I

    move-result v5

    invoke-direct {p0, v5}, Landroid/hardware/camera2/legacy/RequestQueue;->calculateLastFrame(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    goto :goto_1

    .end local v0    # "burst":Landroid/hardware/camera2/legacy/BurstHolder;
    .end local v2    # "lastFrame":J
    .end local v4    # "requestId":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method
