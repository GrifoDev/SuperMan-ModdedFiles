.class public Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;
.super Ljava/lang/Object;
.source "ImageRenderer3d.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field public static final IDENTITY_MATRIX:[F

.field private static final LANDSCAPE_MODE:I = 0x0

.field private static final PORTRAIT_MODE:I = 0x1

.field private static final REVERSE_LANDSCAPE_MODE:I = 0x2

.field private static final REVERSE_PORTRAIT_MODE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "GL_Viewer3D"

.field private static prevmode:I


# instance fields
.field private Capture:I

.field private CaptureHandle:I

.field private CropH:I

.field private CropW:I

.field private ImgH:I

.field private ImgW:I

.field private PMatHandle:I

.field private PerspMatrix:[F

.field private ScreenH:I

.field private ScreenW:I

.field private TLx:I

.field private TLy:I

.field private TexCordHandle:I

.field private TextureBuffer:Ljava/nio/FloatBuffer;

.field TextureData:[F

.field private TextureHandle:[I

.field private final VertexBuffer:Ljava/nio/FloatBuffer;

.field private anglehandle:I

.field anglerot:F

.field private fragmentShader:I

.field private fragmentShaderCodeTriangle:Ljava/lang/String;

.field private grid_num:I

.field imageset:Z

.field isOffscreen:Z

.field private isRunningInTestMode:Z

.field private multiplierhandle:I

.field onCreatecalled:Z

.field private positionHandle:I

.field private shaderProgram:I

.field private sizeHandle:I

.field private sizearray:[F

.field private uvBuffer:Ljava/nio/ByteBuffer;

.field private uvhandle:I

.field vertexData:[F

.field private vertexShader:I

.field private vertexShaderCodeTriangle:Ljava/lang/String;

.field private viewportHandle:I

.field private yBuffer:Ljava/nio/ByteBuffer;

.field private yhandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/16 v0, 0x9

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput v3, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    aput v3, v0, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v3, v0, v1

    sput-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->IDENTITY_MATRIX:[F

    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->prevmode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIIIIIIIIZZ)V
    .locals 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Capture:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->grid_num:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->anglerot:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->imageset:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->isRunningInTestMode:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->onCreatecalled:Z

    const-string/jumbo v1, "GL_Viewer3D"

    const-string/jumbo v2, "Inside constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, p12

    iput-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->isOffscreen:Z

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz p10, :cond_0

    const/4 v1, 0x1

    move/from16 v0, p10

    if-eq v0, v1, :cond_1

    :goto_0
    if-nez v12, :cond_2

    :goto_1
    if-nez v11, :cond_3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "/vertexshader3d.glsl"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v13

    new-instance v12, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v12, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v12}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->readFile(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->vertexShaderCodeTriangle:Ljava/lang/String;

    :try_start_0
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_3
    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->grid_num:I

    mul-int/lit8 v1, v1, 0xc

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->grid_num:I

    mul-int/2addr v1, v2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->vertexData:[F

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->grid_num:I

    mul-int/lit8 v1, v1, 0xc

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->grid_num:I

    mul-int/2addr v1, v2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureData:[F

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureHandle:[I

    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->PerspMatrix:[F

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->PerspMatrix:[F

    sget-object v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->IDENTITY_MATRIX:[F

    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->PerspMatrix:[F

    array-length v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->sizearray:[F

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->sizearray:[F

    move/from16 v0, p2

    int-to-float v2, v0

    const/4 v3, 0x0

    aput v2, v1, v3

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->sizearray:[F

    move/from16 v0, p3

    int-to-float v2, v0

    const/4 v3, 0x1

    aput v2, v1, v3

    move/from16 v0, p9

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenH:I

    move/from16 v0, p8

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenW:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Inside constructor  H = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " W = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenW:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GL_Viewer3D"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Inside constructor after swap  H = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " W = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenW:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GL_Viewer3D"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, p11

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Capture:I

    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->vertexData:[F

    iget v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->grid_num:I

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->calVertices([FFFFFI)I

    move-result v9

    mul-int/lit8 v1, v9, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->VertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->VertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->vertexData:[F

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v9}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->VertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move/from16 v0, p2

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    move/from16 v0, p3

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    move/from16 v0, p4

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLx:I

    move/from16 v0, p5

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLy:I

    move/from16 v0, p6

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CropW:I

    move/from16 v0, p7

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CropH:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " W = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " H = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " TLx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " TLy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " CropW = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CropW:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " CropH = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CropH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " screen W = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenW:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " screen H = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GL_Viewer3D"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    if-nez p13, :cond_4

    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureData:[F

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLx:I

    int-to-float v1, v1

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    int-to-float v3, v3

    div-float v3, v1, v3

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLy:I

    iget v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CropH:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    iget v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    int-to-float v4, v4

    div-float v4, v1, v4

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLx:I

    iget v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CropW:I

    add-int/2addr v1, v5

    int-to-float v1, v1

    iget v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    int-to-float v5, v5

    div-float v5, v1, v5

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLy:I

    int-to-float v1, v1

    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    int-to-float v6, v6

    div-float v6, v1, v6

    iget v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->grid_num:I

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->calVertices([FFFFFI)I

    move-result v8

    :goto_4
    mul-int/lit8 v1, v8, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureData:[F

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v8}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    mul-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->yBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->uvBuffer:Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "/fragmentshadernv12.glsl"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    new-instance v12, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v12, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v12}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->readFile(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->fragmentShaderCodeTriangle:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "/fragmentshadernv12.glsl"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    new-instance v12, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v12, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v12}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->readFile(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->fragmentShaderCodeTriangle:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :cond_3
    :try_start_2
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :catch_1
    move-exception v10

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    :cond_4
    if-nez p11, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureData:[F

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLx:I

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CropW:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    int-to-float v3, v3

    div-float v3, v1, v3

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLy:I

    iget v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CropH:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    iget v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    int-to-float v4, v4

    div-float v4, v1, v4

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLx:I

    int-to-float v1, v1

    iget v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    int-to-float v5, v5

    div-float v5, v1, v5

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLy:I

    int-to-float v1, v1

    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    int-to-float v6, v6

    div-float v6, v1, v6

    iget v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->grid_num:I

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->calVertices([FFFFFI)I

    move-result v8

    goto/16 :goto_4

    :cond_6
    const/4 v1, 0x2

    move/from16 v0, p11

    if-eq v0, v1, :cond_5

    const/4 v1, 0x1

    move/from16 v0, p11

    if-ne v0, v1, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureData:[F

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLx:I

    int-to-float v1, v1

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    int-to-float v3, v3

    div-float v3, v1, v3

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLy:I

    int-to-float v1, v1

    iget v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    int-to-float v4, v4

    div-float v4, v1, v4

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLx:I

    iget v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CropW:I

    add-int/2addr v1, v5

    int-to-float v1, v1

    iget v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    int-to-float v5, v5

    div-float v5, v1, v5

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLy:I

    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CropH:I

    add-int/2addr v1, v6

    int-to-float v1, v1

    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    int-to-float v6, v6

    div-float v6, v1, v6

    iget v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->grid_num:I

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->calVertices([FFFFFI)I

    move-result v8

    goto/16 :goto_4

    :cond_8
    const/4 v1, 0x3

    move/from16 v0, p11

    if-eq v0, v1, :cond_7

    goto/16 :goto_4
.end method

.method private calVertices([FFFFFI)I
    .locals 11

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sub-float v9, p4, p2

    move/from16 v0, p6

    int-to-float v10, v0

    div-float v1, v9, v10

    sub-float v9, p5, p3

    move/from16 v0, p6

    int-to-float v10, v0

    div-float v2, v9, v10

    move v7, p2

    move v8, p3

    const/4 v3, 0x0

    :goto_0
    move/from16 v0, p6

    if-ge v3, v0, :cond_1

    add-float/2addr v8, v2

    const/4 v4, 0x0

    move v6, v5

    :goto_1
    move/from16 v0, p6

    if-ge v4, v0, :cond_0

    add-float/2addr v7, v1

    add-int/lit8 v5, v6, 0x1

    sub-float v9, v7, v1

    aput v9, p1, v6

    add-int/lit8 v6, v5, 0x1

    aput v8, p1, v5

    add-int/lit8 v5, v6, 0x1

    sub-float v9, v7, v1

    aput v9, p1, v6

    add-int/lit8 v6, v5, 0x1

    sub-float v9, v8, v2

    aput v9, p1, v5

    add-int/lit8 v5, v6, 0x1

    aput v7, p1, v6

    add-int/lit8 v6, v5, 0x1

    sub-float v9, v8, v2

    aput v9, p1, v5

    add-int/lit8 v5, v6, 0x1

    sub-float v9, v7, v1

    aput v9, p1, v6

    add-int/lit8 v6, v5, 0x1

    aput v8, p1, v5

    add-int/lit8 v5, v6, 0x1

    aput v7, p1, v6

    add-int/lit8 v6, v5, 0x1

    sub-float v9, v8, v2

    aput v9, p1, v5

    add-int/lit8 v5, v6, 0x1

    aput v7, p1, v6

    add-int/lit8 v6, v5, 0x1

    aput v8, p1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    move v7, p2

    add-int/lit8 v3, v3, 0x1

    move v5, v6

    goto :goto_0

    :cond_1
    return v5
.end method

.method private compileShader(Ljava/lang/String;I)I
    .locals 4

    const/4 v3, 0x0

    invoke-static {p2}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    return v1

    :cond_1
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 v2, 0x1

    new-array v0, v2, [I

    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget v2, v0, v3

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Error creating shader."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private createShaderProgram(II)I
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    return v1

    :cond_1
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string/jumbo v2, "vPos"

    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 v2, 0x1

    new-array v0, v2, [I

    const v2, 0x8b82

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v2, v0, v3

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Error creating shader program."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private readFile(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method Init_loadToGPU()V
    .locals 11

    const/16 v7, 0x1401

    const/4 v10, 0x1

    const/16 v9, 0x2601

    const/4 v1, 0x0

    const/16 v0, 0xde1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Inside InitLoadToGPU W = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " H = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "GL_Viewer3D"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureHandle:[I

    const/4 v3, 0x2

    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureHandle:[I

    aget v2, v2, v1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x2801

    invoke-static {v0, v2, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2800

    invoke-static {v0, v2, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x1909

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    iget v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    iget-object v8, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->yBuffer:Ljava/nio/ByteBuffer;

    const/16 v6, 0x1909

    move v5, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->yhandle:I

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v2, 0x84c1

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureHandle:[I

    aget v2, v2, v10

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x2801

    invoke-static {v0, v2, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2800

    invoke-static {v0, v2, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x190a

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    div-int/lit8 v4, v4, 0x2

    iget-object v8, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->uvBuffer:Ljava/nio/ByteBuffer;

    const/16 v6, 0x190a

    move v5, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->uvhandle:I

    invoke-static {v0, v10}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return-void
.end method

.method public isRunningInTestMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->isRunningInTestMode:Z

    return v0
.end method

.method loadToGPU()V
    .locals 10

    const/16 v2, 0x1909

    const/16 v7, 0x1401

    const/4 v9, 0x1

    const/16 v0, 0xde1

    const/4 v1, 0x0

    const v3, 0x84c0

    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureHandle:[I

    aget v3, v3, v1

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    iget v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    iget-object v8, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->yBuffer:Ljava/nio/ByteBuffer;

    move v5, v1

    move v6, v2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->yhandle:I

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v2, 0x84c1

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureHandle:[I

    aget v2, v2, v9

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x190a

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    div-int/lit8 v4, v4, 0x2

    iget-object v8, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->uvBuffer:Ljava/nio/ByteBuffer;

    const/16 v6, 0x190a

    move v5, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->uvhandle:I

    invoke-static {v0, v9}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7

    const/4 v6, 0x0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "----------skkv"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v0, p0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->loadToGPU()V

    const/16 v1, 0x4100

    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->PMatHandle:I

    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->PerspMatrix:[F

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v4, v3, v2, v5}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->imageset:Z

    if-nez v1, :cond_0

    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->grid_num:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->grid_num:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    const/4 v2, 0x4

    invoke-static {v2, v6, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 9

    const-string/jumbo v6, "GL_Viewer3D"

    const-string/jumbo v7, "Inside surface changed"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v6, v7, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Capture:I

    if-nez v6, :cond_3

    :cond_0
    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    :goto_0
    int-to-float v1, v6

    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Capture:I

    if-nez v6, :cond_4

    :cond_1
    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    :goto_1
    int-to-float v0, v6

    int-to-float v6, p2

    div-float/2addr v6, v1

    int-to-float v7, p3

    div-float/2addr v7, v0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_5

    int-to-float v6, p2

    div-float v3, v6, v1

    :goto_2
    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->viewportHandle:I

    int-to-float v7, p2

    div-float/2addr v7, v3

    div-float v7, v1, v7

    int-to-float v8, p3

    div-float/2addr v8, v3

    div-float v8, v0, v8

    invoke-static {v6, v7, v8}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, ">>>>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " <<>>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "skkv"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "-->"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-float v7, p2

    div-float/2addr v7, v3

    div-float/2addr v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-float v7, p3

    div-float/2addr v7, v3

    div-float/2addr v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "skkv"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "---->"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->sizearray:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->sizearray:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "skkv"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenW:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "screen width"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenH:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "screen height"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CropW:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "crop width"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CropH:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "crop height"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->onCreatecalled:Z

    if-nez v6, :cond_6

    :goto_3
    if-gt p2, p3, :cond_8

    const/4 v2, 0x0

    :goto_4
    sget v6, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->prevmode:I

    if-ne v6, v2, :cond_9

    const-string/jumbo v6, "mode"

    const-string/jumbo v7, "equal"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    iget-boolean v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->isRunningInTestMode:Z

    if-nez v6, :cond_a

    :goto_6
    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenW:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "view width"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenH:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "view height"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->isOffscreen:Z

    if-nez v6, :cond_b

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_7
    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->multiplierhandle:I

    invoke-static {v6, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    sput v2, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->prevmode:I

    if-gt p2, p3, :cond_c

    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Capture:I

    if-eqz v6, :cond_10

    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Capture:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_11

    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Capture:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_12

    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Capture:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_13

    :cond_2
    :goto_8
    invoke-virtual {p0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Init_loadToGPU()V

    return-void

    :cond_3
    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Capture:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    goto/16 :goto_0

    :cond_4
    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Capture:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    goto/16 :goto_1

    :cond_5
    int-to-float v6, p3

    div-float v3, v6, v0

    goto/16 :goto_2

    :cond_6
    if-gt p3, p2, :cond_7

    const/4 v6, 0x1

    sput v6, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->prevmode:I

    :goto_9
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->onCreatecalled:Z

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    sput v6, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->prevmode:I

    goto :goto_9

    :cond_8
    const/4 v2, 0x1

    goto :goto_4

    :cond_9
    iget v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenH:I

    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenW:I

    iput v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenH:I

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenW:I

    goto :goto_5

    :cond_a
    iput p3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenH:I

    iput p2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenW:I

    const/16 v6, 0x500

    iput v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CropW:I

    const/16 v6, 0x2d0

    iput v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CropH:I

    goto :goto_6

    :cond_b
    const/high16 v4, -0x40800000    # -1.0f

    goto :goto_7

    :cond_c
    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Capture:I

    if-eqz v6, :cond_d

    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Capture:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_e

    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Capture:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_f

    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Capture:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->anglehandle:I

    const/high16 v7, 0x42b40000    # 90.0f

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string/jumbo v6, "onSurfaceChanged"

    const-string/jumbo v7, "4"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_d
    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->anglehandle:I

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string/jumbo v6, "onSurfaceChanged"

    const-string/jumbo v7, "1"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_e
    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->anglehandle:I

    const/high16 v7, 0x43340000    # 180.0f

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string/jumbo v6, "onSurfaceChanged"

    const-string/jumbo v7, "2"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_f
    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->anglehandle:I

    const/high16 v7, -0x3d4c0000    # -90.0f

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string/jumbo v6, "onSurfaceChanged"

    const-string/jumbo v7, "3"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_10
    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->anglehandle:I

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string/jumbo v6, "onSurfaceChanged"

    const-string/jumbo v7, "5"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_11
    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->anglehandle:I

    const/high16 v7, 0x43340000    # 180.0f

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string/jumbo v6, "onSurfaceChanged"

    const-string/jumbo v7, "6"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_12
    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->anglehandle:I

    const/high16 v7, -0x3d4c0000    # -90.0f

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string/jumbo v6, "onSurfaceChanged"

    const-string/jumbo v7, "7"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_13
    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->anglehandle:I

    const/high16 v7, 0x42b40000    # 90.0f

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string/jumbo v6, "onSurfaceChanged"

    const-string/jumbo v7, "8"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 9

    const/4 v1, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->onCreatecalled:Z

    const-string/jumbo v0, "GL_Viewer3D"

    const-string/jumbo v2, "Inside surface created"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5, v5, v5, v8}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->shaderProgram:I

    if-nez v0, :cond_0

    :goto_0
    iget-object v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->vertexShaderCodeTriangle:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->fragmentShaderCodeTriangle:Ljava/lang/String;

    const v0, 0x8b31

    invoke-direct {p0, v7, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->compileShader(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->vertexShader:I

    const v0, 0x8b30

    invoke-direct {p0, v6, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->compileShader(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->fragmentShader:I

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->vertexShader:I

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->fragmentShader:I

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->createShaderProgram(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->shaderProgram:I

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->shaderProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->shaderProgram:I

    const-string/jumbo v2, "a_position"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->positionHandle:I

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->shaderProgram:I

    const-string/jumbo v2, "a_texCoord"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TexCordHandle:I

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->shaderProgram:I

    const-string/jumbo v2, "s_PMatrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->PMatHandle:I

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->shaderProgram:I

    const-string/jumbo v2, "y_texture"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->yhandle:I

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->shaderProgram:I

    const-string/jumbo v2, "uv_texture"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->uvhandle:I

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->shaderProgram:I

    const-string/jumbo v2, "size"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->sizeHandle:I

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->shaderProgram:I

    const-string/jumbo v2, "viewportSize"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->viewportHandle:I

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->shaderProgram:I

    const-string/jumbo v2, "captureFlag"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CaptureHandle:I

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->shaderProgram:I

    const-string/jumbo v2, "anglerot"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->anglehandle:I

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->shaderProgram:I

    const-string/jumbo v2, "multiplier"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->multiplierhandle:I

    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    invoke-static {v5, v5, v5, v8}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->positionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->positionHandle:I

    const/16 v2, 0x1406

    iget-object v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->VertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TexCordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TexCordHandle:I

    const/16 v2, 0x1406

    iget-object v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->sizeHandle:I

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->sizearray:[F

    invoke-static {v0, v3, v1, v4}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->vertexShader:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->fragmentShader:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->shaderProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto/16 :goto_0
.end method

.method public setImage([B)V
    .locals 5

    move-object v0, p0

    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "GL_Viewer3D"

    const-string/jumbo v2, "Inside setImage"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->yBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->uvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->yBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    mul-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->yBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->uvBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    iget v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, p1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->uvBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->imageset:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setImage([B[F)V
    .locals 5

    if-nez p1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "In SetImage: YUVimg or Pmat is NULL"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GL_Viewer3D"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p2, :cond_0

    move-object v0, p0

    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "GL_Viewer3D"

    const-string/jumbo v2, "Inside setImage"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->yBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->uvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->yBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    mul-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->yBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->uvBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    iget v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, p1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->uvBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->imageset:Z

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->PerspMatrix:[F

    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->PerspMatrix:[F

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p2, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setRunningInTestMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->isRunningInTestMode:Z

    return-void
.end method
