.class public Lcom/samsung/android/srib/virtualtourRenderer/Mesh;
.super Ljava/lang/Object;
.source "Mesh.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;
    }
.end annotation


# static fields
.field private static final BYTES_PER_FLOAT:I = 0x4

.field private static final BYTES_PER_SHORT:I = 0x2

.field private static final POSITION_DATA_SIZE_IN_ELEMENTS:I = 0x3

.field private static final STRIDE:I = 0x14

.field private static final TEX_COORD_DATA_SIZE_IN_ELEMENTS:I = 0x2

.field private static flatMesh:Lcom/samsung/android/srib/virtualtourRenderer/Mesh;


# instance fields
.field private final ASPECT_RATIO:F

.field private final MIN_POSITION:F

.field private final POSITION_RANGE:F

.field private final SIZE_PER_SIDE:I

.field private final SIZE_PER_SIDE_X:I

.field private final SIZE_PER_SIDE_Y:I

.field private TAG:Ljava/lang/String;

.field private final floatsPerVertex:I

.field private final ibo:[I

.field private indexCount:I

.field private mWireFrameMode:Z

.field private maPositionHandle:I

.field private maTextureHandle:I

.field private final meshVertexData:[F

.field private final vbo:[I

.field private final xLength:I

.field private final yLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->flatMesh:Lcom/samsung/android/srib/virtualtourRenderer/Mesh;

    return-void
.end method

.method private constructor <init>(FLcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;III)V
    .locals 30

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->mWireFrameMode:Z

    const-string/jumbo v22, "Mesh"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->TAG:Ljava/lang/String;

    const/16 v22, 0x400

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->SIZE_PER_SIDE_X:I

    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->SIZE_PER_SIDE_Y:I

    const/16 v22, 0x100

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->SIZE_PER_SIDE:I

    const/16 v22, 0x5

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->floatsPerVertex:I

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->vbo:[I

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ibo:[I

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    move/from16 v0, p1

    neg-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    const/high16 v22, 0x40000000    # 2.0f

    mul-float v22, v22, p1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    const/16 v22, 0x400

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move/from16 v23, v0

    mul-int v22, v22, v23

    mul-int/lit8 v22, v22, 0x5

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move/from16 v22, v0

    add-int/lit8 v10, v22, -0x1

    add-int/lit8 v22, v10, -0x1

    mul-int/lit8 v9, v22, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v22, v0

    mul-int/lit8 v15, v22, 0x2

    mul-int v22, v15, v10

    add-int v22, v22, v9

    move/from16 v0, v22

    new-array v6, v0, [S

    const/4 v11, 0x0

    sget-object v22, Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;->FLAT:Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_1

    sget-object v22, Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;->PYRAMIDAL:Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_f

    sget-object v22, Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;->CURVED:Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_18

    :goto_0
    array-length v0, v6

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->indexCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x4

    invoke-static/range {v22 .. v22}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v22

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    array-length v0, v6

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x2

    invoke-static/range {v22 .. v22}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v22

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->vbo:[I

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v22

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ibo:[I

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v22

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->vbo:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    if-gtz v22, :cond_20

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->TAG:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string/jumbo v23, "BUFFER_CREATION_ERROR: glGenBuffers"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_1
    const/high16 v18, -0x40800000    # -1.0f

    const/high16 v21, -0x40800000    # -1.0f

    const/high16 v17, -0x40800000    # -1.0f

    const/high16 v20, -0x40800000    # -1.0f

    const/16 v22, 0x3

    move/from16 v0, p5

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    const/16 v22, 0x6

    move/from16 v0, p5

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    const/16 v22, 0x8

    move/from16 v0, p5

    move/from16 v1, v22

    if-eq v0, v1, :cond_7

    const/16 v19, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v22

    if-lt v0, v1, :cond_9

    :cond_2
    const/4 v11, 0x0

    const/16 v19, 0x0

    move v12, v11

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-lt v0, v1, :cond_b

    move v11, v12

    goto/16 :goto_0

    :cond_3
    const/16 v19, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v21, v23, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    move/from16 v23, v0

    div-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    move/from16 v23, v0

    mul-float v23, v23, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    move/from16 v24, v0

    div-float v23, v23, v24

    add-float v20, v22, v23

    const/16 v16, 0x0

    move v12, v11

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-lt v0, v1, :cond_4

    add-int/lit8 v19, v19, 0x1

    move v11, v12

    goto :goto_4

    :cond_4
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v18, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    move/from16 v23, v0

    mul-float v23, v23, v18

    add-float v17, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v11, v12, 0x1

    aput v17, v22, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v12, v11, 0x1

    aput v20, v22, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v11, v12, 0x1

    const/16 v23, 0x0

    aput v23, v22, v12

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v18, v23, v22

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v21, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v12, v11, 0x1

    aput v18, v22, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v11, v12, 0x1

    aput v21, v22, v12

    add-int/lit8 v16, v16, 0x1

    move v12, v11

    goto/16 :goto_5

    :cond_5
    const/16 v19, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v21, v23, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    move/from16 v23, v0

    div-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    move/from16 v23, v0

    mul-float v23, v23, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    move/from16 v24, v0

    div-float v23, v23, v24

    add-float v20, v22, v23

    const/16 v16, 0x0

    move v12, v11

    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-lt v0, v1, :cond_6

    add-int/lit8 v19, v19, 0x1

    move v11, v12

    goto :goto_6

    :cond_6
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v18, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    move/from16 v23, v0

    mul-float v23, v23, v18

    add-float v17, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v11, v12, 0x1

    aput v17, v22, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v12, v11, 0x1

    aput v20, v22, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v11, v12, 0x1

    const/16 v23, 0x0

    aput v23, v22, v12

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v18, v23, v22

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v21, v23, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v12, v11, 0x1

    aput v18, v22, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v11, v12, 0x1

    aput v21, v22, v12

    add-int/lit8 v16, v16, 0x1

    move v12, v11

    goto/16 :goto_7

    :cond_7
    const/16 v19, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v21, v23, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    move/from16 v23, v0

    div-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    move/from16 v23, v0

    mul-float v23, v23, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    move/from16 v24, v0

    div-float v23, v23, v24

    add-float v20, v22, v23

    const/16 v16, 0x0

    move v12, v11

    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-lt v0, v1, :cond_8

    add-int/lit8 v19, v19, 0x1

    move v11, v12

    goto :goto_8

    :cond_8
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v18, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    move/from16 v23, v0

    mul-float v23, v23, v18

    add-float v17, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v11, v12, 0x1

    aput v17, v22, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v12, v11, 0x1

    aput v20, v22, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v11, v12, 0x1

    const/16 v23, 0x0

    aput v23, v22, v12

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v18, v22, v23

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v21, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v12, v11, 0x1

    aput v18, v22, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v11, v12, 0x1

    aput v21, v22, v12

    add-int/lit8 v16, v16, 0x1

    move v12, v11

    goto/16 :goto_9

    :cond_9
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v21, v23, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    move/from16 v23, v0

    div-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    move/from16 v23, v0

    mul-float v23, v23, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    move/from16 v24, v0

    div-float v23, v23, v24

    add-float v20, v22, v23

    const/16 v16, 0x0

    move v12, v11

    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-lt v0, v1, :cond_a

    add-int/lit8 v19, v19, 0x1

    move v11, v12

    goto/16 :goto_2

    :cond_a
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v18, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    move/from16 v23, v0

    mul-float v23, v23, v18

    add-float v17, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v11, v12, 0x1

    aput v17, v22, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v12, v11, 0x1

    aput v20, v22, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v11, v12, 0x1

    const/16 v23, 0x0

    aput v23, v22, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v12, v11, 0x1

    aput v18, v22, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v11, v12, 0x1

    aput v21, v22, v12

    add-int/lit8 v16, v16, 0x1

    move v12, v11

    goto :goto_a

    :cond_b
    if-gtz v19, :cond_c

    move v11, v12

    :goto_b
    const/16 v16, 0x0

    move v12, v11

    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-lt v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x2

    move/from16 v0, v19

    move/from16 v1, v22

    if-lt v0, v1, :cond_e

    move v11, v12

    :goto_d
    add-int/lit8 v19, v19, 0x1

    move v12, v11

    goto/16 :goto_3

    :cond_c
    add-int/lit8 v11, v12, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v22, v0

    mul-int v22, v22, v19

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    aput-short v22, v6, v12
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    move-exception v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->TAG:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_d
    add-int/lit8 v11, v12, 0x1

    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v22, v0

    mul-int v22, v22, v19

    add-int v22, v22, v16

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    aput-short v22, v6, v12

    add-int/lit8 v12, v11, 0x1

    add-int/lit8 v22, v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v23, v0

    mul-int v22, v22, v23

    add-int v22, v22, v16

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    aput-short v22, v6, v11

    add-int/lit8 v16, v16, 0x1

    goto :goto_c

    :cond_e
    add-int/lit8 v11, v12, 0x1

    add-int/lit8 v22, v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v23, v0

    mul-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    aput-short v22, v6, v12

    goto/16 :goto_d

    :cond_f
    const/16 v22, 0x200

    move/from16 v0, v22

    new-array v4, v0, [F

    const/4 v5, 0x0

    :goto_e
    array-length v0, v4

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v5, v0, :cond_10

    const/16 v19, 0x0

    :goto_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v22

    if-lt v0, v1, :cond_11

    const/4 v11, 0x0

    const/16 v19, 0x0

    move v12, v11

    :goto_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-lt v0, v1, :cond_14

    move v11, v12

    goto/16 :goto_0

    :cond_10
    int-to-float v0, v5

    move/from16 v22, v0

    const/high16 v23, 0x43480000    # 200.0f

    div-float v22, v22, v23

    const v23, 0x4023d70a    # 2.56f

    sub-float v22, v22, v23

    aput v22, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_11
    const/16 v16, 0x0

    move v12, v11

    :goto_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-lt v0, v1, :cond_12

    add-int/lit8 v19, v19, 0x1

    move v11, v12

    goto :goto_f

    :cond_12
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v18, v22, v23

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v21, v23, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    move/from16 v23, v0

    mul-float v23, v23, v18

    add-float v17, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    move/from16 v23, v0

    div-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    move/from16 v23, v0

    mul-float v23, v23, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    move/from16 v24, v0

    div-float v23, v23, v24

    add-float v20, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v11, v12, 0x1

    aput v17, v22, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v12, v11, 0x1

    aput v20, v22, v11

    add-int v22, v16, v19

    const/16 v23, 0x3ff

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v23

    move/from16 v0, v23

    rsub-int v0, v0, 0x3ff

    move/from16 v23, v0

    aget v23, v4, v23

    aput v23, v22, v12

    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v11, v12, 0x1

    aput v18, v22, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v12, v11, 0x1

    aput v21, v22, v11

    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_11

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v23

    aget v23, v4, v23

    aput v23, v22, v12

    goto :goto_12

    :cond_14
    if-gtz v19, :cond_15

    move v11, v12

    :goto_13
    const/16 v16, 0x0

    move v12, v11

    :goto_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-lt v0, v1, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x2

    move/from16 v0, v19

    move/from16 v1, v22

    if-lt v0, v1, :cond_17

    move v11, v12

    :goto_15
    add-int/lit8 v19, v19, 0x1

    move v12, v11

    goto/16 :goto_10

    :cond_15
    add-int/lit8 v11, v12, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v22, v0

    mul-int v22, v22, v19

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    aput-short v22, v6, v12

    goto :goto_13

    :cond_16
    add-int/lit8 v11, v12, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v22, v0

    mul-int v22, v22, v19

    add-int v22, v22, v16

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    aput-short v22, v6, v12

    add-int/lit8 v12, v11, 0x1

    add-int/lit8 v22, v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v23, v0

    mul-int v22, v22, v23

    add-int v22, v22, v16

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    aput-short v22, v6, v11

    add-int/lit8 v16, v16, 0x1

    goto :goto_14

    :cond_17
    add-int/lit8 v11, v12, 0x1

    add-int/lit8 v22, v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v23, v0

    mul-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    aput-short v22, v6, v12

    goto :goto_15

    :cond_18
    const/high16 v13, 0x41a00000    # 20.0f

    const/16 v22, 0x400

    move/from16 v0, v22

    new-array v4, v0, [F

    const/4 v5, 0x0

    :goto_16
    array-length v0, v4

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v5, v0, :cond_19

    const/16 v19, 0x0

    :goto_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v22

    if-lt v0, v1, :cond_1a

    const/4 v11, 0x0

    const/16 v19, 0x0

    move v12, v11

    :goto_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-lt v0, v1, :cond_1c

    move v11, v12

    goto/16 :goto_0

    :cond_19
    const/high16 v22, 0x41a00000    # 20.0f

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x43c80000    # 400.0f

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v24, v0

    int-to-float v0, v5

    move/from16 v23, v0

    const/high16 v26, 0x41200000    # 10.0f

    mul-float v23, v23, v26

    const/high16 v26, 0x44800000    # 1024.0f

    div-float v23, v23, v26

    const/high16 v26, -0x3f600000    # -5.0f

    add-float v23, v23, v26

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v26

    sub-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    aput v22, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    :cond_1a
    const/16 v16, 0x0

    move v12, v11

    :goto_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-lt v0, v1, :cond_1b

    add-int/lit8 v19, v19, 0x1

    move v11, v12

    goto :goto_17

    :cond_1b
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v18, v22, v23

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v21, v23, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    move/from16 v23, v0

    mul-float v23, v23, v18

    add-float v17, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    move/from16 v23, v0

    div-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    move/from16 v23, v0

    mul-float v23, v23, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    move/from16 v24, v0

    div-float v23, v23, v24

    add-float v20, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v11, v12, 0x1

    aput v17, v22, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v12, v11, 0x1

    aput v20, v22, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v11, v12, 0x1

    aget v23, v4, v16

    aput v23, v22, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v12, v11, 0x1

    aput v18, v22, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v11, v12, 0x1

    aput v21, v22, v12

    add-int/lit8 v16, v16, 0x1

    move v12, v11

    goto/16 :goto_19

    :cond_1c
    if-gtz v19, :cond_1d

    move v11, v12

    :goto_1a
    const/16 v16, 0x0

    move v12, v11

    :goto_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-lt v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x2

    move/from16 v0, v19

    move/from16 v1, v22

    if-lt v0, v1, :cond_1f

    move v11, v12

    :goto_1c
    add-int/lit8 v19, v19, 0x1

    move v12, v11

    goto/16 :goto_18

    :cond_1d
    add-int/lit8 v11, v12, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v22, v0

    mul-int v22, v22, v19

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    aput-short v22, v6, v12

    goto :goto_1a

    :cond_1e
    add-int/lit8 v11, v12, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v22, v0

    mul-int v22, v22, v19

    add-int v22, v22, v16

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    aput-short v22, v6, v12

    add-int/lit8 v12, v11, 0x1

    add-int/lit8 v22, v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v23, v0

    mul-int v22, v22, v23

    add-int v22, v22, v16

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    aput-short v22, v6, v11

    add-int/lit8 v16, v16, 0x1

    goto :goto_1b

    :cond_1f
    add-int/lit8 v11, v12, 0x1

    add-int/lit8 v22, v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v23, v0

    mul-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    aput-short v22, v6, v12

    goto :goto_1c

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ibo:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    if-lez v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->vbo:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    const v23, 0x8892

    move/from16 v0, v23

    move/from16 v1, v22

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-virtual {v8}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v22

    mul-int/lit8 v22, v22, 0x4

    const v23, 0x8892

    const v24, 0x88e4

    move/from16 v0, v23

    move/from16 v1, v22

    move/from16 v2, v24

    invoke-static {v0, v1, v8, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ibo:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    const v23, 0x8893

    move/from16 v0, v23

    move/from16 v1, v22

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-virtual {v7}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v22

    mul-int/lit8 v22, v22, 0x2

    const v23, 0x8893

    const v24, 0x88e4

    move/from16 v0, v23

    move/from16 v1, v22

    move/from16 v2, v24

    invoke-static {v0, v1, v7, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    const v22, 0x8892

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const v22, 0x8893

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/opengl/GLES20;->glBindBuffer(II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method constructor <init>(FLcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;II[BFFI)V
    .locals 25

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->mWireFrameMode:Z

    const-string/jumbo v22, "Mesh"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->TAG:Ljava/lang/String;

    const/16 v22, 0x400

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->SIZE_PER_SIDE_X:I

    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->SIZE_PER_SIDE_Y:I

    const/16 v22, 0x100

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->SIZE_PER_SIDE:I

    const/16 v22, 0x5

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->floatsPerVertex:I

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->vbo:[I

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ibo:[I

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    move/from16 v0, p1

    neg-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    const/high16 v22, 0x40000000    # 2.0f

    mul-float v22, v22, p1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    const/16 v22, 0x100

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    const/16 v22, 0x100

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move/from16 v23, v0

    mul-int v22, v22, v23

    mul-int/lit8 v22, v22, 0x5

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move/from16 v22, v0

    add-int/lit8 v8, v22, -0x1

    add-int/lit8 v22, v8, -0x1

    mul-int/lit8 v7, v22, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v22, v0

    mul-int/lit8 v15, v22, 0x2

    mul-int v22, v15, v8

    add-int v22, v22, v7

    move/from16 v0, v22

    new-array v4, v0, [S

    const/4 v9, 0x0

    sget-object v22, Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;->DEPTHMAP:Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_1

    :goto_0
    array-length v0, v4

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->indexCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x4

    invoke-static/range {v22 .. v22}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v22

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    array-length v0, v4

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x2

    invoke-static/range {v22 .. v22}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v22

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->vbo:[I

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v22

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ibo:[I

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v22

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->vbo:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    if-gtz v22, :cond_f

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->TAG:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string/jumbo v23, "BUFFER_CREATION_ERROR: glGenBuffers"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_1
    const/16 v22, 0x3

    move/from16 v0, p8

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    const/16 v22, 0x6

    move/from16 v0, p8

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    const/16 v22, 0x8

    move/from16 v0, p8

    move/from16 v1, v22

    if-eq v0, v1, :cond_7

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v11, -0x1

    const/high16 v18, -0x40800000    # -1.0f

    const/high16 v21, -0x40800000    # -1.0f

    const/high16 v20, -0x40800000    # -1.0f

    const/high16 v17, -0x40800000    # -1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v19, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v22

    if-lt v0, v1, :cond_9

    :cond_2
    const/4 v9, 0x0

    const/16 v19, 0x0

    move v10, v9

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-lt v0, v1, :cond_b

    move v9, v10

    goto/16 :goto_0

    :cond_3
    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v11, -0x1

    const/high16 v18, -0x40800000    # -1.0f

    const/high16 v21, -0x40800000    # -1.0f

    const/high16 v20, -0x40800000    # -1.0f

    const/high16 v17, -0x40800000    # -1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v19, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v21, v23, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    move/from16 v23, v0

    div-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    move/from16 v23, v0

    mul-float v23, v23, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    move/from16 v24, v0

    div-float v23, v23, v24

    add-float v20, v22, v23

    const/16 v16, 0x0

    move v10, v9

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-lt v0, v1, :cond_4

    add-int/lit8 v19, v19, 0x1

    move v9, v10

    goto :goto_4

    :cond_4
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v18, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    move/from16 v23, v0

    mul-float v23, v23, v18

    add-float v17, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v9, v10, 0x1

    aput v17, v22, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v10, v9, 0x1

    aput v20, v22, v9

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v18, v23, v22

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v21, v22, v23

    add-int/lit8 v22, p3, -0x1

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v18

    move/from16 v0, v22

    float-to-int v12, v0

    add-int/lit8 v22, p4, -0x1

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v21

    move/from16 v0, v22

    float-to-int v13, v0

    mul-int v22, v13, p3

    add-int v22, v22, v12

    aget-byte v11, p5, v22

    and-int/lit16 v0, v11, 0xff

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v3, v0

    const/high16 v22, 0x437f0000    # 255.0f

    div-float v3, v3, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v9, v10, 0x1

    neg-float v0, v3

    move/from16 v23, v0

    const/high16 v24, 0x40400000    # 3.0f

    mul-float v23, v23, v24

    aput v23, v22, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v10, v9, 0x1

    aput v18, v22, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v9, v10, 0x1

    aput v21, v22, v10

    add-int/lit8 v16, v16, 0x1

    move v10, v9

    goto/16 :goto_5

    :cond_5
    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v11, -0x1

    const/high16 v18, -0x40800000    # -1.0f

    const/high16 v21, -0x40800000    # -1.0f

    const/high16 v20, -0x40800000    # -1.0f

    const/high16 v17, -0x40800000    # -1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v19, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v21, v23, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    move/from16 v23, v0

    div-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    move/from16 v23, v0

    mul-float v23, v23, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    move/from16 v24, v0

    div-float v23, v23, v24

    add-float v20, v22, v23

    const/16 v16, 0x0

    move v10, v9

    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-lt v0, v1, :cond_6

    add-int/lit8 v19, v19, 0x1

    move v9, v10

    goto :goto_6

    :cond_6
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v18, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    move/from16 v23, v0

    mul-float v23, v23, v18

    add-float v17, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v9, v10, 0x1

    aput v17, v22, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v10, v9, 0x1

    aput v20, v22, v9

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v18, v23, v22

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v21, v23, v22

    add-int/lit8 v22, p3, -0x1

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v18

    move/from16 v0, v22

    float-to-int v12, v0

    add-int/lit8 v22, p4, -0x1

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v21

    move/from16 v0, v22

    float-to-int v13, v0

    mul-int v22, v13, p3

    add-int v22, v22, v12

    aget-byte v11, p5, v22

    and-int/lit16 v0, v11, 0xff

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v3, v0

    const/high16 v22, 0x437f0000    # 255.0f

    div-float v3, v3, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v9, v10, 0x1

    neg-float v0, v3

    move/from16 v23, v0

    const/high16 v24, 0x40400000    # 3.0f

    mul-float v23, v23, v24

    aput v23, v22, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v10, v9, 0x1

    aput v18, v22, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v9, v10, 0x1

    aput v21, v22, v10

    add-int/lit8 v16, v16, 0x1

    move v10, v9

    goto/16 :goto_7

    :cond_7
    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v11, -0x1

    const/high16 v18, -0x40800000    # -1.0f

    const/high16 v21, -0x40800000    # -1.0f

    const/high16 v20, -0x40800000    # -1.0f

    const/high16 v17, -0x40800000    # -1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v19, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v21, v23, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    move/from16 v23, v0

    div-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    move/from16 v23, v0

    mul-float v23, v23, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    move/from16 v24, v0

    div-float v23, v23, v24

    add-float v20, v22, v23

    const/16 v16, 0x0

    move v10, v9

    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-lt v0, v1, :cond_8

    add-int/lit8 v19, v19, 0x1

    move v9, v10

    goto :goto_8

    :cond_8
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v18, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    move/from16 v23, v0

    mul-float v23, v23, v18

    add-float v17, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v9, v10, 0x1

    aput v17, v22, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v10, v9, 0x1

    aput v20, v22, v9

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v18, v22, v23

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v21, v22, v23

    add-int/lit8 v22, p3, -0x1

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v18

    move/from16 v0, v22

    float-to-int v12, v0

    add-int/lit8 v22, p4, -0x1

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v21

    move/from16 v0, v22

    float-to-int v13, v0

    mul-int v22, v13, p3

    add-int v22, v22, v12

    aget-byte v11, p5, v22

    and-int/lit16 v0, v11, 0xff

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v3, v0

    const/high16 v22, 0x437f0000    # 255.0f

    div-float v3, v3, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v9, v10, 0x1

    neg-float v0, v3

    move/from16 v23, v0

    const/high16 v24, 0x40400000    # 3.0f

    mul-float v23, v23, v24

    aput v23, v22, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v10, v9, 0x1

    aput v18, v22, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v9, v10, 0x1

    aput v21, v22, v10

    add-int/lit8 v16, v16, 0x1

    move v10, v9

    goto/16 :goto_9

    :cond_9
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v21, v23, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    move/from16 v23, v0

    div-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    move/from16 v23, v0

    mul-float v23, v23, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ASPECT_RATIO:F

    move/from16 v24, v0

    div-float v23, v23, v24

    add-float v20, v22, v23

    const/16 v16, 0x0

    move v10, v9

    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-lt v0, v1, :cond_a

    add-int/lit8 v19, v19, 0x1

    move v9, v10

    goto/16 :goto_2

    :cond_a
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v18, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->MIN_POSITION:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->POSITION_RANGE:F

    move/from16 v23, v0

    mul-float v23, v23, v18

    add-float v17, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v9, v10, 0x1

    aput v17, v22, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v10, v9, 0x1

    aput v20, v22, v9

    add-int/lit8 v22, p3, -0x1

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v18

    move/from16 v0, v22

    float-to-int v12, v0

    add-int/lit8 v22, p4, -0x1

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v21

    move/from16 v0, v22

    float-to-int v13, v0

    mul-int v22, v13, p3

    add-int v22, v22, v12

    aget-byte v11, p5, v22

    and-int/lit16 v0, v11, 0xff

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v3, v0

    const/high16 v22, 0x437f0000    # 255.0f

    div-float v3, v3, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v9, v10, 0x1

    neg-float v0, v3

    move/from16 v23, v0

    const/high16 v24, 0x40400000    # 3.0f

    mul-float v23, v23, v24

    aput v23, v22, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v10, v9, 0x1

    aput v18, v22, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->meshVertexData:[F

    move-object/from16 v22, v0

    add-int/lit8 v9, v10, 0x1

    aput v21, v22, v10

    add-int/lit8 v16, v16, 0x1

    move v10, v9

    goto/16 :goto_a

    :cond_b
    if-gtz v19, :cond_c

    move v9, v10

    :goto_b
    const/16 v16, 0x0

    move v10, v9

    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-lt v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x2

    move/from16 v0, v19

    move/from16 v1, v22

    if-lt v0, v1, :cond_e

    move v9, v10

    :goto_d
    add-int/lit8 v19, v19, 0x1

    move v10, v9

    goto/16 :goto_3

    :cond_c
    add-int/lit8 v9, v10, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move/from16 v22, v0

    mul-int v22, v22, v19

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    aput-short v22, v4, v10
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    move-exception v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->TAG:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_d
    add-int/lit8 v9, v10, 0x1

    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move/from16 v22, v0

    mul-int v22, v22, v19

    add-int v22, v22, v16

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    aput-short v22, v4, v10

    add-int/lit8 v10, v9, 0x1

    add-int/lit8 v22, v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move/from16 v23, v0

    mul-int v22, v22, v23

    add-int v22, v22, v16

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    aput-short v22, v4, v9

    add-int/lit8 v16, v16, 0x1

    goto :goto_c

    :cond_e
    add-int/lit8 v9, v10, 0x1

    add-int/lit8 v22, v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->yLength:I

    move/from16 v23, v0

    mul-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->xLength:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-short v0, v0

    move/from16 v22, v0

    aput-short v22, v4, v10

    goto/16 :goto_d

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ibo:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    if-lez v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->vbo:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    const v23, 0x8892

    move/from16 v0, v23

    move/from16 v1, v22

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-virtual {v6}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v22

    mul-int/lit8 v22, v22, 0x4

    const v23, 0x8892

    const v24, 0x88e4

    move/from16 v0, v23

    move/from16 v1, v22

    move/from16 v2, v24

    invoke-static {v0, v1, v6, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ibo:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    const v23, 0x8893

    move/from16 v0, v23

    move/from16 v1, v22

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-virtual {v5}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v22

    mul-int/lit8 v22, v22, 0x2

    const v23, 0x8893

    const v24, 0x88e4

    move/from16 v0, v23

    move/from16 v1, v22

    move/from16 v2, v24

    invoke-static {v0, v1, v5, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    const v22, 0x8892

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const v22, 0x8893

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/opengl/GLES20;->glBindBuffer(II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method static createMesh(FLcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;III)Lcom/samsung/android/srib/virtualtourRenderer/Mesh;
    .locals 6

    sget-object v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->flatMesh:Lcom/samsung/android/srib/virtualtourRenderer/Mesh;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->flatMesh:Lcom/samsung/android/srib/virtualtourRenderer/Mesh;

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;-><init>(FLcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;III)V

    sput-object v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->flatMesh:Lcom/samsung/android/srib/virtualtourRenderer/Mesh;

    sget-object v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->flatMesh:Lcom/samsung/android/srib/virtualtourRenderer/Mesh;

    return-object v0
.end method


# virtual methods
.method release()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->vbo:[I

    aget v0, v0, v2

    if-gtz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ibo:[I

    aget v0, v0, v2

    if-gtz v0, :cond_1

    :goto_1
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->flatMesh:Lcom/samsung/android/srib/virtualtourRenderer/Mesh;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->vbo:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->vbo:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->vbo:[I

    aput v2, v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ibo:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ibo:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ibo:[I

    aput v2, v0, v2

    goto :goto_1
.end method

.method render(I)V
    .locals 8

    const v7, 0x8893

    const v6, 0x8892

    const/16 v2, 0x1406

    const/16 v4, 0x14

    const/4 v3, 0x0

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->vbo:[I

    aget v0, v0, v3

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ibo:[I

    aget v0, v0, v3

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->vbo:[I

    aget v0, v0, v3

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->maPositionHandle:I

    const/4 v1, 0x3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->maTextureHandle:I

    const/4 v1, 0x2

    const/16 v5, 0xc

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->maTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->ibo:[I

    aget v0, v0, v3

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->indexCount:I

    const/4 v1, 0x5

    const/16 v2, 0x1403

    invoke-static {v1, v0, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-static {v7, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    goto :goto_0
.end method

.method setPositionHandle(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->maPositionHandle:I

    return-void
.end method

.method setTextureHandle(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->maTextureHandle:I

    return-void
.end method
