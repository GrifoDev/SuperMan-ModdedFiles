.class public Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;
.super Landroid/widget/RelativeLayout;
.source "RendererEngineView.java"

# interfaces
.implements Lcom/samsung/android/srib/virtualtourRenderer/MultiRenderer;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$CreateDepthMesh;,
        Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$DrawCase;,
        Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$onRendererChangeListener;
    }
.end annotation


# static fields
.field public static final RENDERER_ENGINE_VERSION:Ljava/lang/String; = "1.4.5  2017/Jan/19"

.field private static TAG:Ljava/lang/String; = null

.field public static final TAGLoadTime:Ljava/lang/String; = "LoadTime"

.field static lookatX:F

.field static lookatY:F

.field static lookatZ:F

.field private static monitor:Ljava/lang/Object;


# instance fields
.field private Cur_Mode:S

.field private CurrentCase:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$DrawCase;

.field public final DEFAULT_RENDERER:I

.field FORWARD_ALPHA_BLEND:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

.field FOVY_MAX:F

.field FOVY_MIN:F

.field private FOV_min_2:F

.field private H_Runnable:Ljava/lang/Runnable;

.field private I0:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

.field private I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

.field private I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

.field private I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

.field private I3:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

.field public INITIAL_Z:F

.field private final NORMAL_MODE:S

.field private final NUM_BUFFER:I

.field private Pan_X:F

.field private Pan_Y:F

.field private RenderImg0:I

.field private RenderImg1:I

.field private RenderImg2:I

.field private RenderImg3:I

.field SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

.field TURN_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

.field TURN_TRIPLE_LAST:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

.field TURN_TRIPLE_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

.field public volatile ThreadSuspended:Z

.field private Tour_Speed:F

.field private Turn_Angle:F

.field private final VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

.field private final ZOOM_MODE:S

.field ZOOM_NO_HOLES:F

.field private actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

.field private alpha:F

.field public volatile angle_rot:F

.field private angle_temp:F

.field private volatile autoMode:Z

.field c:Lcom/samsung/android/srib/vecmath/Vector3f;

.field cam_rot:Lcom/samsung/android/srib/vecmath/Vector3f;

.field cam_vec:Lcom/samsung/android/srib/vecmath/Vector3f;

.field private captureOrientation:I

.field private consumerBuffer:I

.field private volatile curTime:F

.field private currentCameraMag:F

.field private currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

.field private currentTransition:Lcom/samsung/android/srib/virtualtourAPI/Transition;

