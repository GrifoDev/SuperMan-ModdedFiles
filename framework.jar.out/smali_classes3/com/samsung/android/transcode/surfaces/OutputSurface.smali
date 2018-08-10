.class public Lcom/samsung/android/transcode/surfaces/OutputSurface;
.super Ljava/lang/Object;
.source "OutputSurface.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# static fields
.field private static final EGL_OPENGL_ES2_BIT:I = 0x4

.field public static final EXCEPTION_FRAME_NOT_AVAILABLE:Ljava/lang/String; = "Surface frame wait timed out"

.field private static final HD_SIZE:I = 0xe1000


# instance fields
.field private mEGL:Ljavax/microedition/khronos/egl/EGL10;

.field private mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mFrameAvailable:Z

.field private mFrameSyncObject:Ljava/lang/Object;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->setup(I)V

    return-void
.end method

.method public constructor <init>(IIIIIIIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    invoke-direct/range {p0 .. p8}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->setup(IIIIIIIZ)V

    return-void
.end method

.method private checkEglError(Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

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

    const-string/jumbo v3, ": EGL error: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

.method private eglSetup(II)V
    .locals 13

    const/4 v12, 0x3

    const/16 v9, 0x8

    const/4 v11, 0x2

    const/4 v4, 0x1

    const/4 v10, 0x0

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v8, 0x0

    invoke-interface {v0, v1, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    new-array v2, v0, [I

    const/16 v0, 0x3024

    aput v0, v2, v10

    aput v9, v2, v4

    const/16 v0, 0x3023

    aput v0, v2, v11

    aput v9, v2, v12

    const/16 v0, 0x3022

    const/4 v1, 0x4

    aput v0, v2, v1

    const/4 v0, 0x5

    aput v9, v2, v0

    const/16 v0, 0x3033

    const/4 v1, 0x6

    aput v0, v2, v1

    const/4 v0, 0x7

    aput v4, v2, v0

    const/16 v0, 0x3040

    aput v0, v2, v9

    const/4 v0, 0x4

    const/16 v1, 0x9

    aput v0, v2, v1

    const/16 v0, 0x3038

    const/16 v1, 0xa

    aput v0, v2, v1

    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    new-array v5, v4, [I

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v6, v12, [I

    const/16 v0, 0x3098

    aput v0, v6, v10

    aput v11, v6, v4

    const/16 v0, 0x3038

    aput v0, v6, v11

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v8, v3, v10

    sget-object v9, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v8, v9, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    const-string/jumbo v0, "eglCreateContext"

    invoke-direct {p0, v0}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->checkEglError(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    new-array v7, v0, [I

    const/16 v0, 0x3057

    aput v0, v7, v10

    aput p1, v7, v4

    const/16 v0, 0x3056

    aput v0, v7, v11

    aput p2, v7, v12

    const/16 v0, 0x3038

    const/4 v1, 0x4

    aput v0, v7, v1

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v4, v3, v10

    invoke-interface {v0, v1, v4, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const-string/jumbo v0, "eglCreatePbufferSurface"

    invoke-direct {p0, v0}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->checkEglError(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_3

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unable to initialize EGL10"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unable to find RGB888+pbuffer EGL config"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "null context"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "surface was null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setup(I)V
    .locals 2

    new-instance v0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    invoke-direct {v0}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    invoke-virtual {v0, p1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->prepare(I)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "textureID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->getTextureId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "TranscodeLib"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->getTextureId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method private setup(IIIIIIIZ)V
    .locals 13

    new-instance v2, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    invoke-direct {v2}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-nez p8, :cond_2

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v12}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->prepare(IIIIIIIZII)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "textureID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    invoke-virtual {v3}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->getTextureId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "TranscodeLib"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/graphics/SurfaceTexture;

    iget-object v3, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    invoke-virtual {v3}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->getTextureId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v2, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    new-instance v2, Landroid/view/Surface;

    iget-object v3, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v2, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v2, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurface:Landroid/view/Surface;

    if-nez v11, :cond_4

    :cond_1
    :goto_1
    return-void

    :cond_2
    mul-int v2, p6, p7

    const v3, 0xe1000

    if-lt v2, v3, :cond_0

    move/from16 v0, p6

    move/from16 v1, p7

    if-gt v0, v1, :cond_3

    const/16 v12, 0x280

    move/from16 v0, p6

    mul-int/lit16 v2, v0, 0x280

    div-int v11, v2, p7

    rem-int/lit8 v2, v11, 0x20

    if-eqz v2, :cond_0

    div-int/lit8 v2, v11, 0x20

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v11, v2, 0x20

    goto :goto_0

    :cond_3
    const/16 v11, 0x280

    move/from16 v0, p7

    mul-int/lit16 v2, v0, 0x280

    div-int v12, v2, p6

    rem-int/lit8 v2, v12, 0x20

    if-eqz v2, :cond_0

    div-int/lit8 v2, v12, 0x20

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v12, v2, 0x20

    goto/16 :goto_0

    :cond_4
    if-eqz v12, :cond_1

    invoke-direct {p0, v11, v12}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->eglSetup(II)V

    goto :goto_1
.end method


# virtual methods
.method public awaitNewImage()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v0

    :cond_0
    :try_start_0
    iget-boolean v3, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameAvailable:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameAvailable:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v3, "before updateTexImage"

    invoke-static {v3}, Lcom/samsung/android/transcode/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    return-void

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    iget-boolean v3, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameAvailable:Z

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Surface frame wait timed out"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v2

    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public checkForNewImage(I)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v0

    :cond_0
    :try_start_0
    iget-boolean v3, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameAvailable:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameAvailable:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v3, "before updateTexImage"

    invoke-static {v3}, Lcom/samsung/android/transcode/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    const/4 v3, 0x1

    return v3

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    int-to-long v4, p1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    iget-boolean v3, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameAvailable:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    :try_start_2
    monitor-exit v0

    return v6

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public drawImage()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->draw(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public makeCurrent()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "before makeCurrent"

    invoke-direct {p0, v0}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->checkEglError(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "not configured for makeCurrent"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyFrameSyncObject()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 4

    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v3, "new frame available"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v2, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameAvailable:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameAvailable:Z

    iget-object v2, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "mFrameAvailable already set, frame could be dropped"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_2

    :goto_1
    iput-object v5, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v5, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v5, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v5, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    if-nez v0, :cond_3

    :goto_2
    iput-object v5, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    iput-object v5, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurface:Landroid/view/Surface;

    iput-object v5, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_3
    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->release()V

    goto :goto_2
.end method
