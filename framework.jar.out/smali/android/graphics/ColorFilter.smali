.class public Landroid/graphics/ColorFilter;
.super Ljava/lang/Object;
.source "ColorFilter.java"


# instance fields
.field private mNativeInstance:J


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native nSafeUnref(J)V
.end method


# virtual methods
.method createNativeInstance()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method discardNativeInstance()V
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Landroid/graphics/ColorFilter;->mNativeInstance:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/ColorFilter;->mNativeInstance:J

    invoke-static {v0, v1}, Landroid/graphics/ColorFilter;->nSafeUnref(J)V

    iput-wide v2, p0, Landroid/graphics/ColorFilter;->mNativeInstance:J

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-wide v0, p0, Landroid/graphics/ColorFilter;->mNativeInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/ColorFilter;->mNativeInstance:J

    invoke-static {v0, v1}, Landroid/graphics/ColorFilter;->nSafeUnref(J)V

    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/graphics/ColorFilter;->mNativeInstance:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getNativeInstance()J
    .locals 4

    iget-wide v0, p0, Landroid/graphics/ColorFilter;->mNativeInstance:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "attempting to use a finalized ColorFilter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Landroid/graphics/ColorFilter;->mNativeInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/ColorFilter;->createNativeInstance()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/ColorFilter;->mNativeInstance:J

    :cond_1
    iget-wide v0, p0, Landroid/graphics/ColorFilter;->mNativeInstance:J

    return-wide v0
.end method
