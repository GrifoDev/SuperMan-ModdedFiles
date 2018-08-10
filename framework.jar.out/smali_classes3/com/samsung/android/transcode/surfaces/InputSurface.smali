.class public Lcom/samsung/android/transcode/surfaces/InputSurface;
.super Ljava/lang/Object;
.source "InputSurface.java"


# static fields
.field private static final EGL_OPENGL_ES2_BIT:I = 0x4

.field private static final EGL_RECORDABLE_ANDROID:I = 0x3142


# instance fields
.field private mEGLContext:Landroid/opengl/EGLContext;

.field private mEGLDisplay:Landroid/opengl/EGLDisplay;

.field private mEGLSurface:Landroid/opengl/EGLSurface;

.field private mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/Surface;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/transcode/surfaces/InputSurface;->mSurface:Landroid/view/Surface;

    invoke-direct {p0}, Lcom/samsung/android/transcode/surfaces/InputSurface;->eglSetup()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Surface passed is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkEglError(Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v2, 0x3000

    if-ne v0, v2, :cond_0

    if-nez v1, :cond_1

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": EGL error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "TranscodeLib"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "EGL error encountered (see log)"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private eglSetup()V
    .locals 14

    const/16 v13, 0x3038

    const/16 v5, 0x8

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v4, :cond_0

    new-array v10, v12, [I

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, v10, v2, v10, v11}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb

    new-array v1, v0, [I

    const/16 v0, 0x3024

    aput v0, v1, v2

    aput v5, v1, v11

    const/16 v0, 0x3023

    aput v0, v1, v12

    const/4 v0, 0x3

    aput v5, v1, v0

    const/16 v0, 0x3022

    const/4 v4, 0x4

    aput v0, v1, v4

    const/4 v0, 0x5

    aput v5, v1, v0

    const/16 v0, 0x3040

    const/4 v4, 0x6

    aput v0, v1, v4

    const/4 v0, 0x4

    const/4 v4, 0x7

    aput v0, v1, v4

    const/16 v0, 0x3142

    aput v0, v1, v5

    const/16 v0, 0x9

    aput v11, v1, v0

    const/16 v0, 0xa

    aput v13, v1, v0

    new-array v3, v11, [Landroid/opengl/EGLConfig;

    new-array v6, v11, [I

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    array-length v5, v3

    move v4, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    new-array v8, v0, [I

    const/16 v0, 0x3098

    aput v0, v8, v2

    aput v12, v8, v11

    aput v13, v8, v12

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    aget-object v4, v3, v2

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v4, v5, v8, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    const-string/jumbo v0, "eglCreateContext"

    invoke-direct {p0, v0}, Lcom/samsung/android/transcode/surfaces/InputSurface;->checkEglError(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    if-eqz v0, :cond_3

    new-array v9, v11, [I

    aput v13, v9, v2

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    aget-object v4, v3, v2

    iget-object v5, p0, Lcom/samsung/android/transcode/surfaces/InputSurface;->mSurface:Landroid/view/Surface;

    invoke-static {v0, v4, v5, v9, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    const-string/jumbo v0, "eglCreateWindowSurface"

    invoke-direct {p0, v0}, Lcom/samsung/android/transcode/surfaces/InputSurface;->checkEglError(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_4

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unable to get EGL14 display"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unable to initialize EGL14"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unable to find RGB888+recordable ES2 EGL config"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "null context"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "surface was null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/InputSurface;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public makeCurrent()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/samsung/android/transcode/surfaces/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/samsung/android/transcode/surfaces/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-virtual {v0, v1}, Landroid/opengl/EGLContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/InputSurface;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_1

    :goto_1
    iput-object v4, p0, Lcom/samsung/android/transcode/surfaces/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iput-object v4, p0, Lcom/samsung/android/transcode/surfaces/InputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    iput-object v4, p0, Lcom/samsung/android/transcode/surfaces/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    iput-object v4, p0, Lcom/samsung/android/transcode/surfaces/InputSurface;->mSurface:Landroid/view/Surface;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/InputSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    goto :goto_1
.end method

.method public setPresentationTime(J)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    return-void
.end method

.method public swapBuffers()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/InputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/InputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    return v0
.end method