.field private empty:[Z

.field private eyeX:F

.field private eyeY:F

.field volatile eyeZ:F

.field private f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

.field private f1f2Distance:F

.field private farPlane:F

.field private forwardMovement:F

.field public mCImageProvider:Lcom/samsung/android/srib/virtualtourAPI/ImageProvider;

.field mContext:Landroid/content/Context;

.field private volatile mCurFOV:F

.field private mMVPMatrix:[F

.field private mProjMatrix:[F

.field private mTempMatrix:[F

.field private mVMatrix:[F

.field public m_CurrentRenderer:Lcom/samsung/android/srib/virtualtourRenderer/MultiRenderer;

.field private m_GLView:Landroid/opengl/GLSurfaceView;

.field private m_Handler:Landroid/os/Handler;

.field private m_MRenderers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/srib/virtualtourRenderer/MultiRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private m_onRendererChangeListener:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$onRendererChangeListener;

.field private maxSeekBarTime:I

.field private nearPlane:F

.field public numImages:I

.field public volatile number:J

.field private onAutoModeStateChangedRunnable:Ljava/lang/Runnable;

.field private onImageChangedRunnable:Ljava/lang/Runnable;

.field private onPositionChangedRunnable:Ljava/lang/Runnable;

.field private onTourReadyRunnable:Ljava/lang/Runnable;

.field private pan_deltaX:F

.field private pan_deltaY:F

.field private pano_fragment_shader:Ljava/lang/String;

.field private pano_vertex_shader_last:Ljava/lang/String;

.field private pano_vertex_shader_normal:Ljava/lang/String;

.field private pano_vertex_shader_triple:Ljava/lang/String;

.field private path_fragment_shader:Ljava/lang/String;

.field private path_normal_fragment_shader:Ljava/lang/String;

.field private path_vertex_shader:Ljava/lang/String;

.field private producerBuffer:I

.field private rateofBlend:F

.field private relativePos:F

.field private relativeRotation:F

.field rotatedLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

.field private scale:F

.field scaleMatrix:[F

.field private seekBarTime:F

.field private shared_img:[Landroid/graphics/Bitmap;

.field shiftedEye:Lcom/samsung/android/srib/vecmath/Vector3f;

.field private startTimeSurfaceCreated:J

.field private stopped:Z

.field viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->monitor:Ljava/lang/Object;

    const-string/jumbo v0, "RendererEngine"

    sput-object v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/srib/virtualtourAPI/ImageProvider;II)V
    .locals 7

    const/16 v6, 0x10

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->DEFAULT_RENDERER:I

    iput-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mCImageProvider:Lcom/samsung/android/srib/virtualtourAPI/ImageProvider;

    iput-boolean v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->ThreadSuspended:Z

    iput-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_MRenderers:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_CurrentRenderer:Lcom/samsung/android/srib/virtualtourRenderer/MultiRenderer;

    iput-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_Handler:Landroid/os/Handler;

    iput v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->relativePos:F

    iput-short v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->ZOOM_MODE:S

    iput-short v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->NORMAL_MODE:S

    iput-short v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->Cur_Mode:S

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->nearPlane:F

    const/high16 v1, 0x41900000    # 18.0f

    iput v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->farPlane:F

    iput v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->FOV_min_2:F

    iput v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeX:F

    iput v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeY:F

    iput v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeZ:F

    iput v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->alpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->scale:F

    iput v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->producerBuffer:I

    iput v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->consumerBuffer:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->NUM_BUFFER:I

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->shared_img:[Landroid/graphics/Bitmap;

    new-instance v1, Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-direct {v1}, Lcom/samsung/android/srib/vecmath/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->cam_vec:Lcom/samsung/android/srib/vecmath/Vector3f;

    new-instance v1, Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-direct {v1, v2, v2, v2}, Lcom/samsung/android/srib/vecmath/Vector3f;-><init>(FFF)V

    iput-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->c:Lcom/samsung/android/srib/vecmath/Vector3f;

    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mProjMatrix:[F

    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mVMatrix:[F

    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mTempMatrix:[F

    new-array v1, v6, [F

    iput-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->scaleMatrix:[F

    new-instance v1, Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-direct {v1}, Lcom/samsung/android/srib/vecmath/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    new-instance v1, Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-direct {v1}, Lcom/samsung/android/srib/vecmath/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    new-instance v1, Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-direct {v1}, Lcom/samsung/android/srib/vecmath/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    new-instance v1, Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-direct {v1}, Lcom/samsung/android/srib/vecmath/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->shiftedEye:Lcom/samsung/android/srib/vecmath/Vector3f;

    new-instance v1, Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-direct {v1}, Lcom/samsung/android/srib/vecmath/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rotatedLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    new-instance v1, Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-direct {v1}, Lcom/samsung/android/srib/vecmath/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->cam_rot:Lcom/samsung/android/srib/vecmath/Vector3f;

    new-instance v1, Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-direct {v1}, Lcom/samsung/android/srib/vecmath/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg1:I

    const v1, 0x3c23d70a    # 0.01f

    iput v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->Tour_Speed:F

    iput v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->Turn_Angle:F

    iput v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->angle_rot:F

    iput v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->Pan_X:F

    iput v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->Pan_Y:F

    iput-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentTransition:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    iput-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_onRendererChangeListener:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$onRendererChangeListener;

    iput-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->onImageChangedRunnable:Ljava/lang/Runnable;

    iput-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->onTourReadyRunnable:Ljava/lang/Runnable;

    iput-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->onAutoModeStateChangedRunnable:Ljava/lang/Runnable;

    iput-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->onPositionChangedRunnable:Ljava/lang/Runnable;

    iput v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pan_deltaX:F

    iput v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pan_deltaY:F

    sget-object v1, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$DrawCase;->Case7:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$DrawCase;

    iput-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->CurrentCase:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$DrawCase;

    const-string/jumbo v1, "precision mediump float;uniform mat4 uMVPMatrix;attribute vec4 aPosition;attribute vec2 aTextureCoord;varying vec2 vTextureCoord;void main() {\tgl_Position = uMVPMatrix * aPosition;\tvTextureCoord = aTextureCoord;}"

    iput-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->path_vertex_shader:Ljava/lang/String;

    const-string/jumbo v1, "precision mediump float;varying vec2 vTextureCoord;uniform sampler2D sTexture;void main() {\tgl_FragColor = texture2D(sTexture, vTextureCoord);}"

    iput-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->path_normal_fragment_shader:Ljava/lang/String;

    const-string/jumbo v1, "precision mediump float;varying vec2 vTextureCoord;uniform sampler2D sTexture;uniform float utext_alpha_out;void main() {\tgl_FragColor = texture2D(sTexture, vTextureCoord);\tgl_FragColor.a = utext_alpha_out; }"

    iput-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->path_fragment_shader:Ljava/lang/String;

    const-string/jumbo v1, "precision mediump float;varying vec2 vTextureCoord;varying float vAlpha;uniform sampler2D sTexture;void main(){gl_FragColor = texture2D(sTexture, vTextureCoord);gl_FragColor.a = vAlpha;}"

    iput-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pano_fragment_shader:Ljava/lang/String;

    const-string/jumbo v1, "uniform float uBound1;uniform mat4 uMVPMatrix;uniform int uDirection;uniform float uAlpha_value;attribute vec4 aPosition;attribute vec2 aTextureCoord;varying vec2 vTextureCoord;varying float vAlpha;float func(float posx){ \tfloat ImageWidth = 10.0; \tfloat imageleft= -5.0;\tfloat imageright = 5.0; \tfloat Padding = 0.05 * ImageWidth;\tif(uDirection == 1)\t{\t\tif(posx >= uBound1)\t\t{\t\t\tif(imageright - uBound1 - 2.0*Padding <= 0.2)\t\t\t{\t\t\t\treturn 1.0 - smoothstep(uBound1, imageright, posx);\t\t\t}\t\t\tif (posx >= uBound1 + Padding && posx <= imageright - Padding)\t\t\t{\t\t\t\treturn uAlpha_value;\t\t\t}\t\t\telse if (posx > imageright - Padding)\t\t\t{\t\t\t\treturn uAlpha_value * (1.0 - smoothstep(imageright - Padding, imageright, posx));\t\t\t}\t\t\telse\t\t\t{\t\t\t\treturn uAlpha_value + (1.0 - uAlpha_value) * (1.0 - smoothstep(uBound1, uBound1 + Padding, posx));\t\t\t}\t\t}\t\telse \t\treturn 1.0;\t}\telse if (uDirection == 0 )\t{\t\tif(posx <= uBound1)\t\t{\t\t\tif(uBound1 - imageleft - 2.0*Padding <= 0.2)\t\t\t{\t\t\t\treturn smoothstep(imageleft, uBound1, posx);\t\t\t}\t\t\telse if(posx >= imageleft + Padding && posx <= uBound1 - Padding)\t\t\t{\t\t\t\treturn uAlpha_value;\t\t\t}\t\t\telse if(posx < imageleft + Padding)\t\t\t{\t\t\t\treturn uAlpha_value * smoothstep(imageleft, imageleft + Padding, posx);\t\t\t}\t\t\telse\t\t\t{\t\t\t\treturn uAlpha_value + (1.0 - uAlpha_value) * smoothstep(uBound1 - Padding, uBound1, posx);\t\t\t}\t\t}\t\telse\t\treturn 1.0;\t}}void main() {\tgl_Position = uMVPMatrix * aPosition;\tvTextureCoord = aTextureCoord;\tvAlpha = func(aPosition.x);}"

    iput-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pano_vertex_shader_normal:Ljava/lang/String;

    const-string/jumbo v1, "varying vec2 vTextureCoord;varying float vAlpha;uniform float uBound1;uniform int uDirection;uniform float uAlpha_value;uniform mat4 uMVPMatrix;attribute vec4 aPosition;attribute vec2 aTextureCoord;float func(float xpos){\tfloat ImageWidth = 10.0;\tfloat OverlapWidth = 2.0;\tfloat centre;\tfloat bl;\tfloat br;\tfloat bound = uBound1;\tfloat alpha = uAlpha_value;\tfloat imageleft= -5.0;\tfloat imageright = 5.0;\tfloat Padding = 0.05 * ImageWidth;\tif(uDirection == 1)\t{\t\tif(xpos >= bound)\t\t{\t\t\tbr = bound + (OverlapWidth);\t\t\tif( imageright - bound > OverlapWidth)\t\t\t{\t\t\t\timageright = br;\t\t\t}\t\t\tif(imageright - bound - 2.0*Padding <= 0.2)\t\t\t{\t\t\t\treturn 1.0 - smoothstep(bound, imageright, xpos);\t\t\t}\t\t\telse if (xpos >= bound + Padding && xpos <= imageright - Padding)\t\t\t{\t\t\t\treturn alpha;\t\t\t}\t\t\telse if (xpos > imageright - Padding)\t\t\t{\t\t\t\treturn alpha * (1.0 - smoothstep(imageright - Padding, imageright, xpos));\t\t\t}\t\t\telse\t\t\t{\t\t\t\treturn alpha + (1.0 - alpha) * (1.0 - smoothstep(bound, bound + Padding, xpos));\t\t\t}\t\t}\t\telse\t\t\treturn 1.0;\t}\telse if (uDirection == 0)\t{\t\tif(xpos <= bound)\t\t{\t\t\tbl = bound - (OverlapWidth);\t\t\tif( bound - imageleft > OverlapWidth)\t\t\t{\t\t\t\timageleft = bl;\t\t\t}\t\t\tif(bound - imageleft - 2.0*Padding <= 0.2)\t\t\t{\t\t\t\treturn smoothstep(imageleft, bound, xpos);\t\t\t}\t\t\telse if(xpos >= imageleft + Padding && xpos <= bound - Padding)\t\t\t{\t\t\t\treturn alpha;\t\t\t}\t\t\telse if(xpos < imageleft + Padding)\t\t\t{\t\t\t\treturn alpha * smoothstep(imageleft, imageleft + Padding, xpos);\t\t\t}\t\t\telse\t\t\t{\t\t\t\treturn alpha + (1.0 - alpha) * smoothstep(bound - Padding, bound, xpos);\t\t\t}\t\t}\t\telse\t\t\treturn 1.0;\t}}void main() {\tgl_Position = uMVPMatrix * aPosition;\tvTextureCoord = aTextureCoord;\tvAlpha = func(aPosition.x);}"

    iput-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pano_vertex_shader_triple:Ljava/lang/String;

    const-string/jumbo v1, "varying vec2 vTextureCoord;varying float vAlpha;uniform float uBound1;uniform float uBound2;uniform int uTurnNumber;uniform int uDirection;uniform sampler2D sTexture;uniform float uAlpha_value;uniform mat4 uMVPMatrix;attribute vec4 aPosition;attribute vec2 aTextureCoord;float func(float xpos){\tfloat ImageWidth = 10.0;\tfloat OverlapWidth = 2.0;\tfloat bl;\tfloat br;\tfloat alpha;\tfloat alpha2;\tfloat imageleft = -5.0;\tfloat imageright = 5.0;\tfloat Padding = 0.05 * ImageWidth;\tif(uTurnNumber == 0)\t{\t\talpha = uAlpha_value;\t\talpha2 = 1.0;\t}\telse\t{\t\talpha = 1.0;\t\talpha2 = 1.0 - uAlpha_value;\t}\tif(uDirection == 1)\t{\t\tif(xpos >= uBound1)\t\t{\t\t\tbr = uBound1 + (OverlapWidth);\t\t\tif( imageright - uBound1 > OverlapWidth)\t\t\t{\t\t\t\timageright = br;\t\t\t}\t\t\tif(imageright - uBound1 - 2.0*Padding <= 0.2)\t\t\t{\t\t\t\treturn 1.0 - smoothstep(uBound1, imageright, xpos);\t\t\t}\t\t\telse if (xpos >= uBound1 + Padding && xpos <= imageright - Padding)\t\t\t{\t\t\t\treturn alpha;\t\t\t}\t\t\telse if (xpos > imageright - Padding)\t\t\t{\t\t\t\treturn alpha * (1.0 - smoothstep(imageright - Padding, imageright, xpos));\t\t\t}\t\t\telse\t\t\t{\t\t\t\treturn alpha + (1.0 - alpha) * (1.0 - smoothstep(uBound1, uBound1 + Padding, xpos));\t\t\t}\t\t}\t\telse if(xpos <= uBound2)\t\t{\t\t\tbl = uBound2 - (OverlapWidth);\t\t\tif( uBound2 - imageleft > OverlapWidth)\t\t\t{\t\t\t\timageleft = bl;\t\t\t}\t\t\tif(uBound2 - imageleft - 2.0*Padding <= 0.2)\t\t\t{\t\t\t\treturn smoothstep(imageleft, uBound2, xpos);\t\t\t}\t\t\telse if(xpos >= imageleft + Padding && xpos <= uBound2 - Padding)\t\t\t{\t\t\t\treturn alpha2;\t\t\t}\t\t\telse if(xpos < imageleft + Padding)\t\t\t{\t\t\t\treturn alpha2 * smoothstep(imageleft, imageleft + Padding, xpos);\t\t\t}\t\t\telse\t\t\t{\t\t\t\treturn alpha2 + (1.0 - alpha2) * smoothstep(uBound2 - Padding, uBound2, xpos);\t\t\t}\t\t}\t\telse\t\t\treturn 1.0;\t}\telse if (uDirection == 0)\t{\t\tif(xpos <= uBound1)\t\t{\t\t\tbl = uBound1 - (OverlapWidth);\t\t\tif( uBound1 - imageleft > OverlapWidth)\t\t\t{\t\t\t\timageleft = bl;\t\t\t}\t\t\tif(uBound1 - imageleft - 2.0*Padding <= 0.2)\t\t\t{\t\t\t\treturn smoothstep(imageleft, uBound1, xpos);\t\t\t}\t\t\telse if(xpos >= imageleft + Padding && xpos <= uBound1 - Padding)\t\t\t{\t\t\t\treturn alpha;\t\t\t}\t\t\telse if(xpos < imageleft + Padding)\t\t\t{\t\t\t\treturn alpha * smoothstep(imageleft, imageleft + Padding, xpos);\t\t\t}\t\t\telse\t\t\t{\t\t\t\treturn alpha + (1.0 - alpha) * smoothstep(uBound1 - Padding, uBound1, xpos);\t\t\t}\t\t}\t\telse if(xpos >= uBound2)\t\t{\t\t\tbr = uBound2 + (OverlapWidth);\t\t\tif( imageright - uBound2 > OverlapWidth)\t\t\t{\t\t\t\timageright = br;\t\t\t}\t\t\tif(imageright - uBound2 - 2.0*Padding <= 0.2)\t\t\t{\t\t\t\treturn 1.0 - smoothstep(uBound2, imageright, xpos);\t\t\t}\t\t\telse if (xpos >= uBound2 + Padding && xpos <= imageright - Padding)\t\t\t{\t\t\t\treturn alpha2;\t\t\t}\t\t\telse if (xpos > imageright - Padding)\t\t\t{\t\t\t\treturn alpha2 * (1.0 - smoothstep(imageright - Padding, imageright, xpos));\t\t\t}\t\t\telse\t\t\t{\t\t\t\treturn alpha2 + (1.0 - alpha2) * (1.0 - smoothstep(uBound2, uBound2 + Padding, xpos));\t\t\t}\t\t}\t\telse\t\t\treturn 1.0;\t}}void main() {\tgl_Position = uMVPMatrix * aPosition;\tvTextureCoord = aTextureCoord;\tvAlpha = func(aPosition.x);}"

    iput-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pano_vertex_shader_last:Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$1;-><init>(Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;)V

    iput-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->H_Runnable:Ljava/lang/Runnable;

    const/4 v1, 0x4

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->empty:[Z

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    new-array v1, p3, [Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iput-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iput-object p1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mContext:Landroid/content/Context;

    iput p4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->captureOrientation:I

    iput p3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->numImages:I

    iput-object p2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mCImageProvider:Lcom/samsung/android/srib/virtualtourAPI/ImageProvider;

    new-instance v1, Landroid/opengl/GLSurfaceView;

    invoke-direct {v1, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_GLView:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_GLView:Landroid/opengl/GLSurfaceView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_GLView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1, v5}, Landroid/opengl/GLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_GLView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1, p0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_GLView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1, v4}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_GLView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0, v1}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->addView(Landroid/view/View;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/android/srib/virtualtourRenderer/ImageProducer;

    invoke-direct {v2, p0}, Lcom/samsung/android/srib/virtualtourRenderer/ImageProducer;-><init>(Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->empty:[Z

    aput-boolean v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private DrawCase1()V
    .locals 9

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getProgram()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mTempMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I3:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getModelMatrix()[F

    move-result-object v4

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getMVPHandle()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    invoke-static {v0, v6, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg3:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTextureHandle()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setTextureHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg3:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getPositionHandle()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setPositionHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg3:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->render()V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mTempMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I0:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getModelMatrix()[F

    move-result-object v4

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getMVPHandle()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    invoke-static {v0, v6, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg0:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTextureHandle()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setTextureHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg0:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getPositionHandle()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setPositionHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg0:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->render()V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getProgram()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mTempMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getModelMatrix()[F

    move-result-object v4

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getMVPHandle()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    invoke-static {v0, v6, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTurnAlphaHandle()I

    move-result v0

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getBoundHandle1()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getBound()F

    move-result v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTurnDirectionHandle()I

    move-result v2

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I0:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransitionAmount()F

    move-result v0

    cmpg-float v0, v0, v8

    if-gez v0, :cond_0

    move v0, v6

    :goto_0
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg1:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getPositionHandle()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setPositionHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg1:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTextureHandle()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setTextureHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg1:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->render()V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_LAST:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getProgram()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mTempMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getModelMatrix()[F

    move-result-object v4

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_LAST:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getMVPHandle()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    invoke-static {v0, v6, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransitionAmount()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->angle_temp:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_LAST:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTurnAlphaHandle()I

    move-result v2

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->Turn_Angle:F

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->angle_temp:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->Turn_Angle:F

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->angle_temp:F

    div-float/2addr v0, v3

    :goto_1
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_LAST:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getBoundHandle1()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getBound()F

    move-result v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_LAST:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getBoundHandle2()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I3:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getBound()F

    move-result v2

    neg-float v2, v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_LAST:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTurnNumberHandle()I

    move-result v0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_LAST:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTurnDirectionHandle()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransitionAmount()F

    move-result v2

    cmpg-float v2, v2, v8

    if-gez v2, :cond_2

    :goto_2
    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg2:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_LAST:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getPositionHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setPositionHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg2:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_LAST:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTextureHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setTextureHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg2:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->render()V

    return-void

    :cond_0
    move v0, v1

    goto/16 :goto_0

    :cond_1
    move v0, v7

    goto :goto_1

    :cond_2
    move v6, v1

    goto :goto_2
.end method

.method private DrawCase2()V
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getProgram()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mTempMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getModelMatrix()[F

    move-result-object v4

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getMVPHandle()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    invoke-static {v0, v6, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg1:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTextureHandle()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setTextureHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg1:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getPositionHandle()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setPositionHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg1:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->render()V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mTempMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I3:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getModelMatrix()[F

    move-result-object v4

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getMVPHandle()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    invoke-static {v0, v6, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg3:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTextureHandle()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setTextureHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg3:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getPositionHandle()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setPositionHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg3:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->render()V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_LAST:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getProgram()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mTempMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getModelMatrix()[F

    move-result-object v4

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_LAST:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getMVPHandle()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    invoke-static {v0, v6, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransitionAmount()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->angle_temp:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_LAST:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTurnAlphaHandle()I

    move-result v2

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->Turn_Angle:F

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->angle_temp:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->Turn_Angle:F

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->angle_temp:F

    div-float/2addr v0, v3

    :goto_0
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_LAST:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getBoundHandle1()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getBound()F

    move-result v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_LAST:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getBoundHandle2()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I3:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getBound()F

    move-result v2

    neg-float v2, v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_LAST:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTurnNumberHandle()I

    move-result v0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_LAST:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTurnDirectionHandle()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransitionAmount()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    move v1, v6

    :cond_0
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg2:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_LAST:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getPositionHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setPositionHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg2:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_LAST:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTextureHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setTextureHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg2:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->render()V

    return-void

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private DrawCase3()V
    .locals 9

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getProgram()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mTempMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I0:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getModelMatrix()[F

    move-result-object v4

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getMVPHandle()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    invoke-static {v0, v6, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg0:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTextureHandle()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setTextureHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg0:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getPositionHandle()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setPositionHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg0:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->render()V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getProgram()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mTempMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getModelMatrix()[F

    move-result-object v4

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getMVPHandle()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    invoke-static {v0, v6, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTurnAlphaHandle()I

    move-result v0

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getBoundHandle1()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getBound()F

    move-result v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTurnDirectionHandle()I

    move-result v2

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I0:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransitionAmount()F

    move-result v0

    cmpg-float v0, v0, v8

    if-gez v0, :cond_0

    move v0, v6

    :goto_0
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg1:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getPositionHandle()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setPositionHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg1:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTextureHandle()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setTextureHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg1:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->render()V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mTempMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getModelMatrix()[F

    move-result-object v4

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getMVPHandle()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    invoke-static {v0, v6, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransitionAmount()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->angle_temp:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTurnAlphaHandle()I

    move-result v2

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->Turn_Angle:F

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->angle_temp:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->Turn_Angle:F

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->angle_temp:F

    div-float/2addr v0, v3

    :goto_1
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getBoundHandle1()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getBound()F

    move-result v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTurnDirectionHandle()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransitionAmount()F

    move-result v2

    cmpg-float v2, v2, v8

    if-gez v2, :cond_2

    :goto_2
    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg2:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getPositionHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setPositionHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg2:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTextureHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setTextureHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg2:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->render()V

    return-void

    :cond_0
    move v0, v1

    goto/16 :goto_0

    :cond_1
    move v0, v7

    goto :goto_1

    :cond_2
    move v6, v1

    goto :goto_2
.end method

.method private DrawCase4()V
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getProgram()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mTempMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getModelMatrix()[F

    move-result-object v4

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getMVPHandle()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    invoke-static {v0, v6, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg1:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTextureHandle()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setTextureHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg1:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getPositionHandle()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setPositionHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg1:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->render()V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getProgram()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mTempMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getModelMatrix()[F

    move-result-object v4

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getMVPHandle()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    invoke-static {v0, v6, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransitionAmount()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->angle_temp:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTurnAlphaHandle()I

    move-result v2

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->Turn_Angle:F

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->angle_temp:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->Turn_Angle:F

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->angle_temp:F

    div-float/2addr v0, v3

    :goto_0
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getBoundHandle1()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getBound()F

    move-result v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTurnDirectionHandle()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransitionAmount()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    move v1, v6

    :cond_0
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg2:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getPositionHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setPositionHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg2:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTextureHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setTextureHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg2:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->render()V

    return-void

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private DrawCase5()V
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getProgram()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mTempMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I0:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getModelMatrix()[F

    move-result-object v4

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getMVPHandle()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    invoke-static {v0, v6, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg0:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTextureHandle()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setTextureHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg0:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getPositionHandle()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setPositionHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg0:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->render()V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mTempMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getModelMatrix()[F

    move-result-object v4

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getMVPHandle()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    invoke-static {v0, v6, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg2:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTextureHandle()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setTextureHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg2:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getPositionHandle()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setPositionHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg2:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->render()V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_LAST:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getProgram()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mTempMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getModelMatrix()[F

    move-result-object v4

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_LAST:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getMVPHandle()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    invoke-static {v0, v6, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransitionAmount()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->angle_temp:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_LAST:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTurnAlphaHandle()I

    move-result v2

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->Turn_Angle:F

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->angle_temp:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->Turn_Angle:F

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->angle_temp:F

    div-float/2addr v0, v3

    :goto_0
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_LAST:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getBoundHandle1()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getBound()F

    move-result v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_LAST:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getBoundHandle2()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getBound()F

    move-result v2

    neg-float v2, v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_LAST:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTurnNumberHandle()I

    move-result v0

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_LAST:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTurnDirectionHandle()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I0:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransitionAmount()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    move v1, v6

    :cond_0
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg1:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_LAST:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getPositionHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setPositionHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg1:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_LAST:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTextureHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setTextureHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg1:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->render()V

    return-void

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private DrawCase6()V
    .locals 9

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getProgram()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mTempMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I0:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getModelMatrix()[F

    move-result-object v4

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getMVPHandle()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    invoke-static {v0, v6, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg0:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTextureHandle()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setTextureHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg0:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getPositionHandle()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setPositionHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg0:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->render()V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getProgram()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mTempMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getModelMatrix()[F

    move-result-object v4

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getMVPHandle()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    invoke-static {v0, v6, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTurnAlphaHandle()I

    move-result v0

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getBoundHandle1()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getBound()F

    move-result v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTurnDirectionHandle()I

    move-result v2

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I0:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransitionAmount()F

    move-result v0

    cmpg-float v0, v0, v8

    if-gez v0, :cond_0

    move v0, v6

    :goto_0
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg1:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getPositionHandle()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setPositionHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg1:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTextureHandle()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setTextureHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg1:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->render()V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getProgram()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mTempMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getModelMatrix()[F

    move-result-object v4

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getMVPHandle()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    invoke-static {v0, v6, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransitionAmount()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->angle_temp:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTurnAlphaHandle()I

    move-result v2

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->Turn_Angle:F

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->angle_temp:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->Turn_Angle:F

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->angle_temp:F

    div-float/2addr v0, v3

    :goto_1
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getBoundHandle1()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getBound()F

    move-result v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTurnDirectionHandle()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransitionAmount()F

    move-result v2

    cmpg-float v2, v2, v8

    if-gez v2, :cond_2

    :goto_2
    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg2:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getPositionHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setPositionHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg2:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTextureHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setTextureHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg2:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->render()V

    return-void

    :cond_0
    move v0, v1

    goto/16 :goto_0

    :cond_1
    move v0, v7

    goto :goto_1

    :cond_2
    move v6, v1

    goto :goto_2
.end method

.method private DrawCase7()V
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getProgram()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mTempMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getModelMatrix()[F

    move-result-object v4

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getMVPHandle()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    invoke-static {v0, v6, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg1:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTextureHandle()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setTextureHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg1:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getPositionHandle()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setPositionHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg1:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->render()V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getProgram()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mTempMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getModelMatrix()[F

    move-result-object v4

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getMVPHandle()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    invoke-static {v0, v6, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransitionAmount()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->angle_temp:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTurnAlphaHandle()I

    move-result v2

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->Turn_Angle:F

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->angle_temp:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->Turn_Angle:F

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->angle_temp:F

    div-float/2addr v0, v3

    :goto_0
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getBoundHandle1()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getBound()F

    move-result v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTurnDirectionHandle()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransitionAmount()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    move v1, v6

    :cond_0
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg2:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getPositionHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setPositionHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg2:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTextureHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setTextureHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg2:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->render()V

    return-void

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_Handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;)Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$onRendererChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_onRendererChangeListener:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$onRendererChangeListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg1:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->autoMode:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->curTime:F

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->maxSeekBarTime:I

    return v0
.end method

.method private checkGlError(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TAG:Ljava/lang/String;

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

.method private setRenderingImages(II)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg1:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg1:I

    iput p2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg2:I

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg1:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg2:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentTransition:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_onRendererChangeListener:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$onRendererChangeListener;

    if-nez v0, :cond_1

    :goto_1
    if-gtz p1, :cond_2

    iput v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg0:I

    iput-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I0:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    :goto_2
    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->numImages:I

    add-int/lit8 v0, v0, -0x1

    if-lt p2, v0, :cond_3

    iput v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg3:I

    iput-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I3:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    :goto_3
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->isTripleRender()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$DrawCase;->Case7:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$DrawCase;

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->CurrentCase:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$DrawCase;

    :goto_4
    invoke-direct {p0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->updateVectors()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_Handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->onImageChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg0:I

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg0:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I0:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    goto :goto_2

    :cond_3
    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg3:I

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg3:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I3:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->isLastinTurn()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    iget-boolean v0, v0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->Valid:Z

    if-nez v0, :cond_e

    sget-object v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$DrawCase;->Case6:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$DrawCase;

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->CurrentCase:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$DrawCase;

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->isLastinTurn()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I0:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    if-nez v0, :cond_d

    :cond_6
    sget-object v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$DrawCase;->Case4:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$DrawCase;

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->CurrentCase:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$DrawCase;

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    iget-boolean v0, v0, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->Valid:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I0:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    if-nez v0, :cond_c

    :cond_8
    sget-object v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$DrawCase;->Case4:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$DrawCase;

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->CurrentCase:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$DrawCase;

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I0:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    if-nez v0, :cond_b

    :cond_a
    sget-object v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$DrawCase;->Case2:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$DrawCase;

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->CurrentCase:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$DrawCase;

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I0:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->WALK:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I0:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->isLastinTurn()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I0:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->isTripleRender()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$DrawCase;->Case1:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$DrawCase;

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->CurrentCase:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$DrawCase;

    goto/16 :goto_4

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I0:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->WALK:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I0:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->isLastinTurn()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I0:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->isTripleRender()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$DrawCase;->Case3:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$DrawCase;

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->CurrentCase:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$DrawCase;

    goto/16 :goto_4

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I0:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->WALK:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I0:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->isLastinTurn()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I0:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->isTripleRender()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$DrawCase;->Case3:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$DrawCase;

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->CurrentCase:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$DrawCase;

    goto/16 :goto_4

    :cond_e
    sget-object v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$DrawCase;->Case5:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$DrawCase;

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->CurrentCase:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$DrawCase;

    goto/16 :goto_4
.end method

.method private updateVectors()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentTransition:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->WALK:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->shiftedEye:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->shiftedEye:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->shiftedEye:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-virtual {v0}, Lcom/samsung/android/srib/vecmath/Vector3f;->normalize()V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I0:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I0:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    if-nez v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I0:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    if-nez v0, :cond_8

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-virtual {v0}, Lcom/samsung/android/srib/vecmath/Vector3f;->length()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2Distance:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-virtual {v0}, Lcom/samsung/android/srib/vecmath/Vector3f;->normalize()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I0:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->ZOOM_NO_HOLES:F

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rateofBlend:F

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->ZOOM_NO_HOLES:F

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rateofBlend:F

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->ZOOM_NO_HOLES:F

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rateofBlend:F

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-virtual {v0}, Lcom/samsung/android/srib/vecmath/Vector3f;->length()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2Distance:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-virtual {v0}, Lcom/samsung/android/srib/vecmath/Vector3f;->normalize()V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I0:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->ZOOM_NO_HOLES:F

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rateofBlend:F

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->ZOOM_NO_HOLES:F

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rateofBlend:F

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->ZOOM_NO_HOLES:F

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rateofBlend:F

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-virtual {v0}, Lcom/samsung/android/srib/vecmath/Vector3f;->length()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2Distance:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-virtual {v0}, Lcom/samsung/android/srib/vecmath/Vector3f;->normalize()V

    goto/16 :goto_0

    :cond_6
    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg1:I

    if-gtz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-virtual {v0}, Lcom/samsung/android/srib/vecmath/Vector3f;->length()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2Distance:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-virtual {v0}, Lcom/samsung/android/srib/vecmath/Vector3f;->normalize()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rateofBlend:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rateofBlend:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rateofBlend:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-virtual {v0}, Lcom/samsung/android/srib/vecmath/Vector3f;->length()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2Distance:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-virtual {v0}, Lcom/samsung/android/srib/vecmath/Vector3f;->normalize()V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I0:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->WALK:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rateofBlend:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rateofBlend:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rateofBlend:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v2, v2, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-virtual {v0}, Lcom/samsung/android/srib/vecmath/Vector3f;->length()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2Distance:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-virtual {v0}, Lcom/samsung/android/srib/vecmath/Vector3f;->normalize()V

    goto/16 :goto_0
.end method


# virtual methods
.method public animateFovZoomIn()V
    .locals 3

    const/4 v2, 0x0

    :goto_0
    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mCurFOV:F

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->FOVY_MIN:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const v0, -0x40cccccd    # -0.7f

    invoke-virtual {p0, v0, v2, v2}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->setZoomIncrement(FFF)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-short v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->Cur_Mode:S

    return-void
.end method

.method public animateFovZoomOut()V
    .locals 3

    const/4 v2, 0x0

    :goto_0
    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mCurFOV:F

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->FOVY_MAX:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const v0, 0x3f333333    # 0.7f

    invoke-virtual {p0, v0, v2, v2}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->setZoomIncrement(FFF)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-short v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->Cur_Mode:S

    return-void
.end method

.method public declared-synchronized createTex(I)V
    .locals 6

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->empty:[Z

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->consumerBuffer:I

    aget-boolean v1, v1, v2

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->shared_img:[Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->consumerBuffer:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->createTexture(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->empty:[Z

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->consumerBuffer:I

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->consumerBuffer:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->consumerBuffer:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->numImages:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, -0x1

    if-eq p1, v1, :cond_1

    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[TIME] EngineTextureLoadTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->startTimeSurfaceCreated:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "LoadTime"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getAspectRatio()F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getAspectRatio()F

    move-result v0

    return v0
.end method

.method public getAutoMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->autoMode:Z

    return v0
.end method

.method public getCaptureOrientation()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->captureOrientation:I

    return v0
.end method

.method public getCurrentFOV()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mCurFOV:F

    return v0
.end method

.method public getImagePositions()[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getImagePos()[I

    move-result-object v0

    return-object v0
.end method

.method public getMaxFOV()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->FOVY_MAX:F

    return v0
.end method

.method public getMaxSeekTime()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->maxSeekBarTime:I

    return v0
.end method

.method public getMinFOV()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->FOVY_MIN:F

    return v0
.end method

.method public getSeekTime()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->seekBarTime:F

    return v0
.end method

.method public getTextures()[I
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->numImages:I

    new-array v1, v2, [I

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->numImages:I

    if-lt v0, v2, :cond_1

    return-object v1

    :cond_0
    return-object v3

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->getTextureID()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public init(Lcom/samsung/android/srib/virtualtourAPI/Scene;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getFOV_Y()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->FOVY_MAX:F

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->FOVY_MAX:F

    const/high16 v1, 0x41000000    # 8.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->FOVY_MIN:F

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->FOVY_MAX:F

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mCurFOV:F

    sget-object v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "#T -> init FOVY_MAX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->FOVY_MAX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_Handler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {p1}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getFocusPoint()F

    move-result v0

    neg-float v0, v0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->INITIAL_Z:F

    invoke-virtual {p1}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getBlendDistance()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rateofBlend:F

    invoke-virtual {p1}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getZoomNoHoles()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->ZOOM_NO_HOLES:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v0, v1, :cond_0

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_MRenderers:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_MRenderers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->setCurrentRenderer(I)Z

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getMaxSceneTime()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->maxSeekBarTime:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->setAutoMode(Z)V

    new-instance v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$4;-><init>(Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;)V

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->onImageChangedRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$5;-><init>(Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;)V

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->onTourReadyRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$6;-><init>(Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;)V

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->onAutoModeStateChangedRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$7;-><init>(Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;)V

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->onPositionChangedRunnable:Ljava/lang/Runnable;

    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->INITIAL_Z:F

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rateofBlend:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->ZOOM_NO_HOLES:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeZ:F

    goto :goto_0
.end method

.method public isAutoMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->autoMode:Z

    return v0
.end method

.method public isStopped()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->stopped:Z

    return v0
.end method

.method public isZoomed()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mCurFOV:F

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->FOVY_MAX:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public moveToImage(I)V
    .locals 2

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->numImages:I

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v1, v1, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getSceneTime()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->setCurrentTime(F)V

    goto :goto_0
.end method

.method public notifyThread(Z)V
    .locals 4

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->ThreadSuspended:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "threadsuspended = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->ThreadSuspended:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "debug"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->monitor:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->ThreadSuspended:Z

    if-eqz v2, :cond_1

    :goto_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    sget-object v2, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->monitor:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_Handler:Landroid/os/Handler;

    if-nez v1, :cond_1

    :goto_0
    iput-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_Handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    if-nez v1, :cond_2

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_Handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->H_Runnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->numImages:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->onDestroy()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 12

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_CurrentRenderer:Lcom/samsung/android/srib/virtualtourRenderer/MultiRenderer;

    if-ne v0, p0, :cond_1

    iget-short v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->Cur_Mode:S

    if-eq v0, v11, :cond_2

    :cond_0
    :goto_0
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mTempMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mProjMatrix:[F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mVMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentTransition:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    sget-object v2, Lcom/samsung/android/srib/virtualtourAPI/Transition;->WALK:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentTransition:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    sget-object v2, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v0, v2, :cond_6

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getProgram()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mTempMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getModelMatrix()[F

    move-result-object v4

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getMVPHandle()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    invoke-static {v0, v11, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg1:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getPositionHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setPositionHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg1:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTextureHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setTextureHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg1:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->render()V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_CurrentRenderer:Lcom/samsung/android/srib/virtualtourRenderer/MultiRenderer;

    invoke-interface {v0, p1}, Lcom/samsung/android/srib/virtualtourRenderer/MultiRenderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void

    :cond_2
    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->curTime:F

    invoke-virtual {p0, v0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->setTime(F)V

    iget-boolean v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->autoMode:Z

    if-nez v0, :cond_3

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mVMatrix:[F

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeX:F

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeY:F

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeZ:F

    sget v5, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->lookatX:F

    sget v6, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->lookatY:F

    sget v7, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->lookatZ:F

    move v10, v8

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_onRendererChangeListener:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$onRendererChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_Handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->onPositionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_3
    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->curTime:F

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->Tour_Speed:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->curTime:F

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->alpha:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getProgram()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mTempMatrix:[F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getModelMatrix()[F

    move-result-object v4

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getMVPHandle()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    invoke-static {v0, v11, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg2:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTextureHandle()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setTextureHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg2:I

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getPositionHandle()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setPositionHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg2:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->render()V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->FORWARD_ALPHA_BLEND:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getProgram()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->scaleMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getModelMatrix()[F

    move-result-object v2

    iget v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->scale:F

    move v3, v1

    move v4, v9

    move v6, v9

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->scaleM([FI[FIFFF)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mTempMatrix:[F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->scaleMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->FORWARD_ALPHA_BLEND:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getMVPHandle()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mMVPMatrix:[F

    invoke-static {v0, v11, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->FORWARD_ALPHA_BLEND:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getAlphaHandle()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->alpha:F

    sub-float v1, v9, v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg1:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->FORWARD_ALPHA_BLEND:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getPositionHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setPositionHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg1:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->FORWARD_ALPHA_BLEND:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;->getTextureHandle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->setTextureHandle(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg1:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->render()V

    goto/16 :goto_1

    :cond_6
    sget-object v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$8;->$SwitchMap$com$samsung$android$srib$virtualtourRenderer$RendererEngineView$DrawCase:[I

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->CurrentCase:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$DrawCase;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$DrawCase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->DrawCase7()V

    goto/16 :goto_1

    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->DrawCase1()V

    goto/16 :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->DrawCase2()V

    goto/16 :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->DrawCase3()V

    goto/16 :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->DrawCase4()V

    goto/16 :goto_1

    :pswitch_4
    invoke-direct {p0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->DrawCase5()V

    goto/16 :goto_1

    :pswitch_5
    invoke-direct {p0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->DrawCase6()V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onLoseCurrent(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->setAutoMode(Z)V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_GLView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->setAutoMode(Z)V

    const-string/jumbo v0, "ontouch"

    const-string/jumbo v1, "onPause called setfalsed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_GLView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    return-void
.end method

.method public onSetCurrent(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 8

    const/4 v1, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_MRenderers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    :goto_0
    if-lt v6, v7, :cond_0

    invoke-static {v1, v1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mProjMatrix:[F

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->FOVY_MAX:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getAspectRatio()F

    move-result v3

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->nearPlane:F

    iget v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->farPlane:F

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    const-string/jumbo v0, "onSurfaceChanged"

    const-string/jumbo v1, "Finished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_MRenderers:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/srib/virtualtourRenderer/MultiRenderer;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/srib/virtualtourRenderer/MultiRenderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 28

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->startTimeSurfaceCreated:J

    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_MRenderers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v26

    :goto_0
    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_0

    const/16 v2, 0xbe2

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v2, 0x302

    const/16 v3, 0x303

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/16 v2, 0xb71

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 v2, 0xb44

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v2, 0x404

    invoke-static {v2}, Landroid/opengl/GLES20;->glCullFace(I)V

    new-instance v2, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->path_vertex_shader:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->path_fragment_shader:Ljava/lang/String;

    sget-object v5, Lcom/samsung/android/srib/virtualtourAPI/Transition;->WALK:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/srib/virtualtourAPI/Transition;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->FORWARD_ALPHA_BLEND:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    new-instance v2, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pano_vertex_shader_normal:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pano_fragment_shader:Ljava/lang/String;

    sget-object v5, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/srib/virtualtourAPI/Transition;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    new-instance v2, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pano_vertex_shader_triple:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pano_fragment_shader:Ljava/lang/String;

    sget-object v5, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/srib/virtualtourAPI/Transition;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_NORMAL:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    new-instance v2, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pano_vertex_shader_last:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pano_fragment_shader:Ljava/lang/String;

    sget-object v5, Lcom/samsung/android/srib/virtualtourAPI/Transition;->HELPER:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/srib/virtualtourAPI/Transition;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->TURN_TRIPLE_LAST:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    new-instance v2, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->path_vertex_shader:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->path_normal_fragment_shader:Ljava/lang/String;

    sget-object v5, Lcom/samsung/android/srib/virtualtourAPI/Transition;->NA:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/srib/virtualtourAPI/Transition;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->SIMPLE:Lcom/samsung/android/srib/virtualtourRenderer/ProgramGenerator;

    const/16 v27, 0x0

    const/4 v6, 0x0

    const/16 v24, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->numImages:I

    move/from16 v0, v24

    if-lt v0, v2, :cond_1

    const/16 v24, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->numImages:I

    move/from16 v0, v24

    if-lt v0, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ThreadSuspended after image loading = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->ThreadSuspended:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "debug"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->ThreadSuspended:Z

    if-nez v2, :cond_3

    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    const-string/jumbo v2, "LoadTime"

    const-string/jumbo v3, "Engine mesh creation and processing started "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->numImages:I

    move/from16 v0, v24

    if-lt v0, v2, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Engine mesh creation and processing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v4, v20, v22

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "LoadTime"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_onRendererChangeListener:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$onRendererChangeListener;

    if-nez v2, :cond_c

    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->numImages:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v2, v4, :cond_d

    const/4 v2, 0x0

    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->setRenderingImages(II)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeX:F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeY:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentTransition:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    sget-object v3, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v2, v3, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->INITIAL_Z:F

    :goto_7
    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeZ:F

    const/4 v2, 0x0

    sput v2, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->lookatX:F

    const/4 v2, 0x0

    sput v2, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->lookatY:F

    const/4 v2, 0x0

    sput v2, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->lookatZ:F

    const-string/jumbo v2, "onSurfaceCreated"

    const-string/jumbo v3, "Finished"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_MRenderers:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/srib/virtualtourRenderer/MultiRenderer;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v2, v0, v1}, Lcom/samsung/android/srib/virtualtourRenderer/MultiRenderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    new-instance v3, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    invoke-direct {v3}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;-><init>()V

    aput-object v3, v2, v24

    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_1

    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->createTex(I)V

    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_2

    :cond_3
    const-string/jumbo v2, "debug"

    const-string/jumbo v3, "inside suspend"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v17, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->monitor:Ljava/lang/Object;

    monitor-enter v17

    :goto_8
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->ThreadSuspended:Z

    if-nez v2, :cond_4

    monitor-exit v17

    goto/16 :goto_3

    :catchall_0
    move-exception v18

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v18

    :cond_4
    :try_start_1
    sget-object v2, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->monitor:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    :catch_0
    move-exception v19

    :try_start_2
    invoke-virtual/range {v19 .. v19}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v2, v2, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    aget-object v2, v2, v24

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/srib/virtualtourAPI/Transition;->WALK:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-ne v2, v3, :cond_9

    :cond_6
    const/4 v2, 0x0

    cmpl-float v2, v6, v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v2, v2, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    aget-object v2, v2, v24

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getTotalTransitionAmount()F

    move-result v6

    :cond_7
    sub-float v7, v6, v27

    if-gtz v24, :cond_a

    :cond_8
    if-eqz v24, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    aget-object v8, v2, v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getImageSize()F

    move-result v10

    sget-object v11, Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;->FLAT:Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getImageWidth()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getImageHeight()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->captureOrientation:I

    move/from16 v16, v0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v16}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->createMesh([BFLcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;FFIII)V

    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v2, v2, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    aget-object v2, v2, v24

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransitionAmount()F

    move-result v2

    add-float v27, v27, v2

    :goto_a
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v2, v2, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    aget-object v2, v2, v24

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/srib/virtualtourAPI/Transition;->NA:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v2, v3, :cond_6

    const/16 v27, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    aget-object v8, v2, v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getImageSize()F

    move-result v10

    sget-object v11, Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;->FLAT:Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getImageWidth()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getImageHeight()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->captureOrientation:I

    move/from16 v16, v0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v16}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->createMesh([BFLcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;FFIII)V

    goto :goto_a

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v2, v2, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    add-int/lit8 v3, v24, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v2, v3, :cond_8

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->VTData:[Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    aget-object v2, v2, v24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v3, v3, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    aget-object v3, v3, v24

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getDepthMap()[B

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v4}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getImageSize()F

    move-result v4

    sget-object v5, Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;->DEPTHMAP:Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v8}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getImageWidth()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v9}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getImageHeight()I

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->captureOrientation:I

    invoke-virtual/range {v2 .. v10}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->createMesh([BFLcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;FFIII)V

    goto/16 :goto_9

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_Handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->onTourReadyRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_5

    :cond_d
    const/4 v2, 0x1

    goto/16 :goto_6

    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->INITIAL_Z:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rateofBlend:F

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->ZOOM_NO_HOLES:F

    add-float/2addr v2, v3

    goto/16 :goto_7
.end method

.method public onTouchAnimation(I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentTransition:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    sget-object v2, Lcom/samsung/android/srib/virtualtourAPI/Transition;->WALK:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentTransition:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    sget-object v2, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v1, v2, :cond_4

    :cond_0
    :goto_0
    invoke-virtual {p0, v6}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->setVelocity(I)V

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_onRendererChangeListener:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$onRendererChangeListener;

    if-nez v1, :cond_7

    :goto_1
    return-void

    :cond_1
    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->alpha:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->setVelocity(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {p0, v6}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->setAutoMode(Z)V

    :goto_2
    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->curTime:F

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getSceneTime()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->autoMode:Z

    if-nez v1, :cond_3

    :cond_2
    const-string/jumbo v1, "ontouch"

    const-string/jumbo v2, "onTouchAnimation automode false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->setAutoMode(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->requestRender()V

    goto :goto_2

    :cond_4
    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->curTime:F

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getSceneTime()F

    move-result v2

    add-int/lit8 v3, p1, -0x1

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->setVelocity(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {p0, v6}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->setAutoMode(Z)V

    :goto_3
    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->curTime:F

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getSceneTime()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    iget-boolean v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->autoMode:Z

    if-nez v1, :cond_6

    :cond_5
    const-string/jumbo v1, "ontouch"

    const-string/jumbo v2, "onTouchAnimation automode false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->setAutoMode(Z)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->requestRender()V

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_onRendererChangeListener:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$onRendererChangeListener;

    invoke-interface {v1}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$onRendererChangeListener;->onAnimationComplete()V

    goto :goto_1
.end method

.method public declared-synchronized put(Landroid/graphics/Bitmap;)V
    .locals 4

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->empty:[Z

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->producerBuffer:I

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->empty:[Z

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->producerBuffer:I

    const/4 v3, 0x0

    aput-boolean v3, v1, v2

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->shared_img:[Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->producerBuffer:I

    aput-object p1, v1, v2

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->producerBuffer:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->producerBuffer:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public registerRenderer(Lcom/samsung/android/srib/virtualtourRenderer/MultiRenderer;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_MRenderers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_MRenderers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public requestRender()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_GLView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method

.method public reset()V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->stopped:Z

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->numImages:I

    if-gt v0, v1, :cond_0

    invoke-direct {p0, v2, v2}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->setRenderingImages(II)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->INITIAL_Z:F

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeZ:F

    :goto_1
    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeX:F

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeY:F

    sput v3, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->lookatX:F

    sput v3, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->lookatY:F

    sput v3, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->lookatZ:F

    invoke-virtual {p0, v2}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->setSeekBarTime(I)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->setAutoMode(Z)V

    return-void

    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->setRenderingImages(II)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->INITIAL_Z:F

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rateofBlend:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->ZOOM_NO_HOLES:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeZ:F

    goto :goto_1
.end method

.method public declared-synchronized setAutoMode(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->autoMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->autoMode:Z

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_onRendererChangeListener:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$onRendererChangeListener;

    if-nez v0, :cond_1

    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->autoMode:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_Handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->H_Runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_Handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->onAutoModeStateChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    :goto_2
    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mCurFOV:F

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->FOVY_MAX:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    const v0, 0x3f333333    # 0.7f

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->setZoomIncrement(FFF)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    iput-short v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->Cur_Mode:S

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->setStopped(Z)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_Handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->H_Runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setCaptureOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->captureOrientation:I

    return-void
.end method

.method public setCurrentRenderer(I)Z
    .locals 4

    const/4 v3, 0x0

    if-gez p1, :cond_1

    :cond_0
    return v3

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_MRenderers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_CurrentRenderer:Lcom/samsung/android/srib/virtualtourRenderer/MultiRenderer;

    if-nez v2, :cond_2

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_MRenderers:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/srib/virtualtourRenderer/MultiRenderer;

    iput-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_CurrentRenderer:Lcom/samsung/android/srib/virtualtourRenderer/MultiRenderer;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_CurrentRenderer:Lcom/samsung/android/srib/virtualtourRenderer/MultiRenderer;

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_GLView:Landroid/opengl/GLSurfaceView;

    new-instance v3, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$3;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$3;-><init>(Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;Lcom/samsung/android/srib/virtualtourRenderer/MultiRenderer;)V

    invoke-virtual {v2, v3}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    const/4 v2, 0x1

    return v2

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_CurrentRenderer:Lcom/samsung/android/srib/virtualtourRenderer/MultiRenderer;

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_GLView:Landroid/opengl/GLSurfaceView;

    new-instance v3, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$2;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$2;-><init>(Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;Lcom/samsung/android/srib/virtualtourRenderer/MultiRenderer;)V

    invoke-virtual {v2, v3}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setCurrentTime(F)V
    .locals 6

    const/4 v0, 0x1

    iput-short v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->Cur_Mode:S

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mCurFOV:F

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->FOVY_MAX:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->FOVY_MAX:F

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mCurFOV:F

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mProjMatrix:[F

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mCurFOV:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getAspectRatio()F

    move-result v3

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->nearPlane:F

    iget v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->farPlane:F

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    :cond_0
    iput p1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->curTime:F

    return-void
.end method

.method public setOnRendererChangeListener(Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$onRendererChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->m_onRendererChangeListener:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$onRendererChangeListener;

    return-void
.end method

.method public setPanDisplacement(FF)V
    .locals 22

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mCurFOV:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->FOVY_MAX:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pan_deltaX:F

    const v3, 0x3c23d70a    # 0.01f

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pan_deltaX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pan_deltaY:F

    const v3, 0x3c23d70a    # 0.01f

    mul-float v3, v3, p1

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pan_deltaY:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getAspectRatio()F

    move-result v2

    float-to-double v2, v2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mCurFOV:F

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->tan(D)D

    move-result-wide v10

    mul-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    double-to-float v13, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getImageSize()F

    move-result v2

    float-to-double v2, v2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->INITIAL_Z:F

    float-to-double v10, v10

    float-to-double v0, v13

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->tan(D)D

    move-result-wide v20

    mul-double v10, v10, v20

    add-double/2addr v2, v10

    double-to-float v14, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pan_deltaX:F

    cmpl-float v2, v2, v14

    if-lez v2, :cond_1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pan_deltaX:F

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pan_deltaX:F

    neg-float v3, v14

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    neg-float v2, v14

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pan_deltaX:F

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getImageSize()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getAspectRatio()F

    move-result v3

    div-float v18, v2, v3

    move/from16 v0, v18

    float-to-double v2, v0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->INITIAL_Z:F

    float-to-double v10, v10

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mCurFOV:F

    const/high16 v19, 0x3f000000    # 0.5f

    mul-float v12, v12, v19

    float-to-double v0, v12

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->tan(D)D

    move-result-wide v20

    mul-double v10, v10, v20

    add-double/2addr v2, v10

    double-to-float v15, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pan_deltaY:F

    cmpl-float v2, v2, v15

    if-lez v2, :cond_3

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pan_deltaY:F

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pan_deltaY:F

    neg-float v3, v15

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    neg-float v2, v15

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pan_deltaY:F

    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pan_deltaX:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->Pan_X:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pan_deltaY:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->Pan_Y:F

    new-instance v17, Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-direct/range {v17 .. v17}, Lcom/samsung/android/srib/vecmath/Vector3f;-><init>()V

    sget v2, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->lookatX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeX:F

    sub-float/2addr v2, v3

    sget v3, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->lookatY:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeY:F

    sub-float/2addr v3, v10

    sget v10, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->lookatZ:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeZ:F

    sub-float/2addr v10, v11

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3, v10}, Lcom/samsung/android/srib/vecmath/Vector3f;->set(FFF)V

    new-instance v16, Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-direct/range {v16 .. v16}, Lcom/samsung/android/srib/vecmath/Vector3f;-><init>()V

    new-instance v2, Lcom/samsung/android/srib/vecmath/Vector3f;

    const/4 v3, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-direct {v2, v3, v10, v11}, Lcom/samsung/android/srib/vecmath/Vector3f;-><init>(FFF)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/srib/vecmath/Vector3f;->cross(Lcom/samsung/android/srib/vecmath/Vector3f;Lcom/samsung/android/srib/vecmath/Vector3f;)V

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/srib/vecmath/Vector3f;->normalize()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeX:F

    move-object/from16 v0, v16

    iget v3, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pan_deltaX:F

    mul-float/2addr v3, v10

    add-float v4, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeY:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pan_deltaY:F

    add-float v5, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeZ:F

    move-object/from16 v0, v16

    iget v3, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pan_deltaX:F

    mul-float/2addr v3, v10

    add-float v6, v2, v3

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/srib/vecmath/Vector3f;->normalize()V

    move-object/from16 v0, v17

    iget v2, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    add-float v7, v4, v2

    move-object/from16 v0, v17

    iget v2, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    add-float v8, v5, v2

    move-object/from16 v0, v17

    iget v2, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    add-float v9, v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mVMatrix:[F

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-short v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->Cur_Mode:S

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->requestRender()V

    return-void
.end method

.method public setSeekBarTime(I)V
    .locals 3

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->maxSeekBarTime:I

    if-ge p1, v1, :cond_0

    int-to-float v1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float v0, v1, v2

    invoke-virtual {p0, v0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->setCurrentTime(F)V

    invoke-virtual {p0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->requestRender()V

    goto :goto_0
.end method

.method public setSpeed(I)V
    .locals 2

    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->Tour_Speed:F

    return-void
.end method

.method public setStopped(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->stopped:Z

    return-void
.end method

.method public setTime(F)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getImageCount()I

    move-result v3

    if-lt v1, v3, :cond_0

    :goto_1
    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getImageCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt v1, v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getImageCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_15

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v3, v3, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getSceneTime()F

    move-result v3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v3, v3, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getSceneTime()F

    move-result v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->RenderImg1:I

    if-ne v3, v1, :cond_3

    :goto_3
    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentTransition:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    sget-object v4, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentTransition:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    sget-object v4, Lcom/samsung/android/srib/virtualtourAPI/Transition;->WALK:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v3, v4, :cond_5

    const-string/jumbo v3, "stop"

    const-string/jumbo v4, "entered stop"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->stopped:Z

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->setRenderingImages(II)V

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getSceneTime()F

    move-result v3

    sub-float v3, p1, v3

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v4}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getSceneTime()F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v5}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getSceneTime()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->relativePos:F

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->relativePos:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v4}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransitionAmount()F

    move-result v4

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->relativeRotation:F

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->relativeRotation:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->Turn_Angle:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rotatedLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->shiftedEye:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    float-to-double v4, v4

    iget v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->relativeRotation:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    iget-object v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->shiftedEye:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v6, v6, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    float-to-double v6, v6

    iget v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->relativeRotation:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rotatedLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->shiftedEye:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iput v4, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rotatedLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->shiftedEye:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    float-to-double v4, v4

    iget v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->relativeRotation:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    iget-object v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->shiftedEye:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v6, v6, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    float-to-double v6, v6

    iget v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->relativeRotation:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rotatedLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-virtual {v3}, Lcom/samsung/android/srib/vecmath/Vector3f;->normalize()V

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rotatedLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->ZOOM_NO_HOLES:F

    iget v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rateofBlend:F

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeX:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rotatedLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->ZOOM_NO_HOLES:F

    iget v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rateofBlend:F

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeY:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rotatedLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->ZOOM_NO_HOLES:F

    iget v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rateofBlend:F

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeZ:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rotatedLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeX:F

    add-float/2addr v3, v4

    sput v3, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->lookatX:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rotatedLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeY:F

    add-float/2addr v3, v4

    sput v3, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->lookatY:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rotatedLookAt:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeZ:F

    add-float/2addr v3, v4

    sput v3, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->lookatZ:F

    goto/16 :goto_1

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getSceneTime()F

    move-result v3

    sub-float v3, p1, v3

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v4}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getSceneTime()F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v5}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getSceneTime()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->relativePos:F

    if-gtz v1, :cond_b

    :cond_6
    if-gtz v1, :cond_c

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v3, v4, :cond_d

    if-gtz v1, :cond_f

    :cond_8
    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2Distance:F

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rateofBlend:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->relativePos:F

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentCameraMag:F

    :goto_4
    if-gtz v1, :cond_10

    :cond_9
    if-gtz v1, :cond_12

    :cond_a
    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->relativePos:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v4}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getSyBysx()F

    move-result v4

    sub-float v4, v8, v4

    mul-float/2addr v3, v4

    sub-float v3, v8, v3

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->scale:F

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentCameraMag:F

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2Distance:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_14

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentCameraMag:F

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2Distance:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rateofBlend:F

    div-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->alpha:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentCameraMag:F

    iget v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2Distance:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeX:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentCameraMag:F

    iget v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2Distance:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeY:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentCameraMag:F

    iget v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2Distance:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeZ:F

    :goto_5
    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeX:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    add-float/2addr v3, v4

    sput v3, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->lookatX:F

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeY:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    add-float/2addr v3, v4

    sput v3, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->lookatY:F

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeZ:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    add-float/2addr v3, v4

    sput v3, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->lookatZ:F

    goto/16 :goto_1

    :cond_b
    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v3, v3, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    add-int/lit8 v4, v1, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-ne v3, v4, :cond_6

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2Distance:F

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rateofBlend:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->ZOOM_NO_HOLES:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->relativePos:F

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentCameraMag:F

    goto/16 :goto_4

    :cond_c
    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v3, v3, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    add-int/lit8 v4, v1, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-eq v3, v4, :cond_7

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2Distance:F

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rateofBlend:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->relativePos:F

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentCameraMag:F

    goto/16 :goto_4

    :cond_d
    if-gtz v1, :cond_e

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2Distance:F

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->ZOOM_NO_HOLES:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rateofBlend:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->relativePos:F

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentCameraMag:F

    goto/16 :goto_4

    :cond_e
    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2Distance:F

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rateofBlend:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->ZOOM_NO_HOLES:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->relativePos:F

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentCameraMag:F

    goto/16 :goto_4

    :cond_f
    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v3, v3, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    add-int/lit8 v4, v1, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/srib/virtualtourAPI/Transition;->WALK:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-ne v3, v4, :cond_8

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2Distance:F

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rateofBlend:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->relativePos:F

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentCameraMag:F

    goto/16 :goto_4

    :cond_10
    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v3, v3, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    add-int/lit8 v4, v1, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-ne v3, v4, :cond_9

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->relativePos:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v4}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getSyBysx()F

    move-result v4

    sub-float v4, v8, v4

    mul-float/2addr v3, v4

    sub-float v3, v8, v3

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->scale:F

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentCameraMag:F

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2Distance:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_11

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentCameraMag:F

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2Distance:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rateofBlend:F

    div-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->alpha:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentCameraMag:F

    iget v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2Distance:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeX:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentCameraMag:F

    iget v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2Distance:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeY:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentCameraMag:F

    iget v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2Distance:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeZ:F

    goto/16 :goto_5

    :cond_11
    iput v10, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->alpha:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentCameraMag:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeX:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentCameraMag:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeY:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentCameraMag:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeZ:F

    goto/16 :goto_5

    :cond_12
    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v3, v3, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    add-int/lit8 v4, v1, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/srib/virtualtourAPI/Transition;->WALK:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-ne v3, v4, :cond_a

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->relativePos:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v4}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getSyBysx()F

    move-result v4

    sub-float v4, v8, v4

    mul-float/2addr v3, v4

    sub-float v3, v8, v3

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->scale:F

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentCameraMag:F

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2Distance:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_13

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentCameraMag:F

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2Distance:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rateofBlend:F

    div-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->alpha:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentCameraMag:F

    iget v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2Distance:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeX:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentCameraMag:F

    iget v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2Distance:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeY:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I2:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->actualDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentCameraMag:F

    iget v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2Distance:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeZ:F

    goto/16 :goto_5

    :cond_13
    iput v10, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->alpha:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentCameraMag:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeX:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentCameraMag:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeY:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1PseudoFocal:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentCameraMag:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeZ:F

    goto/16 :goto_5

    :cond_14
    iput v10, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->alpha:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentCameraMag:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeX:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentCameraMag:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeY:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->f1f2:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentCameraMag:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeZ:F

    goto/16 :goto_5

    :cond_15
    invoke-direct {p0, v1, v7}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->setRenderingImages(II)V

    if-gtz v1, :cond_17

    :cond_16
    if-gtz v1, :cond_18

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v4}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v4

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v5}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v5

    iget v5, v5, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v4}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v4

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v5}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v5

    iget v5, v5, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v4}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v4

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v5}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v5

    iget v5, v5, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-virtual {v3}, Lcom/samsung/android/srib/vecmath/Vector3f;->normalize()V

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getSceneTime()F

    move-result v3

    sub-float v3, p1, v3

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v4}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getStepTime()F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v5}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransitionAmount()F

    move-result v5

    mul-float/2addr v4, v5

    div-float v2, v3, v4

    cmpg-float v3, v2, v8

    if-gez v3, :cond_1a

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransitionAmount()F

    move-result v3

    mul-float/2addr v3, v2

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v4}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getStepSize()F

    move-result v4

    mul-float v0, v3, v4

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeX:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeY:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeZ:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    sput v3, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->lookatX:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    sput v3, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->lookatY:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    sput v3, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->lookatZ:F

    goto/16 :goto_2

    :cond_17
    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v3, v3, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    add-int/lit8 v4, v1, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransition()Lcom/samsung/android/srib/virtualtourAPI/Transition;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/srib/virtualtourAPI/Transition;->TURN:Lcom/samsung/android/srib/virtualtourAPI/Transition;

    if-ne v3, v4, :cond_16

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v4}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v4

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v5}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v5

    iget v5, v5, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v4}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v4

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v5}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v5

    iget v5, v5, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v4}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v4

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v5}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v5

    iget v5, v5, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-virtual {v3}, Lcom/samsung/android/srib/vecmath/Vector3f;->normalize()V

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rateofBlend:F

    iget v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->ZOOM_NO_HOLES:F

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeX:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rateofBlend:F

    iget v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->ZOOM_NO_HOLES:F

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeY:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rateofBlend:F

    iget v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->ZOOM_NO_HOLES:F

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeZ:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    sput v3, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->lookatX:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    sput v3, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->lookatY:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    sput v3, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->lookatZ:F

    iput-boolean v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->stopped:Z

    goto/16 :goto_2

    :cond_18
    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v4}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v4

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v5}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v5

    iget v5, v5, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v4}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v4

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v5}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v5

    iget v5, v5, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v4}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v4

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v5}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v5

    iget v5, v5, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-virtual {v3}, Lcom/samsung/android/srib/vecmath/Vector3f;->normalize()V

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getSceneTime()F

    move-result v3

    sub-float v3, p1, v3

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v4}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getStepTime()F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v5}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransitionAmount()F

    move-result v5

    mul-float/2addr v4, v5

    div-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->relativePos:F

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->relativePos:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v4}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransitionAmount()F

    move-result v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v4}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getStepSize()F

    move-result v4

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->forwardMovement:F

    iget v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->relativePos:F

    cmpg-float v3, v3, v8

    if-gez v3, :cond_19

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rateofBlend:F

    iget v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->forwardMovement:F

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeX:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rateofBlend:F

    iget v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->forwardMovement:F

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeY:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rateofBlend:F

    iget v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->forwardMovement:F

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeZ:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    sput v3, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->lookatX:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    sput v3, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->lookatY:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    sput v3, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->lookatZ:F

    goto/16 :goto_2

    :cond_19
    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rateofBlend:F

    iget v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->forwardMovement:F

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeX:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rateofBlend:F

    iget v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->forwardMovement:F

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeY:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->rateofBlend:F

    iget v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->forwardMovement:F

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeZ:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    sput v3, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->lookatX:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    sput v3, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->lookatY:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    sput v3, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->lookatZ:F

    iput-boolean v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->stopped:Z

    goto/16 :goto_2

    :cond_1a
    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getNextTransitionAmount()F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v4}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getStepSize()F

    move-result v4

    mul-float v0, v3, v4

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeX:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeY:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getFocalPoint()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    iget-object v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->viewDirection:Lcom/samsung/android/srib/vecmath/Vector3f;

    iget v4, v4, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeZ:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    sput v3, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->lookatX:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    sput v3, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->lookatY:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->I1:Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    invoke-virtual {v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageNode;->getLookAt()Lcom/samsung/android/srib/vecmath/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    sput v3, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->lookatZ:F

    iput-boolean v9, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->stopped:Z

    goto/16 :goto_2
.end method

.method public setVelocity(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->setSpeed(I)V

    return-void
.end method

.method public setZoomIncrement(FFF)V
    .locals 18

    const v2, 0x3b03126f    # 0.002f

    mul-float p1, p1, v2

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mCurFOV:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->FOVY_MAX:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mCurFOV:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->FOVY_MIN:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3

    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_3

    :cond_1
    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mCurFOV:F

    add-float v2, v2, p1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mCurFOV:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mCurFOV:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->FOVY_MAX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->FOVY_MAX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mCurFOV:F

    sub-float/2addr v2, v3

    add-float p1, p1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->FOVY_MAX:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mCurFOV:F

    :cond_4
    :goto_1
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_a

    new-instance v17, Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-direct/range {v17 .. v17}, Lcom/samsung/android/srib/vecmath/Vector3f;-><init>()V

    sget v2, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->lookatX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeX:F

    sub-float/2addr v2, v3

    sget v3, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->lookatY:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeY:F

    sub-float/2addr v3, v10

    sget v10, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->lookatZ:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeZ:F

    sub-float/2addr v10, v11

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3, v10}, Lcom/samsung/android/srib/vecmath/Vector3f;->set(FFF)V

    new-instance v16, Lcom/samsung/android/srib/vecmath/Vector3f;

    invoke-direct/range {v16 .. v16}, Lcom/samsung/android/srib/vecmath/Vector3f;-><init>()V

    new-instance v2, Lcom/samsung/android/srib/vecmath/Vector3f;

    const/4 v3, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-direct {v2, v3, v10, v11}, Lcom/samsung/android/srib/vecmath/Vector3f;-><init>(FFF)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/srib/vecmath/Vector3f;->cross(Lcom/samsung/android/srib/vecmath/Vector3f;Lcom/samsung/android/srib/vecmath/Vector3f;)V

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/srib/vecmath/Vector3f;->normalize()V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pan_deltaX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->Pan_X:F

    mul-float v3, v3, p1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->FOVY_MAX:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->FOV_min_2:F

    sub-float/2addr v10, v11

    div-float/2addr v3, v10

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pan_deltaX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pan_deltaY:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->Pan_Y:F

    mul-float v3, v3, p1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->FOVY_MAX:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->FOV_min_2:F

    sub-float/2addr v10, v11

    div-float/2addr v3, v10

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pan_deltaY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->Pan_X:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pan_deltaX:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pan_deltaX:F

    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->Pan_Y:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pan_deltaY:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pan_deltaY:F

    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->Pan_X:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pan_deltaX:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pan_deltaX:F

    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->Pan_Y:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pan_deltaY:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pan_deltaY:F

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeX:F

    move-object/from16 v0, v16

    iget v3, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pan_deltaX:F

    mul-float/2addr v3, v10

    add-float v4, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeY:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pan_deltaY:F

    add-float v5, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->eyeZ:F

    move-object/from16 v0, v16

    iget v3, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->pan_deltaX:F

    mul-float/2addr v3, v10

    add-float v6, v2, v3

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/srib/vecmath/Vector3f;->normalize()V

    move-object/from16 v0, v17

    iget v2, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->x:F

    add-float v7, v4, v2

    move-object/from16 v0, v17

    iget v2, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->y:F

    add-float v8, v5, v2

    move-object/from16 v0, v17

    iget v2, v0, Lcom/samsung/android/srib/vecmath/Vector3f;->z:F

    add-float v9, v6, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mVMatrix:[F

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mProjMatrix:[F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mCurFOV:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v12, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->currentScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getAspectRatio()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->nearPlane:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->farPlane:F

    const/4 v11, 0x0

    invoke-static/range {v10 .. v15}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-short v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->Cur_Mode:S

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->requestRender()V

    return-void

    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mCurFOV:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->FOVY_MIN:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->FOVY_MIN:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mCurFOV:F

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mCurFOV:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->FOV_min_2:F

    goto :goto_2
.end method
