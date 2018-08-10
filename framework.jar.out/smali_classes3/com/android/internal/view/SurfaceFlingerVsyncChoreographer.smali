.class public Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;
.super Ljava/lang/Object;
.source "SurfaceFlingerVsyncChoreographer.java"


# static fields
.field private static final ONE_MS_IN_NS:J = 0xf4240L

.field private static final ONE_S_IN_NS:J = 0x3b9aca00L


# instance fields
.field private final mChoreographer:Landroid/view/Choreographer;

.field private final mHandler:Landroid/os/Handler;

.field private mSurfaceFlingerOffsetMs:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/view/Display;Landroid/view/Choreographer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;->mChoreographer:Landroid/view/Choreographer;

    invoke-direct {p0, p2}, Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;->calculateAppSurfaceFlingerVsyncOffsetMs(Landroid/view/Display;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;->mSurfaceFlingerOffsetMs:J

    return-void
.end method

.method private calculateAppSurfaceFlingerVsyncOffsetMs(Landroid/view/Display;)J
    .locals 10

    const-wide/32 v8, 0xf4240

    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result v4

    const v5, 0x4e6e6b28    # 1.0E9f

    div-float v4, v5, v4

    float-to-long v2, v4

    invoke-virtual {p1}, Landroid/view/Display;->getPresentationDeadlineNanos()J

    move-result-wide v4

    sub-long/2addr v4, v8

    sub-long v0, v2, v4

    const-wide/16 v4, 0x0

    invoke-virtual {p1}, Landroid/view/Display;->getAppVsyncOffsetNanos()J

    move-result-wide v6

    sub-long v6, v0, v6

    div-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    return-wide v4
.end method

.method private calculateDelay()J
    .locals 6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v4}, Landroid/view/Choreographer;->getLastFrameTimeNanos()J

    move-result-wide v4

    sub-long v0, v2, v4

    iget-wide v2, p0, Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;->mSurfaceFlingerOffsetMs:J

    const-wide/32 v4, 0xf4240

    div-long v4, v0, v4

    sub-long/2addr v2, v4

    return-wide v2
.end method


# virtual methods
.method public getSurfaceFlingerOffsetMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;->mSurfaceFlingerOffsetMs:J

    return-wide v0
.end method

.method public scheduleAtSfVsync(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;->calculateDelay()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public scheduleAtSfVsync(Ljava/lang/Runnable;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;->calculateDelay()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
