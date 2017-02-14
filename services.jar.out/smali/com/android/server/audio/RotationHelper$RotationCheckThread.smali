.class final Lcom/android/server/audio/RotationHelper$RotationCheckThread;
.super Ljava/lang/Thread;
.source "RotationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/RotationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RotationCheckThread"
.end annotation


# instance fields
.field private final WAIT_TIMES_MS:[I

.field private final mCounterLock:Ljava/lang/Object;

.field private mWaitCounter:I


# direct methods
.method constructor <init>()V
    .locals 1

    const-string/jumbo v0, "RotationCheck"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->WAIT_TIMES_MS:[I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mCounterLock:Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0xa
        0x14
        0x32
        0x64
        0x64
        0xc8
        0xc8
        0x1f4
    .end array-data
.end method


# virtual methods
.method beginCheck()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mCounterLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    iput v2, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mWaitCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method endCheck()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mCounterLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->WAIT_TIMES_MS:[I

    array-length v0, v0

    iput v0, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mWaitCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public run()V
    .locals 5

    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mWaitCounter:I

    iget-object v3, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->WAIT_TIMES_MS:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mCounterLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget v2, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mWaitCounter:I

    iget-object v4, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->WAIT_TIMES_MS:[I

    array-length v4, v4

    if-ge v2, v4, :cond_1

    iget-object v2, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->WAIT_TIMES_MS:[I

    iget v4, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mWaitCounter:I

    aget v1, v2, v4

    :goto_1
    iget v2, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mWaitCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->mWaitCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    if-lez v1, :cond_0

    int-to-long v2, v1

    :try_start_1
    invoke-static {v2, v3}, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->sleep(J)V

    invoke-static {}, Lcom/android/server/audio/RotationHelper;->updateOrientation()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_2
    return-void
.end method
