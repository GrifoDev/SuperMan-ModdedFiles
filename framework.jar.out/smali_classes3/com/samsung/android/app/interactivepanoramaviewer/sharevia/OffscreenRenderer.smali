.class public Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;
.super Ljava/lang/Object;
.source "OffscreenRenderer.java"


# static fields
.field private static LSI_BOARD_HERO:Ljava/lang/String;

.field private static fboId:[I

.field private static mBoardType:Ljava/lang/String;

.field private static mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private static mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private static mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private static mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private static mGl:Ljavax/microedition/khronos/opengles/GL10;

.field private static mImageRenderer:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;

.field private static renderBuffId:[I

.field private static surfaceHeight:I

.field private static surfaceWidth:I

.field private static textureId:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    new-array v0, v1, [I

    sput-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->fboId:[I

    new-array v0, v1, [I

    sput-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->renderBuffId:[I

    new-array v0, v1, [I

    sput-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->textureId:[I

    const-string/jumbo v0, "ro.hardware"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mBoardType:Ljava/lang/String;

    const-string/jumbo v0, "samsungexynos8890"

    sput-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->LSI_BOARD_HERO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static offscreenFinalize()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-nez v0, :cond_0

    :goto_0
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    sput-object v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v0, :cond_1

    :goto_1
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mBoardType:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->LSI_BOARD_HERO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    goto :goto_1

    :cond_2
    const v0, 0x8d40

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->fboId:[I

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->renderBuffId:[I

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->textureId:[I

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    goto :goto_2
.end method

.method public static offscreenInitialize(Landroid/content/Context;IIIIIIIIIIZ)V
    .locals 24

    new-instance v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;

    const/4 v14, 0x1

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v15, p11

    invoke-direct/range {v2 .. v15}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;-><init>(Landroid/content/Context;IIIIIIIIIIZZ)V

    sput-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mImageRenderer:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;

    sput p7, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->surfaceWidth:I

    sput p8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->surfaceHeight:I

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    sput-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v23, v0

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object/from16 v0, v23

    invoke-interface {v2, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    const/4 v2, 0x1

    new-array v7, v2, [I

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-interface {v2, v3, v6, v8, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v2, 0x0

    aget v2, v7, v2

    new-array v5, v2, [Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v2, 0x9

    new-array v4, v2, [I

    const/4 v2, 0x0

    const/16 v3, 0x3040

    aput v3, v4, v2

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput v2, v4, v3

    const/4 v2, 0x2

    const/16 v3, 0x3024

    aput v3, v4, v2

    const/16 v2, 0x8

    const/4 v3, 0x3

    aput v2, v4, v3

    const/4 v2, 0x4

    const/16 v3, 0x3023

    aput v3, v4, v2

    const/16 v2, 0x8

    const/4 v3, 0x5

    aput v2, v4, v3

    const/4 v2, 0x6

    const/16 v3, 0x3022

    aput v3, v4, v2

    const/16 v2, 0x8

    const/4 v3, 0x7

    aput v2, v4, v3

    const/16 v2, 0x8

    const/16 v3, 0x3038

    aput v3, v4, v2

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v6, 0x1

    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    sput-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const/16 v19, 0x0

    :try_start_0
    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mBoardType:Ljava/lang/String;

    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->LSI_BOARD_HERO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x5

    new-array v0, v2, [I

    move-object/from16 v20, v0

    const/4 v2, 0x0

    const/16 v3, 0x3057

    aput v3, v20, v2

    sget v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->surfaceWidth:I

    const/4 v3, 0x1

    aput v2, v20, v3

    const/4 v2, 0x2

    const/16 v3, 0x3056

    aput v3, v20, v2

    sget v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->surfaceHeight:I

    const/4 v3, 0x3

    aput v2, v20, v3

    const/4 v2, 0x4

    const/16 v3, 0x3038

    aput v3, v20, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "offscreenInitialize: LSI_BOARD_HERO"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mBoardType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v19, v20

    :goto_0
    :try_start_2
    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v6, 0x0

    aget-object v6, v5, v6

    move-object/from16 v0, v19

    invoke-interface {v2, v3, v6, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-nez v2, :cond_3

    :cond_0
    const/4 v2, 0x0

    sput-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    return-void

    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "Could not find config for GLES2"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    return-void

    :cond_2
    const/4 v2, 0x5

    :try_start_3
    new-array v0, v2, [I

    move-object/from16 v20, v0

    const/4 v2, 0x0

    const/16 v3, 0x3057

    aput v3, v20, v2

    const/16 v2, 0xa

    const/4 v3, 0x1

    aput v2, v20, v3

    const/4 v2, 0x2

    const/16 v3, 0x3056

    aput v3, v20, v2

    const/16 v2, 0xa

    const/4 v3, 0x3

    aput v2, v20, v3

    const/4 v2, 0x4

    const/16 v3, 0x3038

    aput v3, v20, v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "offscreenInitialize: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mBoardType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v19, v20

    goto :goto_0

    :catch_0
    move-exception v21

    :goto_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "Failed to create surface"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    return-void

    :cond_3
    const/16 v17, 0x3098

    const/16 v18, 0x2

    const/4 v2, 0x3

    new-array v0, v2, [I

    move-object/from16 v19, v0

    const/4 v2, 0x0

    const/16 v3, 0x3098

    aput v3, v19, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput v2, v19, v3

    const/4 v2, 0x2

    const/16 v3, 0x3038

    aput v3, v19, v2

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v6, 0x0

    aget-object v6, v5, v6

    sget-object v8, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    move-object/from16 v0, v19

    invoke-interface {v2, v3, v6, v8, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v6, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v9, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v6, v8, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v2}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/opengles/GL10;

    sput-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mImageRenderer:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;

    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mImageRenderer:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;

    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    move/from16 v0, p7

    move/from16 v1, p8

    invoke-virtual {v2, v3, v0, v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mBoardType:Ljava/lang/String;

    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->LSI_BOARD_HERO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_2
    return-void

    :cond_4
    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->fboId:[I

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-static {v3, v2, v6}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->renderBuffId:[I

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-static {v3, v2, v6}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->textureId:[I

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-static {v3, v2, v6}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->textureId:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/16 v3, 0xde1

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0xde1

    const/16 v3, 0x2802

    const v6, 0x812f

    invoke-static {v2, v3, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0xde1

    const/16 v3, 0x2803

    const v6, 0x812f

    invoke-static {v2, v3, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0xde1

    const/16 v3, 0x2800

    const/16 v6, 0x2601

    invoke-static {v2, v3, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0xde1

    const/16 v3, 0x2801

    const/16 v6, 0x2601

    invoke-static {v2, v3, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v16, 0x0

    const/16 v8, 0xde1

    const/4 v9, 0x0

    const/16 v10, 0x1908

    const/4 v13, 0x0

    const/16 v14, 0x1908

    const/16 v15, 0x1401

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-static/range {v8 .. v16}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->renderBuffId:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const v3, 0x8d41

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    const v2, 0x8d41

    const v3, 0x81a5

    move/from16 v0, p7

    move/from16 v1, p8

    invoke-static {v2, v3, v0, v1}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->fboId:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const v3, 0x8d40

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->textureId:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const v3, 0x8d40

    const v6, 0x8ce0

    const/16 v8, 0xde1

    const/4 v9, 0x0

    invoke-static {v3, v6, v8, v2, v9}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->renderBuffId:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const v3, 0x8d40

    const v6, 0x8d00

    const v8, 0x8d41

    invoke-static {v3, v6, v8, v2}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    const v2, 0x8d40

    invoke-static {v2}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v22

    const v2, 0x8cd5

    move/from16 v0, v22

    if-ne v0, v2, :cond_5

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "--fbo pass"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "FBO not complete."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_1
    move-exception v21

    move-object/from16 v19, v20

    goto/16 :goto_1
.end method

.method public static offscreenTransformFrame([B[B[F)V
    .locals 10

    const/4 v1, 0x0

    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mImageRenderer:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;

    invoke-virtual {v0, p0, p2}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->setImage([B[F)V

    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mImageRenderer:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mBoardType:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->LSI_BOARD_HERO:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    sget v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->surfaceWidth:I

    sget v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->surfaceHeight:I

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move v2, v1

    invoke-interface/range {v0 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "--time: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/OffscreenRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    goto :goto_0
.end method
