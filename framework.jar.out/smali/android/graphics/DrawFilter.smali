.class public Landroid/graphics/DrawFilter;
.super Ljava/lang/Object;
.source "DrawFilter.java"


# instance fields
.field public mNativeInt:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeDestructor(J)V
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 35
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/DrawFilter;->mNativeInt:J

    invoke-static {v0, v1}, Landroid/graphics/DrawFilter;->nativeDestructor(J)V

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/DrawFilter;->mNativeInt:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 33
    return-void

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 37
    throw v0
.end method
