.class public Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;
.super Ljava/lang/Object;
.source "RequestThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/RequestThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FpsCounter"
.end annotation


# static fields
.field private static final NANO_PER_SECOND:J = 0x3b9aca00L

.field private static final TAG:Ljava/lang/String; = "FpsCounter"


# instance fields
.field private mFrameCount:I

.field private mLastFps:D

.field private mLastPrintTime:J

.field private mLastTime:J

.field private final mStreamType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "streamType"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mFrameCount:I

    .line 135
    iput-wide v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mLastTime:J

    .line 136
    iput-wide v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mLastPrintTime:J

    .line 137
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mLastFps:D

    .line 142
    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mStreamType:Ljava/lang/String;

    .line 141
    return-void
.end method


# virtual methods
.method public declared-synchronized checkFps()D
    .locals 2

    .prologue
    monitor-enter p0

    .line 160
    :try_start_0
    iget-wide v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mLastFps:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized countAndLog()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 171
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->countFrame()V

    .line 172
    invoke-virtual {p0}, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->staggeredLog()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 170
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized countFrame()V
    .locals 10

    .prologue
    monitor-enter p0

    .line 146
    :try_start_0
    iget v4, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mFrameCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mFrameCount:I

    .line 147
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    .line 148
    .local v2, "nextTime":J
    iget-wide v4, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mLastTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 149
    iput-wide v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mLastTime:J

    .line 151
    :cond_0
    iget-wide v4, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mLastTime:J

    const-wide/32 v6, 0x3b9aca00

    add-long/2addr v4, v6

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 152
    iget-wide v4, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mLastTime:J

    sub-long v0, v2, v4

    .line 153
    .local v0, "elapsed":J
    iget v4, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mFrameCount:I

    int-to-double v4, v4

    long-to-double v6, v0

    const-wide v8, 0x41cdcd6500000000L    # 1.0E9

    div-double v6, v8, v6

    mul-double/2addr v4, v6

    iput-wide v4, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mLastFps:D

    .line 154
    const/4 v4, 0x0

    iput v4, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mFrameCount:I

    .line 155
    iput-wide v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mLastTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "elapsed":J
    :cond_1
    monitor-exit p0

    .line 145
    return-void

    .end local v2    # "nextTime":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized staggeredLog()V
    .locals 6

    .prologue
    monitor-enter p0

    .line 164
    :try_start_0
    iget-wide v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mLastTime:J

    iget-wide v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mLastPrintTime:J

    const-wide v4, 0x12a05f200L

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 165
    iget-wide v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mLastTime:J

    iput-wide v0, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mLastPrintTime:J

    .line 166
    const-string/jumbo v0, "FpsCounter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FPS for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mStreamType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$FpsCounter;->mLastFps:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 163
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
