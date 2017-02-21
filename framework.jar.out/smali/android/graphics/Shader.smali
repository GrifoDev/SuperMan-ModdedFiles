.class public Landroid/graphics/Shader;
.super Ljava/lang/Object;
.source "Shader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Shader$TileMode;
    }
.end annotation


# instance fields
.field private mLocalMatrix:Landroid/graphics/Matrix;

.field private native_instance:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeDestructor(J)V
.end method

.method private static native nativeSetLocalMatrix(JJ)J
.end method


# virtual methods
.method protected copy()Landroid/graphics/Shader;
    .locals 1

    new-instance v0, Landroid/graphics/Shader;

    invoke-direct {v0}, Landroid/graphics/Shader;-><init>()V

    invoke-virtual {p0, v0}, Landroid/graphics/Shader;->copyLocalMatrix(Landroid/graphics/Shader;)V

    return-object v0
.end method

.method protected copyLocalMatrix(Landroid/graphics/Shader;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0, v0}, Landroid/graphics/Shader;->getLocalMatrix(Landroid/graphics/Matrix;)Z

    invoke-virtual {p1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-wide/16 v4, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-wide v0, p0, Landroid/graphics/Shader;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Shader;->nativeDestructor(J)V

    iput-wide v4, p0, Landroid/graphics/Shader;->native_instance:J

    return-void

    :catchall_0
    move-exception v0

    iget-wide v2, p0, Landroid/graphics/Shader;->native_instance:J

    invoke-static {v2, v3}, Landroid/graphics/Shader;->nativeDestructor(J)V

    iput-wide v4, p0, Landroid/graphics/Shader;->native_instance:J

    throw v0
.end method

.method public getLocalMatrix(Landroid/graphics/Matrix;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getNativeInstance()J
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Shader;->native_instance:J

    return-wide v0
.end method

.method protected init(J)V
    .locals 1

    iput-wide p1, p0, Landroid/graphics/Shader;->native_instance:J

    return-void
.end method

.method public setLocalMatrix(Landroid/graphics/Matrix;)V
    .locals 4

    iput-object p1, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    iget-wide v2, p0, Landroid/graphics/Shader;->native_instance:J

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Shader;->nativeSetLocalMatrix(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Shader;->native_instance:J

    return-void

    :cond_0
    iget-wide v0, p1, Landroid/graphics/Matrix;->native_instance:J

    goto :goto_0
.end method
