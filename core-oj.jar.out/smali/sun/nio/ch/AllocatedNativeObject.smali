.class Lsun/nio/ch/AllocatedNativeObject;
.super Lsun/nio/ch/NativeObject;
.source "AllocatedNativeObject.java"


# direct methods
.method constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lsun/nio/ch/NativeObject;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method declared-synchronized free()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lsun/nio/ch/AllocatedNativeObject;->allocationAddress:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-object v0, Lsun/nio/ch/AllocatedNativeObject;->unsafe:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lsun/nio/ch/AllocatedNativeObject;->allocationAddress:J

    invoke-virtual {v0, v2, v3}, Lsun/misc/Unsafe;->freeMemory(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsun/nio/ch/AllocatedNativeObject;->allocationAddress:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
