.class public Lcom/google/android/gles_jni/EGLSurfaceImpl;
.super Ljavax/microedition/khronos/egl/EGLSurface;
.source "EGLSurfaceImpl.java"


# instance fields
.field mEGLSurface:J

.field private mNativePixelRef:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljavax/microedition/khronos/egl/EGLSurface;-><init>()V

    .line 25
    iput-wide v0, p0, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:J

    .line 26
    iput-wide v0, p0, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mNativePixelRef:J

    .line 24
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "surface"    # J

    .prologue
    .line 28
    invoke-direct {p0}, Ljavax/microedition/khronos/egl/EGLSurface;-><init>()V

    .line 29
    iput-wide p1, p0, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:J

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mNativePixelRef:J

    .line 28
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 35
    if-ne p0, p1, :cond_0

    return v1

    .line 36
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gles_jni/EGLSurfaceImpl;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    :cond_1
    return v2

    :cond_2
    move-object v0, p1

    .line 38
    check-cast v0, Lcom/google/android/gles_jni/EGLSurfaceImpl;

    .line 40
    .local v0, "that":Lcom/google/android/gles_jni/EGLSurfaceImpl;
    iget-wide v4, p0, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:J

    iget-wide v6, v0, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 51
    iget-wide v2, p0, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:J

    iget-wide v4, p0, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/lit16 v0, v1, 0x20f

    .line 52
    .local v0, "result":I
    return v0
.end method
