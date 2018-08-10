.class public Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;
.super Ljava/lang/Object;
.source "OffscreenRendererEngine.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field public static final CONFIG_ARGB_8888:I = 0x0

.field public static final CONFIG_RGB_565:I = 0x1

.field private static TAG:Ljava/lang/String;

.field public static as32FrameBuffers:[I

.field public static as32RenderBuffers:[I

.field public static as32Textures:[I

.field private static mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private static mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private static mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private static mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private static mGl:Ljavax/microedition/khronos/opengles/GL10;

.field public static s32FrameBufferId:I


# instance fields
.field private FORWARD_ALPHA_BLEND:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

.field private final FOV:F

.field private FOV_Y:F

.field private I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

.field private I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

.field private I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

.field private INITIAL_Z:F

.field private RenderImg1:I

.field private RenderImg2:I

.field private TURN_ALPHA_BLEND:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

.field private Time:F

.field private Tour_Speed:F

.field private Turn_Angle:F

.field private VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

.field private ZOOM_NO_HOLES:F

.field private actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

.field private alpha:F

.field cam_rot:Lcom/samsung/android/srib/vecmath/Vector3f;

.field private captureOrientation:I

.field private currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

.field private currentTransition:Lcom/samsung/android/srib/virtualtourAPI/Transition;

.field private eyeX:F

.field private eyeY:F

.field private eyeZ:F

.field private f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

.field private f1f2Distance:F

.field private lookatX:F

.field private lookatY:F

.field private lookatZ:F

.field private mCImageProvider:Lcom/samsung/android/srib/virtualtourAPI/ImageProvider;

.field private mMVPMatrix:[F

.field private mProjMatrix:[F

.field private mVMatrix:[F

.field private numImages:I

.field private pano_fragment_shader_smoothstep:Ljava/lang/String;

.field private pano_vertex_shader:Ljava/lang/String;

.field private path_fragment_shader:Ljava/lang/String;

.field private path_vertex_shader:Ljava/lang/String;

.field final rateofBlend:F

.field rotatedLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

.field public s32RenderBufferId:I

.field public s32TextureId:I

.field private scale:F

.field scaleMatrix:[F

.field shiftedEye:Lcom/samsung/android/srib/vecmath/Vector3f;

.field private stopped:Z

.field private final videoFrameHeight:I

.field private final videoFrameWidth:I

.field viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const-string/jumbo v0, "RendererEngine 2.0"

    sput-object v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->TAG:Ljava/lang/String;

    new-array v0, v1, [I

    sput-object v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->as32Textures:[I

    new-array v0, v1, [I

    sput-object v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->as32FrameBuffers:[I

    new-array v0, v1, [I

    sput-object v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->as32RenderBuffers:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/srib/virtualtourAPI/Scene;IILcom/samsung/android/srib/virtualtourAPI/ImageProvider;I)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentTransition:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mMVPMatrix:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mProjMatrix:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mVMatrix:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->scaleMatrix:[F

    new-instance v0, Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-direct {v0}, Lcom/samsung/android/srib/vecmath/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    new-instance v0, Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-direct {v0}, Lcom/samsung/android/srib/vecmath/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    new-instance v0, Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-direct {v0}, Lcom/samsung/android/srib/vecmath/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    new-instance v0, Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-direct {v0}, Lcom/samsung/android/srib/vecmath/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->shiftedEye:Lcom/samsung/android/srib/vecmath/Vector3f;

    new-instance v0, Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-direct {v0}, Lcom/samsung/android/srib/vecmath/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rotatedLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    new-instance v0, Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-direct {v0}, Lcom/samsung/android/srib/vecmath/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->cam_rot:Lcom/samsung/android/srib/vecmath/Vector3f;

    new-instance v0, Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-direct {v0}, Lcom/samsung/android/srib/vecmath/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    const-string/jumbo v0, "precision mediump float;uniform mat4 uMVPMatrix;attribute vec4 aPosition;attribute vec2 aTextureCoord;varying vec2 vTextureCoord;void main() {\tgl_Position = uMVPMatrix * aPosition;\tvTextureCoord = aTextureCoord;}"

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->path_vertex_shader:Ljava/lang/String;

    const-string/jumbo v0, "precision mediump float;varying vec2 vTextureCoord;uniform sampler2D sTexture;uniform float utext_alpha_out;void main() {\tgl_FragColor = texture2D(sTexture, vTextureCoord);\tgl_FragColor.a = utext_alpha_out; }"

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->path_fragment_shader:Ljava/lang/String;

    const-string/jumbo v0, "precision highp float;uniform mat4 uMVPMatrix;attribute vec4 aPosition;attribute vec2 aTextureCoord;varying vec2 vTextureCoord;varying vec4 vAlpha;void main() {\tgl_Position = uMVPMatrix * aPosition;\tvTextureCoord = aTextureCoord;\tvAlpha = aPosition;}"

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->pano_vertex_shader:Ljava/lang/String;

    const-string/jumbo v0, "precision mediump float;varying vec2 vTextureCoord;varying vec4 vAlpha;uniform float uBound1;  uniform int uDirection;  uniform sampler2D sTexture;   uniform float uAlpha_value;  void main() {\tfloat ImageWidth = 10.0; \tfloat imageleft= -5.0;\tfloat imageright = 5.0;\tfloat Padding = 0.05 * ImageWidth;\tgl_FragColor = texture2D(sTexture, vTextureCoord);    \tif(uDirection == 1 && vAlpha.x >= uBound1)\t{\t\tif(imageright - uBound1 - 2.0*Padding <= 0.2)\t\t{\t\t\tgl_FragColor.a = 1.0 - smoothstep(uBound1, imageright, vAlpha.x);\t\t}\t\telse if (vAlpha.x >= uBound1 + Padding && vAlpha.x <= imageright - Padding)\t\t{\t\t\tgl_FragColor.a = uAlpha_value;\t\t}\t\telse if (vAlpha.x > imageright - Padding)\t\t{\t\t\tgl_FragColor.a = uAlpha_value * (1.0 - smoothstep(imageright - Padding, imageright, vAlpha.x));\t\t}\t\telse\t\t{\t\t\tgl_FragColor.a = uAlpha_value + (1.0 - uAlpha_value) * (1.0 - smoothstep(uBound1, uBound1 + Padding, vAlpha.x));\t\t}\t}\telse if (uDirection == 0 && vAlpha.x <= uBound1)\t{\t\tif(uBound1 - imageleft - 2.0*Padding <= 0.2)\t\t{\t\t\tgl_FragColor.a = smoothstep(imageleft, uBound1, vAlpha.x);\t\t}\t\telse if(vAlpha.x >= imageleft + Padding && vAlpha.x <= uBound1 - Padding)\t\t{\t\t\tgl_FragColor.a = uAlpha_value;\t\t}\t\telse if(vAlpha.x < imageleft + Padding)\t\t{\t\t\tgl_FragColor.a = uAlpha_value * smoothstep(imageleft, imageleft + Padding, vAlpha.x);\t\t}\t\telse\t\t{\t\t\tgl_FragColor.a = uAlpha_value + (1.0 - uAlpha_value) * smoothstep(uBound1 - Padding, uBound1, vAlpha.x);\t\t}\t}}"

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->pano_fragment_shader_smoothstep:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mCImageProvider:Lcom/samsung/android/srib/virtualtourAPI/ImageProvider;

    iput p4, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->videoFrameHeight:I

    iput p3, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->videoFrameWidth:I

    iput p6, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->captureOrientation:I

    iput-object p2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getFOV()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->FOV:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getFocusPoint()F

    move-result v0

    neg-float v0, v0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->INITIAL_Z:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getBlendDistance()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rateofBlend:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getZoomNoHoles()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->ZOOM_NO_HOLES:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v0, v1, :cond_0

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->createEGLContext()V

    sget-object v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "#T -> OffscreenRendererEngine FOV = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->FOV:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "#T -> OffscreenRendererEngine "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->INITIAL_Z:F

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rateofBlend:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->ZOOM_NO_HOLES:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeZ:F

    goto :goto_0
.end method

.method private checkGlError(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static createBitmapFromGLSurface(IIII)V
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    mul-int v2, p2, p3

    mul-int/lit8 v2, v2, 0x4

    new-array v12, v2, [I

    mul-int v2, p2, p3

    mul-int/lit8 v2, v2, 0x4

    new-array v13, v2, [I

    mul-int v2, p2, p3

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    move/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    :try_start_0
    invoke-static/range {v2 .. v8}, Landroid/opengl/GLES10;->glReadPixels(IIIIIILjava/nio/Buffer;)V
    :try_end_0
    .catch Landroid/opengl/GLException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v18, 0x0

    :goto_0
    move/from16 v0, v18

    move/from16 v1, p3

    if-lt v0, v1, :cond_0

    :goto_1
    new-instance v23, Ljava/util/Random;

    invoke-direct/range {v23 .. v23}, Ljava/util/Random;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "DCIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Camera"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v23 .. v23}, Ljava/util/Random;->nextInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_thread_parallel.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v2, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "#T :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_1
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v13, v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v27

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    return-void

    :cond_0
    mul-int v20, v18, p2

    sub-int v2, p3, v18

    add-int/lit8 v2, v2, -0x1

    mul-int v21, v2, p2

    const/16 v19, 0x0

    :goto_3
    move/from16 v0, v19

    move/from16 v1, p2

    if-lt v0, v1, :cond_1

    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    :cond_1
    add-int v2, v20, v19

    :try_start_2
    aget v28, v12, v2

    shr-int/lit8 v2, v28, 0x10

    and-int/lit16 v14, v2, 0xff

    shl-int/lit8 v2, v28, 0x10

    const/high16 v3, 0xff0000

    and-int v24, v2, v3

    const v2, -0xff0100

    and-int v2, v2, v28

    or-int v2, v2, v24

    or-int v22, v2, v14

    add-int v2, v21, v19

    aput v22, v13, v2
    :try_end_2
    .catch Landroid/opengl/GLException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    :catch_0
    move-exception v15

    invoke-virtual {v15}, Landroid/opengl/GLException;->printStackTrace()V

    goto/16 :goto_1

    :catch_1
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private createEGLContext()V
    .locals 15

    const/16 v11, 0x8

    const/4 v14, 0x0

    const/4 v13, 0x2

    const/4 v4, 0x1

    const/4 v12, 0x0

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    sput-object v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    new-array v10, v13, [I

    sget-object v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    new-array v5, v4, [I

    sget-object v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1, v14, v12, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    aget v0, v5, v12

    new-array v3, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v0, 0x9

    new-array v2, v0, [I

    const/16 v0, 0x3040

    aput v0, v2, v12

    const/4 v0, 0x4

    aput v0, v2, v4

    const/16 v0, 0x3024

    aput v0, v2, v13

    const/4 v0, 0x3

    aput v11, v2, v0

    const/16 v0, 0x3023

    const/4 v1, 0x4

    aput v0, v2, v1

    const/4 v0, 0x5

    aput v11, v2, v0

    const/16 v0, 0x3022

    const/4 v1, 0x6

    aput v0, v2, v1

    const/4 v0, 0x7

    aput v11, v2, v0

    const/16 v0, 0x3038

    aput v0, v2, v11

    sget-object v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    sput-object v14, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const/4 v0, 0x5

    new-array v8, v0, [I

    const/16 v0, 0x3057

    aput v0, v8, v12

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->videoFrameWidth:I

    aput v0, v8, v4

    const/16 v0, 0x3056

    aput v0, v8, v13

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->videoFrameHeight:I

    const/4 v1, 0x3

    aput v0, v8, v1

    const/16 v0, 0x3038

    const/4 v1, 0x4

    aput v0, v8, v1

    sget-object v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v11, v3, v12

    invoke-interface {v0, v1, v11, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-nez v0, :cond_3

    :cond_0
    sput-object v14, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    return-void

    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "Could not find config for GLES2"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    return-void

    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "Failed to create surface"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    return-void

    :cond_3
    const/16 v6, 0x3098

    const/4 v7, 0x2

    const/4 v0, 0x3

    new-array v9, v0, [I

    const/16 v0, 0x3098

    aput v0, v9, v12

    aput v13, v9, v4

    const/16 v0, 0x3038

    aput v0, v9, v13

    sget-object v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget-object v11, v3, v12

    sget-object v12, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v11, v12, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v11, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v12, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v13, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v11, v12, v13}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-ne v0, v4, :cond_0

    sget-object v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    sput-object v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    sget-object v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-direct {p0, v0}, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;)V

    sget-object v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->videoFrameWidth:I

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->videoFrameHeight:I

    invoke-direct {p0, v0, v1, v4}, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    return-void
.end method

.method private createFrameBufferObject()I
    .locals 12

    const v11, 0x8d41

    const/4 v3, 0x1

    const v10, 0x8d40

    const/16 v0, 0xde1

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->as32FrameBuffers:[I

    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    sget-object v2, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->as32FrameBuffers:[I

    aget v2, v2, v1

    sput v2, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->s32FrameBufferId:I

    sget-object v2, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->as32RenderBuffers:[I

    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    sget-object v2, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->as32RenderBuffers:[I

    aget v2, v2, v1

    iput v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->s32RenderBufferId:I

    sget-object v2, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->as32Textures:[I

    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    sget-object v2, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->as32Textures:[I

    aget v2, v2, v1

    iput v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->s32TextureId:I

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->s32TextureId:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x2802

    const v3, 0x812f

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2803

    const v3, 0x812f

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2800

    const/16 v3, 0x2601

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2801

    const/16 v3, 0x2601

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->videoFrameWidth:I

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->videoFrameHeight:I

    const/4 v8, 0x0

    const/16 v2, 0x1908

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    move v5, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->s32RenderBufferId:I

    invoke-static {v11, v2}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->videoFrameWidth:I

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->videoFrameHeight:I

    const v4, 0x81a5

    invoke-static {v11, v4, v2, v3}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    sget v2, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->s32FrameBufferId:I

    invoke-static {v10, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->s32TextureId:I

    const v3, 0x8ce0

    invoke-static {v10, v3, v0, v2, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->s32RenderBufferId:I

    const v1, 0x8d00

    invoke-static {v10, v1, v11, v0}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    invoke-static {v10}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v9

    const v0, 0x8cd5

    if-eq v9, v0, :cond_0

    sget-object v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "#T framebuffer not completed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->s32FrameBufferId:I

    return v0

    :cond_0
    sget-object v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "#T frame buffer completed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getBitmap(Ljava/nio/Buffer;II)V
    .locals 12

    invoke-virtual {p1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "DCIM"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "Camera"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "_thread_parallel.jpg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v9, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "#getBitmap :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x5a

    invoke-virtual {v3, v9, v10, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 8

    const/4 v1, 0x0

    invoke-static {v1, v1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getAspectRatio()F

    move-result v3

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->FOV:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    float-to-double v6, v3

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    double-to-float v0, v4

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->FOV_Y:F

    sget-object v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "#T -> OffscreenRendererEngine onSurfaceChanged FOV_Y = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->FOV_Y:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mProjMatrix:[F

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->FOV_Y:F

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v2, v4

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x43fa0000    # 500.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    return-void
.end method

.method private onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 19

    new-instance v1, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->path_vertex_shader:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->path_fragment_shader:Ljava/lang/String;

    sget-object v4, Lcom/samsung/android/srib/virtualtourAPI/Transition;->WALK:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/srib/virtualtourAPI/Transition;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->FORWARD_ALPHA_BLEND:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    new-instance v1, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->pano_vertex_shader:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->pano_fragment_shader_smoothstep:Ljava/lang/String;

    sget-object v4, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/srib/virtualtourAPI/Transition;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->TURN_ALPHA_BLEND:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getImageCount()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->numImages:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->numImages:I

    new-array v1, v1, [Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    const/16 v18, 0x0

    const/4 v5, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->numImages:I

    move/from16 v0, v17

    if-lt v0, v1, :cond_0

    const/16 v17, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->numImages:I

    move/from16 v0, v17

    if-lt v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v1, v1, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentTransition:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->numImages:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_8

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->setRenderingImages(II)V

    :goto_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeX:F

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeY:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v1, v1, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v1, v2, :cond_9

    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->INITIAL_Z:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeZ:F

    :goto_3
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->lookatX:F

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->lookatY:F

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->lookatZ:F

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->alpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->scale:F

    const v1, 0x3cf5c28f    # 0.03f

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->Tour_Speed:F

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->Turn_Angle:F

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->Time:F

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    new-instance v2, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    invoke-direct {v2}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;-><init>()V

    aput-object v2, v1, v17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mCImageProvider:Lcom/samsung/android/srib/virtualtourAPI/ImageProvider;

    const/4 v2, 0x1

    move/from16 v0, v17

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageProvider;->getImage(II)Landroid/graphics/Bitmap;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    aget-object v1, v1, v17

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->createTexture(Landroid/graphics/Bitmap;)V

    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v1, v1, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    aget-object v1, v1, v17

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/srib/virtualtourAPI/Transition;->WALK:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-ne v1, v2, :cond_5

    :cond_2
    const/4 v1, 0x0

    cmpl-float v1, v5, v1

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v1, v1, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    aget-object v1, v1, v17

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getTotalTransitionAmount()F

    move-result v5

    :cond_3
    sub-float v6, v5, v18

    if-gtz v17, :cond_6

    :cond_4
    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    aget-object v7, v1, v17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getImageSize()F

    move-result v9

    sget-object v10, Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;->FLAT:Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getImageWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getImageHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->captureOrientation:I

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v15}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->createMesh([BFLcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;FFIII)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v1, v1, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    aget-object v1, v1, v17

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransitionAmount()F

    move-result v1

    add-float v18, v18, v1

    :goto_5
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v1, v1, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    aget-object v1, v1, v17

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/srib/virtualtourAPI/Transition;->NA:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v1, v2, :cond_2

    const/16 v18, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    aget-object v7, v1, v17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getImageSize()F

    move-result v9

    sget-object v10, Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;->FLAT:Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getImageWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getImageHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->captureOrientation:I

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v15}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->createMesh([BFLcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;FFIII)V

    goto :goto_5

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v1, v1, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    add-int/lit8 v2, v17, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v1, v2, :cond_4

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    aget-object v1, v1, v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v2, v2, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    aget-object v2, v2, v17

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getDepthMap()[B

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getImageSize()F

    move-result v3

    sget-object v4, Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;->DEPTHMAP:Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getImageWidth()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v8}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getImageHeight()I

    move-result v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->captureOrientation:I

    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->createMesh([BFLcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;FFIII)V

    goto/16 :goto_4

    :cond_8
    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->setRenderingImages(II)V

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->INITIAL_Z:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rateofBlend:F

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->ZOOM_NO_HOLES:F

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeZ:F

    goto/16 :goto_3
.end method

.method public static precision(ILjava/lang/Float;)Ljava/lang/Float;
    .locals 2

    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1
.end method

.method public static saveFrame(Ljava/lang/String;II)V
    .locals 19

    mul-int v2, p1, p2

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-static/range {v2 .. v8}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    mul-int v18, p1, p2

    move/from16 v0, v18

    new-array v12, v0, [I

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    const/4 v15, 0x0

    :goto_0
    move/from16 v0, v18

    if-lt v15, v0, :cond_0

    sget-object v2, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "#T :pixelCount"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    :try_start_0
    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v12, v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v3, 0x5a

    :try_start_2
    invoke-virtual {v10, v2, v3, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v14, :cond_1

    :goto_1
    sget-object v2, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "#T Saved "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " frame as \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    aget v11, v12, v15

    const v2, -0xff0100

    and-int/2addr v2, v11

    const/high16 v3, 0xff0000

    and-int/2addr v3, v11

    shr-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    and-int/lit16 v3, v11, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    aput v2, v12, v15

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    :cond_1
    :try_start_3
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v17

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "#T Failed to close file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v16

    :goto_2
    :try_start_4
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "#T Failed to write file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v9

    :goto_3
    if-nez v13, :cond_2

    :goto_4
    throw v9

    :cond_2
    :try_start_5
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    move-exception v17

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "#T Failed to close file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catchall_1
    move-exception v9

    move-object v13, v14

    goto :goto_3

    :catchall_2
    move-exception v9

    move-object v13, v14

    goto :goto_3

    :catch_3
    move-exception v16

    move-object v13, v14

    goto :goto_2

    :catch_4
    move-exception v16

    move-object v13, v14

    goto :goto_2
.end method

.method private setRenderingImages(II)V
    .locals 2

    iput p1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->RenderImg1:I

    iput p2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->RenderImg2:I

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->RenderImg1:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->RenderImg2:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentTransition:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    invoke-direct {p0, p1}, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->updateVectors(I)V

    return-void
.end method

.method private updateVectors(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->WALK:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-virtual {v0}, Lcom/samsung/android/srib/vecmath/Vector3f;->normalize()V

    if-gtz p1, :cond_4

    :cond_1
    if-gtz p1, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v0, v1, :cond_6

    if-gtz p1, :cond_8

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-virtual {v0}, Lcom/samsung/android/srib/vecmath/Vector3f;->length()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2Distance:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-virtual {v0}, Lcom/samsung/android/srib/vecmath/Vector3f;->normalize()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->ZOOM_NO_HOLES:F

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rateofBlend:F

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->ZOOM_NO_HOLES:F

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rateofBlend:F

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->ZOOM_NO_HOLES:F

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rateofBlend:F

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-virtual {v0}, Lcom/samsung/android/srib/vecmath/Vector3f;->length()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2Distance:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-virtual {v0}, Lcom/samsung/android/srib/vecmath/Vector3f;->normalize()V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->ZOOM_NO_HOLES:F

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rateofBlend:F

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->ZOOM_NO_HOLES:F

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rateofBlend:F

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->ZOOM_NO_HOLES:F

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rateofBlend:F

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-virtual {v0}, Lcom/samsung/android/srib/vecmath/Vector3f;->length()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2Distance:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-virtual {v0}, Lcom/samsung/android/srib/vecmath/Vector3f;->normalize()V

    goto/16 :goto_0

    :cond_6
    if-gtz p1, :cond_7

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-virtual {v0}, Lcom/samsung/android/srib/vecmath/Vector3f;->length()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2Distance:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-virtual {v0}, Lcom/samsung/android/srib/vecmath/Vector3f;->normalize()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rateofBlend:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rateofBlend:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rateofBlend:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-virtual {v0}, Lcom/samsung/android/srib/vecmath/Vector3f;->length()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2Distance:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-virtual {v0}, Lcom/samsung/android/srib/vecmath/Vector3f;->normalize()V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->WALK:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rateofBlend:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rateofBlend:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rateofBlend:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-virtual {v0}, Lcom/samsung/android/srib/vecmath/Vector3f;->length()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2Distance:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-virtual {v0}, Lcom/samsung/android/srib/vecmath/Vector3f;->normalize()V

    goto/16 :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->as32Textures:[I

    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    sget-object v1, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->as32RenderBuffers:[I

    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    sget-object v1, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->as32FrameBuffers:[I

    invoke-static {v3, v1, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    sget-object v1, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-nez v1, :cond_2

    :goto_0
    sget-object v1, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    sput-object v6, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sput-object v6, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->numImages:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->onDestroy()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    sget-object v1, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v1, :cond_3

    :goto_2
    sget-object v1, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    sput-object v6, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    sput-object v6, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    goto :goto_2
.end method

.method public getCaptureOrientation()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->captureOrientation:I

    return v0
.end method

.method public getNextFrameAsByteBuffer(Ljava/nio/ByteBuffer;)Z
    .locals 14

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->Time:F

    invoke-virtual {p0, v0}, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->setTime(F)V

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->Time:F

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->Tour_Speed:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->Time:F

    const v0, 0x8d40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mVMatrix:[F

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeX:F

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeY:F

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeZ:F

    iget v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->lookatX:F

    iget v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->lookatY:F

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->lookatZ:F

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentTransition:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->WALK:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentTransition:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentTransition:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->NA:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v0, v1, :cond_5

    :goto_0
    sget-object v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "#T : before glreadpxl"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->videoFrameWidth:I

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->videoFrameHeight:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move-object v7, p1

    invoke-interface/range {v0 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    iget-boolean v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->stopped:Z

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->FORWARD_ALPHA_BLEND:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getProgram()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string/jumbo v0, "glUseProgram"

    invoke-direct {p0, v0}, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->checkGlError(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->scaleMatrix:[F

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getModelMatrix()[F

    move-result-object v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->scaleM([FI[FIFFF)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mVMatrix:[F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->scaleMatrix:[F

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mProjMatrix:[F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mMVPMatrix:[F

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->FORWARD_ALPHA_BLEND:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getMVPHandle()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mMVPMatrix:[F

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v1, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->FORWARD_ALPHA_BLEND:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getAlphaHandle()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->RenderImg2:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->FORWARD_ALPHA_BLEND:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTextureHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setTextureHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->RenderImg2:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->FORWARD_ALPHA_BLEND:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getPositionHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setPositionHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->RenderImg2:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->render()V

    const-string/jumbo v0, "glDrawArrays"

    invoke-direct {p0, v0}, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->checkGlError(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->FORWARD_ALPHA_BLEND:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getProgram()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string/jumbo v0, "glUseProgram"

    invoke-direct {p0, v0}, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->checkGlError(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->scaleMatrix:[F

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getModelMatrix()[F

    move-result-object v2

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->scale:F

    neg-float v5, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->scaleM([FI[FIFFF)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mVMatrix:[F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->scaleMatrix:[F

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mProjMatrix:[F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mMVPMatrix:[F

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->FORWARD_ALPHA_BLEND:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getMVPHandle()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mMVPMatrix:[F

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v1, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->FORWARD_ALPHA_BLEND:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getAlphaHandle()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->alpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->RenderImg1:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->FORWARD_ALPHA_BLEND:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getPositionHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setPositionHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->RenderImg1:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->FORWARD_ALPHA_BLEND:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTextureHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setTextureHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->RenderImg1:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->render()V

    const-string/jumbo v0, "glDrawArrays"

    invoke-direct {p0, v0}, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->checkGlError(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->FORWARD_ALPHA_BLEND:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getProgram()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string/jumbo v0, "glUseProgram"

    invoke-direct {p0, v0}, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->checkGlError(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->scaleMatrix:[F

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getModelMatrix()[F

    move-result-object v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->scaleM([FI[FIFFF)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mVMatrix:[F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->scaleMatrix:[F

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mProjMatrix:[F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mMVPMatrix:[F

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->FORWARD_ALPHA_BLEND:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getMVPHandle()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mMVPMatrix:[F

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v1, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->FORWARD_ALPHA_BLEND:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getAlphaHandle()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->RenderImg1:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->FORWARD_ALPHA_BLEND:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTextureHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setTextureHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->RenderImg1:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->FORWARD_ALPHA_BLEND:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getPositionHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setPositionHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->RenderImg1:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->render()V

    const-string/jumbo v0, "glDrawArrays"

    invoke-direct {p0, v0}, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->checkGlError(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->TURN_ALPHA_BLEND:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getProgram()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string/jumbo v0, "glUseProgram"

    invoke-direct {p0, v0}, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->checkGlError(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->scaleMatrix:[F

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getModelMatrix()[F

    move-result-object v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->scaleM([FI[FIFFF)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mVMatrix:[F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->scaleMatrix:[F

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mProjMatrix:[F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mMVPMatrix:[F

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->TURN_ALPHA_BLEND:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getMVPHandle()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mMVPMatrix:[F

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v1, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v13, 0x0

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransitionAmount()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v11

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->Turn_Angle:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->Turn_Angle:F

    cmpg-float v0, v0, v11

    if-gtz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->Turn_Angle:F

    div-float v13, v0, v11

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->TURN_ALPHA_BLEND:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTurnAlphaHandle()I

    move-result v0

    invoke-static {v0, v13}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string/jumbo v0, "glAlphahandle"

    invoke-direct {p0, v0}, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->checkGlError(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->TURN_ALPHA_BLEND:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getBoundHandle1()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getBound()F

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string/jumbo v0, "glAlphahandle"

    invoke-direct {p0, v0}, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->checkGlError(Ljava/lang/String;)V

    const/4 v12, 0x0

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransitionAmount()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    const/4 v12, 0x1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->TURN_ALPHA_BLEND:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTurnDirectionHandle()I

    move-result v0

    invoke-static {v0, v12}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->RenderImg2:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->TURN_ALPHA_BLEND:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getPositionHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setPositionHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->RenderImg2:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->TURN_ALPHA_BLEND:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTextureHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setTextureHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->RenderImg2:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->render()V

    const-string/jumbo v0, "glDrawArrays"

    invoke-direct {p0, v0}, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->checkGlError(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->Turn_Angle:F

    cmpl-float v0, v0, v11

    if-lez v0, :cond_4

    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_4
    const/4 v13, 0x0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->FORWARD_ALPHA_BLEND:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getProgram()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string/jumbo v0, "glUseProgram"

    invoke-direct {p0, v0}, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->checkGlError(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->scaleMatrix:[F

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getModelMatrix()[F

    move-result-object v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->scaleM([FI[FIFFF)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mVMatrix:[F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->scaleMatrix:[F

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mProjMatrix:[F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mMVPMatrix:[F

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->FORWARD_ALPHA_BLEND:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getMVPHandle()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->mMVPMatrix:[F

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v1, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->FORWARD_ALPHA_BLEND:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getAlphaHandle()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->RenderImg1:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->FORWARD_ALPHA_BLEND:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getPositionHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setPositionHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->RenderImg1:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->FORWARD_ALPHA_BLEND:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTextureHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setTextureHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->RenderImg1:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->render()V

    const-string/jumbo v0, "glDrawArrays"

    invoke-direct {p0, v0}, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->checkGlError(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public isStopped()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->stopped:Z

    return v0
.end method

.method public setCaptureOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->captureOrientation:I

    return-void
.end method

.method public setStopped(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->stopped:Z

    return-void
.end method

.method public setTime(F)V
    .locals 14

    const/4 v2, 0x0

    :goto_0
    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getImageCount()I

    move-result v7

    if-lt v2, v7, :cond_0

    :goto_1
    return-void

    :cond_0
    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getImageCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-lt v2, v7, :cond_2

    :cond_1
    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getImageCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-eq v2, v7, :cond_15

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v7, v7, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getSceneTime()F

    move-result v7

    cmpl-float v7, p1, v7

    if-ltz v7, :cond_1

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v7, v7, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    add-int/lit8 v8, v2, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getSceneTime()F

    move-result v7

    cmpg-float v7, p1, v7

    if-gez v7, :cond_1

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->RenderImg1:I

    if-ne v7, v2, :cond_3

    :goto_3
    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/srib/virtualtourAPI/Transition;->WALK:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v7, v8, :cond_4

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v7, v8, :cond_14

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->stopped:Z

    goto :goto_1

    :cond_3
    add-int/lit8 v7, v2, 0x1

    invoke-direct {p0, v2, v7}, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->setRenderingImages(II)V

    goto :goto_3

    :cond_4
    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getSceneTime()F

    move-result v7

    sub-float v7, p1, v7

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v8}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getSceneTime()F

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v9}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getSceneTime()F

    move-result v9

    sub-float/2addr v8, v9

    div-float v3, v7, v8

    if-gtz v2, :cond_a

    :cond_5
    if-gtz v2, :cond_b

    :cond_6
    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v7, v8, :cond_c

    if-gtz v2, :cond_e

    :cond_7
    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2Distance:F

    iget v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rateofBlend:F

    add-float/2addr v7, v8

    mul-float v0, v7, v3

    :goto_4
    if-gtz v2, :cond_f

    :cond_8
    if-gtz v2, :cond_11

    :cond_9
    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getSyBysx()F

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v7, v8, v7

    mul-float/2addr v7, v3

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v7, v8, v7

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->scale:F

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2Distance:F

    cmpl-float v7, v0, v7

    if-lez v7, :cond_13

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2Distance:F

    sub-float v7, v0, v7

    iget v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rateofBlend:F

    div-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->alpha:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2Distance:F

    sub-float v9, v0, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeX:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2Distance:F

    sub-float v9, v0, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeY:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2Distance:F

    sub-float v9, v0, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeZ:F

    :goto_5
    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeX:F

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->lookatX:F

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeY:F

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->lookatY:F

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeZ:F

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->lookatZ:F

    goto/16 :goto_1

    :cond_a
    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v7, v7, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    add-int/lit8 v8, v2, -0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-ne v7, v8, :cond_5

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-ne v7, v8, :cond_5

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2Distance:F

    iget v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rateofBlend:F

    add-float/2addr v7, v8

    iget v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->ZOOM_NO_HOLES:F

    add-float/2addr v7, v8

    mul-float v0, v7, v3

    goto/16 :goto_4

    :cond_b
    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v7, v7, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    add-int/lit8 v8, v2, -0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-ne v7, v8, :cond_6

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v7, v8, :cond_6

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2Distance:F

    iget v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rateofBlend:F

    add-float/2addr v7, v8

    mul-float v0, v7, v3

    goto/16 :goto_4

    :cond_c
    if-gtz v2, :cond_d

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2Distance:F

    iget v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->ZOOM_NO_HOLES:F

    add-float/2addr v7, v8

    iget v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rateofBlend:F

    add-float/2addr v7, v8

    mul-float v0, v7, v3

    goto/16 :goto_4

    :cond_d
    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2Distance:F

    iget v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rateofBlend:F

    add-float/2addr v7, v8

    iget v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->ZOOM_NO_HOLES:F

    add-float/2addr v7, v8

    mul-float v0, v7, v3

    goto/16 :goto_4

    :cond_e
    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v7, v7, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    add-int/lit8 v8, v2, -0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/srib/virtualtourAPI/Transition;->WALK:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-ne v7, v8, :cond_7

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2Distance:F

    iget v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rateofBlend:F

    add-float/2addr v7, v8

    mul-float v0, v7, v3

    goto/16 :goto_4

    :cond_f
    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v7, v7, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    add-int/lit8 v8, v2, -0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-ne v7, v8, :cond_8

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getSyBysx()F

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v7, v8, v7

    mul-float/2addr v7, v3

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v7, v8, v7

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->scale:F

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2Distance:F

    cmpl-float v7, v0, v7

    if-lez v7, :cond_10

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2Distance:F

    sub-float v7, v0, v7

    iget v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rateofBlend:F

    div-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->alpha:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2Distance:F

    sub-float v9, v0, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeX:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2Distance:F

    sub-float v9, v0, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeY:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2Distance:F

    sub-float v9, v0, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeZ:F

    goto/16 :goto_5

    :cond_10
    const/4 v7, 0x0

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->alpha:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    mul-float/2addr v8, v0

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeX:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    mul-float/2addr v8, v0

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeY:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    mul-float/2addr v8, v0

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeZ:F

    goto/16 :goto_5

    :cond_11
    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v7, v7, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    add-int/lit8 v8, v2, -0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/srib/virtualtourAPI/Transition;->WALK:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-ne v7, v8, :cond_9

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getSyBysx()F

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v7, v8, v7

    mul-float/2addr v7, v3

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v7, v8, v7

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->scale:F

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2Distance:F

    cmpl-float v7, v0, v7

    if-lez v7, :cond_12

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2Distance:F

    sub-float v7, v0, v7

    iget v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rateofBlend:F

    div-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->alpha:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2Distance:F

    sub-float v9, v0, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeX:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2Distance:F

    sub-float v9, v0, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeY:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2Distance:F

    sub-float v9, v0, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeZ:F

    goto/16 :goto_5

    :cond_12
    const/4 v7, 0x0

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->alpha:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    mul-float/2addr v8, v0

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeX:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    mul-float/2addr v8, v0

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeY:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    mul-float/2addr v8, v0

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeZ:F

    goto/16 :goto_5

    :cond_13
    const/4 v7, 0x0

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->alpha:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    mul-float/2addr v8, v0

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeX:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    mul-float/2addr v8, v0

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeY:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    mul-float/2addr v8, v0

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeZ:F

    goto/16 :goto_5

    :cond_14
    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getSceneTime()F

    move-result v7

    sub-float v7, p1, v7

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v8}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getSceneTime()F

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v9}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getSceneTime()F

    move-result v9

    sub-float/2addr v8, v9

    div-float v3, v7, v8

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransitionAmount()F

    move-result v7

    mul-float v4, v3, v7

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->Turn_Angle:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->shiftedEye:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v8}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v8

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v9}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v9

    iget v9, v9, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    sub-float/2addr v8, v9

    iput v8, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->shiftedEye:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v8}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v8

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v9}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v9

    iget v9, v9, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    sub-float/2addr v8, v9

    iput v8, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->shiftedEye:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v8}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v8

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v9}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v9

    iget v9, v9, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    sub-float/2addr v8, v9

    iput v8, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rotatedLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->shiftedEye:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    float-to-double v8, v8

    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    iget-object v10, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->shiftedEye:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v10, v10, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    float-to-double v10, v10

    float-to-double v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    double-to-float v8, v8

    iput v8, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rotatedLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->shiftedEye:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iput v8, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rotatedLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->shiftedEye:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    float-to-double v8, v8

    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    iget-object v10, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->shiftedEye:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v10, v10, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    float-to-double v10, v10

    float-to-double v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v8, v8

    iput v8, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->cam_rot:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rotatedLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iput v8, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->cam_rot:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rotatedLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iput v8, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->cam_rot:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rotatedLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iput v8, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->cam_rot:Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-virtual {v7}, Lcom/samsung/android/srib/vecmath/Vector3f;->normalize()V

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->cam_rot:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->ZOOM_NO_HOLES:F

    iget v10, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rateofBlend:F

    add-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeX:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->cam_rot:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->ZOOM_NO_HOLES:F

    iget v10, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rateofBlend:F

    add-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeY:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->cam_rot:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->ZOOM_NO_HOLES:F

    iget v10, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rateofBlend:F

    add-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeZ:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rotatedLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeX:F

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->lookatX:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rotatedLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeY:F

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->lookatY:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rotatedLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeZ:F

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->lookatZ:F

    goto/16 :goto_1

    :cond_15
    const/4 v7, 0x0

    invoke-direct {p0, v2, v7}, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->setRenderingImages(II)V

    if-gtz v2, :cond_17

    :cond_16
    if-gtz v2, :cond_18

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v8}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v8

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v9}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v9

    iget v9, v9, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    sub-float/2addr v8, v9

    iput v8, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v8}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v8

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v9}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v9

    iget v9, v9, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    sub-float/2addr v8, v9

    iput v8, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v8}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v8

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v9}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v9

    iget v9, v9, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    sub-float/2addr v8, v9

    iput v8, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-virtual {v7}, Lcom/samsung/android/srib/vecmath/Vector3f;->normalize()V

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getStepTime()F

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getStepSize()F

    move-result v5

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getSceneTime()F

    move-result v7

    sub-float v7, p1, v7

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v8}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransitionAmount()F

    move-result v8

    mul-float/2addr v8, v6

    div-float v3, v7, v8

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v3, v7

    if-gez v7, :cond_1a

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransitionAmount()F

    move-result v7

    mul-float/2addr v7, v3

    mul-float v1, v7, v5

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    mul-float/2addr v8, v1

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeX:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    mul-float/2addr v8, v1

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeY:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    mul-float/2addr v8, v1

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeZ:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->lookatX:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->lookatY:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->lookatZ:F

    goto/16 :goto_2

    :cond_17
    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v7, v7, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    add-int/lit8 v8, v2, -0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-ne v7, v8, :cond_16

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v8}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v8

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v9}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v9

    iget v9, v9, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    sub-float/2addr v8, v9

    iput v8, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v8}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v8

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v9}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v9

    iget v9, v9, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    sub-float/2addr v8, v9

    iput v8, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v8}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v8

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v9}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v9

    iget v9, v9, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    sub-float/2addr v8, v9

    iput v8, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-virtual {v7}, Lcom/samsung/android/srib/vecmath/Vector3f;->normalize()V

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rateofBlend:F

    iget v10, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->ZOOM_NO_HOLES:F

    add-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeX:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rateofBlend:F

    iget v10, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->ZOOM_NO_HOLES:F

    add-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeY:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rateofBlend:F

    iget v10, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->ZOOM_NO_HOLES:F

    add-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeZ:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->lookatX:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->lookatY:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->lookatZ:F

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->stopped:Z

    goto/16 :goto_2

    :cond_18
    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v8}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v8

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v9}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v9

    iget v9, v9, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    sub-float/2addr v8, v9

    iput v8, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v8}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v8

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v9}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v9

    iget v9, v9, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    sub-float/2addr v8, v9

    iput v8, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v8}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v8

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v9}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v9

    iget v9, v9, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    sub-float/2addr v8, v9

    iput v8, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-virtual {v7}, Lcom/samsung/android/srib/vecmath/Vector3f;->normalize()V

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getStepTime()F

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getStepSize()F

    move-result v5

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getSceneTime()F

    move-result v7

    sub-float v7, p1, v7

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v8}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransitionAmount()F

    move-result v8

    mul-float/2addr v8, v6

    div-float v3, v7, v8

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v3, v7

    if-gez v7, :cond_19

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransitionAmount()F

    move-result v7

    mul-float/2addr v7, v3

    mul-float v1, v7, v5

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rateofBlend:F

    add-float/2addr v9, v1

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeX:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rateofBlend:F

    add-float/2addr v9, v1

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeY:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rateofBlend:F

    add-float/2addr v9, v1

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeZ:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->lookatX:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->lookatY:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->lookatZ:F

    goto/16 :goto_2

    :cond_19
    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rateofBlend:F

    iget v10, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rateofBlend:F

    add-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeX:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rateofBlend:F

    iget v10, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rateofBlend:F

    add-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeY:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rateofBlend:F

    iget v10, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->rateofBlend:F

    add-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeZ:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->lookatX:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->lookatY:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->lookatZ:F

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->stopped:Z

    goto/16 :goto_2

    :cond_1a
    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransitionAmount()F

    move-result v7

    mul-float v1, v7, v5

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    mul-float/2addr v8, v1

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeX:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    mul-float/2addr v8, v1

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeY:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v8, v8, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    mul-float/2addr v8, v1

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->eyeZ:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->lookatX:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->lookatY:F

    iget-object v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v7}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iput v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->lookatZ:F

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->stopped:Z

    goto/16 :goto_2
.end method
