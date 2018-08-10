.class public Landroid/graphics/Shader;
.super Ljava/lang/Object;
.source "Shader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Shader$NoImagePreloadHolder;,
        Landroid/graphics/Shader$TileMode;
    }
.end annotation


# instance fields
.field private mCleaner:Ljava/lang/Runnable;

.field private mLocalMatrix:Landroid/graphics/Matrix;

.field private mNativeInstance:J


# direct methods
.method static synthetic -wrap0()J
    .locals 2

    invoke-static {}, Landroid/graphics/Shader;->nativeGetFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeGetFinalizer()J
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
    .locals 2

    iget-object v0, p1, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method createNativeInstance(J)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected final discardNativeInstance()V
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Landroid/graphics/Shader;->mNativeInstance:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/Shader;->mCleaner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Shader;->mCleaner:Ljava/lang/Runnable;

    iput-wide v2, p0, Landroid/graphics/Shader;->mNativeInstance:J

    :cond_0
    return-void
.end method

.method public getLocalMatrix(Landroid/graphics/Matrix;)Z
    .locals 1

    iget-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getNativeInstance()J
    .locals 4

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Landroid/graphics/Shader;->verifyNativeInstance()V

    iget-wide v2, p0, Landroid/graphics/Shader;->mNativeInstance:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    if-nez v2, :cond_1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Shader;->createNativeInstance(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Shader;->mNativeInstance:J

    sget-object v0, Landroid/graphics/Shader$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v2, p0, Landroid/graphics/Shader;->mNativeInstance:J

    invoke-virtual {v0, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Shader;->mCleaner:Ljava/lang/Runnable;

    :cond_0
    iget-wide v0, p0, Landroid/graphics/Shader;->mNativeInstance:J

    return-wide v0

    :cond_1
    iget-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    iget-wide v0, v0, Landroid/graphics/Matrix;->native_instance:J

    goto :goto_0
.end method

.method public setLocalMatrix(Landroid/graphics/Matrix;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    iput-object v1, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/graphics/Shader;->discardNativeInstance()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_3

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/graphics/Shader;->discardNativeInstance()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Landroid/graphics/Shader;->discardNativeInstance()V

    goto :goto_0
.end method

.method protected verifyNativeInstance()V
    .locals 0

    return-void
.end method
