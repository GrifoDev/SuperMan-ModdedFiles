.class abstract Landroid/opengl/GLSurfaceView$BaseConfigChooser;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseConfigChooser"
.end annotation


# instance fields
.field protected mConfigSpec:[I

.field final synthetic this$0:Landroid/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>(Landroid/opengl/GLSurfaceView;[I)V
    .locals 1

    iput-object p1, p0, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->this$0:Landroid/opengl/GLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p2}, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->filterConfigSpec([I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->mConfigSpec:[I

    return-void
.end method

.method private filterConfigSpec([I)[I
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->this$0:Landroid/opengl/GLSurfaceView;

    invoke-static {v2}, Landroid/opengl/GLSurfaceView;->-get2(Landroid/opengl/GLSurfaceView;)I

    move-result v2

    if-eq v2, v5, :cond_0

    iget-object v2, p0, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->this$0:Landroid/opengl/GLSurfaceView;

    invoke-static {v2}, Landroid/opengl/GLSurfaceView;->-get2(Landroid/opengl/GLSurfaceView;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    return-object p1

    :cond_0
    array-length v0, p1

    add-int/lit8 v2, v0, 0x2

    new-array v1, v2, [I

    add-int/lit8 v2, v0, -0x1

    invoke-static {p1, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy([II[III)V

    add-int/lit8 v2, v0, -0x1

    const/16 v3, 0x3040

    aput v3, v1, v2

    iget-object v2, p0, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->this$0:Landroid/opengl/GLSurfaceView;

    invoke-static {v2}, Landroid/opengl/GLSurfaceView;->-get2(Landroid/opengl/GLSurfaceView;)I

    move-result v2

    if-ne v2, v5, :cond_1

    const/4 v2, 0x4

    aput v2, v1, v0

    :goto_0
    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x3038

    aput v3, v1, v2

    return-object v1

    :cond_1
    const/16 v2, 0x40

    aput v2, v1, v0

    goto :goto_0
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x1

    new-array v5, v0, [I

    iget-object v2, p0, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->mConfigSpec:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    aget v4, v5, v4

    if-gtz v4, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v2, p0, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->mConfigSpec:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "eglChooseConfig#2 failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0, p1, p2, v3}, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v6

    if-nez v6, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No config chosen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-object v6
.end method

.method abstract chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
.end method
